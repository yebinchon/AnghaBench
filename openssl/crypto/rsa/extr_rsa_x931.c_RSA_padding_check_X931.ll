; ModuleID = '/home/carl/AnghaBench/openssl/crypto/rsa/extr_rsa_x931.c_RSA_padding_check_X931.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/rsa/extr_rsa_x931.c_RSA_padding_check_X931.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@RSA_F_RSA_PADDING_CHECK_X931 = common dso_local global i32 0, align 4
@RSA_R_INVALID_HEADER = common dso_local global i32 0, align 4
@RSA_R_INVALID_PADDING = common dso_local global i32 0, align 4
@RSA_R_INVALID_TRAILER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @RSA_padding_check_X931(i8* %0, i32 %1, i8* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i8, align 1
  store i8* %0, i8** %7, align 8
  store i32 %1, i32* %8, align 4
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %16 = load i8*, i8** %9, align 8
  store i8* %16, i8** %14, align 8
  %17 = load i32, i32* %11, align 4
  %18 = load i32, i32* %10, align 4
  %19 = icmp ne i32 %17, %18
  br i1 %19, label %30, label %20

20:                                               ; preds = %5
  %21 = load i8*, i8** %14, align 8
  %22 = load i8, i8* %21, align 1
  %23 = zext i8 %22 to i32
  %24 = icmp ne i32 %23, 106
  br i1 %24, label %25, label %34

25:                                               ; preds = %20
  %26 = load i8*, i8** %14, align 8
  %27 = load i8, i8* %26, align 1
  %28 = zext i8 %27 to i32
  %29 = icmp ne i32 %28, 107
  br i1 %29, label %30, label %34

30:                                               ; preds = %25, %5
  %31 = load i32, i32* @RSA_F_RSA_PADDING_CHECK_X931, align 4
  %32 = load i32, i32* @RSA_R_INVALID_HEADER, align 4
  %33 = call i32 @RSAerr(i32 %31, i32 %32)
  store i32 -1, i32* %6, align 4
  br label %99

34:                                               ; preds = %25, %20
  %35 = load i8*, i8** %14, align 8
  %36 = getelementptr inbounds i8, i8* %35, i32 1
  store i8* %36, i8** %14, align 8
  %37 = load i8, i8* %35, align 1
  %38 = zext i8 %37 to i32
  %39 = icmp eq i32 %38, 107
  br i1 %39, label %40, label %78

40:                                               ; preds = %34
  %41 = load i32, i32* %10, align 4
  %42 = sub nsw i32 %41, 3
  store i32 %42, i32* %13, align 4
  store i32 0, i32* %12, align 4
  br label %43

43:                                               ; preds = %64, %40
  %44 = load i32, i32* %12, align 4
  %45 = load i32, i32* %13, align 4
  %46 = icmp slt i32 %44, %45
  br i1 %46, label %47, label %67

47:                                               ; preds = %43
  %48 = load i8*, i8** %14, align 8
  %49 = getelementptr inbounds i8, i8* %48, i32 1
  store i8* %49, i8** %14, align 8
  %50 = load i8, i8* %48, align 1
  store i8 %50, i8* %15, align 1
  %51 = load i8, i8* %15, align 1
  %52 = zext i8 %51 to i32
  %53 = icmp eq i32 %52, 186
  br i1 %53, label %54, label %55

54:                                               ; preds = %47
  br label %67

55:                                               ; preds = %47
  %56 = load i8, i8* %15, align 1
  %57 = zext i8 %56 to i32
  %58 = icmp ne i32 %57, 187
  br i1 %58, label %59, label %63

59:                                               ; preds = %55
  %60 = load i32, i32* @RSA_F_RSA_PADDING_CHECK_X931, align 4
  %61 = load i32, i32* @RSA_R_INVALID_PADDING, align 4
  %62 = call i32 @RSAerr(i32 %60, i32 %61)
  store i32 -1, i32* %6, align 4
  br label %99

63:                                               ; preds = %55
  br label %64

64:                                               ; preds = %63
  %65 = load i32, i32* %12, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %12, align 4
  br label %43

67:                                               ; preds = %54, %43
  %68 = load i32, i32* %12, align 4
  %69 = load i32, i32* %13, align 4
  %70 = sub nsw i32 %69, %68
  store i32 %70, i32* %13, align 4
  %71 = load i32, i32* %12, align 4
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %77

73:                                               ; preds = %67
  %74 = load i32, i32* @RSA_F_RSA_PADDING_CHECK_X931, align 4
  %75 = load i32, i32* @RSA_R_INVALID_PADDING, align 4
  %76 = call i32 @RSAerr(i32 %74, i32 %75)
  store i32 -1, i32* %6, align 4
  br label %99

77:                                               ; preds = %67
  br label %81

78:                                               ; preds = %34
  %79 = load i32, i32* %10, align 4
  %80 = sub nsw i32 %79, 2
  store i32 %80, i32* %13, align 4
  br label %81

81:                                               ; preds = %78, %77
  %82 = load i8*, i8** %14, align 8
  %83 = load i32, i32* %13, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i8, i8* %82, i64 %84
  %86 = load i8, i8* %85, align 1
  %87 = zext i8 %86 to i32
  %88 = icmp ne i32 %87, 204
  br i1 %88, label %89, label %93

89:                                               ; preds = %81
  %90 = load i32, i32* @RSA_F_RSA_PADDING_CHECK_X931, align 4
  %91 = load i32, i32* @RSA_R_INVALID_TRAILER, align 4
  %92 = call i32 @RSAerr(i32 %90, i32 %91)
  store i32 -1, i32* %6, align 4
  br label %99

93:                                               ; preds = %81
  %94 = load i8*, i8** %7, align 8
  %95 = load i8*, i8** %14, align 8
  %96 = load i32, i32* %13, align 4
  %97 = call i32 @memcpy(i8* %94, i8* %95, i32 %96)
  %98 = load i32, i32* %13, align 4
  store i32 %98, i32* %6, align 4
  br label %99

99:                                               ; preds = %93, %89, %73, %59, %30
  %100 = load i32, i32* %6, align 4
  ret i32 %100
}

declare dso_local i32 @RSAerr(i32, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
