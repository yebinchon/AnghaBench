; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/executor/extr_execMain.c_CheckValidRowMarkRel.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/executor/extr_execMain.c_CheckValidRowMarkRel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_10__ = type { i32* }

@ERROR = common dso_local global i32 0, align 4
@ERRCODE_WRONG_OBJECT_TYPE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"cannot lock rows in sequence \22%s\22\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"cannot lock rows in TOAST relation \22%s\22\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"cannot lock rows in view \22%s\22\00", align 1
@ROW_MARK_REFERENCE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [43 x i8] c"cannot lock rows in materialized view \22%s\22\00", align 1
@ERRCODE_FEATURE_NOT_SUPPORTED = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [39 x i8] c"cannot lock rows in foreign table \22%s\22\00", align 1
@.str.5 = private unnamed_addr constant [34 x i8] c"cannot lock rows in relation \22%s\22\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_9__*, i32)* @CheckValidRowMarkRel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @CheckValidRowMarkRel(%struct.TYPE_9__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_10__*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %7 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i32 0, i32 0
  %8 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  switch i32 %10, label %65 [
    i32 131, label %11
    i32 132, label %11
    i32 130, label %12
    i32 129, label %20
    i32 128, label %28
    i32 133, label %36
    i32 134, label %49
  ]

11:                                               ; preds = %2, %2
  br label %73

12:                                               ; preds = %2
  %13 = load i32, i32* @ERROR, align 4
  %14 = load i32, i32* @ERRCODE_WRONG_OBJECT_TYPE, align 4
  %15 = call i32 @errcode(i32 %14)
  %16 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %17 = call i32 @RelationGetRelationName(%struct.TYPE_9__* %16)
  %18 = call i32 @errmsg(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %17)
  %19 = call i32 @ereport(i32 %13, i32 %18)
  br label %73

20:                                               ; preds = %2
  %21 = load i32, i32* @ERROR, align 4
  %22 = load i32, i32* @ERRCODE_WRONG_OBJECT_TYPE, align 4
  %23 = call i32 @errcode(i32 %22)
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %25 = call i32 @RelationGetRelationName(%struct.TYPE_9__* %24)
  %26 = call i32 @errmsg(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i32 %25)
  %27 = call i32 @ereport(i32 %21, i32 %26)
  br label %73

28:                                               ; preds = %2
  %29 = load i32, i32* @ERROR, align 4
  %30 = load i32, i32* @ERRCODE_WRONG_OBJECT_TYPE, align 4
  %31 = call i32 @errcode(i32 %30)
  %32 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %33 = call i32 @RelationGetRelationName(%struct.TYPE_9__* %32)
  %34 = call i32 @errmsg(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i32 %33)
  %35 = call i32 @ereport(i32 %29, i32 %34)
  br label %73

36:                                               ; preds = %2
  %37 = load i32, i32* %4, align 4
  %38 = load i32, i32* @ROW_MARK_REFERENCE, align 4
  %39 = icmp ne i32 %37, %38
  br i1 %39, label %40, label %48

40:                                               ; preds = %36
  %41 = load i32, i32* @ERROR, align 4
  %42 = load i32, i32* @ERRCODE_WRONG_OBJECT_TYPE, align 4
  %43 = call i32 @errcode(i32 %42)
  %44 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %45 = call i32 @RelationGetRelationName(%struct.TYPE_9__* %44)
  %46 = call i32 @errmsg(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i64 0, i64 0), i32 %45)
  %47 = call i32 @ereport(i32 %41, i32 %46)
  br label %48

48:                                               ; preds = %40, %36
  br label %73

49:                                               ; preds = %2
  %50 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %51 = call %struct.TYPE_10__* @GetFdwRoutineForRelation(%struct.TYPE_9__* %50, i32 0)
  store %struct.TYPE_10__* %51, %struct.TYPE_10__** %5, align 8
  %52 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %53 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %52, i32 0, i32 0
  %54 = load i32*, i32** %53, align 8
  %55 = icmp eq i32* %54, null
  br i1 %55, label %56, label %64

56:                                               ; preds = %49
  %57 = load i32, i32* @ERROR, align 4
  %58 = load i32, i32* @ERRCODE_FEATURE_NOT_SUPPORTED, align 4
  %59 = call i32 @errcode(i32 %58)
  %60 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %61 = call i32 @RelationGetRelationName(%struct.TYPE_9__* %60)
  %62 = call i32 @errmsg(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i64 0, i64 0), i32 %61)
  %63 = call i32 @ereport(i32 %57, i32 %62)
  br label %64

64:                                               ; preds = %56, %49
  br label %73

65:                                               ; preds = %2
  %66 = load i32, i32* @ERROR, align 4
  %67 = load i32, i32* @ERRCODE_WRONG_OBJECT_TYPE, align 4
  %68 = call i32 @errcode(i32 %67)
  %69 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %70 = call i32 @RelationGetRelationName(%struct.TYPE_9__* %69)
  %71 = call i32 @errmsg(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5, i64 0, i64 0), i32 %70)
  %72 = call i32 @ereport(i32 %66, i32 %71)
  br label %73

73:                                               ; preds = %65, %64, %48, %28, %20, %12, %11
  ret void
}

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*, i32) #1

declare dso_local i32 @RelationGetRelationName(%struct.TYPE_9__*) #1

declare dso_local %struct.TYPE_10__* @GetFdwRoutineForRelation(%struct.TYPE_9__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
