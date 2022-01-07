; ModuleID = '/home/carl/AnghaBench/openssl/crypto/evp/extr_kdf_lib.c_EVP_KDF_CTX_dup.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/evp/extr_kdf_lib.c_EVP_KDF_CTX_dup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32*, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32* (i32*)* }

@EVP_F_EVP_KDF_CTX_DUP = common dso_local global i32 0, align 4
@ERR_R_MALLOC_FAILURE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_10__* @EVP_KDF_CTX_dup(%struct.TYPE_10__* %0) #0 {
  %2 = alloca %struct.TYPE_10__*, align 8
  %3 = alloca %struct.TYPE_10__*, align 8
  %4 = alloca %struct.TYPE_10__*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %3, align 8
  %5 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %6 = icmp eq %struct.TYPE_10__* %5, null
  br i1 %6, label %19, label %7

7:                                                ; preds = %1
  %8 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %8, i32 0, i32 0
  %10 = load i32*, i32** %9, align 8
  %11 = icmp eq i32* %10, null
  br i1 %11, label %19, label %12

12:                                               ; preds = %7
  %13 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %13, i32 0, i32 1
  %15 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %15, i32 0, i32 0
  %17 = load i32* (i32*)*, i32* (i32*)** %16, align 8
  %18 = icmp eq i32* (i32*)* %17, null
  br i1 %18, label %19, label %20

19:                                               ; preds = %12, %7, %1
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %2, align 8
  br label %64

20:                                               ; preds = %12
  %21 = call %struct.TYPE_10__* @OPENSSL_malloc(i32 16)
  store %struct.TYPE_10__* %21, %struct.TYPE_10__** %4, align 8
  %22 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %23 = icmp eq %struct.TYPE_10__* %22, null
  br i1 %23, label %24, label %28

24:                                               ; preds = %20
  %25 = load i32, i32* @EVP_F_EVP_KDF_CTX_DUP, align 4
  %26 = load i32, i32* @ERR_R_MALLOC_FAILURE, align 4
  %27 = call i32 @EVPerr(i32 %25, i32 %26)
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %2, align 8
  br label %64

28:                                               ; preds = %20
  %29 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %30 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %31 = call i32 @memcpy(%struct.TYPE_10__* %29, %struct.TYPE_10__* %30, i32 16)
  %32 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %32, i32 0, i32 1
  %34 = load %struct.TYPE_11__*, %struct.TYPE_11__** %33, align 8
  %35 = call i32 @EVP_KDF_up_ref(%struct.TYPE_11__* %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %43, label %37

37:                                               ; preds = %28
  %38 = load i32, i32* @EVP_F_EVP_KDF_CTX_DUP, align 4
  %39 = load i32, i32* @ERR_R_MALLOC_FAILURE, align 4
  %40 = call i32 @EVPerr(i32 %38, i32 %39)
  %41 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %42 = call i32 @OPENSSL_free(%struct.TYPE_10__* %41)
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %2, align 8
  br label %64

43:                                               ; preds = %28
  %44 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %45 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %44, i32 0, i32 1
  %46 = load %struct.TYPE_11__*, %struct.TYPE_11__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %46, i32 0, i32 0
  %48 = load i32* (i32*)*, i32* (i32*)** %47, align 8
  %49 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %50 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %49, i32 0, i32 0
  %51 = load i32*, i32** %50, align 8
  %52 = call i32* %48(i32* %51)
  %53 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %54 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %53, i32 0, i32 0
  store i32* %52, i32** %54, align 8
  %55 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %56 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %55, i32 0, i32 0
  %57 = load i32*, i32** %56, align 8
  %58 = icmp eq i32* %57, null
  br i1 %58, label %59, label %62

59:                                               ; preds = %43
  %60 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %61 = call i32 @EVP_KDF_CTX_free(%struct.TYPE_10__* %60)
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %2, align 8
  br label %64

62:                                               ; preds = %43
  %63 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  store %struct.TYPE_10__* %63, %struct.TYPE_10__** %2, align 8
  br label %64

64:                                               ; preds = %62, %59, %37, %24, %19
  %65 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  ret %struct.TYPE_10__* %65
}

declare dso_local %struct.TYPE_10__* @OPENSSL_malloc(i32) #1

declare dso_local i32 @EVPerr(i32, i32) #1

declare dso_local i32 @memcpy(%struct.TYPE_10__*, %struct.TYPE_10__*, i32) #1

declare dso_local i32 @EVP_KDF_up_ref(%struct.TYPE_11__*) #1

declare dso_local i32 @OPENSSL_free(%struct.TYPE_10__*) #1

declare dso_local i32 @EVP_KDF_CTX_free(%struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
