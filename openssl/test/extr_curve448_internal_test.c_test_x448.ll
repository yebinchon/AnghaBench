; ModuleID = '/home/carl/AnghaBench/openssl/test/extr_curve448_internal_test.c_test_x448.c'
source_filename = "/home/carl/AnghaBench/openssl/test/extr_curve448_internal_test.c_test_x448.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@in_scalar1 = common dso_local global i32* null, align 8
@in_u1 = common dso_local global i32* null, align 8
@out_u1 = common dso_local global i32 0, align 4
@in_scalar2 = common dso_local global i32* null, align 8
@in_u2 = common dso_local global i32* null, align 8
@out_u2 = common dso_local global i32 0, align 4
@in_u3 = common dso_local global i32* null, align 8
@max = common dso_local global i32 0, align 4
@verbose = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [2 x i8] c".\00", align 1
@stdout = common dso_local global i32 0, align 4
@out_u3 = common dso_local global i32* null, align 8
@.str.1 = private unnamed_addr constant [23 x i8] c"Failed at iteration %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @test_x448 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_x448() #0 {
  %1 = alloca i32, align 4
  %2 = alloca [56 x i32], align 16
  %3 = alloca [56 x i32], align 16
  %4 = alloca [56 x i32], align 16
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 -1, i32* %6, align 4
  %7 = getelementptr inbounds [56 x i32], [56 x i32]* %4, i64 0, i64 0
  %8 = load i32*, i32** @in_scalar1, align 8
  %9 = load i32*, i32** @in_u1, align 8
  %10 = call i32 @X448(i32* %7, i32* %8, i32* %9)
  %11 = call i32 @TEST_true(i32 %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %32

13:                                               ; preds = %0
  %14 = getelementptr inbounds [56 x i32], [56 x i32]* %4, i64 0, i64 0
  %15 = load i32, i32* @out_u1, align 4
  %16 = call i32 @memcmp(i32* %14, i32 %15, i32 224)
  %17 = call i32 @TEST_int_eq(i32 %16, i32 0)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %32

19:                                               ; preds = %13
  %20 = getelementptr inbounds [56 x i32], [56 x i32]* %4, i64 0, i64 0
  %21 = load i32*, i32** @in_scalar2, align 8
  %22 = load i32*, i32** @in_u2, align 8
  %23 = call i32 @X448(i32* %20, i32* %21, i32* %22)
  %24 = call i32 @TEST_true(i32 %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %32

26:                                               ; preds = %19
  %27 = getelementptr inbounds [56 x i32], [56 x i32]* %4, i64 0, i64 0
  %28 = load i32, i32* @out_u2, align 4
  %29 = call i32 @memcmp(i32* %27, i32 %28, i32 224)
  %30 = call i32 @TEST_int_eq(i32 %29, i32 0)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %26, %19, %13, %0
  store i32 0, i32* %1, align 4
  br label %99

33:                                               ; preds = %26
  %34 = getelementptr inbounds [56 x i32], [56 x i32]* %2, i64 0, i64 0
  %35 = load i32*, i32** @in_u3, align 8
  %36 = call i32 @memcpy(i32* %34, i32* %35, i32 224)
  %37 = getelementptr inbounds [56 x i32], [56 x i32]* %3, i64 0, i64 0
  %38 = load i32*, i32** @in_u3, align 8
  %39 = call i32 @memcpy(i32* %37, i32* %38, i32 224)
  store i32 1, i32* %5, align 4
  br label %40

40:                                               ; preds = %95, %33
  %41 = load i32, i32* %5, align 4
  %42 = load i32, i32* @max, align 4
  %43 = icmp ule i32 %41, %42
  br i1 %43, label %44, label %98

44:                                               ; preds = %40
  %45 = load i64, i64* @verbose, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %55

47:                                               ; preds = %44
  %48 = load i32, i32* %5, align 4
  %49 = urem i32 %48, 10000
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %47
  %52 = call i32 @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %53 = load i32, i32* @stdout, align 4
  %54 = call i32 @fflush(i32 %53)
  br label %55

55:                                               ; preds = %51, %47, %44
  %56 = getelementptr inbounds [56 x i32], [56 x i32]* %4, i64 0, i64 0
  %57 = getelementptr inbounds [56 x i32], [56 x i32]* %3, i64 0, i64 0
  %58 = getelementptr inbounds [56 x i32], [56 x i32]* %2, i64 0, i64 0
  %59 = call i32 @X448(i32* %56, i32* %57, i32* %58)
  %60 = call i32 @TEST_true(i32 %59)
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %63, label %62

62:                                               ; preds = %55
  store i32 0, i32* %1, align 4
  br label %99

63:                                               ; preds = %55
  %64 = load i32, i32* %5, align 4
  %65 = icmp eq i32 %64, 1
  br i1 %65, label %72, label %66

66:                                               ; preds = %63
  %67 = load i32, i32* %5, align 4
  %68 = icmp eq i32 %67, 1000
  br i1 %68, label %72, label %69

69:                                               ; preds = %66
  %70 = load i32, i32* %5, align 4
  %71 = icmp eq i32 %70, 1000000
  br i1 %71, label %72, label %88

72:                                               ; preds = %69, %66, %63
  %73 = load i32, i32* %6, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %6, align 4
  %75 = getelementptr inbounds [56 x i32], [56 x i32]* %4, i64 0, i64 0
  %76 = load i32*, i32** @out_u3, align 8
  %77 = load i32, i32* %6, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i32, i32* %76, i64 %78
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @memcmp(i32* %75, i32 %80, i32 224)
  %82 = call i32 @TEST_int_eq(i32 %81, i32 0)
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %87, label %84

84:                                               ; preds = %72
  %85 = load i32, i32* %5, align 4
  %86 = call i32 @TEST_info(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %85)
  store i32 0, i32* %1, align 4
  br label %99

87:                                               ; preds = %72
  br label %88

88:                                               ; preds = %87, %69
  %89 = getelementptr inbounds [56 x i32], [56 x i32]* %2, i64 0, i64 0
  %90 = getelementptr inbounds [56 x i32], [56 x i32]* %3, i64 0, i64 0
  %91 = call i32 @memcpy(i32* %89, i32* %90, i32 224)
  %92 = getelementptr inbounds [56 x i32], [56 x i32]* %3, i64 0, i64 0
  %93 = getelementptr inbounds [56 x i32], [56 x i32]* %4, i64 0, i64 0
  %94 = call i32 @memcpy(i32* %92, i32* %93, i32 224)
  br label %95

95:                                               ; preds = %88
  %96 = load i32, i32* %5, align 4
  %97 = add i32 %96, 1
  store i32 %97, i32* %5, align 4
  br label %40

98:                                               ; preds = %40
  store i32 1, i32* %1, align 4
  br label %99

99:                                               ; preds = %98, %84, %62, %32
  %100 = load i32, i32* %1, align 4
  ret i32 %100
}

declare dso_local i32 @TEST_true(i32) #1

declare dso_local i32 @X448(i32*, i32*, i32*) #1

declare dso_local i32 @TEST_int_eq(i32, i32) #1

declare dso_local i32 @memcmp(i32*, i32, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @fflush(i32) #1

declare dso_local i32 @TEST_info(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
