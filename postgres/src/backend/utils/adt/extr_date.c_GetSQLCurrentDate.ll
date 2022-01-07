; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_date.c_GetSQLCurrentDate.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_date.c_GetSQLCurrentDate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pg_tm = type { i32, i32, i32 }

@ERROR = common dso_local global i32 0, align 4
@ERRCODE_DATETIME_VALUE_OUT_OF_RANGE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"timestamp out of range\00", align 1
@POSTGRES_EPOCH_JDATE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @GetSQLCurrentDate() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.pg_tm, align 4
  %3 = alloca %struct.pg_tm*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.pg_tm* %2, %struct.pg_tm** %3, align 8
  %6 = call i32 (...) @GetCurrentTransactionStartTimestamp()
  store i32 %6, i32* %1, align 4
  %7 = load i32, i32* %1, align 4
  %8 = load %struct.pg_tm*, %struct.pg_tm** %3, align 8
  %9 = call i64 @timestamp2tm(i32 %7, i32* %5, %struct.pg_tm* %8, i32* %4, i32* null, i32* null)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %17

11:                                               ; preds = %0
  %12 = load i32, i32* @ERROR, align 4
  %13 = load i32, i32* @ERRCODE_DATETIME_VALUE_OUT_OF_RANGE, align 4
  %14 = call i32 @errcode(i32 %13)
  %15 = call i32 @errmsg(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %16 = call i32 @ereport(i32 %12, i32 %15)
  br label %17

17:                                               ; preds = %11, %0
  %18 = load %struct.pg_tm*, %struct.pg_tm** %3, align 8
  %19 = getelementptr inbounds %struct.pg_tm, %struct.pg_tm* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.pg_tm*, %struct.pg_tm** %3, align 8
  %22 = getelementptr inbounds %struct.pg_tm, %struct.pg_tm* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.pg_tm*, %struct.pg_tm** %3, align 8
  %25 = getelementptr inbounds %struct.pg_tm, %struct.pg_tm* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i64 @date2j(i32 %20, i32 %23, i32 %26)
  %28 = load i64, i64* @POSTGRES_EPOCH_JDATE, align 8
  %29 = sub nsw i64 %27, %28
  ret i64 %29
}

declare dso_local i32 @GetCurrentTransactionStartTimestamp(...) #1

declare dso_local i64 @timestamp2tm(i32, i32*, %struct.pg_tm*, i32*, i32*, i32*) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*) #1

declare dso_local i64 @date2j(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
