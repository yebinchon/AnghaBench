; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_date.c_date2timestamptz_opt_overflow.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_date.c_date2timestamptz_opt_overflow.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pg_tm = type { i64, i64, i64, i32, i32, i32 }

@TIMESTAMP_END_JULIAN = common dso_local global i32 0, align 4
@POSTGRES_EPOCH_JDATE = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_DATETIME_VALUE_OUT_OF_RANGE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"date out of range for timestamp\00", align 1
@session_timezone = common dso_local global i32 0, align 4
@USECS_PER_DAY = common dso_local global i32 0, align 4
@USECS_PER_SEC = common dso_local global i32 0, align 4
@MIN_TIMESTAMP = common dso_local global i32 0, align 4
@END_TIMESTAMP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @date2timestamptz_opt_overflow(i32 %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.pg_tm, align 8
  %8 = alloca %struct.pg_tm*, align 8
  %9 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32* %1, i32** %5, align 8
  store %struct.pg_tm* %7, %struct.pg_tm** %8, align 8
  %10 = load i32, i32* %4, align 4
  %11 = call i64 @DATE_IS_NOBEGIN(i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %2
  %14 = load i32, i32* %6, align 4
  %15 = call i32 @TIMESTAMP_NOBEGIN(i32 %14)
  br label %97

16:                                               ; preds = %2
  %17 = load i32, i32* %4, align 4
  %18 = call i64 @DATE_IS_NOEND(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %16
  %21 = load i32, i32* %6, align 4
  %22 = call i32 @TIMESTAMP_NOEND(i32 %21)
  br label %96

23:                                               ; preds = %16
  %24 = load i32, i32* %4, align 4
  %25 = load i32, i32* @TIMESTAMP_END_JULIAN, align 4
  %26 = load i32, i32* @POSTGRES_EPOCH_JDATE, align 4
  %27 = sub nsw i32 %25, %26
  %28 = icmp sge i32 %24, %27
  br i1 %28, label %29, label %41

29:                                               ; preds = %23
  %30 = load i32*, i32** %5, align 8
  %31 = icmp ne i32* %30, null
  br i1 %31, label %32, label %34

32:                                               ; preds = %29
  %33 = load i32*, i32** %5, align 8
  store i32 1, i32* %33, align 4
  store i32 0, i32* %3, align 4
  br label %99

34:                                               ; preds = %29
  %35 = load i32, i32* @ERROR, align 4
  %36 = load i32, i32* @ERRCODE_DATETIME_VALUE_OUT_OF_RANGE, align 4
  %37 = call i32 @errcode(i32 %36)
  %38 = call i32 @errmsg(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %39 = call i32 @ereport(i32 %35, i32 %38)
  br label %40

40:                                               ; preds = %34
  br label %41

41:                                               ; preds = %40, %23
  %42 = load i32, i32* %4, align 4
  %43 = load i32, i32* @POSTGRES_EPOCH_JDATE, align 4
  %44 = add nsw i32 %42, %43
  %45 = load %struct.pg_tm*, %struct.pg_tm** %8, align 8
  %46 = getelementptr inbounds %struct.pg_tm, %struct.pg_tm* %45, i32 0, i32 5
  %47 = load %struct.pg_tm*, %struct.pg_tm** %8, align 8
  %48 = getelementptr inbounds %struct.pg_tm, %struct.pg_tm* %47, i32 0, i32 4
  %49 = load %struct.pg_tm*, %struct.pg_tm** %8, align 8
  %50 = getelementptr inbounds %struct.pg_tm, %struct.pg_tm* %49, i32 0, i32 3
  %51 = call i32 @j2date(i32 %44, i32* %46, i32* %48, i32* %50)
  %52 = load %struct.pg_tm*, %struct.pg_tm** %8, align 8
  %53 = getelementptr inbounds %struct.pg_tm, %struct.pg_tm* %52, i32 0, i32 2
  store i64 0, i64* %53, align 8
  %54 = load %struct.pg_tm*, %struct.pg_tm** %8, align 8
  %55 = getelementptr inbounds %struct.pg_tm, %struct.pg_tm* %54, i32 0, i32 1
  store i64 0, i64* %55, align 8
  %56 = load %struct.pg_tm*, %struct.pg_tm** %8, align 8
  %57 = getelementptr inbounds %struct.pg_tm, %struct.pg_tm* %56, i32 0, i32 0
  store i64 0, i64* %57, align 8
  %58 = load %struct.pg_tm*, %struct.pg_tm** %8, align 8
  %59 = load i32, i32* @session_timezone, align 4
  %60 = call i32 @DetermineTimeZoneOffset(%struct.pg_tm* %58, i32 %59)
  store i32 %60, i32* %9, align 4
  %61 = load i32, i32* %4, align 4
  %62 = load i32, i32* @USECS_PER_DAY, align 4
  %63 = mul nsw i32 %61, %62
  %64 = load i32, i32* %9, align 4
  %65 = load i32, i32* @USECS_PER_SEC, align 4
  %66 = mul nsw i32 %64, %65
  %67 = add nsw i32 %63, %66
  store i32 %67, i32* %6, align 4
  %68 = load i32, i32* %6, align 4
  %69 = call i32 @IS_VALID_TIMESTAMP(i32 %68)
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %95, label %71

71:                                               ; preds = %41
  %72 = load i32*, i32** %5, align 8
  %73 = icmp ne i32* %72, null
  br i1 %73, label %74, label %88

74:                                               ; preds = %71
  %75 = load i32, i32* %6, align 4
  %76 = load i32, i32* @MIN_TIMESTAMP, align 4
  %77 = icmp slt i32 %75, %76
  br i1 %77, label %78, label %80

78:                                               ; preds = %74
  %79 = load i32*, i32** %5, align 8
  store i32 -1, i32* %79, align 4
  br label %87

80:                                               ; preds = %74
  %81 = load i32, i32* %6, align 4
  %82 = load i32, i32* @END_TIMESTAMP, align 4
  %83 = icmp sge i32 %81, %82
  %84 = zext i1 %83 to i32
  %85 = call i32 @Assert(i32 %84)
  %86 = load i32*, i32** %5, align 8
  store i32 1, i32* %86, align 4
  br label %87

87:                                               ; preds = %80, %78
  store i32 0, i32* %3, align 4
  br label %99

88:                                               ; preds = %71
  %89 = load i32, i32* @ERROR, align 4
  %90 = load i32, i32* @ERRCODE_DATETIME_VALUE_OUT_OF_RANGE, align 4
  %91 = call i32 @errcode(i32 %90)
  %92 = call i32 @errmsg(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %93 = call i32 @ereport(i32 %89, i32 %92)
  br label %94

94:                                               ; preds = %88
  br label %95

95:                                               ; preds = %94, %41
  br label %96

96:                                               ; preds = %95, %20
  br label %97

97:                                               ; preds = %96, %13
  %98 = load i32, i32* %6, align 4
  store i32 %98, i32* %3, align 4
  br label %99

99:                                               ; preds = %97, %87, %32
  %100 = load i32, i32* %3, align 4
  ret i32 %100
}

declare dso_local i64 @DATE_IS_NOBEGIN(i32) #1

declare dso_local i32 @TIMESTAMP_NOBEGIN(i32) #1

declare dso_local i64 @DATE_IS_NOEND(i32) #1

declare dso_local i32 @TIMESTAMP_NOEND(i32) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*) #1

declare dso_local i32 @j2date(i32, i32*, i32*, i32*) #1

declare dso_local i32 @DetermineTimeZoneOffset(%struct.pg_tm*, i32) #1

declare dso_local i32 @IS_VALID_TIMESTAMP(i32) #1

declare dso_local i32 @Assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
