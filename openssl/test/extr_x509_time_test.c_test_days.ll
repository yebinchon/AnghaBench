; ModuleID = '/home/carl/AnghaBench/openssl/test/extr_x509_time_test.c_test_days.c'
source_filename = "/home/carl/AnghaBench/openssl/test/extr_x509_time_test.c_test_days.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32, i32, i32 }
%struct.tm = type { i32, i32 }

@.str = private unnamed_addr constant [20 x i8] c"%04d%02d%02d050505Z\00", align 1
@day_of_week_tests = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @test_days to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_days(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca [16 x i8], align 16
  %5 = alloca i32*, align 8
  %6 = alloca %struct.tm, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32* null, i32** %5, align 8
  %8 = getelementptr inbounds [16 x i8], [16 x i8]* %4, i64 0, i64 0
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** @day_of_week_tests, align 8
  %10 = load i32, i32* %3, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i64 %11
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 4
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** @day_of_week_tests, align 8
  %16 = load i32, i32* %3, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i64 %17
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 3
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** @day_of_week_tests, align 8
  %22 = load i32, i32* %3, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i64 %23
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @BIO_snprintf(i8* %8, i32 16, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %14, i32 %20, i32 %26)
  %28 = call i32* (...) @ASN1_TIME_new()
  store i32* %28, i32** %5, align 8
  %29 = call i32 @TEST_ptr(i32* %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %71

32:                                               ; preds = %1
  %33 = load i32*, i32** %5, align 8
  %34 = getelementptr inbounds [16 x i8], [16 x i8]* %4, i64 0, i64 0
  %35 = call i32 @ASN1_TIME_set_string(i32* %33, i8* %34)
  %36 = call i64 @TEST_true(i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %65

38:                                               ; preds = %32
  %39 = load i32*, i32** %5, align 8
  %40 = call i32 @ASN1_TIME_to_tm(i32* %39, %struct.tm* %6)
  %41 = call i64 @TEST_true(i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %65

43:                                               ; preds = %38
  %44 = getelementptr inbounds %struct.tm, %struct.tm* %6, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** @day_of_week_tests, align 8
  %47 = load i32, i32* %3, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = call i64 @TEST_int_eq(i32 %45, i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %65

54:                                               ; preds = %43
  %55 = getelementptr inbounds %struct.tm, %struct.tm* %6, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** @day_of_week_tests, align 8
  %58 = load i32, i32* %3, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i64 %59
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i64 @TEST_int_eq(i32 %56, i32 %62)
  %64 = icmp ne i64 %63, 0
  br label %65

65:                                               ; preds = %54, %43, %38, %32
  %66 = phi i1 [ false, %43 ], [ false, %38 ], [ false, %32 ], [ %64, %54 ]
  %67 = zext i1 %66 to i32
  store i32 %67, i32* %7, align 4
  %68 = load i32*, i32** %5, align 8
  %69 = call i32 @ASN1_TIME_free(i32* %68)
  %70 = load i32, i32* %7, align 4
  store i32 %70, i32* %2, align 4
  br label %71

71:                                               ; preds = %65, %31
  %72 = load i32, i32* %2, align 4
  ret i32 %72
}

declare dso_local i32 @BIO_snprintf(i8*, i32, i8*, i32, i32, i32) #1

declare dso_local i32 @TEST_ptr(i32*) #1

declare dso_local i32* @ASN1_TIME_new(...) #1

declare dso_local i64 @TEST_true(i32) #1

declare dso_local i32 @ASN1_TIME_set_string(i32*, i8*) #1

declare dso_local i32 @ASN1_TIME_to_tm(i32*, %struct.tm*) #1

declare dso_local i64 @TEST_int_eq(i32, i32) #1

declare dso_local i32 @ASN1_TIME_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
