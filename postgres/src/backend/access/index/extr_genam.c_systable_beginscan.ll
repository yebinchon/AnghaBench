; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/index/extr_genam.c_systable_beginscan.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/index/extr_genam.c_systable_beginscan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { i32*, i32*, i32*, i32, %struct.TYPE_22__*, %struct.TYPE_22__* }
%struct.TYPE_22__ = type { %struct.TYPE_19__* }
%struct.TYPE_19__ = type { %struct.TYPE_18__ }
%struct.TYPE_18__ = type { i32* }
%struct.TYPE_21__ = type { i32 }

@IgnoreSystemIndexes = common dso_local global i32 0, align 4
@AccessShareLock = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"column is not in index\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_20__* @systable_beginscan(%struct.TYPE_22__* %0, i32 %1, i32 %2, i32* %3, i32 %4, %struct.TYPE_21__* %5) #0 {
  %7 = alloca %struct.TYPE_22__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_21__*, align 8
  %13 = alloca %struct.TYPE_20__*, align 8
  %14 = alloca %struct.TYPE_22__*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.TYPE_22__* %0, %struct.TYPE_22__** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i32 %4, i32* %11, align 4
  store %struct.TYPE_21__* %5, %struct.TYPE_21__** %12, align 8
  %18 = load i32, i32* %9, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %31

20:                                               ; preds = %6
  %21 = load i32, i32* @IgnoreSystemIndexes, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %31, label %23

23:                                               ; preds = %20
  %24 = load i32, i32* %8, align 4
  %25 = call i32 @ReindexIsProcessingIndex(i32 %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %31, label %27

27:                                               ; preds = %23
  %28 = load i32, i32* %8, align 4
  %29 = load i32, i32* @AccessShareLock, align 4
  %30 = call %struct.TYPE_22__* @index_open(i32 %28, i32 %29)
  store %struct.TYPE_22__* %30, %struct.TYPE_22__** %14, align 8
  br label %32

31:                                               ; preds = %23, %20, %6
  store %struct.TYPE_22__* null, %struct.TYPE_22__** %14, align 8
  br label %32

32:                                               ; preds = %31, %27
  %33 = call i64 @palloc(i32 4)
  %34 = inttoptr i64 %33 to %struct.TYPE_20__*
  store %struct.TYPE_20__* %34, %struct.TYPE_20__** %13, align 8
  %35 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %36 = load %struct.TYPE_20__*, %struct.TYPE_20__** %13, align 8
  %37 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %36, i32 0, i32 5
  store %struct.TYPE_22__* %35, %struct.TYPE_22__** %37, align 8
  %38 = load %struct.TYPE_22__*, %struct.TYPE_22__** %14, align 8
  %39 = load %struct.TYPE_20__*, %struct.TYPE_20__** %13, align 8
  %40 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %39, i32 0, i32 4
  store %struct.TYPE_22__* %38, %struct.TYPE_22__** %40, align 8
  %41 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %42 = call i32 @table_slot_create(%struct.TYPE_22__* %41, i32* null)
  %43 = load %struct.TYPE_20__*, %struct.TYPE_20__** %13, align 8
  %44 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %43, i32 0, i32 3
  store i32 %42, i32* %44, align 8
  %45 = load i32*, i32** %10, align 8
  %46 = icmp eq i32* %45, null
  br i1 %46, label %47, label %56

47:                                               ; preds = %32
  %48 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %49 = call i32 @RelationGetRelid(%struct.TYPE_22__* %48)
  store i32 %49, i32* %15, align 4
  %50 = load i32, i32* %15, align 4
  %51 = call i32 @GetCatalogSnapshot(i32 %50)
  %52 = call i32* @RegisterSnapshot(i32 %51)
  store i32* %52, i32** %10, align 8
  %53 = load i32*, i32** %10, align 8
  %54 = load %struct.TYPE_20__*, %struct.TYPE_20__** %13, align 8
  %55 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %54, i32 0, i32 2
  store i32* %53, i32** %55, align 8
  br label %59

56:                                               ; preds = %32
  %57 = load %struct.TYPE_20__*, %struct.TYPE_20__** %13, align 8
  %58 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %57, i32 0, i32 2
  store i32* null, i32** %58, align 8
  br label %59

59:                                               ; preds = %56, %47
  %60 = load %struct.TYPE_22__*, %struct.TYPE_22__** %14, align 8
  %61 = icmp ne %struct.TYPE_22__* %60, null
  br i1 %61, label %62, label %131

62:                                               ; preds = %59
  store i32 0, i32* %16, align 4
  br label %63

63:                                               ; preds = %112, %62
  %64 = load i32, i32* %16, align 4
  %65 = load i32, i32* %11, align 4
  %66 = icmp slt i32 %64, %65
  br i1 %66, label %67, label %115

67:                                               ; preds = %63
  store i32 0, i32* %17, align 4
  br label %68

68:                                               ; preds = %100, %67
  %69 = load i32, i32* %17, align 4
  %70 = load %struct.TYPE_22__*, %struct.TYPE_22__** %14, align 8
  %71 = call i32 @IndexRelationGetNumberOfAttributes(%struct.TYPE_22__* %70)
  %72 = icmp slt i32 %69, %71
  br i1 %72, label %73, label %103

73:                                               ; preds = %68
  %74 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %75 = load i32, i32* %16, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %74, i64 %76
  %78 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.TYPE_22__*, %struct.TYPE_22__** %14, align 8
  %81 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %80, i32 0, i32 0
  %82 = load %struct.TYPE_19__*, %struct.TYPE_19__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %83, i32 0, i32 0
  %85 = load i32*, i32** %84, align 8
  %86 = load i32, i32* %17, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i32, i32* %85, i64 %87
  %89 = load i32, i32* %88, align 4
  %90 = icmp eq i32 %79, %89
  br i1 %90, label %91, label %99

91:                                               ; preds = %73
  %92 = load i32, i32* %17, align 4
  %93 = add nsw i32 %92, 1
  %94 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %95 = load i32, i32* %16, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %94, i64 %96
  %98 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %97, i32 0, i32 0
  store i32 %93, i32* %98, align 4
  br label %103

99:                                               ; preds = %73
  br label %100

100:                                              ; preds = %99
  %101 = load i32, i32* %17, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %17, align 4
  br label %68

103:                                              ; preds = %91, %68
  %104 = load i32, i32* %17, align 4
  %105 = load %struct.TYPE_22__*, %struct.TYPE_22__** %14, align 8
  %106 = call i32 @IndexRelationGetNumberOfAttributes(%struct.TYPE_22__* %105)
  %107 = icmp eq i32 %104, %106
  br i1 %107, label %108, label %111

108:                                              ; preds = %103
  %109 = load i32, i32* @ERROR, align 4
  %110 = call i32 @elog(i32 %109, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  br label %111

111:                                              ; preds = %108, %103
  br label %112

112:                                              ; preds = %111
  %113 = load i32, i32* %16, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %16, align 4
  br label %63

115:                                              ; preds = %63
  %116 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %117 = load %struct.TYPE_22__*, %struct.TYPE_22__** %14, align 8
  %118 = load i32*, i32** %10, align 8
  %119 = load i32, i32* %11, align 4
  %120 = call i32* @index_beginscan(%struct.TYPE_22__* %116, %struct.TYPE_22__* %117, i32* %118, i32 %119, i32 0)
  %121 = load %struct.TYPE_20__*, %struct.TYPE_20__** %13, align 8
  %122 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %121, i32 0, i32 0
  store i32* %120, i32** %122, align 8
  %123 = load %struct.TYPE_20__*, %struct.TYPE_20__** %13, align 8
  %124 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %123, i32 0, i32 0
  %125 = load i32*, i32** %124, align 8
  %126 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %127 = load i32, i32* %11, align 4
  %128 = call i32 @index_rescan(i32* %125, %struct.TYPE_21__* %126, i32 %127, i32* null, i32 0)
  %129 = load %struct.TYPE_20__*, %struct.TYPE_20__** %13, align 8
  %130 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %129, i32 0, i32 1
  store i32* null, i32** %130, align 8
  br label %141

131:                                              ; preds = %59
  %132 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %133 = load i32*, i32** %10, align 8
  %134 = load i32, i32* %11, align 4
  %135 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %136 = call i32* @table_beginscan_strat(%struct.TYPE_22__* %132, i32* %133, i32 %134, %struct.TYPE_21__* %135, i32 1, i32 0)
  %137 = load %struct.TYPE_20__*, %struct.TYPE_20__** %13, align 8
  %138 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %137, i32 0, i32 1
  store i32* %136, i32** %138, align 8
  %139 = load %struct.TYPE_20__*, %struct.TYPE_20__** %13, align 8
  %140 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %139, i32 0, i32 0
  store i32* null, i32** %140, align 8
  br label %141

141:                                              ; preds = %131, %115
  %142 = load %struct.TYPE_20__*, %struct.TYPE_20__** %13, align 8
  ret %struct.TYPE_20__* %142
}

declare dso_local i32 @ReindexIsProcessingIndex(i32) #1

declare dso_local %struct.TYPE_22__* @index_open(i32, i32) #1

declare dso_local i64 @palloc(i32) #1

declare dso_local i32 @table_slot_create(%struct.TYPE_22__*, i32*) #1

declare dso_local i32 @RelationGetRelid(%struct.TYPE_22__*) #1

declare dso_local i32* @RegisterSnapshot(i32) #1

declare dso_local i32 @GetCatalogSnapshot(i32) #1

declare dso_local i32 @IndexRelationGetNumberOfAttributes(%struct.TYPE_22__*) #1

declare dso_local i32 @elog(i32, i8*) #1

declare dso_local i32* @index_beginscan(%struct.TYPE_22__*, %struct.TYPE_22__*, i32*, i32, i32) #1

declare dso_local i32 @index_rescan(i32*, %struct.TYPE_21__*, i32, i32*, i32) #1

declare dso_local i32* @table_beginscan_strat(%struct.TYPE_22__*, i32*, i32, %struct.TYPE_21__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
