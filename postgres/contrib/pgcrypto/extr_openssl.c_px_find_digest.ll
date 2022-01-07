; ModuleID = '/home/carl/AnghaBench/postgres/contrib/pgcrypto/extr_openssl.c_px_find_digest.c'
source_filename = "/home/carl/AnghaBench/postgres/contrib/pgcrypto/extr_openssl.c_px_find_digest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32*, %struct.TYPE_11__*, i32, i32*, i32* }
%struct.TYPE_10__ = type { %struct.TYPE_9__, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_9__ = type { i8* }

@px_openssl_initialized = common dso_local global i32 0, align 4
@digest_resowner_callback_registered = common dso_local global i32 0, align 4
@digest_free_callback = common dso_local global i32 0, align 4
@PXE_NO_HASH = common dso_local global i32 0, align 4
@TopMemoryContext = common dso_local global i32 0, align 4
@CurrentResourceOwner = common dso_local global i32 0, align 4
@open_digests = common dso_local global %struct.TYPE_11__* null, align 8
@digest_result_size = common dso_local global i32 0, align 4
@digest_block_size = common dso_local global i32 0, align 4
@digest_reset = common dso_local global i32 0, align 4
@digest_update = common dso_local global i32 0, align 4
@digest_finish = common dso_local global i32 0, align 4
@digest_free = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @px_find_digest(i8* %0, %struct.TYPE_10__** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_10__**, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_10__*, align 8
  %9 = alloca %struct.TYPE_11__*, align 8
  store i8* %0, i8** %4, align 8
  store %struct.TYPE_10__** %1, %struct.TYPE_10__*** %5, align 8
  %10 = load i32, i32* @px_openssl_initialized, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %14, label %12

12:                                               ; preds = %2
  store i32 1, i32* @px_openssl_initialized, align 4
  %13 = call i32 (...) @OpenSSL_add_all_algorithms()
  br label %14

14:                                               ; preds = %12, %2
  %15 = load i32, i32* @digest_resowner_callback_registered, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %14
  %18 = load i32, i32* @digest_free_callback, align 4
  %19 = call i32 @RegisterResourceReleaseCallback(i32 %18, i32* null)
  store i32 1, i32* @digest_resowner_callback_registered, align 4
  br label %20

20:                                               ; preds = %17, %14
  %21 = load i8*, i8** %4, align 8
  %22 = call i32* @EVP_get_digestbyname(i8* %21)
  store i32* %22, i32** %6, align 8
  %23 = load i32*, i32** %6, align 8
  %24 = icmp eq i32* %23, null
  br i1 %24, label %25, label %27

25:                                               ; preds = %20
  %26 = load i32, i32* @PXE_NO_HASH, align 4
  store i32 %26, i32* %3, align 4
  br label %86

27:                                               ; preds = %20
  %28 = load i32, i32* @TopMemoryContext, align 4
  %29 = call %struct.TYPE_11__* @MemoryContextAlloc(i32 %28, i32 40)
  store %struct.TYPE_11__* %29, %struct.TYPE_11__** %9, align 8
  %30 = call i32* (...) @EVP_MD_CTX_create()
  store i32* %30, i32** %7, align 8
  %31 = load i32*, i32** %7, align 8
  %32 = icmp ne i32* %31, null
  br i1 %32, label %36, label %33

33:                                               ; preds = %27
  %34 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %35 = call i32 @pfree(%struct.TYPE_11__* %34)
  store i32 -1, i32* %3, align 4
  br label %86

36:                                               ; preds = %27
  %37 = load i32*, i32** %7, align 8
  %38 = load i32*, i32** %6, align 8
  %39 = call i64 @EVP_DigestInit_ex(i32* %37, i32* %38, i32* null)
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %36
  %42 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %43 = call i32 @pfree(%struct.TYPE_11__* %42)
  store i32 -1, i32* %3, align 4
  br label %86

44:                                               ; preds = %36
  %45 = load i32*, i32** %6, align 8
  %46 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %47 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %46, i32 0, i32 4
  store i32* %45, i32** %47, align 8
  %48 = load i32*, i32** %7, align 8
  %49 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %50 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %49, i32 0, i32 3
  store i32* %48, i32** %50, align 8
  %51 = load i32, i32* @CurrentResourceOwner, align 4
  %52 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %53 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %52, i32 0, i32 2
  store i32 %51, i32* %53, align 8
  %54 = load %struct.TYPE_11__*, %struct.TYPE_11__** @open_digests, align 8
  %55 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %56 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %55, i32 0, i32 1
  store %struct.TYPE_11__* %54, %struct.TYPE_11__** %56, align 8
  %57 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %58 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %57, i32 0, i32 0
  store i32* null, i32** %58, align 8
  %59 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  store %struct.TYPE_11__* %59, %struct.TYPE_11__** @open_digests, align 8
  %60 = call %struct.TYPE_10__* @px_alloc(i32 32)
  store %struct.TYPE_10__* %60, %struct.TYPE_10__** %8, align 8
  %61 = load i32, i32* @digest_result_size, align 4
  %62 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %63 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %62, i32 0, i32 6
  store i32 %61, i32* %63, align 4
  %64 = load i32, i32* @digest_block_size, align 4
  %65 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %66 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %65, i32 0, i32 5
  store i32 %64, i32* %66, align 8
  %67 = load i32, i32* @digest_reset, align 4
  %68 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %69 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %68, i32 0, i32 4
  store i32 %67, i32* %69, align 4
  %70 = load i32, i32* @digest_update, align 4
  %71 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %72 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %71, i32 0, i32 3
  store i32 %70, i32* %72, align 8
  %73 = load i32, i32* @digest_finish, align 4
  %74 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %75 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %74, i32 0, i32 2
  store i32 %73, i32* %75, align 4
  %76 = load i32, i32* @digest_free, align 4
  %77 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %78 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %77, i32 0, i32 1
  store i32 %76, i32* %78, align 8
  %79 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %80 = bitcast %struct.TYPE_11__* %79 to i8*
  %81 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %82 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %82, i32 0, i32 0
  store i8* %80, i8** %83, align 8
  %84 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %85 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %5, align 8
  store %struct.TYPE_10__* %84, %struct.TYPE_10__** %85, align 8
  store i32 0, i32* %3, align 4
  br label %86

86:                                               ; preds = %44, %41, %33, %25
  %87 = load i32, i32* %3, align 4
  ret i32 %87
}

declare dso_local i32 @OpenSSL_add_all_algorithms(...) #1

declare dso_local i32 @RegisterResourceReleaseCallback(i32, i32*) #1

declare dso_local i32* @EVP_get_digestbyname(i8*) #1

declare dso_local %struct.TYPE_11__* @MemoryContextAlloc(i32, i32) #1

declare dso_local i32* @EVP_MD_CTX_create(...) #1

declare dso_local i32 @pfree(%struct.TYPE_11__*) #1

declare dso_local i64 @EVP_DigestInit_ex(i32*, i32*, i32*) #1

declare dso_local %struct.TYPE_10__* @px_alloc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
