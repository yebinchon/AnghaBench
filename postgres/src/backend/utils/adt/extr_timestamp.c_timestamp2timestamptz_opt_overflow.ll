; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_timestamp.c_timestamp2timestamptz_opt_overflow.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_timestamp.c_timestamp2timestamptz_opt_overflow.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pg_tm = type { i32 }

@session_timezone = common dso_local global i32 0, align 4
@MIN_TIMESTAMP = common dso_local global i64 0, align 8
@END_TIMESTAMP = common dso_local global i64 0, align 8
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_DATETIME_VALUE_OUT_OF_RANGE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"timestamp out of range\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @timestamp2timestamptz_opt_overflow(i64 %0, i32* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.pg_tm, align 4
  %8 = alloca %struct.pg_tm*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i64 %0, i64* %4, align 8
  store i32* %1, i32** %5, align 8
  store %struct.pg_tm* %7, %struct.pg_tm** %8, align 8
  %11 = load i64, i64* %4, align 8
  %12 = call i64 @TIMESTAMP_NOT_FINITE(i64 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = load i64, i64* %4, align 8
  store i64 %15, i64* %3, align 8
  br label %59

16:                                               ; preds = %2
  %17 = load i64, i64* %4, align 8
  %18 = load %struct.pg_tm*, %struct.pg_tm** %8, align 8
  %19 = call i32 @timestamp2tm(i64 %17, i32* null, %struct.pg_tm* %18, i32* %9, i32* null, i32* null)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %53, label %21

21:                                               ; preds = %16
  %22 = load %struct.pg_tm*, %struct.pg_tm** %8, align 8
  %23 = load i32, i32* @session_timezone, align 4
  %24 = call i32 @DetermineTimeZoneOffset(%struct.pg_tm* %22, i32 %23)
  store i32 %24, i32* %10, align 4
  %25 = load i64, i64* %4, align 8
  %26 = load i32, i32* %10, align 4
  %27 = sub nsw i32 0, %26
  %28 = call i64 @dt2local(i64 %25, i32 %27)
  store i64 %28, i64* %6, align 8
  %29 = load i64, i64* %6, align 8
  %30 = call i64 @IS_VALID_TIMESTAMP(i64 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %21
  %33 = load i64, i64* %6, align 8
  store i64 %33, i64* %3, align 8
  br label %59

34:                                               ; preds = %21
  %35 = load i32*, i32** %5, align 8
  %36 = icmp ne i32* %35, null
  br i1 %36, label %37, label %51

37:                                               ; preds = %34
  %38 = load i64, i64* %6, align 8
  %39 = load i64, i64* @MIN_TIMESTAMP, align 8
  %40 = icmp slt i64 %38, %39
  br i1 %40, label %41, label %43

41:                                               ; preds = %37
  %42 = load i32*, i32** %5, align 8
  store i32 -1, i32* %42, align 4
  br label %50

43:                                               ; preds = %37
  %44 = load i64, i64* %6, align 8
  %45 = load i64, i64* @END_TIMESTAMP, align 8
  %46 = icmp sge i64 %44, %45
  %47 = zext i1 %46 to i32
  %48 = call i32 @Assert(i32 %47)
  %49 = load i32*, i32** %5, align 8
  store i32 1, i32* %49, align 4
  br label %50

50:                                               ; preds = %43, %41
  store i64 0, i64* %3, align 8
  br label %59

51:                                               ; preds = %34
  br label %52

52:                                               ; preds = %51
  br label %53

53:                                               ; preds = %52, %16
  %54 = load i32, i32* @ERROR, align 4
  %55 = load i32, i32* @ERRCODE_DATETIME_VALUE_OUT_OF_RANGE, align 4
  %56 = call i32 @errcode(i32 %55)
  %57 = call i32 @errmsg(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %58 = call i32 @ereport(i32 %54, i32 %57)
  store i64 0, i64* %3, align 8
  br label %59

59:                                               ; preds = %53, %50, %32, %14
  %60 = load i64, i64* %3, align 8
  ret i64 %60
}

declare dso_local i64 @TIMESTAMP_NOT_FINITE(i64) #1

declare dso_local i32 @timestamp2tm(i64, i32*, %struct.pg_tm*, i32*, i32*, i32*) #1

declare dso_local i32 @DetermineTimeZoneOffset(%struct.pg_tm*, i32) #1

declare dso_local i64 @dt2local(i64, i32) #1

declare dso_local i64 @IS_VALID_TIMESTAMP(i64) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
