; ModuleID = '/home/carl/AnghaBench/openssl/crypto/rsa/extr_rsa_pk1.c_RSA_padding_check_PKCS1_type_1.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/rsa/extr_rsa_pk1.c_RSA_padding_check_PKCS1_type_1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@RSA_PKCS1_PADDING_SIZE = common dso_local global i32 0, align 4
@RSA_F_RSA_PADDING_CHECK_PKCS1_TYPE_1 = common dso_local global i32 0, align 4
@RSA_R_INVALID_PADDING = common dso_local global i32 0, align 4
@RSA_R_BLOCK_TYPE_IS_NOT_01 = common dso_local global i32 0, align 4
@RSA_R_BAD_FIXED_HEADER_DECRYPT = common dso_local global i32 0, align 4
@RSA_R_NULL_BEFORE_BLOCK_MISSING = common dso_local global i32 0, align 4
@RSA_R_BAD_PAD_BYTE_COUNT = common dso_local global i32 0, align 4
@RSA_R_DATA_TOO_LARGE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @RSA_padding_check_PKCS1_type_1(i8* %0, i32 %1, i8* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  store i8* %0, i8** %7, align 8
  store i32 %1, i32* %8, align 4
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %15 = load i8*, i8** %9, align 8
  store i8* %15, i8** %14, align 8
  %16 = load i32, i32* %11, align 4
  %17 = load i32, i32* @RSA_PKCS1_PADDING_SIZE, align 4
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %5
  store i32 -1, i32* %6, align 4
  br label %116

20:                                               ; preds = %5
  %21 = load i32, i32* %11, align 4
  %22 = load i32, i32* %10, align 4
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %24, label %37

24:                                               ; preds = %20
  %25 = load i8*, i8** %14, align 8
  %26 = getelementptr inbounds i8, i8* %25, i32 1
  store i8* %26, i8** %14, align 8
  %27 = load i8, i8* %25, align 1
  %28 = zext i8 %27 to i32
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %24
  %31 = load i32, i32* @RSA_F_RSA_PADDING_CHECK_PKCS1_TYPE_1, align 4
  %32 = load i32, i32* @RSA_R_INVALID_PADDING, align 4
  %33 = call i32 @RSAerr(i32 %31, i32 %32)
  store i32 -1, i32* %6, align 4
  br label %116

34:                                               ; preds = %24
  %35 = load i32, i32* %10, align 4
  %36 = add nsw i32 %35, -1
  store i32 %36, i32* %10, align 4
  br label %37

37:                                               ; preds = %34, %20
  %38 = load i32, i32* %11, align 4
  %39 = load i32, i32* %10, align 4
  %40 = add nsw i32 %39, 1
  %41 = icmp ne i32 %38, %40
  br i1 %41, label %48, label %42

42:                                               ; preds = %37
  %43 = load i8*, i8** %14, align 8
  %44 = getelementptr inbounds i8, i8* %43, i32 1
  store i8* %44, i8** %14, align 8
  %45 = load i8, i8* %43, align 1
  %46 = zext i8 %45 to i32
  %47 = icmp ne i32 %46, 1
  br i1 %47, label %48, label %52

48:                                               ; preds = %42, %37
  %49 = load i32, i32* @RSA_F_RSA_PADDING_CHECK_PKCS1_TYPE_1, align 4
  %50 = load i32, i32* @RSA_R_BLOCK_TYPE_IS_NOT_01, align 4
  %51 = call i32 @RSAerr(i32 %49, i32 %50)
  store i32 -1, i32* %6, align 4
  br label %116

52:                                               ; preds = %42
  %53 = load i32, i32* %10, align 4
  %54 = sub nsw i32 %53, 1
  store i32 %54, i32* %13, align 4
  store i32 0, i32* %12, align 4
  br label %55

55:                                               ; preds = %79, %52
  %56 = load i32, i32* %12, align 4
  %57 = load i32, i32* %13, align 4
  %58 = icmp slt i32 %56, %57
  br i1 %58, label %59, label %82

59:                                               ; preds = %55
  %60 = load i8*, i8** %14, align 8
  %61 = load i8, i8* %60, align 1
  %62 = zext i8 %61 to i32
  %63 = icmp ne i32 %62, 255
  br i1 %63, label %64, label %76

64:                                               ; preds = %59
  %65 = load i8*, i8** %14, align 8
  %66 = load i8, i8* %65, align 1
  %67 = zext i8 %66 to i32
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %64
  %70 = load i8*, i8** %14, align 8
  %71 = getelementptr inbounds i8, i8* %70, i32 1
  store i8* %71, i8** %14, align 8
  br label %82

72:                                               ; preds = %64
  %73 = load i32, i32* @RSA_F_RSA_PADDING_CHECK_PKCS1_TYPE_1, align 4
  %74 = load i32, i32* @RSA_R_BAD_FIXED_HEADER_DECRYPT, align 4
  %75 = call i32 @RSAerr(i32 %73, i32 %74)
  store i32 -1, i32* %6, align 4
  br label %116

76:                                               ; preds = %59
  %77 = load i8*, i8** %14, align 8
  %78 = getelementptr inbounds i8, i8* %77, i32 1
  store i8* %78, i8** %14, align 8
  br label %79

79:                                               ; preds = %76
  %80 = load i32, i32* %12, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %12, align 4
  br label %55

82:                                               ; preds = %69, %55
  %83 = load i32, i32* %12, align 4
  %84 = load i32, i32* %13, align 4
  %85 = icmp eq i32 %83, %84
  br i1 %85, label %86, label %90

86:                                               ; preds = %82
  %87 = load i32, i32* @RSA_F_RSA_PADDING_CHECK_PKCS1_TYPE_1, align 4
  %88 = load i32, i32* @RSA_R_NULL_BEFORE_BLOCK_MISSING, align 4
  %89 = call i32 @RSAerr(i32 %87, i32 %88)
  store i32 -1, i32* %6, align 4
  br label %116

90:                                               ; preds = %82
  %91 = load i32, i32* %12, align 4
  %92 = icmp slt i32 %91, 8
  br i1 %92, label %93, label %97

93:                                               ; preds = %90
  %94 = load i32, i32* @RSA_F_RSA_PADDING_CHECK_PKCS1_TYPE_1, align 4
  %95 = load i32, i32* @RSA_R_BAD_PAD_BYTE_COUNT, align 4
  %96 = call i32 @RSAerr(i32 %94, i32 %95)
  store i32 -1, i32* %6, align 4
  br label %116

97:                                               ; preds = %90
  %98 = load i32, i32* %12, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %12, align 4
  %100 = load i32, i32* %12, align 4
  %101 = load i32, i32* %13, align 4
  %102 = sub nsw i32 %101, %100
  store i32 %102, i32* %13, align 4
  %103 = load i32, i32* %13, align 4
  %104 = load i32, i32* %8, align 4
  %105 = icmp sgt i32 %103, %104
  br i1 %105, label %106, label %110

106:                                              ; preds = %97
  %107 = load i32, i32* @RSA_F_RSA_PADDING_CHECK_PKCS1_TYPE_1, align 4
  %108 = load i32, i32* @RSA_R_DATA_TOO_LARGE, align 4
  %109 = call i32 @RSAerr(i32 %107, i32 %108)
  store i32 -1, i32* %6, align 4
  br label %116

110:                                              ; preds = %97
  %111 = load i8*, i8** %7, align 8
  %112 = load i8*, i8** %14, align 8
  %113 = load i32, i32* %13, align 4
  %114 = call i32 @memcpy(i8* %111, i8* %112, i32 %113)
  %115 = load i32, i32* %13, align 4
  store i32 %115, i32* %6, align 4
  br label %116

116:                                              ; preds = %110, %106, %93, %86, %72, %48, %30, %19
  %117 = load i32, i32* %6, align 4
  ret i32 %117
}

declare dso_local i32 @RSAerr(i32, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
