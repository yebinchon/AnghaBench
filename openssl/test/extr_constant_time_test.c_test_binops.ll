; ModuleID = '/home/carl/AnghaBench/openssl/test/extr_constant_time_test.c_test_binops.c'
source_filename = "/home/carl/AnghaBench/openssl/test/extr_constant_time_test.c_test_binops.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@test_values = common dso_local global i32* null, align 8
@constant_time_lt = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"ct_lt\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"constant_time_lt\00", align 1
@constant_time_ge = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [17 x i8] c"constant_time_ge\00", align 1
@constant_time_eq = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [17 x i8] c"constant_time_eq\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @test_binops to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_binops(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %7 = load i32*, i32** @test_values, align 8
  %8 = load i32, i32* %2, align 4
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds i32, i32* %7, i64 %9
  %11 = load i32, i32* %10, align 4
  store i32 %11, i32* %3, align 4
  store i32 1, i32* %5, align 4
  store i32 0, i32* %4, align 4
  br label %12

12:                                               ; preds = %84, %1
  %13 = load i32, i32* %4, align 4
  %14 = load i32*, i32** @test_values, align 8
  %15 = call i64 @OSSL_NELEM(i32* %14)
  %16 = trunc i64 %15 to i32
  %17 = icmp slt i32 %13, %16
  br i1 %17, label %18, label %87

18:                                               ; preds = %12
  %19 = load i32*, i32** @test_values, align 8
  %20 = load i32, i32* %4, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i32, i32* %19, i64 %21
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %6, align 4
  %24 = load i32, i32* %3, align 4
  %25 = load i32, i32* %6, align 4
  %26 = call i32 @test_select(i32 %24, i32 %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %82

28:                                               ; preds = %18
  %29 = load i32, i32* %3, align 4
  %30 = load i32, i32* %6, align 4
  %31 = load i32, i32* %3, align 4
  %32 = load i32, i32* %6, align 4
  %33 = icmp ult i32 %31, %32
  %34 = zext i1 %33 to i32
  %35 = call i32 @test_binary_op(i32* @constant_time_lt, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %29, i32 %30, i32 %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %82

37:                                               ; preds = %28
  %38 = load i32, i32* %6, align 4
  %39 = load i32, i32* %3, align 4
  %40 = load i32, i32* %6, align 4
  %41 = load i32, i32* %3, align 4
  %42 = icmp ult i32 %40, %41
  %43 = zext i1 %42 to i32
  %44 = call i32 @test_binary_op(i32* @constant_time_lt, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 %38, i32 %39, i32 %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %82

46:                                               ; preds = %37
  %47 = load i32, i32* %3, align 4
  %48 = load i32, i32* %6, align 4
  %49 = load i32, i32* %3, align 4
  %50 = load i32, i32* %6, align 4
  %51 = icmp uge i32 %49, %50
  %52 = zext i1 %51 to i32
  %53 = call i32 @test_binary_op(i32* @constant_time_ge, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i32 %47, i32 %48, i32 %52)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %82

55:                                               ; preds = %46
  %56 = load i32, i32* %6, align 4
  %57 = load i32, i32* %3, align 4
  %58 = load i32, i32* %6, align 4
  %59 = load i32, i32* %3, align 4
  %60 = icmp uge i32 %58, %59
  %61 = zext i1 %60 to i32
  %62 = call i32 @test_binary_op(i32* @constant_time_ge, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i32 %56, i32 %57, i32 %61)
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %82

64:                                               ; preds = %55
  %65 = load i32, i32* %3, align 4
  %66 = load i32, i32* %6, align 4
  %67 = load i32, i32* %3, align 4
  %68 = load i32, i32* %6, align 4
  %69 = icmp eq i32 %67, %68
  %70 = zext i1 %69 to i32
  %71 = call i32 @test_binary_op(i32* @constant_time_eq, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0), i32 %65, i32 %66, i32 %70)
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %82

73:                                               ; preds = %64
  %74 = load i32, i32* %6, align 4
  %75 = load i32, i32* %3, align 4
  %76 = load i32, i32* %6, align 4
  %77 = load i32, i32* %3, align 4
  %78 = icmp eq i32 %76, %77
  %79 = zext i1 %78 to i32
  %80 = call i32 @test_binary_op(i32* @constant_time_eq, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0), i32 %74, i32 %75, i32 %79)
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %83, label %82

82:                                               ; preds = %73, %64, %55, %46, %37, %28, %18
  store i32 0, i32* %5, align 4
  br label %83

83:                                               ; preds = %82, %73
  br label %84

84:                                               ; preds = %83
  %85 = load i32, i32* %4, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %4, align 4
  br label %12

87:                                               ; preds = %12
  %88 = load i32, i32* %5, align 4
  ret i32 %88
}

declare dso_local i64 @OSSL_NELEM(i32*) #1

declare dso_local i32 @test_select(i32, i32) #1

declare dso_local i32 @test_binary_op(i32*, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
