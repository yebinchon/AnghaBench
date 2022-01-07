; ModuleID = '/home/carl/AnghaBench/postgres/contrib/pgcrypto/extr_openssl.c_px_find_cipher.c'
source_filename = "/home/carl/AnghaBench/postgres/contrib/pgcrypto/extr_openssl.c_px_find_cipher.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ossl_cipher_lookup = type { %struct.TYPE_9__*, i32* }
%struct.TYPE_9__ = type { i32, i32 (...)* }
%struct.TYPE_11__ = type { %struct.TYPE_9__*, i32, i32*, %struct.TYPE_11__*, i32, i32* }
%struct.TYPE_10__ = type { %struct.TYPE_11__*, i32, i32, i32, i32, i32, i32, i32 }

@ossl_aliases = common dso_local global i32 0, align 4
@ossl_cipher_types = common dso_local global %struct.ossl_cipher_lookup* null, align 8
@PXE_NO_CIPHER = common dso_local global i32 0, align 4
@cipher_resowner_callback_registered = common dso_local global i32 0, align 4
@cipher_free_callback = common dso_local global i32 0, align 4
@TopMemoryContext = common dso_local global i32 0, align 4
@PXE_CIPHER_INIT = common dso_local global i32 0, align 4
@CurrentResourceOwner = common dso_local global i32 0, align 4
@open_ciphers = common dso_local global %struct.TYPE_11__* null, align 8
@gen_ossl_block_size = common dso_local global i32 0, align 4
@gen_ossl_key_size = common dso_local global i32 0, align 4
@gen_ossl_iv_size = common dso_local global i32 0, align 4
@gen_ossl_free = common dso_local global i32 0, align 4
@gen_ossl_encrypt = common dso_local global i32 0, align 4
@gen_ossl_decrypt = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @px_find_cipher(i8* %0, %struct.TYPE_10__** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_10__**, align 8
  %6 = alloca %struct.ossl_cipher_lookup*, align 8
  %7 = alloca %struct.TYPE_10__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_11__*, align 8
  store i8* %0, i8** %4, align 8
  store %struct.TYPE_10__** %1, %struct.TYPE_10__*** %5, align 8
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %7, align 8
  %10 = load i32, i32* @ossl_aliases, align 4
  %11 = load i8*, i8** %4, align 8
  %12 = call i8* @px_resolve_alias(i32 %10, i8* %11)
  store i8* %12, i8** %4, align 8
  %13 = load %struct.ossl_cipher_lookup*, %struct.ossl_cipher_lookup** @ossl_cipher_types, align 8
  store %struct.ossl_cipher_lookup* %13, %struct.ossl_cipher_lookup** %6, align 8
  br label %14

14:                                               ; preds = %28, %2
  %15 = load %struct.ossl_cipher_lookup*, %struct.ossl_cipher_lookup** %6, align 8
  %16 = getelementptr inbounds %struct.ossl_cipher_lookup, %struct.ossl_cipher_lookup* %15, i32 0, i32 1
  %17 = load i32*, i32** %16, align 8
  %18 = icmp ne i32* %17, null
  br i1 %18, label %19, label %31

19:                                               ; preds = %14
  %20 = load %struct.ossl_cipher_lookup*, %struct.ossl_cipher_lookup** %6, align 8
  %21 = getelementptr inbounds %struct.ossl_cipher_lookup, %struct.ossl_cipher_lookup* %20, i32 0, i32 1
  %22 = load i32*, i32** %21, align 8
  %23 = load i8*, i8** %4, align 8
  %24 = call i64 @strcmp(i32* %22, i8* %23)
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %19
  br label %31

27:                                               ; preds = %19
  br label %28

28:                                               ; preds = %27
  %29 = load %struct.ossl_cipher_lookup*, %struct.ossl_cipher_lookup** %6, align 8
  %30 = getelementptr inbounds %struct.ossl_cipher_lookup, %struct.ossl_cipher_lookup* %29, i32 1
  store %struct.ossl_cipher_lookup* %30, %struct.ossl_cipher_lookup** %6, align 8
  br label %14

31:                                               ; preds = %26, %14
  %32 = load %struct.ossl_cipher_lookup*, %struct.ossl_cipher_lookup** %6, align 8
  %33 = getelementptr inbounds %struct.ossl_cipher_lookup, %struct.ossl_cipher_lookup* %32, i32 0, i32 1
  %34 = load i32*, i32** %33, align 8
  %35 = icmp eq i32* %34, null
  br i1 %35, label %36, label %38

36:                                               ; preds = %31
  %37 = load i32, i32* @PXE_NO_CIPHER, align 4
  store i32 %37, i32* %3, align 4
  br label %119

38:                                               ; preds = %31
  %39 = load i32, i32* @cipher_resowner_callback_registered, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %44, label %41

41:                                               ; preds = %38
  %42 = load i32, i32* @cipher_free_callback, align 4
  %43 = call i32 @RegisterResourceReleaseCallback(i32 %42, i32* null)
  store i32 1, i32* @cipher_resowner_callback_registered, align 4
  br label %44

44:                                               ; preds = %41, %38
  %45 = load i32, i32* @TopMemoryContext, align 4
  %46 = call %struct.TYPE_11__* @MemoryContextAllocZero(i32 %45, i32 48)
  store %struct.TYPE_11__* %46, %struct.TYPE_11__** %9, align 8
  %47 = load %struct.ossl_cipher_lookup*, %struct.ossl_cipher_lookup** %6, align 8
  %48 = getelementptr inbounds %struct.ossl_cipher_lookup, %struct.ossl_cipher_lookup* %47, i32 0, i32 0
  %49 = load %struct.TYPE_9__*, %struct.TYPE_9__** %48, align 8
  %50 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %51 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %50, i32 0, i32 0
  store %struct.TYPE_9__* %49, %struct.TYPE_9__** %51, align 8
  %52 = call i32* (...) @EVP_CIPHER_CTX_new()
  store i32* %52, i32** %8, align 8
  %53 = load i32*, i32** %8, align 8
  %54 = icmp ne i32* %53, null
  br i1 %54, label %59, label %55

55:                                               ; preds = %44
  %56 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %57 = call i32 @pfree(%struct.TYPE_11__* %56)
  %58 = load i32, i32* @PXE_CIPHER_INIT, align 4
  store i32 %58, i32* %3, align 4
  br label %119

59:                                               ; preds = %44
  %60 = load i32*, i32** %8, align 8
  %61 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %62 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %61, i32 0, i32 5
  store i32* %60, i32** %62, align 8
  %63 = load i32, i32* @CurrentResourceOwner, align 4
  %64 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %65 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %64, i32 0, i32 4
  store i32 %63, i32* %65, align 8
  %66 = load %struct.TYPE_11__*, %struct.TYPE_11__** @open_ciphers, align 8
  %67 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %68 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %67, i32 0, i32 3
  store %struct.TYPE_11__* %66, %struct.TYPE_11__** %68, align 8
  %69 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %70 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %69, i32 0, i32 2
  store i32* null, i32** %70, align 8
  %71 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  store %struct.TYPE_11__* %71, %struct.TYPE_11__** @open_ciphers, align 8
  %72 = load %struct.ossl_cipher_lookup*, %struct.ossl_cipher_lookup** %6, align 8
  %73 = getelementptr inbounds %struct.ossl_cipher_lookup, %struct.ossl_cipher_lookup* %72, i32 0, i32 0
  %74 = load %struct.TYPE_9__*, %struct.TYPE_9__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %74, i32 0, i32 1
  %76 = load i32 (...)*, i32 (...)** %75, align 8
  %77 = icmp ne i32 (...)* %76, null
  br i1 %77, label %78, label %87

78:                                               ; preds = %59
  %79 = load %struct.ossl_cipher_lookup*, %struct.ossl_cipher_lookup** %6, align 8
  %80 = getelementptr inbounds %struct.ossl_cipher_lookup, %struct.ossl_cipher_lookup* %79, i32 0, i32 0
  %81 = load %struct.TYPE_9__*, %struct.TYPE_9__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %81, i32 0, i32 1
  %83 = load i32 (...)*, i32 (...)** %82, align 8
  %84 = call i32 (...) %83()
  %85 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %86 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %85, i32 0, i32 1
  store i32 %84, i32* %86, align 8
  br label %87

87:                                               ; preds = %78, %59
  %88 = call %struct.TYPE_10__* @px_alloc(i32 40)
  store %struct.TYPE_10__* %88, %struct.TYPE_10__** %7, align 8
  %89 = load i32, i32* @gen_ossl_block_size, align 4
  %90 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %91 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %90, i32 0, i32 7
  store i32 %89, i32* %91, align 8
  %92 = load i32, i32* @gen_ossl_key_size, align 4
  %93 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %94 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %93, i32 0, i32 6
  store i32 %92, i32* %94, align 4
  %95 = load i32, i32* @gen_ossl_iv_size, align 4
  %96 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %97 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %96, i32 0, i32 5
  store i32 %95, i32* %97, align 8
  %98 = load i32, i32* @gen_ossl_free, align 4
  %99 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %100 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %99, i32 0, i32 4
  store i32 %98, i32* %100, align 4
  %101 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %102 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %101, i32 0, i32 0
  %103 = load %struct.TYPE_9__*, %struct.TYPE_9__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %107 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %106, i32 0, i32 3
  store i32 %105, i32* %107, align 8
  %108 = load i32, i32* @gen_ossl_encrypt, align 4
  %109 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %110 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %109, i32 0, i32 2
  store i32 %108, i32* %110, align 4
  %111 = load i32, i32* @gen_ossl_decrypt, align 4
  %112 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %113 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %112, i32 0, i32 1
  store i32 %111, i32* %113, align 8
  %114 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %115 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %116 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %115, i32 0, i32 0
  store %struct.TYPE_11__* %114, %struct.TYPE_11__** %116, align 8
  %117 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %118 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %5, align 8
  store %struct.TYPE_10__* %117, %struct.TYPE_10__** %118, align 8
  store i32 0, i32* %3, align 4
  br label %119

119:                                              ; preds = %87, %55, %36
  %120 = load i32, i32* %3, align 4
  ret i32 %120
}

declare dso_local i8* @px_resolve_alias(i32, i8*) #1

declare dso_local i64 @strcmp(i32*, i8*) #1

declare dso_local i32 @RegisterResourceReleaseCallback(i32, i32*) #1

declare dso_local %struct.TYPE_11__* @MemoryContextAllocZero(i32, i32) #1

declare dso_local i32* @EVP_CIPHER_CTX_new(...) #1

declare dso_local i32 @pfree(%struct.TYPE_11__*) #1

declare dso_local %struct.TYPE_10__* @px_alloc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
