; ModuleID = '/home/carl/AnghaBench/openssl/test/extr_destest.c_test_des_ede_ecb.c'
source_filename = "/home/carl/AnghaBench/openssl/test/extr_destest.c_test_des_ede_ecb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DATA_BUF_SIZE = common dso_local global i32 0, align 4
@key_data = common dso_local global i32* null, align 8
@plain_data = common dso_local global i32* null, align 8
@DES_ENCRYPT = common dso_local global i32 0, align 4
@DES_DECRYPT = common dso_local global i32 0, align 4
@cipher_ecb2 = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [31 x i8] c"Encryption error %2d k=%s p=%s\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"Decryption error %2d k=%s p=%s \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @test_des_ede_ecb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_des_ede_ecb(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %14 = load i32, i32* @DATA_BUF_SIZE, align 4
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %10, align 8
  %17 = alloca i8, i64 %15, align 16
  store i64 %15, i64* %11, align 8
  %18 = load i32, i32* @DATA_BUF_SIZE, align 4
  %19 = zext i32 %18 to i64
  %20 = alloca i8, i64 %19, align 16
  store i64 %19, i64* %12, align 8
  %21 = load i32*, i32** @key_data, align 8
  %22 = load i32, i32* %3, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i32, i32* %21, i64 %23
  %25 = call i32 @DES_set_key_unchecked(i32* %24, i32* %7)
  %26 = load i32*, i32** @key_data, align 8
  %27 = load i32, i32* %3, align 4
  %28 = add nsw i32 %27, 1
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i32, i32* %26, i64 %29
  %31 = call i32 @DES_set_key_unchecked(i32* %30, i32* %8)
  %32 = load i32*, i32** @key_data, align 8
  %33 = load i32, i32* %3, align 4
  %34 = add nsw i32 %33, 2
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %32, i64 %35
  %37 = call i32 @DES_set_key_unchecked(i32* %36, i32* %9)
  %38 = load i32, i32* %4, align 4
  %39 = load i32*, i32** @plain_data, align 8
  %40 = load i32, i32* %3, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %39, i64 %41
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @memcpy(i32 %38, i32 %43, i32 8)
  %45 = load i32, i32* %5, align 4
  %46 = call i32 @memset(i32 %45, i32 0, i32 8)
  %47 = load i32, i32* %6, align 4
  %48 = call i32 @memset(i32 %47, i32 0, i32 8)
  %49 = load i32, i32* @DES_ENCRYPT, align 4
  %50 = call i32 @DES_ecb3_encrypt(i32* %4, i32* %5, i32* %7, i32* %8, i32* %7, i32 %49)
  %51 = load i32, i32* @DES_DECRYPT, align 4
  %52 = call i32 @DES_ecb3_encrypt(i32* %5, i32* %6, i32* %7, i32* %8, i32* %7, i32 %51)
  %53 = load i32, i32* %5, align 4
  %54 = load i32*, i32** @cipher_ecb2, align 8
  %55 = load i32, i32* %3, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i32, i32* %54, i64 %56
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @TEST_mem_eq(i32 %53, i32 8, i32 %58, i32 8)
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %73, label %61

61:                                               ; preds = %1
  %62 = load i32, i32* %3, align 4
  %63 = add nsw i32 %62, 1
  %64 = load i32*, i32** @key_data, align 8
  %65 = load i32, i32* %3, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i32, i32* %64, i64 %66
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @pt(i32 %68, i8* %17)
  %70 = load i32, i32* %4, align 4
  %71 = call i32 @pt(i32 %70, i8* %20)
  %72 = call i32 @TEST_info(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %63, i32 %69, i32 %71)
  store i32 0, i32* %2, align 4
  store i32 1, i32* %13, align 4
  br label %91

73:                                               ; preds = %1
  %74 = load i32, i32* %4, align 4
  %75 = load i32, i32* %6, align 4
  %76 = call i32 @TEST_mem_eq(i32 %74, i32 8, i32 %75, i32 8)
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %90, label %78

78:                                               ; preds = %73
  %79 = load i32, i32* %3, align 4
  %80 = add nsw i32 %79, 1
  %81 = load i32*, i32** @key_data, align 8
  %82 = load i32, i32* %3, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i32, i32* %81, i64 %83
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @pt(i32 %85, i8* %17)
  %87 = load i32, i32* %5, align 4
  %88 = call i32 @pt(i32 %87, i8* %20)
  %89 = call i32 @TEST_info(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %80, i32 %86, i32 %88)
  store i32 0, i32* %2, align 4
  store i32 1, i32* %13, align 4
  br label %91

90:                                               ; preds = %73
  store i32 1, i32* %2, align 4
  store i32 1, i32* %13, align 4
  br label %91

91:                                               ; preds = %90, %78, %61
  %92 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %92)
  %93 = load i32, i32* %2, align 4
  ret i32 %93
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @DES_set_key_unchecked(i32*, i32*) #2

declare dso_local i32 @memcpy(i32, i32, i32) #2

declare dso_local i32 @memset(i32, i32, i32) #2

declare dso_local i32 @DES_ecb3_encrypt(i32*, i32*, i32*, i32*, i32*, i32) #2

declare dso_local i32 @TEST_mem_eq(i32, i32, i32, i32) #2

declare dso_local i32 @TEST_info(i8*, i32, i32, i32) #2

declare dso_local i32 @pt(i32, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
