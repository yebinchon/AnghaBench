; ModuleID = '/home/carl/AnghaBench/openssl/test/testutil/extr_format_output.c_test_output_bignum.c'
source_filename = "/home/carl/AnghaBench/openssl/test/testutil/extr_format_output.c_test_output_bignum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [19 x i8] c"bignum: '%s' = %s\0A\00", align 1
@BN_OUTPUT_SIZE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [23 x i8] c"bignum: '%s' = %s0x%s\0A\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"bignum\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_output_bignum(i8* %0, i32* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32* %1, i32** %4, align 8
  %10 = load i32*, i32** %4, align 8
  %11 = icmp eq i32* %10, null
  br i1 %11, label %16, label %12

12:                                               ; preds = %2
  %13 = load i32*, i32** %4, align 8
  %14 = call i64 @BN_is_zero(i32* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %23

16:                                               ; preds = %12, %2
  %17 = load i8*, i8** %3, align 8
  %18 = load i32*, i32** %4, align 8
  %19 = call i32 @test_bignum_zero_null(i32* %18)
  %20 = sext i32 %19 to i64
  %21 = inttoptr i64 %20 to i8*
  %22 = call i32 (i8*, i8*, i8*, ...) @test_printf_stderr(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i8* %17, i8* %21)
  br label %71

23:                                               ; preds = %12
  %24 = load i32*, i32** %4, align 8
  %25 = call i64 @BN_num_bytes(i32* %24)
  %26 = load i64, i64* @BN_OUTPUT_SIZE, align 8
  %27 = icmp sle i64 %25, %26
  br i1 %27, label %28, label %65

28:                                               ; preds = %23
  %29 = load i64, i64* @BN_OUTPUT_SIZE, align 8
  %30 = call i8* @llvm.stacksave()
  store i8* %30, i8** %5, align 8
  %31 = alloca i8, i64 %29, align 16
  store i64 %29, i64* %6, align 8
  %32 = mul i64 2, %29
  %33 = add i64 %32, 1
  %34 = alloca i8, i64 %33, align 16
  store i64 %33, i64* %7, align 8
  store i8* %34, i8** %8, align 8
  %35 = load i32*, i32** %4, align 8
  %36 = call i32 @BN_bn2bin(i32* %35, i8* %31)
  store i32 %36, i32* %9, align 4
  %37 = load i32, i32* %9, align 4
  %38 = load i8*, i8** %8, align 8
  %39 = load i64, i64* @BN_OUTPUT_SIZE, align 8
  %40 = call i32 @hex_convert_memory(i8* %31, i32 %37, i8* %38, i64 %39)
  br label %41

41:                                               ; preds = %54, %28
  %42 = load i8*, i8** %8, align 8
  %43 = load i8, i8* %42, align 1
  %44 = sext i8 %43 to i32
  %45 = icmp eq i32 %44, 48
  br i1 %45, label %46, label %52

46:                                               ; preds = %41
  %47 = load i8*, i8** %8, align 8
  %48 = getelementptr inbounds i8, i8* %47, i32 1
  store i8* %48, i8** %8, align 8
  %49 = load i8, i8* %48, align 1
  %50 = sext i8 %49 to i32
  %51 = icmp ne i32 %50, 0
  br label %52

52:                                               ; preds = %46, %41
  %53 = phi i1 [ false, %41 ], [ %51, %46 ]
  br i1 %53, label %54, label %55

54:                                               ; preds = %52
  br label %41

55:                                               ; preds = %52
  %56 = load i8*, i8** %3, align 8
  %57 = load i32*, i32** %4, align 8
  %58 = call i64 @BN_is_negative(i32* %57)
  %59 = icmp ne i64 %58, 0
  %60 = zext i1 %59 to i64
  %61 = select i1 %59, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0)
  %62 = load i8*, i8** %8, align 8
  %63 = call i32 (i8*, i8*, i8*, ...) @test_printf_stderr(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* %56, i8* %61, i8* %62)
  %64 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %64)
  br label %70

65:                                               ; preds = %23
  %66 = load i8*, i8** %3, align 8
  %67 = load i32*, i32** %4, align 8
  %68 = load i32*, i32** %4, align 8
  %69 = call i32 @test_fail_bignum_common(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i32* null, i32 0, i32* null, i32* null, i32* null, i8* %66, i32* %67, i32* %68)
  br label %70

70:                                               ; preds = %65, %55
  br label %71

71:                                               ; preds = %70, %16
  ret void
}

declare dso_local i64 @BN_is_zero(i32*) #1

declare dso_local i32 @test_printf_stderr(i8*, i8*, i8*, ...) #1

declare dso_local i32 @test_bignum_zero_null(i32*) #1

declare dso_local i64 @BN_num_bytes(i32*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @BN_bn2bin(i32*, i8*) #1

declare dso_local i32 @hex_convert_memory(i8*, i32, i8*, i64) #1

declare dso_local i64 @BN_is_negative(i32*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i32 @test_fail_bignum_common(i8*, i32*, i32, i32*, i32*, i32*, i8*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
