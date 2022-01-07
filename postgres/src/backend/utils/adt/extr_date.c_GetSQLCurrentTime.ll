; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_date.c_GetSQLCurrentTime.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_date.c_GetSQLCurrentTime.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.pg_tm = type { i32 }

@ERROR = common dso_local global i32 0, align 4
@ERRCODE_DATETIME_VALUE_OUT_OF_RANGE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"timestamp out of range\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_4__* @GetSQLCurrentTime(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.pg_tm, align 4
  %6 = alloca %struct.pg_tm*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store %struct.pg_tm* %5, %struct.pg_tm** %6, align 8
  %9 = call i32 (...) @GetCurrentTransactionStartTimestamp()
  store i32 %9, i32* %4, align 4
  %10 = load i32, i32* %4, align 4
  %11 = load %struct.pg_tm*, %struct.pg_tm** %6, align 8
  %12 = call i64 @timestamp2tm(i32 %10, i32* %8, %struct.pg_tm* %11, i32* %7, i32* null, i32* null)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %20

14:                                               ; preds = %1
  %15 = load i32, i32* @ERROR, align 4
  %16 = load i32, i32* @ERRCODE_DATETIME_VALUE_OUT_OF_RANGE, align 4
  %17 = call i32 @errcode(i32 %16)
  %18 = call i32 @errmsg(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %19 = call i32 @ereport(i32 %15, i32 %18)
  br label %20

20:                                               ; preds = %14, %1
  %21 = call i64 @palloc(i32 4)
  %22 = inttoptr i64 %21 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %22, %struct.TYPE_4__** %3, align 8
  %23 = load %struct.pg_tm*, %struct.pg_tm** %6, align 8
  %24 = load i32, i32* %7, align 4
  %25 = load i32, i32* %8, align 4
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %27 = call i32 @tm2timetz(%struct.pg_tm* %23, i32 %24, i32 %25, %struct.TYPE_4__* %26)
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i32, i32* %2, align 4
  %31 = call i32 @AdjustTimeForTypmod(i32* %29, i32 %30)
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  ret %struct.TYPE_4__* %32
}

declare dso_local i32 @GetCurrentTransactionStartTimestamp(...) #1

declare dso_local i64 @timestamp2tm(i32, i32*, %struct.pg_tm*, i32*, i32*, i32*) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*) #1

declare dso_local i64 @palloc(i32) #1

declare dso_local i32 @tm2timetz(%struct.pg_tm*, i32, i32, %struct.TYPE_4__*) #1

declare dso_local i32 @AdjustTimeForTypmod(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
