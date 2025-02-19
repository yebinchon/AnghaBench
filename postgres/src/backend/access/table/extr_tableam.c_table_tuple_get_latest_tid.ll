; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/table/extr_tableam.c_table_tuple_get_latest_tid.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/table/extr_tableam.c_table_tuple_get_latest_tid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32 (%struct.TYPE_8__*, i32)*, i32 (%struct.TYPE_8__*, i32)* }

@ERROR = common dso_local global i32 0, align 4
@ERRCODE_INVALID_PARAMETER_VALUE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"tid (%u, %u) is not valid for relation \22%s\22\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @table_tuple_get_latest_tid(%struct.TYPE_8__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca %struct.TYPE_9__*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 0
  %9 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  store %struct.TYPE_10__* %9, %struct.TYPE_10__** %5, align 8
  %10 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %11 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %10, i32 0, i32 0
  %12 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  store %struct.TYPE_9__* %12, %struct.TYPE_9__** %6, align 8
  %13 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %14 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %13, i32 0, i32 1
  %15 = load i32 (%struct.TYPE_8__*, i32)*, i32 (%struct.TYPE_8__*, i32)** %14, align 8
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %17 = load i32, i32* %4, align 4
  %18 = call i32 %15(%struct.TYPE_8__* %16, i32 %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %32, label %20

20:                                               ; preds = %2
  %21 = load i32, i32* @ERROR, align 4
  %22 = load i32, i32* @ERRCODE_INVALID_PARAMETER_VALUE, align 4
  %23 = call i32 @errcode(i32 %22)
  %24 = load i32, i32* %4, align 4
  %25 = call i32 @ItemPointerGetBlockNumberNoCheck(i32 %24)
  %26 = load i32, i32* %4, align 4
  %27 = call i32 @ItemPointerGetOffsetNumberNoCheck(i32 %26)
  %28 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %29 = call i32 @RelationGetRelationName(%struct.TYPE_10__* %28)
  %30 = call i32 @errmsg(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %25, i32 %27, i32 %29)
  %31 = call i32 @ereport(i32 %21, i32 %30)
  br label %32

32:                                               ; preds = %20, %2
  %33 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i32 0, i32 0
  %35 = load i32 (%struct.TYPE_8__*, i32)*, i32 (%struct.TYPE_8__*, i32)** %34, align 8
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %37 = load i32, i32* %4, align 4
  %38 = call i32 %35(%struct.TYPE_8__* %36, i32 %37)
  ret void
}

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*, i32, i32, i32) #1

declare dso_local i32 @ItemPointerGetBlockNumberNoCheck(i32) #1

declare dso_local i32 @ItemPointerGetOffsetNumberNoCheck(i32) #1

declare dso_local i32 @RelationGetRelationName(%struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
