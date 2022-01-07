; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/replication/pgoutput/extr_pgoutput.c_pgoutput_change.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/replication/pgoutput/extr_pgoutput.c_pgoutput_change.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_26__ = type { i32, i64 }
%struct.TYPE_23__ = type { i32, %struct.TYPE_22__ }
%struct.TYPE_22__ = type { %struct.TYPE_21__ }
%struct.TYPE_21__ = type { %struct.TYPE_20__*, %struct.TYPE_19__* }
%struct.TYPE_20__ = type { i32 }
%struct.TYPE_19__ = type { i32 }
%struct.TYPE_25__ = type { i32 }
%struct.TYPE_24__ = type { %struct.TYPE_18__ }
%struct.TYPE_18__ = type { i32, i32, i32 }

@DEBUG1 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [54 x i8] c"didn't send DELETE change because of missing oldtuple\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_26__*, i32*, i32, %struct.TYPE_23__*)* @pgoutput_change to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pgoutput_change(%struct.TYPE_26__* %0, i32* %1, i32 %2, %struct.TYPE_23__* %3) #0 {
  %5 = alloca %struct.TYPE_26__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_23__*, align 8
  %9 = alloca %struct.TYPE_25__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_24__*, align 8
  %12 = alloca i32*, align 8
  store %struct.TYPE_26__* %0, %struct.TYPE_26__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.TYPE_23__* %3, %struct.TYPE_23__** %8, align 8
  %13 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = inttoptr i64 %15 to %struct.TYPE_25__*
  store %struct.TYPE_25__* %16, %struct.TYPE_25__** %9, align 8
  %17 = load i32, i32* %7, align 4
  %18 = call i32 @is_publishable_relation(i32 %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %4
  br label %152

21:                                               ; preds = %4
  %22 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %23 = load i32, i32* %7, align 4
  %24 = call i32 @RelationGetRelid(i32 %23)
  %25 = call %struct.TYPE_24__* @get_rel_sync_entry(%struct.TYPE_25__* %22, i32 %24)
  store %struct.TYPE_24__* %25, %struct.TYPE_24__** %11, align 8
  %26 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %27 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  switch i32 %28, label %53 [
    i32 129, label %29
    i32 128, label %37
    i32 130, label %45
  ]

29:                                               ; preds = %21
  %30 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %31 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %29
  br label %152

36:                                               ; preds = %29
  br label %55

37:                                               ; preds = %21
  %38 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %39 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %44, label %43

43:                                               ; preds = %37
  br label %152

44:                                               ; preds = %37
  br label %55

45:                                               ; preds = %21
  %46 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %47 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %52, label %51

51:                                               ; preds = %45
  br label %152

52:                                               ; preds = %45
  br label %55

53:                                               ; preds = %21
  %54 = call i32 @Assert(i32 0)
  br label %55

55:                                               ; preds = %53, %52, %44, %36
  %56 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %57 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @MemoryContextSwitchTo(i32 %58)
  store i32 %59, i32* %10, align 4
  %60 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %61 = load i32, i32* %7, align 4
  %62 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %63 = call i32 @maybe_send_schema(%struct.TYPE_26__* %60, i32 %61, %struct.TYPE_24__* %62)
  %64 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %65 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  switch i32 %66, label %143 [
    i32 129, label %67
    i32 128, label %83
    i32 130, label %116
  ]

67:                                               ; preds = %55
  %68 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %69 = call i32 @OutputPluginPrepareWrite(%struct.TYPE_26__* %68, i32 1)
  %70 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %71 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = load i32, i32* %7, align 4
  %74 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %75 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %76, i32 0, i32 1
  %78 = load %struct.TYPE_19__*, %struct.TYPE_19__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %78, i32 0, i32 0
  %80 = call i32 @logicalrep_write_insert(i32 %72, i32 %73, i32* %79)
  %81 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %82 = call i32 @OutputPluginWrite(%struct.TYPE_26__* %81, i32 1)
  br label %145

83:                                               ; preds = %55
  %84 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %85 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %84, i32 0, i32 1
  %86 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %86, i32 0, i32 0
  %88 = load %struct.TYPE_20__*, %struct.TYPE_20__** %87, align 8
  %89 = icmp ne %struct.TYPE_20__* %88, null
  br i1 %89, label %90, label %97

90:                                               ; preds = %83
  %91 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %92 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %91, i32 0, i32 1
  %93 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %93, i32 0, i32 0
  %95 = load %struct.TYPE_20__*, %struct.TYPE_20__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %95, i32 0, i32 0
  br label %98

97:                                               ; preds = %83
  br label %98

98:                                               ; preds = %97, %90
  %99 = phi i32* [ %96, %90 ], [ null, %97 ]
  store i32* %99, i32** %12, align 8
  %100 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %101 = call i32 @OutputPluginPrepareWrite(%struct.TYPE_26__* %100, i32 1)
  %102 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %103 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = load i32, i32* %7, align 4
  %106 = load i32*, i32** %12, align 8
  %107 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %108 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %107, i32 0, i32 1
  %109 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %109, i32 0, i32 1
  %111 = load %struct.TYPE_19__*, %struct.TYPE_19__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %111, i32 0, i32 0
  %113 = call i32 @logicalrep_write_update(i32 %104, i32 %105, i32* %106, i32* %112)
  %114 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %115 = call i32 @OutputPluginWrite(%struct.TYPE_26__* %114, i32 1)
  br label %145

116:                                              ; preds = %55
  %117 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %118 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %117, i32 0, i32 1
  %119 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %119, i32 0, i32 0
  %121 = load %struct.TYPE_20__*, %struct.TYPE_20__** %120, align 8
  %122 = icmp ne %struct.TYPE_20__* %121, null
  br i1 %122, label %123, label %139

123:                                              ; preds = %116
  %124 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %125 = call i32 @OutputPluginPrepareWrite(%struct.TYPE_26__* %124, i32 1)
  %126 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %127 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = load i32, i32* %7, align 4
  %130 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %131 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %130, i32 0, i32 1
  %132 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %132, i32 0, i32 0
  %134 = load %struct.TYPE_20__*, %struct.TYPE_20__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %134, i32 0, i32 0
  %136 = call i32 @logicalrep_write_delete(i32 %128, i32 %129, i32* %135)
  %137 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %138 = call i32 @OutputPluginWrite(%struct.TYPE_26__* %137, i32 1)
  br label %142

139:                                              ; preds = %116
  %140 = load i32, i32* @DEBUG1, align 4
  %141 = call i32 @elog(i32 %140, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0))
  br label %142

142:                                              ; preds = %139, %123
  br label %145

143:                                              ; preds = %55
  %144 = call i32 @Assert(i32 0)
  br label %145

145:                                              ; preds = %143, %142, %98, %67
  %146 = load i32, i32* %10, align 4
  %147 = call i32 @MemoryContextSwitchTo(i32 %146)
  %148 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %149 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 4
  %151 = call i32 @MemoryContextReset(i32 %150)
  br label %152

152:                                              ; preds = %145, %51, %43, %35, %20
  ret void
}

declare dso_local i32 @is_publishable_relation(i32) #1

declare dso_local %struct.TYPE_24__* @get_rel_sync_entry(%struct.TYPE_25__*, i32) #1

declare dso_local i32 @RelationGetRelid(i32) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @MemoryContextSwitchTo(i32) #1

declare dso_local i32 @maybe_send_schema(%struct.TYPE_26__*, i32, %struct.TYPE_24__*) #1

declare dso_local i32 @OutputPluginPrepareWrite(%struct.TYPE_26__*, i32) #1

declare dso_local i32 @logicalrep_write_insert(i32, i32, i32*) #1

declare dso_local i32 @OutputPluginWrite(%struct.TYPE_26__*, i32) #1

declare dso_local i32 @logicalrep_write_update(i32, i32, i32*, i32*) #1

declare dso_local i32 @logicalrep_write_delete(i32, i32, i32*) #1

declare dso_local i32 @elog(i32, i8*) #1

declare dso_local i32 @MemoryContextReset(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
