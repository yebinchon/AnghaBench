; ModuleID = '/home/carl/AnghaBench/openssl/test/extr_constant_time_test.c_test_binops_s.c'
source_filename = "/home/carl/AnghaBench/openssl/test/extr_constant_time_test.c_test_binops_s.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@test_values_s = common dso_local global i64* null, align 8
@constant_time_lt_s = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"constant_time_lt_s\00", align 1
@constant_time_ge_s = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"constant_time_ge_s\00", align 1
@constant_time_eq_s = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [19 x i8] c"constant_time_eq_s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @test_binops_s to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_binops_s(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store i32 %0, i32* %2, align 4
  %7 = load i64*, i64** @test_values_s, align 8
  %8 = load i32, i32* %2, align 4
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds i64, i64* %7, i64 %9
  %11 = load i64, i64* %10, align 8
  store i64 %11, i64* %3, align 8
  store i32 1, i32* %5, align 4
  store i32 0, i32* %4, align 4
  br label %12

12:                                               ; preds = %89, %1
  %13 = load i32, i32* %4, align 4
  %14 = load i64*, i64** @test_values_s, align 8
  %15 = call i64 @OSSL_NELEM(i64* %14)
  %16 = trunc i64 %15 to i32
  %17 = icmp slt i32 %13, %16
  br i1 %17, label %18, label %92

18:                                               ; preds = %12
  %19 = load i64*, i64** @test_values_s, align 8
  %20 = load i32, i32* %4, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i64, i64* %19, i64 %21
  %23 = load i64, i64* %22, align 8
  store i64 %23, i64* %6, align 8
  %24 = load i64, i64* %3, align 8
  %25 = load i64, i64* %6, align 8
  %26 = call i32 @test_select_s(i64 %24, i64 %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %87

28:                                               ; preds = %18
  %29 = load i64, i64* %3, align 8
  %30 = load i64, i64* %6, align 8
  %31 = call i32 @test_eq_s(i64 %29, i64 %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %87

33:                                               ; preds = %28
  %34 = load i64, i64* %3, align 8
  %35 = load i64, i64* %6, align 8
  %36 = load i64, i64* %3, align 8
  %37 = load i64, i64* %6, align 8
  %38 = icmp ult i64 %36, %37
  %39 = zext i1 %38 to i32
  %40 = call i32 @test_binary_op_s(i32* @constant_time_lt_s, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i64 %34, i64 %35, i32 %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %87

42:                                               ; preds = %33
  %43 = load i64, i64* %6, align 8
  %44 = load i64, i64* %3, align 8
  %45 = load i64, i64* %6, align 8
  %46 = load i64, i64* %3, align 8
  %47 = icmp ult i64 %45, %46
  %48 = zext i1 %47 to i32
  %49 = call i32 @test_binary_op_s(i32* @constant_time_lt_s, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i64 %43, i64 %44, i32 %48)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %87

51:                                               ; preds = %42
  %52 = load i64, i64* %3, align 8
  %53 = load i64, i64* %6, align 8
  %54 = load i64, i64* %3, align 8
  %55 = load i64, i64* %6, align 8
  %56 = icmp uge i64 %54, %55
  %57 = zext i1 %56 to i32
  %58 = call i32 @test_binary_op_s(i32* @constant_time_ge_s, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i64 %52, i64 %53, i32 %57)
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %87

60:                                               ; preds = %51
  %61 = load i64, i64* %6, align 8
  %62 = load i64, i64* %3, align 8
  %63 = load i64, i64* %6, align 8
  %64 = load i64, i64* %3, align 8
  %65 = icmp uge i64 %63, %64
  %66 = zext i1 %65 to i32
  %67 = call i32 @test_binary_op_s(i32* @constant_time_ge_s, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i64 %61, i64 %62, i32 %66)
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %87

69:                                               ; preds = %60
  %70 = load i64, i64* %3, align 8
  %71 = load i64, i64* %6, align 8
  %72 = load i64, i64* %3, align 8
  %73 = load i64, i64* %6, align 8
  %74 = icmp eq i64 %72, %73
  %75 = zext i1 %74 to i32
  %76 = call i32 @test_binary_op_s(i32* @constant_time_eq_s, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i64 %70, i64 %71, i32 %75)
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %87

78:                                               ; preds = %69
  %79 = load i64, i64* %6, align 8
  %80 = load i64, i64* %3, align 8
  %81 = load i64, i64* %6, align 8
  %82 = load i64, i64* %3, align 8
  %83 = icmp eq i64 %81, %82
  %84 = zext i1 %83 to i32
  %85 = call i32 @test_binary_op_s(i32* @constant_time_eq_s, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i64 %79, i64 %80, i32 %84)
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %88, label %87

87:                                               ; preds = %78, %69, %60, %51, %42, %33, %28, %18
  store i32 0, i32* %5, align 4
  br label %88

88:                                               ; preds = %87, %78
  br label %89

89:                                               ; preds = %88
  %90 = load i32, i32* %4, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %4, align 4
  br label %12

92:                                               ; preds = %12
  %93 = load i32, i32* %5, align 4
  ret i32 %93
}

declare dso_local i64 @OSSL_NELEM(i64*) #1

declare dso_local i32 @test_select_s(i64, i64) #1

declare dso_local i32 @test_eq_s(i64, i64) #1

declare dso_local i32 @test_binary_op_s(i32*, i8*, i64, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
