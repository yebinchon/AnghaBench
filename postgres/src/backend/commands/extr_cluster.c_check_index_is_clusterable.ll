; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/commands/extr_cluster.c_check_index_is_clusterable.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/commands/extr_cluster.c_check_index_is_clusterable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_10__*, i32, %struct.TYPE_9__* }
%struct.TYPE_10__ = type { i64, i32 }
%struct.TYPE_9__ = type { i32 }

@ERROR = common dso_local global i32 0, align 4
@ERRCODE_WRONG_OBJECT_TYPE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"\22%s\22 is not an index for table \22%s\22\00", align 1
@ERRCODE_FEATURE_NOT_SUPPORTED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [79 x i8] c"cannot cluster on index \22%s\22 because access method does not support clustering\00", align 1
@Anum_pg_index_indpred = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [37 x i8] c"cannot cluster on partial index \22%s\22\00", align 1
@.str.3 = private unnamed_addr constant [37 x i8] c"cannot cluster on invalid index \22%s\22\00", align 1
@NoLock = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @check_index_is_clusterable(%struct.TYPE_11__* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_11__*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %10 = load i32, i32* %6, align 4
  %11 = load i32, i32* %8, align 4
  %12 = call %struct.TYPE_11__* @index_open(i32 %10, i32 %11)
  store %struct.TYPE_11__* %12, %struct.TYPE_11__** %9, align 8
  %13 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %14 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %16 = icmp eq %struct.TYPE_10__* %15, null
  br i1 %16, label %26, label %17

17:                                               ; preds = %4
  %18 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %19 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_10__*, %struct.TYPE_10__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %24 = call i64 @RelationGetRelid(%struct.TYPE_11__* %23)
  %25 = icmp ne i64 %22, %24
  br i1 %25, label %26, label %36

26:                                               ; preds = %17, %4
  %27 = load i32, i32* @ERROR, align 4
  %28 = load i32, i32* @ERRCODE_WRONG_OBJECT_TYPE, align 4
  %29 = call i32 @errcode(i32 %28)
  %30 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %31 = call i32 @RelationGetRelationName(%struct.TYPE_11__* %30)
  %32 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %33 = call i32 @RelationGetRelationName(%struct.TYPE_11__* %32)
  %34 = call i32 (i8*, i32, ...) @errmsg(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %31, i32 %33)
  %35 = call i32 @ereport(i32 %27, i32 %34)
  br label %36

36:                                               ; preds = %26, %17
  %37 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %38 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %37, i32 0, i32 2
  %39 = load %struct.TYPE_9__*, %struct.TYPE_9__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %51, label %43

43:                                               ; preds = %36
  %44 = load i32, i32* @ERROR, align 4
  %45 = load i32, i32* @ERRCODE_FEATURE_NOT_SUPPORTED, align 4
  %46 = call i32 @errcode(i32 %45)
  %47 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %48 = call i32 @RelationGetRelationName(%struct.TYPE_11__* %47)
  %49 = call i32 (i8*, i32, ...) @errmsg(i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.1, i64 0, i64 0), i32 %48)
  %50 = call i32 @ereport(i32 %44, i32 %49)
  br label %51

51:                                               ; preds = %43, %36
  %52 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %53 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* @Anum_pg_index_indpred, align 4
  %56 = call i32 @heap_attisnull(i32 %54, i32 %55, i32* null)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %66, label %58

58:                                               ; preds = %51
  %59 = load i32, i32* @ERROR, align 4
  %60 = load i32, i32* @ERRCODE_FEATURE_NOT_SUPPORTED, align 4
  %61 = call i32 @errcode(i32 %60)
  %62 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %63 = call i32 @RelationGetRelationName(%struct.TYPE_11__* %62)
  %64 = call i32 (i8*, i32, ...) @errmsg(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i32 %63)
  %65 = call i32 @ereport(i32 %59, i32 %64)
  br label %66

66:                                               ; preds = %58, %51
  %67 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %68 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %67, i32 0, i32 0
  %69 = load %struct.TYPE_10__*, %struct.TYPE_10__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 8
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %81, label %73

73:                                               ; preds = %66
  %74 = load i32, i32* @ERROR, align 4
  %75 = load i32, i32* @ERRCODE_FEATURE_NOT_SUPPORTED, align 4
  %76 = call i32 @errcode(i32 %75)
  %77 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %78 = call i32 @RelationGetRelationName(%struct.TYPE_11__* %77)
  %79 = call i32 (i8*, i32, ...) @errmsg(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0), i32 %78)
  %80 = call i32 @ereport(i32 %74, i32 %79)
  br label %81

81:                                               ; preds = %73, %66
  %82 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %83 = load i32, i32* @NoLock, align 4
  %84 = call i32 @index_close(%struct.TYPE_11__* %82, i32 %83)
  ret void
}

declare dso_local %struct.TYPE_11__* @index_open(i32, i32) #1

declare dso_local i64 @RelationGetRelid(%struct.TYPE_11__*) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*, i32, ...) #1

declare dso_local i32 @RelationGetRelationName(%struct.TYPE_11__*) #1

declare dso_local i32 @heap_attisnull(i32, i32, i32*) #1

declare dso_local i32 @index_close(%struct.TYPE_11__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
