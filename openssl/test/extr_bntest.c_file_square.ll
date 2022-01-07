; ModuleID = '/home/carl/AnghaBench/openssl/test/extr_bntest.c_file_square.c'
source_filename = "/home/carl/AnghaBench/openssl/test/extr_bntest.c_file_square.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"A\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"Square\00", align 1
@ctx = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [4 x i8] c"A^2\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"A * A\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"Square / A\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"Square % A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @file_square to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @file_square(i32* %0) #0 {
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
  br i1 %13, label %14, label %31

14:                                               ; preds = %1
  %15 = load i32*, i32** %2, align 8
  %16 = call i32* @getBN(i32* %15, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  store i32* %16, i32** %4, align 8
  %17 = call i32 @TEST_ptr(i32* %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %31

19:                                               ; preds = %14
  %20 = call i32* (...) @BN_new()
  store i32* %20, i32** %5, align 8
  %21 = call i32 @TEST_ptr(i32* %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %31

23:                                               ; preds = %19
  %24 = call i32* (...) @BN_new()
  store i32* %24, i32** %6, align 8
  %25 = call i32 @TEST_ptr(i32* %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %23
  %28 = call i32* (...) @BN_new()
  store i32* %28, i32** %7, align 8
  %29 = call i32 @TEST_ptr(i32* %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %27, %23, %19, %14, %1
  br label %80

32:                                               ; preds = %27
  %33 = load i32*, i32** %5, align 8
  %34 = call i32 @BN_zero(i32* %33)
  %35 = load i32*, i32** %6, align 8
  %36 = load i32*, i32** %3, align 8
  %37 = load i32, i32* @ctx, align 4
  %38 = call i32 @BN_sqr(i32* %35, i32* %36, i32 %37)
  %39 = call i32 @TEST_true(i32 %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %78

41:                                               ; preds = %32
  %42 = load i32*, i32** %4, align 8
  %43 = load i32*, i32** %6, align 8
  %44 = call i32 @equalBN(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32* %42, i32* %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %78

46:                                               ; preds = %41
  %47 = load i32*, i32** %6, align 8
  %48 = load i32*, i32** %3, align 8
  %49 = load i32*, i32** %3, align 8
  %50 = load i32, i32* @ctx, align 4
  %51 = call i32 @BN_mul(i32* %47, i32* %48, i32* %49, i32 %50)
  %52 = call i32 @TEST_true(i32 %51)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %78

54:                                               ; preds = %46
  %55 = load i32*, i32** %4, align 8
  %56 = load i32*, i32** %6, align 8
  %57 = call i32 @equalBN(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i32* %55, i32* %56)
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %78

59:                                               ; preds = %54
  %60 = load i32*, i32** %6, align 8
  %61 = load i32*, i32** %7, align 8
  %62 = load i32*, i32** %4, align 8
  %63 = load i32*, i32** %3, align 8
  %64 = load i32, i32* @ctx, align 4
  %65 = call i32 @BN_div(i32* %60, i32* %61, i32* %62, i32* %63, i32 %64)
  %66 = call i32 @TEST_true(i32 %65)
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %78

68:                                               ; preds = %59
  %69 = load i32*, i32** %3, align 8
  %70 = load i32*, i32** %6, align 8
  %71 = call i32 @equalBN(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i32* %69, i32* %70)
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %78

73:                                               ; preds = %68
  %74 = load i32*, i32** %5, align 8
  %75 = load i32*, i32** %7, align 8
  %76 = call i32 @equalBN(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0), i32* %74, i32* %75)
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %79, label %78

78:                                               ; preds = %73, %68, %59, %54, %46, %41, %32
  br label %80

79:                                               ; preds = %73
  store i32 1, i32* %9, align 4
  br label %80

80:                                               ; preds = %79, %78, %31
  %81 = load i32*, i32** %3, align 8
  %82 = call i32 @BN_free(i32* %81)
  %83 = load i32*, i32** %4, align 8
  %84 = call i32 @BN_free(i32* %83)
  %85 = load i32*, i32** %5, align 8
  %86 = call i32 @BN_free(i32* %85)
  %87 = load i32*, i32** %6, align 8
  %88 = call i32 @BN_free(i32* %87)
  %89 = load i32*, i32** %7, align 8
  %90 = call i32 @BN_free(i32* %89)
  %91 = load i32*, i32** %8, align 8
  %92 = call i32 @BN_free(i32* %91)
  %93 = load i32, i32* %9, align 4
  ret i32 %93
}

declare dso_local i32 @TEST_ptr(i32*) #1

declare dso_local i32* @getBN(i32*, i8*) #1

declare dso_local i32* @BN_new(...) #1

declare dso_local i32 @BN_zero(i32*) #1

declare dso_local i32 @TEST_true(i32) #1

declare dso_local i32 @BN_sqr(i32*, i32*, i32) #1

declare dso_local i32 @equalBN(i8*, i32*, i32*) #1

declare dso_local i32 @BN_mul(i32*, i32*, i32*, i32) #1

declare dso_local i32 @BN_div(i32*, i32*, i32*, i32*, i32) #1

declare dso_local i32 @BN_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
