; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/executor/extr_execMain.c_ExecPartitionCheckEmitError.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/executor/extr_execMain.c_ExecPartitionCheckEmitError.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i64 }

@TTSOpsVirtual = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_CHECK_VIOLATION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [56 x i8] c"new row for relation \22%s\22 violates partition constraint\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"Failing row contains %s.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ExecPartitionCheckEmitError(%struct.TYPE_5__* %0, i32* %1, i32* %2) #0 {
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %42

17:                                               ; preds = %3
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = call i32 @RelationGetRelid(i64 %20)
  store i32 %21, i32* %7, align 4
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = call i32 @RelationGetDescr(i64 %24)
  store i32 %25, i32* %8, align 4
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = call i32 @RelationGetDescr(i64 %28)
  store i32 %29, i32* %11, align 4
  %30 = load i32, i32* %11, align 4
  %31 = load i32, i32* %8, align 4
  %32 = call i32* @convert_tuples_by_name_map_if_req(i32 %30, i32 %31)
  store i32* %32, i32** %12, align 8
  %33 = load i32*, i32** %12, align 8
  %34 = icmp ne i32* %33, null
  br i1 %34, label %35, label %41

35:                                               ; preds = %17
  %36 = load i32*, i32** %12, align 8
  %37 = load i32*, i32** %5, align 8
  %38 = load i32, i32* %8, align 4
  %39 = call i32 @MakeTupleTableSlot(i32 %38, i32* @TTSOpsVirtual)
  %40 = call i32* @execute_attr_map_slot(i32* %36, i32* %37, i32 %39)
  store i32* %40, i32** %5, align 8
  br label %41

41:                                               ; preds = %35, %17
  br label %51

42:                                               ; preds = %3
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = call i32 @RelationGetRelid(i64 %45)
  store i32 %46, i32* %7, align 4
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = call i32 @RelationGetDescr(i64 %49)
  store i32 %50, i32* %8, align 4
  br label %51

51:                                               ; preds = %42, %41
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %53 = load i32*, i32** %6, align 8
  %54 = call i32 @GetInsertedColumns(%struct.TYPE_5__* %52, i32* %53)
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %56 = load i32*, i32** %6, align 8
  %57 = call i32 @GetUpdatedColumns(%struct.TYPE_5__* %55, i32* %56)
  %58 = call i32* @bms_union(i32 %54, i32 %57)
  store i32* %58, i32** %10, align 8
  %59 = load i32, i32* %7, align 4
  %60 = load i32*, i32** %5, align 8
  %61 = load i32, i32* %8, align 4
  %62 = load i32*, i32** %10, align 8
  %63 = call i8* @ExecBuildSlotValueDescription(i32 %59, i32* %60, i32 %61, i32* %62, i32 64)
  store i8* %63, i8** %9, align 8
  %64 = load i32, i32* @ERROR, align 4
  %65 = load i32, i32* @ERRCODE_CHECK_VIOLATION, align 4
  %66 = call i32 @errcode(i32 %65)
  %67 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = call i32 @RelationGetRelationName(i64 %69)
  %71 = call i32 @errmsg(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0), i32 %70)
  %72 = load i8*, i8** %9, align 8
  %73 = icmp ne i8* %72, null
  br i1 %73, label %74, label %77

74:                                               ; preds = %51
  %75 = load i8*, i8** %9, align 8
  %76 = call i32 @errdetail(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i8* %75)
  br label %78

77:                                               ; preds = %51
  br label %78

78:                                               ; preds = %77, %74
  %79 = phi i32 [ %76, %74 ], [ 0, %77 ]
  %80 = call i32 @ereport(i32 %64, i32 %79)
  ret void
}

declare dso_local i32 @RelationGetRelid(i64) #1

declare dso_local i32 @RelationGetDescr(i64) #1

declare dso_local i32* @convert_tuples_by_name_map_if_req(i32, i32) #1

declare dso_local i32* @execute_attr_map_slot(i32*, i32*, i32) #1

declare dso_local i32 @MakeTupleTableSlot(i32, i32*) #1

declare dso_local i32* @bms_union(i32, i32) #1

declare dso_local i32 @GetInsertedColumns(%struct.TYPE_5__*, i32*) #1

declare dso_local i32 @GetUpdatedColumns(%struct.TYPE_5__*, i32*) #1

declare dso_local i8* @ExecBuildSlotValueDescription(i32, i32*, i32, i32*, i32) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*, i32) #1

declare dso_local i32 @RelationGetRelationName(i64) #1

declare dso_local i32 @errdetail(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
