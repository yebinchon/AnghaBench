; ModuleID = '/home/carl/AnghaBench/postgres/src/bin/pg_dump/extr_pg_backup_archiver.c_WriteDataChunks.c'
source_filename = "/home/carl/AnghaBench/postgres/src/bin/pg_dump/extr_pg_backup_archiver.c_WriteDataChunks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32, %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i32, i32, %struct.TYPE_14__* }
%struct.TYPE_15__ = type { i32 }

@REQ_DATA = common dso_local global i32 0, align 4
@TocEntrySizeCompare = common dso_local global i32 0, align 4
@ACT_DUMP = common dso_local global i32 0, align 4
@mark_dump_job_done = common dso_local global i32 0, align 4
@WFW_ALL_IDLE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @WriteDataChunks(%struct.TYPE_16__* %0, %struct.TYPE_15__* %1) #0 {
  %3 = alloca %struct.TYPE_16__*, align 8
  %4 = alloca %struct.TYPE_15__*, align 8
  %5 = alloca %struct.TYPE_14__*, align 8
  %6 = alloca %struct.TYPE_14__**, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %3, align 8
  store %struct.TYPE_15__* %1, %struct.TYPE_15__** %4, align 8
  %9 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %10 = icmp ne %struct.TYPE_15__* %9, null
  br i1 %10, label %11, label %96

11:                                               ; preds = %2
  %12 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = icmp sgt i32 %14, 1
  br i1 %15, label %16, label %96

16:                                               ; preds = %11
  %17 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = sext i32 %19 to i64
  %21 = mul i64 %20, 8
  %22 = trunc i64 %21 to i32
  %23 = call i64 @pg_malloc(i32 %22)
  %24 = inttoptr i64 %23 to %struct.TYPE_14__**
  store %struct.TYPE_14__** %24, %struct.TYPE_14__*** %6, align 8
  store i32 0, i32* %7, align 4
  %25 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %25, i32 0, i32 1
  %27 = load %struct.TYPE_14__*, %struct.TYPE_14__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %27, i32 0, i32 2
  %29 = load %struct.TYPE_14__*, %struct.TYPE_14__** %28, align 8
  store %struct.TYPE_14__* %29, %struct.TYPE_14__** %5, align 8
  br label %30

30:                                               ; preds = %57, %16
  %31 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %32 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %32, i32 0, i32 1
  %34 = load %struct.TYPE_14__*, %struct.TYPE_14__** %33, align 8
  %35 = icmp ne %struct.TYPE_14__* %31, %34
  br i1 %35, label %36, label %61

36:                                               ; preds = %30
  %37 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %42, label %41

41:                                               ; preds = %36
  br label %57

42:                                               ; preds = %36
  %43 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* @REQ_DATA, align 4
  %47 = and i32 %45, %46
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %42
  br label %57

50:                                               ; preds = %42
  %51 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %52 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %6, align 8
  %53 = load i32, i32* %7, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %7, align 4
  %55 = sext i32 %53 to i64
  %56 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %52, i64 %55
  store %struct.TYPE_14__* %51, %struct.TYPE_14__** %56, align 8
  br label %57

57:                                               ; preds = %50, %49, %41
  %58 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %59 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %58, i32 0, i32 2
  %60 = load %struct.TYPE_14__*, %struct.TYPE_14__** %59, align 8
  store %struct.TYPE_14__* %60, %struct.TYPE_14__** %5, align 8
  br label %30

61:                                               ; preds = %30
  %62 = load i32, i32* %7, align 4
  %63 = icmp sgt i32 %62, 1
  br i1 %63, label %64, label %70

64:                                               ; preds = %61
  %65 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %6, align 8
  %66 = bitcast %struct.TYPE_14__** %65 to i8*
  %67 = load i32, i32* %7, align 4
  %68 = load i32, i32* @TocEntrySizeCompare, align 4
  %69 = call i32 @qsort(i8* %66, i32 %67, i32 8, i32 %68)
  br label %70

70:                                               ; preds = %64, %61
  store i32 0, i32* %8, align 4
  br label %71

71:                                               ; preds = %86, %70
  %72 = load i32, i32* %8, align 4
  %73 = load i32, i32* %7, align 4
  %74 = icmp slt i32 %72, %73
  br i1 %74, label %75, label %89

75:                                               ; preds = %71
  %76 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %77 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %78 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %6, align 8
  %79 = load i32, i32* %8, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %78, i64 %80
  %82 = load %struct.TYPE_14__*, %struct.TYPE_14__** %81, align 8
  %83 = load i32, i32* @ACT_DUMP, align 4
  %84 = load i32, i32* @mark_dump_job_done, align 4
  %85 = call i32 @DispatchJobForTocEntry(%struct.TYPE_16__* %76, %struct.TYPE_15__* %77, %struct.TYPE_14__* %82, i32 %83, i32 %84, i32* null)
  br label %86

86:                                               ; preds = %75
  %87 = load i32, i32* %8, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %8, align 4
  br label %71

89:                                               ; preds = %71
  %90 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %6, align 8
  %91 = call i32 @pg_free(%struct.TYPE_14__** %90)
  %92 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %93 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %94 = load i32, i32* @WFW_ALL_IDLE, align 4
  %95 = call i32 @WaitForWorkers(%struct.TYPE_16__* %92, %struct.TYPE_15__* %93, i32 %94)
  br label %131

96:                                               ; preds = %11, %2
  %97 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %98 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %97, i32 0, i32 1
  %99 = load %struct.TYPE_14__*, %struct.TYPE_14__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %99, i32 0, i32 2
  %101 = load %struct.TYPE_14__*, %struct.TYPE_14__** %100, align 8
  store %struct.TYPE_14__* %101, %struct.TYPE_14__** %5, align 8
  br label %102

102:                                              ; preds = %126, %96
  %103 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %104 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %105 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %104, i32 0, i32 1
  %106 = load %struct.TYPE_14__*, %struct.TYPE_14__** %105, align 8
  %107 = icmp ne %struct.TYPE_14__* %103, %106
  br i1 %107, label %108, label %130

108:                                              ; preds = %102
  %109 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %110 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %114, label %113

113:                                              ; preds = %108
  br label %126

114:                                              ; preds = %108
  %115 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %116 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = load i32, i32* @REQ_DATA, align 4
  %119 = and i32 %117, %118
  %120 = icmp eq i32 %119, 0
  br i1 %120, label %121, label %122

121:                                              ; preds = %114
  br label %126

122:                                              ; preds = %114
  %123 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %124 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %125 = call i32 @WriteDataChunksForTocEntry(%struct.TYPE_16__* %123, %struct.TYPE_14__* %124)
  br label %126

126:                                              ; preds = %122, %121, %113
  %127 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %128 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %127, i32 0, i32 2
  %129 = load %struct.TYPE_14__*, %struct.TYPE_14__** %128, align 8
  store %struct.TYPE_14__* %129, %struct.TYPE_14__** %5, align 8
  br label %102

130:                                              ; preds = %102
  br label %131

131:                                              ; preds = %130, %89
  ret void
}

declare dso_local i64 @pg_malloc(i32) #1

declare dso_local i32 @qsort(i8*, i32, i32, i32) #1

declare dso_local i32 @DispatchJobForTocEntry(%struct.TYPE_16__*, %struct.TYPE_15__*, %struct.TYPE_14__*, i32, i32, i32*) #1

declare dso_local i32 @pg_free(%struct.TYPE_14__**) #1

declare dso_local i32 @WaitForWorkers(%struct.TYPE_16__*, %struct.TYPE_15__*, i32) #1

declare dso_local i32 @WriteDataChunksForTocEntry(%struct.TYPE_16__*, %struct.TYPE_14__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
