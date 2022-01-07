; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/table/extr_table.c_table_open.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/table/extr_table.c_table_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64 }

@RELKIND_INDEX = common dso_local global i64 0, align 8
@RELKIND_PARTITIONED_INDEX = common dso_local global i64 0, align 8
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_WRONG_OBJECT_TYPE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"\22%s\22 is an index\00", align 1
@RELKIND_COMPOSITE_TYPE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [25 x i8] c"\22%s\22 is a composite type\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_7__* @table_open(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_7__*, align 8
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %3, align 4
  %7 = load i32, i32* %4, align 4
  %8 = call %struct.TYPE_7__* @relation_open(i32 %6, i32 %7)
  store %struct.TYPE_7__* %8, %struct.TYPE_7__** %5, align 8
  %9 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %10 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 0
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @RELKIND_INDEX, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %24, label %16

16:                                               ; preds = %2
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @RELKIND_PARTITIONED_INDEX, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %32

24:                                               ; preds = %16, %2
  %25 = load i32, i32* @ERROR, align 4
  %26 = load i32, i32* @ERRCODE_WRONG_OBJECT_TYPE, align 4
  %27 = call i32 @errcode(i32 %26)
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %29 = call i32 @RelationGetRelationName(%struct.TYPE_7__* %28)
  %30 = call i32 @errmsg(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %29)
  %31 = call i32 @ereport(i32 %25, i32 %30)
  br label %49

32:                                               ; preds = %16
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 0
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @RELKIND_COMPOSITE_TYPE, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %48

40:                                               ; preds = %32
  %41 = load i32, i32* @ERROR, align 4
  %42 = load i32, i32* @ERRCODE_WRONG_OBJECT_TYPE, align 4
  %43 = call i32 @errcode(i32 %42)
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %45 = call i32 @RelationGetRelationName(%struct.TYPE_7__* %44)
  %46 = call i32 @errmsg(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %45)
  %47 = call i32 @ereport(i32 %41, i32 %46)
  br label %48

48:                                               ; preds = %40, %32
  br label %49

49:                                               ; preds = %48, %24
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  ret %struct.TYPE_7__* %50
}

declare dso_local %struct.TYPE_7__* @relation_open(i32, i32) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*, i32) #1

declare dso_local i32 @RelationGetRelationName(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
