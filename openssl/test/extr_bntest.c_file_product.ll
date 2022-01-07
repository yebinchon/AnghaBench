; ModuleID = '/home/carl/AnghaBench/openssl/test/extr_bntest.c_file_product.c'
source_filename = "/home/carl/AnghaBench/openssl/test/extr_bntest.c_file_product.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"A\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"B\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"Product\00", align 1
@ctx = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [6 x i8] c"A * B\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"Product / A\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"Product % A\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"Product / B\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"Product % B\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @file_product to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @file_product(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  store i32* null, i32** %3, align 8
  store i32* null, i32** %4, align 8
  store i32* null, i32** %5, align 8
  store i32* null, i32** %6, align 8
  store i32* null, i32** %7, align 8
  store i32* null, i32** %8, align 8
  store i32 0, i32* %9, align 4
  %10 = load i32*, i32** %2, align 8
  %11 = call i32* @getBN(i32* %10, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32* %11, i32** %3, align 8
  %12 = call i32 @TEST_ptr(i32* %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %36

14:                                               ; preds = %1
  %15 = load i32*, i32** %2, align 8
  %16 = call i32* @getBN(i32* %15, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i32* %16, i32** %4, align 8
  %17 = call i32 @TEST_ptr(i32* %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %36

19:                                               ; preds = %14
  %20 = load i32*, i32** %2, align 8
  %21 = call i32* @getBN(i32* %20, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  store i32* %21, i32** %5, align 8
  %22 = call i32 @TEST_ptr(i32* %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %36

24:                                               ; preds = %19
  %25 = call i32* (...) @BN_new()
  store i32* %25, i32** %6, align 8
  %26 = call i32 @TEST_ptr(i32* %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %36

28:                                               ; preds = %24
  %29 = call i32* (...) @BN_new()
  store i32* %29, i32** %7, align 8
  %30 = call i32 @TEST_ptr(i32* %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %28
  %33 = call i32* (...) @BN_new()
  store i32* %33, i32** %8, align 8
  %34 = call i32 @TEST_ptr(i32* %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %32, %28, %24, %19, %14, %1
  br label %92

37:                                               ; preds = %32
  %38 = load i32*, i32** %8, align 8
  %39 = call i32 @BN_zero(i32* %38)
  %40 = load i32*, i32** %6, align 8
  %41 = load i32*, i32** %3, align 8
  %42 = load i32*, i32** %4, align 8
  %43 = load i32, i32* @ctx, align 4
  %44 = call i32 @BN_mul(i32* %40, i32* %41, i32* %42, i32 %43)
  %45 = call i32 @TEST_true(i32 %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %90

47:                                               ; preds = %37
  %48 = load i32*, i32** %5, align 8
  %49 = load i32*, i32** %6, align 8
  %50 = call i32 @equalBN(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i32* %48, i32* %49)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %90

52:                                               ; preds = %47
  %53 = load i32*, i32** %6, align 8
  %54 = load i32*, i32** %7, align 8
  %55 = load i32*, i32** %5, align 8
  %56 = load i32*, i32** %3, align 8
  %57 = load i32, i32* @ctx, align 4
  %58 = call i32 @BN_div(i32* %53, i32* %54, i32* %55, i32* %56, i32 %57)
  %59 = call i32 @TEST_true(i32 %58)
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %90

61:                                               ; preds = %52
  %62 = load i32*, i32** %4, align 8
  %63 = load i32*, i32** %6, align 8
  %64 = call i32 @equalBN(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i32* %62, i32* %63)
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %90

66:                                               ; preds = %61
  %67 = load i32*, i32** %8, align 8
  %68 = load i32*, i32** %7, align 8
  %69 = call i32 @equalBN(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0), i32* %67, i32* %68)
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %90

71:                                               ; preds = %66
  %72 = load i32*, i32** %6, align 8
  %73 = load i32*, i32** %7, align 8
  %74 = load i32*, i32** %5, align 8
  %75 = load i32*, i32** %4, align 8
  %76 = load i32, i32* @ctx, align 4
  %77 = call i32 @BN_div(i32* %72, i32* %73, i32* %74, i32* %75, i32 %76)
  %78 = call i32 @TEST_true(i32 %77)
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %90

80:                                               ; preds = %71
  %81 = load i32*, i32** %3, align 8
  %82 = load i32*, i32** %6, align 8
  %83 = call i32 @equalBN(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0), i32* %81, i32* %82)
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %90

85:                                               ; preds = %80
  %86 = load i32*, i32** %8, align 8
  %87 = load i32*, i32** %7, align 8
  %88 = call i32 @equalBN(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 0), i32* %86, i32* %87)
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %91, label %90

90:                                               ; preds = %85, %80, %71, %66, %61, %52, %47, %37
  br label %92

91:                                               ; preds = %85
  store i32 1, i32* %9, align 4
  br label %92

92:                                               ; preds = %91, %90, %36
  %93 = load i32*, i32** %3, align 8
  %94 = call i32 @BN_free(i32* %93)
  %95 = load i32*, i32** %4, align 8
  %96 = call i32 @BN_free(i32* %95)
  %97 = load i32*, i32** %5, align 8
  %98 = call i32 @BN_free(i32* %97)
  %99 = load i32*, i32** %6, align 8
  %100 = call i32 @BN_free(i32* %99)
  %101 = load i32*, i32** %7, align 8
  %102 = call i32 @BN_free(i32* %101)
  %103 = load i32*, i32** %8, align 8
  %104 = call i32 @BN_free(i32* %103)
  %105 = load i32, i32* %9, align 4
  ret i32 %105
}

declare dso_local i32 @TEST_ptr(i32*) #1

declare dso_local i32* @getBN(i32*, i8*) #1

declare dso_local i32* @BN_new(...) #1

declare dso_local i32 @BN_zero(i32*) #1

declare dso_local i32 @TEST_true(i32) #1

declare dso_local i32 @BN_mul(i32*, i32*, i32*, i32) #1

declare dso_local i32 @equalBN(i8*, i32*, i32*) #1

declare dso_local i32 @BN_div(i32*, i32*, i32*, i32*, i32) #1

declare dso_local i32 @BN_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
