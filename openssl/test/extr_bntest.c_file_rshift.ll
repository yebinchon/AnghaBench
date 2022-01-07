; ModuleID = '/home/carl/AnghaBench/openssl/test/extr_bntest.c_file_rshift.c'
source_filename = "/home/carl/AnghaBench/openssl/test/extr_bntest.c_file_rshift.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"A\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"RShift\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"N\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"A >> N\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"A >> 1 (rshift1)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @file_rshift to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @file_rshift(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  store i32* null, i32** %3, align 8
  store i32* null, i32** %4, align 8
  store i32* null, i32** %5, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %8 = load i32*, i32** %2, align 8
  %9 = call i32* @getBN(i32* %8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32* %9, i32** %3, align 8
  %10 = call i32 @TEST_ptr(i32* %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %25

12:                                               ; preds = %1
  %13 = load i32*, i32** %2, align 8
  %14 = call i32* @getBN(i32* %13, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  store i32* %14, i32** %4, align 8
  %15 = call i32 @TEST_ptr(i32* %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %25

17:                                               ; preds = %12
  %18 = call i32* (...) @BN_new()
  store i32* %18, i32** %5, align 8
  %19 = call i32 @TEST_ptr(i32* %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %17
  %22 = load i32*, i32** %2, align 8
  %23 = call i32 @getint(i32* %22, i32* %6, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %21, %17, %12, %1
  br label %56

26:                                               ; preds = %21
  %27 = load i32*, i32** %5, align 8
  %28 = load i32*, i32** %3, align 8
  %29 = load i32, i32* %6, align 4
  %30 = call i32 @BN_rshift(i32* %27, i32* %28, i32 %29)
  %31 = call i32 @TEST_true(i32 %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %26
  %34 = load i32*, i32** %4, align 8
  %35 = load i32*, i32** %5, align 8
  %36 = call i32 @equalBN(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i32* %34, i32* %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %39, label %38

38:                                               ; preds = %33, %26
  br label %56

39:                                               ; preds = %33
  %40 = load i32, i32* %6, align 4
  %41 = icmp eq i32 %40, 1
  br i1 %41, label %42, label %55

42:                                               ; preds = %39
  %43 = load i32*, i32** %5, align 8
  %44 = load i32*, i32** %3, align 8
  %45 = call i32 @BN_rshift1(i32* %43, i32* %44)
  %46 = call i32 @TEST_true(i32 %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %53

48:                                               ; preds = %42
  %49 = load i32*, i32** %4, align 8
  %50 = load i32*, i32** %5, align 8
  %51 = call i32 @equalBN(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0), i32* %49, i32* %50)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %54, label %53

53:                                               ; preds = %48, %42
  br label %56

54:                                               ; preds = %48
  br label %55

55:                                               ; preds = %54, %39
  store i32 1, i32* %7, align 4
  br label %56

56:                                               ; preds = %55, %53, %38, %25
  %57 = load i32*, i32** %3, align 8
  %58 = call i32 @BN_free(i32* %57)
  %59 = load i32*, i32** %4, align 8
  %60 = call i32 @BN_free(i32* %59)
  %61 = load i32*, i32** %5, align 8
  %62 = call i32 @BN_free(i32* %61)
  %63 = load i32, i32* %7, align 4
  ret i32 %63
}

declare dso_local i32 @TEST_ptr(i32*) #1

declare dso_local i32* @getBN(i32*, i8*) #1

declare dso_local i32* @BN_new(...) #1

declare dso_local i32 @getint(i32*, i32*, i8*) #1

declare dso_local i32 @TEST_true(i32) #1

declare dso_local i32 @BN_rshift(i32*, i32*, i32) #1

declare dso_local i32 @equalBN(i8*, i32*, i32*) #1

declare dso_local i32 @BN_rshift1(i32*, i32*) #1

declare dso_local i32 @BN_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
