; ModuleID = '/home/carl/AnghaBench/openssl/test/extr_bntest.c_file_test_run.c'
source_filename = "/home/carl/AnghaBench/openssl/test/extr_bntest.c_file_test_run.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i8*, i32, i32 (%struct.TYPE_7__*)*, i32 }
%struct.TYPE_7__ = type { i32, i32 }

@file_test_run.filetests = internal constant [12 x %struct.TYPE_8__] [%struct.TYPE_8__ { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i32 128, i32 (%struct.TYPE_7__*)* null, i32 0 }, %struct.TYPE_8__ { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i32 0, i32 0), i32 136, i32 (%struct.TYPE_7__*)* null, i32 0 }, %struct.TYPE_8__ { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i32 0, i32 0), i32 137, i32 (%struct.TYPE_7__*)* null, i32 0 }, %struct.TYPE_8__ { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i32 0, i32 0), i32 130, i32 (%struct.TYPE_7__*)* null, i32 0 }, %struct.TYPE_8__ { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i32 0, i32 0), i32 129, i32 (%struct.TYPE_7__*)* null, i32 0 }, %struct.TYPE_8__ { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i32 0, i32 0), i32 132, i32 (%struct.TYPE_7__*)* null, i32 0 }, %struct.TYPE_8__ { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i32 0, i32 0), i32 131, i32 (%struct.TYPE_7__*)* null, i32 0 }, %struct.TYPE_8__ { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i32 0, i32 0), i32 134, i32 (%struct.TYPE_7__*)* null, i32 0 }, %struct.TYPE_8__ { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i32 0, i32 0), i32 135, i32 (%struct.TYPE_7__*)* null, i32 0 }, %struct.TYPE_8__ { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i32 0, i32 0), i32 139, i32 (%struct.TYPE_7__*)* null, i32 0 }, %struct.TYPE_8__ { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i32 0, i32 0), i32 133, i32 (%struct.TYPE_7__*)* null, i32 0 }, %struct.TYPE_8__ { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i32 0, i32 0), i32 138, i32 (%struct.TYPE_7__*)* null, i32 0 }], align 16
@.str = private unnamed_addr constant [4 x i8] c"Sum\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"LShift1\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"LShift\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"RShift\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"Square\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"Product\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"Quotient\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"ModMul\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"ModExp\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"Exp\00", align 1
@.str.10 = private unnamed_addr constant [8 x i8] c"ModSqrt\00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c"GCD\00", align 1
@.str.12 = private unnamed_addr constant [22 x i8] c"%s:%d: Failed %s test\00", align 1
@.str.13 = private unnamed_addr constant [20 x i8] c"%s:%d: Unknown test\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*)* @file_test_run to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @file_test_run(%struct.TYPE_7__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_8__*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %3, align 8
  %6 = call i32 @OSSL_NELEM(%struct.TYPE_8__* getelementptr inbounds ([12 x %struct.TYPE_8__], [12 x %struct.TYPE_8__]* @file_test_run.filetests, i64 0, i64 0))
  store i32 %6, i32* %4, align 4
  store %struct.TYPE_8__* getelementptr inbounds ([12 x %struct.TYPE_8__], [12 x %struct.TYPE_8__]* @file_test_run.filetests, i64 0, i64 0), %struct.TYPE_8__** %5, align 8
  br label %7

7:                                                ; preds = %38, %1
  %8 = load i32, i32* %4, align 4
  %9 = add nsw i32 %8, -1
  store i32 %9, i32* %4, align 4
  %10 = icmp sge i32 %9, 0
  br i1 %10, label %11, label %41

11:                                               ; preds = %7
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = call i32* @findattr(%struct.TYPE_7__* %12, i32 %15)
  %17 = icmp ne i32* %16, null
  br i1 %17, label %18, label %37

18:                                               ; preds = %11
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 2
  %21 = load i32 (%struct.TYPE_7__*)*, i32 (%struct.TYPE_7__*)** %20, align 8
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %23 = call i32 %21(%struct.TYPE_7__* %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %36, label %25

25:                                               ; preds = %18
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = call i32 (i8*, i32, i32, ...) @TEST_info(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.12, i64 0, i64 0), i32 %28, i32 %31, i32 %34)
  store i32 0, i32* %2, align 4
  br label %49

36:                                               ; preds = %18
  store i32 1, i32* %2, align 4
  br label %49

37:                                               ; preds = %11
  br label %38

38:                                               ; preds = %37
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 1
  store %struct.TYPE_8__* %40, %struct.TYPE_8__** %5, align 8
  br label %7

41:                                               ; preds = %7
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 (i8*, i32, i32, ...) @TEST_info(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.13, i64 0, i64 0), i32 %44, i32 %47)
  store i32 0, i32* %2, align 4
  br label %49

49:                                               ; preds = %41, %36, %25
  %50 = load i32, i32* %2, align 4
  ret i32 %50
}

declare dso_local i32 @OSSL_NELEM(%struct.TYPE_8__*) #1

declare dso_local i32* @findattr(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @TEST_info(i8*, i32, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
