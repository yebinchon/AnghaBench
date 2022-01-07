; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/index/extr_genam.c_systable_beginscan_ordered.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/index/extr_genam.c_systable_beginscan_ordered.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { i32*, i32, i32*, i32, %struct.TYPE_21__*, %struct.TYPE_21__* }
%struct.TYPE_21__ = type { %struct.TYPE_18__* }
%struct.TYPE_18__ = type { %struct.TYPE_17__ }
%struct.TYPE_17__ = type { i32* }
%struct.TYPE_20__ = type { i32 }

@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [68 x i8] c"cannot do ordered scan on index \22%s\22, because it is being reindexed\00", align 1
@IgnoreSystemIndexes = common dso_local global i64 0, align 8
@WARNING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [45 x i8] c"using index \22%s\22 despite IgnoreSystemIndexes\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"column is not in index\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_19__* @systable_beginscan_ordered(%struct.TYPE_21__* %0, %struct.TYPE_21__* %1, i32* %2, i32 %3, %struct.TYPE_20__* %4) #0 {
  %6 = alloca %struct.TYPE_21__*, align 8
  %7 = alloca %struct.TYPE_21__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_20__*, align 8
  %11 = alloca %struct.TYPE_19__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.TYPE_21__* %0, %struct.TYPE_21__** %6, align 8
  store %struct.TYPE_21__* %1, %struct.TYPE_21__** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  store %struct.TYPE_20__* %4, %struct.TYPE_20__** %10, align 8
  %15 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %16 = call i32 @RelationGetRelid(%struct.TYPE_21__* %15)
  %17 = call i64 @ReindexIsProcessingIndex(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %5
  %20 = load i32, i32* @ERROR, align 4
  %21 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %22 = call i32 @RelationGetRelationName(%struct.TYPE_21__* %21)
  %23 = call i32 (i32, i8*, ...) @elog(i32 %20, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str, i64 0, i64 0), i32 %22)
  br label %24

24:                                               ; preds = %19, %5
  %25 = load i64, i64* @IgnoreSystemIndexes, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %24
  %28 = load i32, i32* @WARNING, align 4
  %29 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %30 = call i32 @RelationGetRelationName(%struct.TYPE_21__* %29)
  %31 = call i32 (i32, i8*, ...) @elog(i32 %28, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i32 %30)
  br label %32

32:                                               ; preds = %27, %24
  %33 = call i64 @palloc(i32 4)
  %34 = inttoptr i64 %33 to %struct.TYPE_19__*
  store %struct.TYPE_19__* %34, %struct.TYPE_19__** %11, align 8
  %35 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %36 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %37 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %36, i32 0, i32 5
  store %struct.TYPE_21__* %35, %struct.TYPE_21__** %37, align 8
  %38 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %39 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %40 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %39, i32 0, i32 4
  store %struct.TYPE_21__* %38, %struct.TYPE_21__** %40, align 8
  %41 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %42 = call i32 @table_slot_create(%struct.TYPE_21__* %41, i32* null)
  %43 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %44 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %43, i32 0, i32 3
  store i32 %42, i32* %44, align 8
  %45 = load i32*, i32** %8, align 8
  %46 = icmp eq i32* %45, null
  br i1 %46, label %47, label %56

47:                                               ; preds = %32
  %48 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %49 = call i32 @RelationGetRelid(%struct.TYPE_21__* %48)
  store i32 %49, i32* %13, align 4
  %50 = load i32, i32* %13, align 4
  %51 = call i32 @GetCatalogSnapshot(i32 %50)
  %52 = call i32* @RegisterSnapshot(i32 %51)
  store i32* %52, i32** %8, align 8
  %53 = load i32*, i32** %8, align 8
  %54 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %55 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %54, i32 0, i32 2
  store i32* %53, i32** %55, align 8
  br label %59

56:                                               ; preds = %32
  %57 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %58 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %57, i32 0, i32 2
  store i32* null, i32** %58, align 8
  br label %59

59:                                               ; preds = %56, %47
  store i32 0, i32* %12, align 4
  br label %60

60:                                               ; preds = %109, %59
  %61 = load i32, i32* %12, align 4
  %62 = load i32, i32* %9, align 4
  %63 = icmp slt i32 %61, %62
  br i1 %63, label %64, label %112

64:                                               ; preds = %60
  store i32 0, i32* %14, align 4
  br label %65

65:                                               ; preds = %97, %64
  %66 = load i32, i32* %14, align 4
  %67 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %68 = call i32 @IndexRelationGetNumberOfAttributes(%struct.TYPE_21__* %67)
  %69 = icmp slt i32 %66, %68
  br i1 %69, label %70, label %100

70:                                               ; preds = %65
  %71 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %72 = load i32, i32* %12, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %71, i64 %73
  %75 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %78 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %77, i32 0, i32 0
  %79 = load %struct.TYPE_18__*, %struct.TYPE_18__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %80, i32 0, i32 0
  %82 = load i32*, i32** %81, align 8
  %83 = load i32, i32* %14, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i32, i32* %82, i64 %84
  %86 = load i32, i32* %85, align 4
  %87 = icmp eq i32 %76, %86
  br i1 %87, label %88, label %96

88:                                               ; preds = %70
  %89 = load i32, i32* %14, align 4
  %90 = add nsw i32 %89, 1
  %91 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %92 = load i32, i32* %12, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %91, i64 %93
  %95 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %94, i32 0, i32 0
  store i32 %90, i32* %95, align 4
  br label %100

96:                                               ; preds = %70
  br label %97

97:                                               ; preds = %96
  %98 = load i32, i32* %14, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %14, align 4
  br label %65

100:                                              ; preds = %88, %65
  %101 = load i32, i32* %14, align 4
  %102 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %103 = call i32 @IndexRelationGetNumberOfAttributes(%struct.TYPE_21__* %102)
  %104 = icmp eq i32 %101, %103
  br i1 %104, label %105, label %108

105:                                              ; preds = %100
  %106 = load i32, i32* @ERROR, align 4
  %107 = call i32 (i32, i8*, ...) @elog(i32 %106, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  br label %108

108:                                              ; preds = %105, %100
  br label %109

109:                                              ; preds = %108
  %110 = load i32, i32* %12, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %12, align 4
  br label %60

112:                                              ; preds = %60
  %113 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %114 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %115 = load i32*, i32** %8, align 8
  %116 = load i32, i32* %9, align 4
  %117 = call i32 @index_beginscan(%struct.TYPE_21__* %113, %struct.TYPE_21__* %114, i32* %115, i32 %116, i32 0)
  %118 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %119 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %118, i32 0, i32 1
  store i32 %117, i32* %119, align 8
  %120 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %121 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 8
  %123 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %124 = load i32, i32* %9, align 4
  %125 = call i32 @index_rescan(i32 %122, %struct.TYPE_20__* %123, i32 %124, i32* null, i32 0)
  %126 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %127 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %126, i32 0, i32 0
  store i32* null, i32** %127, align 8
  %128 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  ret %struct.TYPE_19__* %128
}

declare dso_local i64 @ReindexIsProcessingIndex(i32) #1

declare dso_local i32 @RelationGetRelid(%struct.TYPE_21__*) #1

declare dso_local i32 @elog(i32, i8*, ...) #1

declare dso_local i32 @RelationGetRelationName(%struct.TYPE_21__*) #1

declare dso_local i64 @palloc(i32) #1

declare dso_local i32 @table_slot_create(%struct.TYPE_21__*, i32*) #1

declare dso_local i32* @RegisterSnapshot(i32) #1

declare dso_local i32 @GetCatalogSnapshot(i32) #1

declare dso_local i32 @IndexRelationGetNumberOfAttributes(%struct.TYPE_21__*) #1

declare dso_local i32 @index_beginscan(%struct.TYPE_21__*, %struct.TYPE_21__*, i32*, i32, i32) #1

declare dso_local i32 @index_rescan(i32, %struct.TYPE_20__*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
