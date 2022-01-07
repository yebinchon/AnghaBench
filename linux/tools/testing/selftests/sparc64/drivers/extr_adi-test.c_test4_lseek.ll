; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/sparc64/drivers/extr_adi-test.c_test4_lseek.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/sparc64/drivers/extr_adi-test.c_test4_lseek.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SEEK_SET = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [44 x i8] c"\09SEEK_SET failed as designed. Not an error\0A\00", align 1
@SEEK_CUR = common dso_local global i32 0, align 4
@OFFSET_ADD = common dso_local global i32 0, align 4
@OFFSET_SUBTRACT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @test4_lseek to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test4_lseek(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 -1698898192, i32* %5, align 4
  %7 = load i32, i32* %3, align 4
  %8 = load i32, i32* %5, align 4
  %9 = load i32, i32* @SEEK_SET, align 4
  %10 = call i32 @seek_adi(i32 %7, i32 %8, i32 %9)
  store i32 %10, i32* %4, align 4
  %11 = load i32, i32* %4, align 4
  %12 = load i32, i32* %5, align 4
  %13 = icmp ne i32 %11, %12
  br i1 %13, label %14, label %17

14:                                               ; preds = %1
  store i32 -1, i32* %6, align 4
  %15 = load i32, i32* %6, align 4
  %16 = call i32 @TEST_STEP_FAILURE(i32 %15)
  br label %17

17:                                               ; preds = %14, %1
  %18 = load i32, i32* %3, align 4
  %19 = load i32, i32* %5, align 4
  %20 = load i32, i32* @SEEK_SET, align 4
  %21 = call i32 @seek_adi(i32 %18, i32 %19, i32 %20)
  store i32 %21, i32* %4, align 4
  %22 = load i32, i32* %4, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %17
  %25 = load i64, i64* @errno, align 8
  %26 = load i64, i64* @EINVAL, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %24
  %29 = call i32 @DEBUG_PRINT_L2(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  br label %33

30:                                               ; preds = %24, %17
  store i32 -2, i32* %6, align 4
  %31 = load i32, i32* %6, align 4
  %32 = call i32 @TEST_STEP_FAILURE(i32 %31)
  br label %33

33:                                               ; preds = %30, %28
  %34 = load i32, i32* %3, align 4
  %35 = load i32, i32* @SEEK_CUR, align 4
  %36 = call i32 @seek_adi(i32 %34, i32 0, i32 %35)
  store i32 %36, i32* %4, align 4
  %37 = load i32, i32* %4, align 4
  %38 = load i32, i32* %5, align 4
  %39 = icmp ne i32 %37, %38
  br i1 %39, label %40, label %43

40:                                               ; preds = %33
  store i32 -3, i32* %6, align 4
  %41 = load i32, i32* %6, align 4
  %42 = call i32 @TEST_STEP_FAILURE(i32 %41)
  br label %43

43:                                               ; preds = %40, %33
  %44 = load i32, i32* %3, align 4
  %45 = load i32, i32* @SEEK_CUR, align 4
  %46 = call i32 @seek_adi(i32 %44, i32 256, i32 %45)
  store i32 %46, i32* %4, align 4
  %47 = load i32, i32* %4, align 4
  %48 = load i32, i32* %5, align 4
  %49 = add nsw i32 %48, 256
  %50 = icmp ne i32 %47, %49
  br i1 %50, label %51, label %54

51:                                               ; preds = %43
  store i32 -4, i32* %6, align 4
  %52 = load i32, i32* %6, align 4
  %53 = call i32 @TEST_STEP_FAILURE(i32 %52)
  br label %54

54:                                               ; preds = %51, %43
  %55 = load i32, i32* %3, align 4
  %56 = load i32, i32* @SEEK_CUR, align 4
  %57 = call i32 @seek_adi(i32 %55, i32 0, i32 %56)
  store i32 %57, i32* %4, align 4
  %58 = load i32, i32* %4, align 4
  %59 = sext i32 %58 to i64
  %60 = load i32, i32* %5, align 4
  %61 = add nsw i32 %60, 256
  %62 = sext i32 %61 to i64
  %63 = add i64 %62, -68719476736
  %64 = icmp ne i64 %59, %63
  br i1 %64, label %65, label %68

65:                                               ; preds = %54
  store i32 -5, i32* %6, align 4
  %66 = load i32, i32* %6, align 4
  %67 = call i32 @TEST_STEP_FAILURE(i32 %66)
  br label %68

68:                                               ; preds = %65, %54
  store i32 0, i32* %6, align 4
  br label %69

69:                                               ; preds = %68
  %70 = load i32, i32* %6, align 4
  %71 = call i32 @RETURN_FROM_TEST(i32 %70)
  %72 = load i32, i32* %2, align 4
  ret i32 %72
}

declare dso_local i32 @seek_adi(i32, i32, i32) #1

declare dso_local i32 @TEST_STEP_FAILURE(i32) #1

declare dso_local i32 @DEBUG_PRINT_L2(i8*) #1

declare dso_local i32 @RETURN_FROM_TEST(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
