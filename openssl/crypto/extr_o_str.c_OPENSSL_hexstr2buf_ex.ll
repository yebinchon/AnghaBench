; ModuleID = '/home/carl/AnghaBench/openssl/crypto/extr_o_str.c_OPENSSL_hexstr2buf_ex.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/extr_o_str.c_OPENSSL_hexstr2buf_ex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CRYPTO_F_OPENSSL_HEXSTR2BUF_EX = common dso_local global i32 0, align 4
@CRYPTO_R_ODD_NUMBER_OF_DIGITS = common dso_local global i32 0, align 4
@CRYPTO_R_ILLEGAL_HEX_DIGIT = common dso_local global i32 0, align 4
@CRYPTO_R_TOO_SMALL_BUFFER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @OPENSSL_hexstr2buf_ex(i8* %0, i64 %1, i64* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8, align 1
  %12 = alloca i8, align 1
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  store i8* %0, i8** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64* %2, i64** %8, align 8
  store i8* %3, i8** %9, align 8
  %17 = load i8*, i8** %9, align 8
  store i8* %17, i8** %15, align 8
  %18 = load i8*, i8** %6, align 8
  store i8* %18, i8** %10, align 8
  store i64 0, i64* %16, align 8
  br label %19

19:                                               ; preds = %76, %30, %4
  %20 = load i8*, i8** %15, align 8
  %21 = load i8, i8* %20, align 1
  %22 = icmp ne i8 %21, 0
  br i1 %22, label %23, label %77

23:                                               ; preds = %19
  %24 = load i8*, i8** %15, align 8
  %25 = getelementptr inbounds i8, i8* %24, i32 1
  store i8* %25, i8** %15, align 8
  %26 = load i8, i8* %24, align 1
  store i8 %26, i8* %11, align 1
  %27 = load i8, i8* %11, align 1
  %28 = zext i8 %27 to i32
  %29 = icmp eq i32 %28, 58
  br i1 %29, label %30, label %31

30:                                               ; preds = %23
  br label %19

31:                                               ; preds = %23
  %32 = load i8*, i8** %15, align 8
  %33 = getelementptr inbounds i8, i8* %32, i32 1
  store i8* %33, i8** %15, align 8
  %34 = load i8, i8* %32, align 1
  store i8 %34, i8* %12, align 1
  %35 = load i8, i8* %12, align 1
  %36 = icmp ne i8 %35, 0
  br i1 %36, label %41, label %37

37:                                               ; preds = %31
  %38 = load i32, i32* @CRYPTO_F_OPENSSL_HEXSTR2BUF_EX, align 4
  %39 = load i32, i32* @CRYPTO_R_ODD_NUMBER_OF_DIGITS, align 4
  %40 = call i32 @CRYPTOerr(i32 %38, i32 %39)
  store i32 0, i32* %5, align 4
  br label %84

41:                                               ; preds = %31
  %42 = load i8, i8* %12, align 1
  %43 = call i32 @OPENSSL_hexchar2int(i8 zeroext %42)
  store i32 %43, i32* %14, align 4
  %44 = load i8, i8* %11, align 1
  %45 = call i32 @OPENSSL_hexchar2int(i8 zeroext %44)
  store i32 %45, i32* %13, align 4
  %46 = load i32, i32* %14, align 4
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %51, label %48

48:                                               ; preds = %41
  %49 = load i32, i32* %13, align 4
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %48, %41
  %52 = load i32, i32* @CRYPTO_F_OPENSSL_HEXSTR2BUF_EX, align 4
  %53 = load i32, i32* @CRYPTO_R_ILLEGAL_HEX_DIGIT, align 4
  %54 = call i32 @CRYPTOerr(i32 %52, i32 %53)
  store i32 0, i32* %5, align 4
  br label %84

55:                                               ; preds = %48
  %56 = load i64, i64* %16, align 8
  %57 = add i64 %56, 1
  store i64 %57, i64* %16, align 8
  %58 = load i8*, i8** %10, align 8
  %59 = icmp ne i8* %58, null
  br i1 %59, label %60, label %76

60:                                               ; preds = %55
  %61 = load i64, i64* %16, align 8
  %62 = load i64, i64* %7, align 8
  %63 = icmp ugt i64 %61, %62
  br i1 %63, label %64, label %68

64:                                               ; preds = %60
  %65 = load i32, i32* @CRYPTO_F_OPENSSL_HEXSTR2BUF_EX, align 4
  %66 = load i32, i32* @CRYPTO_R_TOO_SMALL_BUFFER, align 4
  %67 = call i32 @CRYPTOerr(i32 %65, i32 %66)
  store i32 0, i32* %5, align 4
  br label %84

68:                                               ; preds = %60
  %69 = load i32, i32* %13, align 4
  %70 = shl i32 %69, 4
  %71 = load i32, i32* %14, align 4
  %72 = or i32 %70, %71
  %73 = trunc i32 %72 to i8
  %74 = load i8*, i8** %10, align 8
  %75 = getelementptr inbounds i8, i8* %74, i32 1
  store i8* %75, i8** %10, align 8
  store i8 %73, i8* %74, align 1
  br label %76

76:                                               ; preds = %68, %55
  br label %19

77:                                               ; preds = %19
  %78 = load i64*, i64** %8, align 8
  %79 = icmp ne i64* %78, null
  br i1 %79, label %80, label %83

80:                                               ; preds = %77
  %81 = load i64, i64* %16, align 8
  %82 = load i64*, i64** %8, align 8
  store i64 %81, i64* %82, align 8
  br label %83

83:                                               ; preds = %80, %77
  store i32 1, i32* %5, align 4
  br label %84

84:                                               ; preds = %83, %64, %51, %37
  %85 = load i32, i32* %5, align 4
  ret i32 %85
}

declare dso_local i32 @CRYPTOerr(i32, i32) #1

declare dso_local i32 @OPENSSL_hexchar2int(i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
