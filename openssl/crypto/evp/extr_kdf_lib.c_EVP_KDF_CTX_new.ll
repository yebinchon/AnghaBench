; ModuleID = '/home/carl/AnghaBench/openssl/crypto/evp/extr_kdf_lib.c_EVP_KDF_CTX_new.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/evp/extr_kdf_lib.c_EVP_KDF_CTX_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_9__*, i32* }
%struct.TYPE_9__ = type { i32 (i32*)*, i32, i32* (i32)* }

@EVP_F_EVP_KDF_CTX_NEW = common dso_local global i32 0, align 4
@ERR_R_MALLOC_FAILURE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_8__* @EVP_KDF_CTX_new(%struct.TYPE_9__* %0) #0 {
  %2 = alloca %struct.TYPE_8__*, align 8
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca %struct.TYPE_8__*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %3, align 8
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %4, align 8
  %5 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %6 = icmp eq %struct.TYPE_9__* %5, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %2, align 8
  br label %51

8:                                                ; preds = %1
  %9 = call %struct.TYPE_8__* @OPENSSL_zalloc(i32 16)
  store %struct.TYPE_8__* %9, %struct.TYPE_8__** %4, align 8
  %10 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %11 = icmp eq %struct.TYPE_8__* %10, null
  br i1 %11, label %28, label %12

12:                                               ; preds = %8
  %13 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %13, i32 0, i32 2
  %15 = load i32* (i32)*, i32* (i32)** %14, align 8
  %16 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @ossl_provider_ctx(i32 %18)
  %20 = call i32* %15(i32 %19)
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 1
  store i32* %20, i32** %22, align 8
  %23 = icmp eq i32* %20, null
  br i1 %23, label %28, label %24

24:                                               ; preds = %12
  %25 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %26 = call i32 @EVP_KDF_up_ref(%struct.TYPE_9__* %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %45, label %28

28:                                               ; preds = %24, %12, %8
  %29 = load i32, i32* @EVP_F_EVP_KDF_CTX_NEW, align 4
  %30 = load i32, i32* @ERR_R_MALLOC_FAILURE, align 4
  %31 = call i32 @EVPerr(i32 %29, i32 %30)
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %33 = icmp ne %struct.TYPE_8__* %32, null
  br i1 %33, label %34, label %42

34:                                               ; preds = %28
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i32 0, i32 0
  %37 = load i32 (i32*)*, i32 (i32*)** %36, align 8
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 1
  %40 = load i32*, i32** %39, align 8
  %41 = call i32 %37(i32* %40)
  br label %42

42:                                               ; preds = %34, %28
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %44 = call i32 @OPENSSL_free(%struct.TYPE_8__* %43)
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %4, align 8
  br label %49

45:                                               ; preds = %24
  %46 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 0
  store %struct.TYPE_9__* %46, %struct.TYPE_9__** %48, align 8
  br label %49

49:                                               ; preds = %45, %42
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  store %struct.TYPE_8__* %50, %struct.TYPE_8__** %2, align 8
  br label %51

51:                                               ; preds = %49, %7
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  ret %struct.TYPE_8__* %52
}

declare dso_local %struct.TYPE_8__* @OPENSSL_zalloc(i32) #1

declare dso_local i32 @ossl_provider_ctx(i32) #1

declare dso_local i32 @EVP_KDF_up_ref(%struct.TYPE_9__*) #1

declare dso_local i32 @EVPerr(i32, i32) #1

declare dso_local i32 @OPENSSL_free(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
