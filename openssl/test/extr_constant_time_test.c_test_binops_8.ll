; ModuleID = '/home/carl/AnghaBench/openssl/test/extr_constant_time_test.c_test_binops_8.c'
source_filename = "/home/carl/AnghaBench/openssl/test/extr_constant_time_test.c_test_binops_8.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@test_values_8 = common dso_local global i32* null, align 8
@constant_time_lt_8 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"constant_time_lt_8\00", align 1
@constant_time_ge_8 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"constant_time_ge_8\00", align 1
@constant_time_eq_8 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [19 x i8] c"constant_time_eq_8\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @test_binops_8 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_binops_8(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %7 = load i32*, i32** @test_values_8, align 8
  %8 = load i32, i32* %2, align 4
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds i32, i32* %7, i64 %9
  %11 = load i32, i32* %10, align 4
  store i32 %11, i32* %3, align 4
  store i32 1, i32* %5, align 4
  store i32 0, i32* %4, align 4
  br label %12

12:                                               ; preds = %79, %1
  %13 = load i32, i32* %4, align 4
  %14 = load i32*, i32** @test_values_8, align 8
  %15 = call i64 @OSSL_NELEM(i32* %14)
  %16 = trunc i64 %15 to i32
  %17 = icmp slt i32 %13, %16
  br i1 %17, label %18, label %82

18:                                               ; preds = %12
  %19 = load i32*, i32** @test_values_8, align 8
  %20 = load i32, i32* %4, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i32, i32* %19, i64 %21
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %6, align 4
  %24 = load i32, i32* %3, align 4
  %25 = load i32, i32* %6, align 4
  %26 = load i32, i32* %3, align 4
  %27 = load i32, i32* %6, align 4
  %28 = icmp ult i32 %26, %27
  %29 = zext i1 %28 to i32
  %30 = call i32 @test_binary_op_8(i32* @constant_time_lt_8, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %24, i32 %25, i32 %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %77

32:                                               ; preds = %18
  %33 = load i32, i32* %6, align 4
  %34 = load i32, i32* %3, align 4
  %35 = load i32, i32* %6, align 4
  %36 = load i32, i32* %3, align 4
  %37 = icmp ult i32 %35, %36
  %38 = zext i1 %37 to i32
  %39 = call i32 @test_binary_op_8(i32* @constant_time_lt_8, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %33, i32 %34, i32 %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %77

41:                                               ; preds = %32
  %42 = load i32, i32* %3, align 4
  %43 = load i32, i32* %6, align 4
  %44 = load i32, i32* %3, align 4
  %45 = load i32, i32* %6, align 4
  %46 = icmp uge i32 %44, %45
  %47 = zext i1 %46 to i32
  %48 = call i32 @test_binary_op_8(i32* @constant_time_ge_8, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 %42, i32 %43, i32 %47)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %77

50:                                               ; preds = %41
  %51 = load i32, i32* %6, align 4
  %52 = load i32, i32* %3, align 4
  %53 = load i32, i32* %6, align 4
  %54 = load i32, i32* %3, align 4
  %55 = icmp uge i32 %53, %54
  %56 = zext i1 %55 to i32
  %57 = call i32 @test_binary_op_8(i32* @constant_time_ge_8, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 %51, i32 %52, i32 %56)
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %77

59:                                               ; preds = %50
  %60 = load i32, i32* %3, align 4
  %61 = load i32, i32* %6, align 4
  %62 = load i32, i32* %3, align 4
  %63 = load i32, i32* %6, align 4
  %64 = icmp eq i32 %62, %63
  %65 = zext i1 %64 to i32
  %66 = call i32 @test_binary_op_8(i32* @constant_time_eq_8, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i32 %60, i32 %61, i32 %65)
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %77

68:                                               ; preds = %59
  %69 = load i32, i32* %6, align 4
  %70 = load i32, i32* %3, align 4
  %71 = load i32, i32* %6, align 4
  %72 = load i32, i32* %3, align 4
  %73 = icmp eq i32 %71, %72
  %74 = zext i1 %73 to i32
  %75 = call i32 @test_binary_op_8(i32* @constant_time_eq_8, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i32 %69, i32 %70, i32 %74)
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %78, label %77

77:                                               ; preds = %68, %59, %50, %41, %32, %18
  store i32 0, i32* %5, align 4
  br label %78

78:                                               ; preds = %77, %68
  br label %79

79:                                               ; preds = %78
  %80 = load i32, i32* %4, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %4, align 4
  br label %12

82:                                               ; preds = %12
  %83 = load i32, i32* %5, align 4
  ret i32 %83
}

declare dso_local i64 @OSSL_NELEM(i32*) #1

declare dso_local i32 @test_binary_op_8(i32*, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
