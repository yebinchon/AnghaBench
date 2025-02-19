; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/table/extr_table.c_table_openrv_extended.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/table/extr_table.c_table_openrv_extended.c"
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
define dso_local %struct.TYPE_7__* @table_openrv_extended(i32* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_7__*, align 8
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load i32*, i32** %4, align 8
  %9 = load i32, i32* %5, align 4
  %10 = load i32, i32* %6, align 4
  %11 = call %struct.TYPE_7__* @relation_openrv_extended(i32* %8, i32 %9, i32 %10)
  store %struct.TYPE_7__* %11, %struct.TYPE_7__** %7, align 8
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %13 = icmp ne %struct.TYPE_7__* %12, null
  br i1 %13, label %14, label %56

14:                                               ; preds = %3
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @RELKIND_INDEX, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %30, label %22

22:                                               ; preds = %14
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @RELKIND_PARTITIONED_INDEX, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %38

30:                                               ; preds = %22, %14
  %31 = load i32, i32* @ERROR, align 4
  %32 = load i32, i32* @ERRCODE_WRONG_OBJECT_TYPE, align 4
  %33 = call i32 @errcode(i32 %32)
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %35 = call i32 @RelationGetRelationName(%struct.TYPE_7__* %34)
  %36 = call i32 @errmsg(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %35)
  %37 = call i32 @ereport(i32 %31, i32 %36)
  br label %55

38:                                               ; preds = %22
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 0
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @RELKIND_COMPOSITE_TYPE, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %54

46:                                               ; preds = %38
  %47 = load i32, i32* @ERROR, align 4
  %48 = load i32, i32* @ERRCODE_WRONG_OBJECT_TYPE, align 4
  %49 = call i32 @errcode(i32 %48)
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %51 = call i32 @RelationGetRelationName(%struct.TYPE_7__* %50)
  %52 = call i32 @errmsg(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %51)
  %53 = call i32 @ereport(i32 %47, i32 %52)
  br label %54

54:                                               ; preds = %46, %38
  br label %55

55:                                               ; preds = %54, %30
  br label %56

56:                                               ; preds = %55, %3
  %57 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  ret %struct.TYPE_7__* %57
}

declare dso_local %struct.TYPE_7__* @relation_openrv_extended(i32*, i32, i32) #1

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
