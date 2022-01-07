; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/optimizer/plan/extr_planner.c_select_rowmark_type.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/optimizer/plan/extr_planner.c_select_rowmark_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i64, i32 }
%struct.TYPE_7__ = type { i32 (%struct.TYPE_6__*, i32)* }

@RTE_RELATION = common dso_local global i64 0, align 8
@ROW_MARK_COPY = common dso_local global i32 0, align 4
@RELKIND_FOREIGN_TABLE = common dso_local global i64 0, align 8
@ROW_MARK_REFERENCE = common dso_local global i32 0, align 4
@ROW_MARK_KEYSHARE = common dso_local global i32 0, align 4
@ROW_MARK_SHARE = common dso_local global i32 0, align 4
@ROW_MARK_NOKEYEXCLUSIVE = common dso_local global i32 0, align 4
@ROW_MARK_EXCLUSIVE = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"unrecognized LockClauseStrength %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @select_rowmark_type(%struct.TYPE_6__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_7__*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %8 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @RTE_RELATION, align 8
  %11 = icmp ne i64 %9, %10
  br i1 %11, label %12, label %14

12:                                               ; preds = %2
  %13 = load i32, i32* @ROW_MARK_COPY, align 4
  store i32 %13, i32* %3, align 4
  br label %55

14:                                               ; preds = %2
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @RELKIND_FOREIGN_TABLE, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %38

20:                                               ; preds = %14
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 8
  %24 = call %struct.TYPE_7__* @GetFdwRoutineByRelId(i32 %23)
  store %struct.TYPE_7__* %24, %struct.TYPE_7__** %6, align 8
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 0
  %27 = load i32 (%struct.TYPE_6__*, i32)*, i32 (%struct.TYPE_6__*, i32)** %26, align 8
  %28 = icmp ne i32 (%struct.TYPE_6__*, i32)* %27, null
  br i1 %28, label %29, label %36

29:                                               ; preds = %20
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 0
  %32 = load i32 (%struct.TYPE_6__*, i32)*, i32 (%struct.TYPE_6__*, i32)** %31, align 8
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %34 = load i32, i32* %5, align 4
  %35 = call i32 %32(%struct.TYPE_6__* %33, i32 %34)
  store i32 %35, i32* %3, align 4
  br label %55

36:                                               ; preds = %20
  %37 = load i32, i32* @ROW_MARK_COPY, align 4
  store i32 %37, i32* %3, align 4
  br label %55

38:                                               ; preds = %14
  %39 = load i32, i32* %5, align 4
  switch i32 %39, label %50 [
    i32 128, label %40
    i32 132, label %42
    i32 130, label %44
    i32 131, label %46
    i32 129, label %48
  ]

40:                                               ; preds = %38
  %41 = load i32, i32* @ROW_MARK_REFERENCE, align 4
  store i32 %41, i32* %3, align 4
  br label %55

42:                                               ; preds = %38
  %43 = load i32, i32* @ROW_MARK_KEYSHARE, align 4
  store i32 %43, i32* %3, align 4
  br label %55

44:                                               ; preds = %38
  %45 = load i32, i32* @ROW_MARK_SHARE, align 4
  store i32 %45, i32* %3, align 4
  br label %55

46:                                               ; preds = %38
  %47 = load i32, i32* @ROW_MARK_NOKEYEXCLUSIVE, align 4
  store i32 %47, i32* %3, align 4
  br label %55

48:                                               ; preds = %38
  %49 = load i32, i32* @ROW_MARK_EXCLUSIVE, align 4
  store i32 %49, i32* %3, align 4
  br label %55

50:                                               ; preds = %38
  %51 = load i32, i32* @ERROR, align 4
  %52 = load i32, i32* %5, align 4
  %53 = call i32 @elog(i32 %51, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %52)
  %54 = load i32, i32* @ROW_MARK_EXCLUSIVE, align 4
  store i32 %54, i32* %3, align 4
  br label %55

55:                                               ; preds = %50, %48, %46, %44, %42, %40, %36, %29, %12
  %56 = load i32, i32* %3, align 4
  ret i32 %56
}

declare dso_local %struct.TYPE_7__* @GetFdwRoutineByRelId(i32) #1

declare dso_local i32 @elog(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
