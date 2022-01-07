; ModuleID = '/home/carl/AnghaBench/openssl/crypto/extr_o_str.c_OPENSSL_buf2hexstr_ex.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/extr_o_str.c_OPENSSL_buf2hexstr_ex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@OPENSSL_buf2hexstr_ex.hexdig = internal constant [17 x i8] c"0123456789ABCDEF\00", align 16
@CRYPTO_F_OPENSSL_BUF2HEXSTR_EX = common dso_local global i32 0, align 4
@CRYPTO_R_TOO_SMALL_BUFFER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @OPENSSL_buf2hexstr_ex(i8* %0, i64 %1, i64* %2, i8* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  store i8* %0, i8** %7, align 8
  store i64 %1, i64* %8, align 8
  store i64* %2, i64** %9, align 8
  store i8* %3, i8** %10, align 8
  store i64 %4, i64* %11, align 8
  %15 = load i64*, i64** %9, align 8
  %16 = icmp ne i64* %15, null
  br i1 %16, label %17, label %21

17:                                               ; preds = %5
  %18 = load i64, i64* %11, align 8
  %19 = mul i64 %18, 3
  %20 = load i64*, i64** %9, align 8
  store i64 %19, i64* %20, align 8
  br label %21

21:                                               ; preds = %17, %5
  %22 = load i8*, i8** %7, align 8
  %23 = icmp eq i8* %22, null
  br i1 %23, label %24, label %25

24:                                               ; preds = %21
  store i32 1, i32* %6, align 4
  br label %71

25:                                               ; preds = %21
  %26 = load i64, i64* %8, align 8
  %27 = load i64, i64* %11, align 8
  %28 = mul i64 %27, 3
  %29 = icmp ult i64 %26, %28
  br i1 %29, label %30, label %34

30:                                               ; preds = %25
  %31 = load i32, i32* @CRYPTO_F_OPENSSL_BUF2HEXSTR_EX, align 4
  %32 = load i32, i32* @CRYPTO_R_TOO_SMALL_BUFFER, align 4
  %33 = call i32 @CRYPTOerr(i32 %31, i32 %32)
  store i32 0, i32* %6, align 4
  br label %71

34:                                               ; preds = %25
  %35 = load i8*, i8** %7, align 8
  store i8* %35, i8** %13, align 8
  store i64 0, i64* %14, align 8
  %36 = load i8*, i8** %10, align 8
  store i8* %36, i8** %12, align 8
  br label %37

37:                                               ; preds = %63, %34
  %38 = load i64, i64* %14, align 8
  %39 = load i64, i64* %11, align 8
  %40 = icmp ult i64 %38, %39
  br i1 %40, label %41, label %68

41:                                               ; preds = %37
  %42 = load i8*, i8** %12, align 8
  %43 = load i8, i8* %42, align 1
  %44 = zext i8 %43 to i32
  %45 = ashr i32 %44, 4
  %46 = and i32 %45, 15
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds [17 x i8], [17 x i8]* @OPENSSL_buf2hexstr_ex.hexdig, i64 0, i64 %47
  %49 = load i8, i8* %48, align 1
  %50 = load i8*, i8** %13, align 8
  %51 = getelementptr inbounds i8, i8* %50, i32 1
  store i8* %51, i8** %13, align 8
  store i8 %49, i8* %50, align 1
  %52 = load i8*, i8** %12, align 8
  %53 = load i8, i8* %52, align 1
  %54 = zext i8 %53 to i32
  %55 = and i32 %54, 15
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds [17 x i8], [17 x i8]* @OPENSSL_buf2hexstr_ex.hexdig, i64 0, i64 %56
  %58 = load i8, i8* %57, align 1
  %59 = load i8*, i8** %13, align 8
  %60 = getelementptr inbounds i8, i8* %59, i32 1
  store i8* %60, i8** %13, align 8
  store i8 %58, i8* %59, align 1
  %61 = load i8*, i8** %13, align 8
  %62 = getelementptr inbounds i8, i8* %61, i32 1
  store i8* %62, i8** %13, align 8
  store i8 58, i8* %61, align 1
  br label %63

63:                                               ; preds = %41
  %64 = load i64, i64* %14, align 8
  %65 = add i64 %64, 1
  store i64 %65, i64* %14, align 8
  %66 = load i8*, i8** %12, align 8
  %67 = getelementptr inbounds i8, i8* %66, i32 1
  store i8* %67, i8** %12, align 8
  br label %37

68:                                               ; preds = %37
  %69 = load i8*, i8** %13, align 8
  %70 = getelementptr inbounds i8, i8* %69, i64 -1
  store i8 0, i8* %70, align 1
  store i32 1, i32* %6, align 4
  br label %71

71:                                               ; preds = %68, %30, %24
  %72 = load i32, i32* %6, align 4
  ret i32 %72
}

declare dso_local i32 @CRYPTOerr(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
