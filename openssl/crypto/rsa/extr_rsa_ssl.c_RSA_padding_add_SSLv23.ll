; ModuleID = '/home/carl/AnghaBench/openssl/crypto/rsa/extr_rsa_ssl.c_RSA_padding_add_SSLv23.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/rsa/extr_rsa_ssl.c_RSA_padding_add_SSLv23.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@RSA_PKCS1_PADDING_SIZE = common dso_local global i32 0, align 4
@RSA_F_RSA_PADDING_ADD_SSLV23 = common dso_local global i32 0, align 4
@RSA_R_DATA_TOO_LARGE_FOR_KEY_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @RSA_padding_add_SSLv23(i8* %0, i32 %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %13 = load i32, i32* %9, align 4
  %14 = load i32, i32* %7, align 4
  %15 = load i32, i32* @RSA_PKCS1_PADDING_SIZE, align 4
  %16 = sub nsw i32 %14, %15
  %17 = icmp sgt i32 %13, %16
  br i1 %17, label %18, label %22

18:                                               ; preds = %4
  %19 = load i32, i32* @RSA_F_RSA_PADDING_ADD_SSLV23, align 4
  %20 = load i32, i32* @RSA_R_DATA_TOO_LARGE_FOR_KEY_SIZE, align 4
  %21 = call i32 @RSAerr(i32 %19, i32 %20)
  store i32 0, i32* %5, align 4
  br label %78

22:                                               ; preds = %4
  %23 = load i8*, i8** %6, align 8
  store i8* %23, i8** %12, align 8
  %24 = load i8*, i8** %12, align 8
  %25 = getelementptr inbounds i8, i8* %24, i32 1
  store i8* %25, i8** %12, align 8
  store i8 0, i8* %24, align 1
  %26 = load i8*, i8** %12, align 8
  %27 = getelementptr inbounds i8, i8* %26, i32 1
  store i8* %27, i8** %12, align 8
  store i8 2, i8* %26, align 1
  %28 = load i32, i32* %7, align 4
  %29 = sub nsw i32 %28, 3
  %30 = sub nsw i32 %29, 8
  %31 = load i32, i32* %9, align 4
  %32 = sub nsw i32 %30, %31
  store i32 %32, i32* %11, align 4
  %33 = load i8*, i8** %12, align 8
  %34 = load i32, i32* %11, align 4
  %35 = call i64 @RAND_bytes(i8* %33, i32 %34)
  %36 = icmp sle i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %22
  store i32 0, i32* %5, align 4
  br label %78

38:                                               ; preds = %22
  store i32 0, i32* %10, align 4
  br label %39

39:                                               ; preds = %64, %38
  %40 = load i32, i32* %10, align 4
  %41 = load i32, i32* %11, align 4
  %42 = icmp slt i32 %40, %41
  br i1 %42, label %43, label %67

43:                                               ; preds = %39
  %44 = load i8*, i8** %12, align 8
  %45 = load i8, i8* %44, align 1
  %46 = zext i8 %45 to i32
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %61

48:                                               ; preds = %43
  br label %49

49:                                               ; preds = %55, %48
  %50 = load i8*, i8** %12, align 8
  %51 = call i64 @RAND_bytes(i8* %50, i32 1)
  %52 = icmp sle i64 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %49
  store i32 0, i32* %5, align 4
  br label %78

54:                                               ; preds = %49
  br label %55

55:                                               ; preds = %54
  %56 = load i8*, i8** %12, align 8
  %57 = load i8, i8* %56, align 1
  %58 = zext i8 %57 to i32
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %49, label %60

60:                                               ; preds = %55
  br label %61

61:                                               ; preds = %60, %43
  %62 = load i8*, i8** %12, align 8
  %63 = getelementptr inbounds i8, i8* %62, i32 1
  store i8* %63, i8** %12, align 8
  br label %64

64:                                               ; preds = %61
  %65 = load i32, i32* %10, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %10, align 4
  br label %39

67:                                               ; preds = %39
  %68 = load i8*, i8** %12, align 8
  %69 = call i32 @memset(i8* %68, i32 3, i32 8)
  %70 = load i8*, i8** %12, align 8
  %71 = getelementptr inbounds i8, i8* %70, i64 8
  store i8* %71, i8** %12, align 8
  %72 = load i8*, i8** %12, align 8
  %73 = getelementptr inbounds i8, i8* %72, i32 1
  store i8* %73, i8** %12, align 8
  store i8 0, i8* %72, align 1
  %74 = load i8*, i8** %12, align 8
  %75 = load i8*, i8** %8, align 8
  %76 = load i32, i32* %9, align 4
  %77 = call i32 @memcpy(i8* %74, i8* %75, i32 %76)
  store i32 1, i32* %5, align 4
  br label %78

78:                                               ; preds = %67, %53, %37, %18
  %79 = load i32, i32* %5, align 4
  ret i32 %79
}

declare dso_local i32 @RSAerr(i32, i32) #1

declare dso_local i64 @RAND_bytes(i8*, i32) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
