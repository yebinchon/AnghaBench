; ModuleID = '/home/carl/AnghaBench/openssl/crypto/evp/extr_evp_pkey.c_EVP_PKEY2PKCS8.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/evp/extr_evp_pkey.c_EVP_PKEY2PKCS8.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 (i32*, %struct.TYPE_6__*)* }

@EVP_F_EVP_PKEY2PKCS8 = common dso_local global i32 0, align 4
@ERR_R_MALLOC_FAILURE = common dso_local global i32 0, align 4
@EVP_R_PRIVATE_KEY_ENCODE_ERROR = common dso_local global i32 0, align 4
@EVP_R_METHOD_NOT_SUPPORTED = common dso_local global i32 0, align 4
@EVP_R_UNSUPPORTED_PRIVATE_KEY_ALGORITHM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @EVP_PKEY2PKCS8(%struct.TYPE_6__* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca i32*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  %5 = call i32* (...) @PKCS8_PRIV_KEY_INFO_new()
  store i32* %5, i32** %4, align 8
  %6 = load i32*, i32** %4, align 8
  %7 = icmp eq i32* %6, null
  br i1 %7, label %8, label %12

8:                                                ; preds = %1
  %9 = load i32, i32* @EVP_F_EVP_PKEY2PKCS8, align 4
  %10 = load i32, i32* @ERR_R_MALLOC_FAILURE, align 4
  %11 = call i32 @EVPerr(i32 %9, i32 %10)
  store i32* null, i32** %2, align 8
  br label %53

12:                                               ; preds = %1
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %16 = icmp ne %struct.TYPE_5__* %15, null
  br i1 %16, label %17, label %44

17:                                               ; preds = %12
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = load i32 (i32*, %struct.TYPE_6__*)*, i32 (i32*, %struct.TYPE_6__*)** %21, align 8
  %23 = icmp ne i32 (i32*, %struct.TYPE_6__*)* %22, null
  br i1 %23, label %24, label %39

24:                                               ; preds = %17
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = load i32 (i32*, %struct.TYPE_6__*)*, i32 (i32*, %struct.TYPE_6__*)** %28, align 8
  %30 = load i32*, i32** %4, align 8
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %32 = call i32 %29(i32* %30, %struct.TYPE_6__* %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %38, label %34

34:                                               ; preds = %24
  %35 = load i32, i32* @EVP_F_EVP_PKEY2PKCS8, align 4
  %36 = load i32, i32* @EVP_R_PRIVATE_KEY_ENCODE_ERROR, align 4
  %37 = call i32 @EVPerr(i32 %35, i32 %36)
  br label %50

38:                                               ; preds = %24
  br label %43

39:                                               ; preds = %17
  %40 = load i32, i32* @EVP_F_EVP_PKEY2PKCS8, align 4
  %41 = load i32, i32* @EVP_R_METHOD_NOT_SUPPORTED, align 4
  %42 = call i32 @EVPerr(i32 %40, i32 %41)
  br label %50

43:                                               ; preds = %38
  br label %48

44:                                               ; preds = %12
  %45 = load i32, i32* @EVP_F_EVP_PKEY2PKCS8, align 4
  %46 = load i32, i32* @EVP_R_UNSUPPORTED_PRIVATE_KEY_ALGORITHM, align 4
  %47 = call i32 @EVPerr(i32 %45, i32 %46)
  br label %50

48:                                               ; preds = %43
  %49 = load i32*, i32** %4, align 8
  store i32* %49, i32** %2, align 8
  br label %53

50:                                               ; preds = %44, %39, %34
  %51 = load i32*, i32** %4, align 8
  %52 = call i32 @PKCS8_PRIV_KEY_INFO_free(i32* %51)
  store i32* null, i32** %2, align 8
  br label %53

53:                                               ; preds = %50, %48, %8
  %54 = load i32*, i32** %2, align 8
  ret i32* %54
}

declare dso_local i32* @PKCS8_PRIV_KEY_INFO_new(...) #1

declare dso_local i32 @EVPerr(i32, i32) #1

declare dso_local i32 @PKCS8_PRIV_KEY_INFO_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
