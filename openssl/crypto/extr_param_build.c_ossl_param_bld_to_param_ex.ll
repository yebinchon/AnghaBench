; ModuleID = '/home/carl/AnghaBench/openssl/crypto/extr_param_build.c_ossl_param_bld_to_param_ex.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/extr_param_build.c_ossl_param_bld_to_param_ex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i64, i64 }

@CRYPTO_F_OSSL_PARAM_BLD_TO_PARAM_EX = common dso_local global i32 0, align 4
@CRYPTO_R_INVALID_NULL_ARGUMENT = common dso_local global i32 0, align 4
@CRYPTO_R_INSUFFICIENT_PARAM_SIZE = common dso_local global i32 0, align 4
@ALIGN_SIZE = common dso_local global i64 0, align 8
@CRYPTO_R_INSUFFICIENT_DATA_SPACE = common dso_local global i32 0, align 4
@CRYPTO_R_INSUFFICIENT_SECURE_DATA_SPACE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @ossl_param_bld_to_param_ex(%struct.TYPE_4__* %0, i32* %1, i64 %2, i8* %3, i64 %4, i8* %5, i64 %6) #0 {
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_4__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %9, align 8
  store i32* %1, i32** %10, align 8
  store i64 %2, i64* %11, align 8
  store i8* %3, i8** %12, align 8
  store i64 %4, i64* %13, align 8
  store i8* %5, i8** %14, align 8
  store i64 %6, i64* %15, align 8
  %16 = load i32*, i32** %10, align 8
  %17 = icmp eq i32* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %7
  %19 = load i8*, i8** %12, align 8
  %20 = icmp eq i8* %19, null
  br i1 %20, label %21, label %25

21:                                               ; preds = %18, %7
  %22 = load i32, i32* @CRYPTO_F_OSSL_PARAM_BLD_TO_PARAM_EX, align 4
  %23 = load i32, i32* @CRYPTO_R_INVALID_NULL_ARGUMENT, align 4
  %24 = call i32 @CRYPTOerr(i32 %22, i32 %23)
  store i32* null, i32** %8, align 8
  br label %75

25:                                               ; preds = %18
  %26 = load i64, i64* %11, align 8
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = add nsw i32 %29, 1
  %31 = sext i32 %30 to i64
  %32 = icmp ult i64 %26, %31
  br i1 %32, label %33, label %37

33:                                               ; preds = %25
  %34 = load i32, i32* @CRYPTO_F_OSSL_PARAM_BLD_TO_PARAM_EX, align 4
  %35 = load i32, i32* @CRYPTO_R_INSUFFICIENT_PARAM_SIZE, align 4
  %36 = call i32 @CRYPTOerr(i32 %34, i32 %35)
  store i32* null, i32** %8, align 8
  br label %75

37:                                               ; preds = %25
  %38 = load i64, i64* %13, align 8
  %39 = load i64, i64* @ALIGN_SIZE, align 8
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = mul i64 %39, %42
  %44 = icmp ult i64 %38, %43
  br i1 %44, label %45, label %49

45:                                               ; preds = %37
  %46 = load i32, i32* @CRYPTO_F_OSSL_PARAM_BLD_TO_PARAM_EX, align 4
  %47 = load i32, i32* @CRYPTO_R_INSUFFICIENT_DATA_SPACE, align 4
  %48 = call i32 @CRYPTOerr(i32 %46, i32 %47)
  store i32* null, i32** %8, align 8
  br label %75

49:                                               ; preds = %37
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 2
  %52 = load i64, i64* %51, align 8
  %53 = icmp ugt i64 %52, 0
  br i1 %53, label %54, label %66

54:                                               ; preds = %49
  %55 = load i64, i64* %15, align 8
  %56 = load i64, i64* @ALIGN_SIZE, align 8
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 2
  %59 = load i64, i64* %58, align 8
  %60 = mul i64 %56, %59
  %61 = icmp ult i64 %55, %60
  br i1 %61, label %62, label %66

62:                                               ; preds = %54
  %63 = load i32, i32* @CRYPTO_F_OSSL_PARAM_BLD_TO_PARAM_EX, align 4
  %64 = load i32, i32* @CRYPTO_R_INSUFFICIENT_SECURE_DATA_SPACE, align 4
  %65 = call i32 @CRYPTOerr(i32 %63, i32 %64)
  store i32* null, i32** %8, align 8
  br label %75

66:                                               ; preds = %54, %49
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %68 = load i32*, i32** %10, align 8
  %69 = load i8*, i8** %12, align 8
  %70 = bitcast i8* %69 to i32*
  %71 = load i8*, i8** %14, align 8
  %72 = bitcast i8* %71 to i32*
  %73 = call i32 @param_bld_convert(%struct.TYPE_4__* %67, i32* %68, i32* %70, i32* %72)
  %74 = load i32*, i32** %10, align 8
  store i32* %74, i32** %8, align 8
  br label %75

75:                                               ; preds = %66, %62, %45, %33, %21
  %76 = load i32*, i32** %8, align 8
  ret i32* %76
}

declare dso_local i32 @CRYPTOerr(i32, i32) #1

declare dso_local i32 @param_bld_convert(%struct.TYPE_4__*, i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
