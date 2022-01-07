; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/executor/extr_execUtils.c_ExecOpenScanRelation.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/executor/extr_execUtils.c_ExecOpenScanRelation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EXEC_FLAG_EXPLAIN_ONLY = common dso_local global i32 0, align 4
@EXEC_FLAG_WITH_NO_DATA = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_OBJECT_NOT_IN_PREREQUISITE_STATE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"materialized view \22%s\22 has not been populated\00", align 1
@.str.1 = private unnamed_addr constant [43 x i8] c"Use the REFRESH MATERIALIZED VIEW command.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ExecOpenScanRelation(i32* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load i32*, i32** %4, align 8
  %9 = load i32, i32* %5, align 4
  %10 = call i32 @ExecGetRangeTableRelation(i32* %8, i32 %9)
  store i32 %10, i32* %7, align 4
  %11 = load i32, i32* %6, align 4
  %12 = load i32, i32* @EXEC_FLAG_EXPLAIN_ONLY, align 4
  %13 = load i32, i32* @EXEC_FLAG_WITH_NO_DATA, align 4
  %14 = or i32 %12, %13
  %15 = and i32 %11, %14
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %30

17:                                               ; preds = %3
  %18 = load i32, i32* %7, align 4
  %19 = call i32 @RelationIsScannable(i32 %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %30, label %21

21:                                               ; preds = %17
  %22 = load i32, i32* @ERROR, align 4
  %23 = load i32, i32* @ERRCODE_OBJECT_NOT_IN_PREREQUISITE_STATE, align 4
  %24 = call i32 @errcode(i32 %23)
  %25 = load i32, i32* %7, align 4
  %26 = call i32 @RelationGetRelationName(i32 %25)
  %27 = call i32 @errmsg(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %26)
  %28 = call i32 @errhint(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0))
  %29 = call i32 @ereport(i32 %22, i32 %28)
  br label %30

30:                                               ; preds = %21, %17, %3
  %31 = load i32, i32* %7, align 4
  ret i32 %31
}

declare dso_local i32 @ExecGetRangeTableRelation(i32*, i32) #1

declare dso_local i32 @RelationIsScannable(i32) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*, i32) #1

declare dso_local i32 @RelationGetRelationName(i32) #1

declare dso_local i32 @errhint(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
