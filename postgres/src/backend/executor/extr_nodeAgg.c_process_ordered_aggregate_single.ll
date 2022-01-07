; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/executor/extr_nodeAgg.c_process_ordered_aggregate_single.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/executor/extr_nodeAgg.c_process_ordered_aggregate_single.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i64, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_13__ = type { i32, i32**, i32, i32, i32, %struct.TYPE_12__* }
%struct.TYPE_12__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_14__*, %struct.TYPE_13__*, i32)* @process_ordered_aggregate_single to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @process_ordered_aggregate_single(%struct.TYPE_14__* %0, %struct.TYPE_13__* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_14__*, align 8
  %5 = alloca %struct.TYPE_13__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca %struct.TYPE_12__*, align 8
  %16 = alloca i64*, align 8
  %17 = alloca i32*, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %4, align 8
  store %struct.TYPE_13__* %1, %struct.TYPE_13__** %5, align 8
  store i32 %2, i32* %6, align 4
  store i64 0, i64* %7, align 8
  store i32 1, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %18 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %18, i32 0, i32 1
  %20 = load %struct.TYPE_10__*, %struct.TYPE_10__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %10, align 4
  %23 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp sgt i32 %25, 0
  %27 = zext i1 %26 to i32
  store i32 %27, i32* %12, align 4
  store i64 0, i64* %13, align 8
  store i64 0, i64* %14, align 8
  %28 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %28, i32 0, i32 5
  %30 = load %struct.TYPE_12__*, %struct.TYPE_12__** %29, align 8
  store %struct.TYPE_12__* %30, %struct.TYPE_12__** %15, align 8
  %31 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = icmp slt i32 %33, 2
  %35 = zext i1 %34 to i32
  %36 = call i32 @Assert(i32 %35)
  %37 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %37, i32 0, i32 1
  %39 = load i32**, i32*** %38, align 8
  %40 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = getelementptr inbounds i32*, i32** %39, i64 %42
  %44 = load i32*, i32** %43, align 8
  %45 = call i32 @tuplesort_performsort(i32* %44)
  %46 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  %47 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %46, i32 0, i32 0
  %48 = load %struct.TYPE_11__*, %struct.TYPE_11__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %48, i64 1
  %50 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %49, i32 0, i32 0
  store i64* %50, i64** %16, align 8
  %51 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  %52 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %51, i32 0, i32 0
  %53 = load %struct.TYPE_11__*, %struct.TYPE_11__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %53, i64 1
  %55 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %54, i32 0, i32 1
  store i32* %55, i32** %17, align 8
  br label %56

56:                                               ; preds = %146, %3
  %57 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %58 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %57, i32 0, i32 1
  %59 = load i32**, i32*** %58, align 8
  %60 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %61 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = getelementptr inbounds i32*, i32** %59, i64 %62
  %64 = load i32*, i32** %63, align 8
  %65 = load i64*, i64** %16, align 8
  %66 = load i32*, i32** %17, align 8
  %67 = call i64 @tuplesort_getdatum(i32* %64, i32 1, i64* %65, i32* %66, i64* %13)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %149

69:                                               ; preds = %56
  %70 = load i32, i32* %10, align 4
  %71 = call i32 @MemoryContextReset(i32 %70)
  %72 = load i32, i32* %10, align 4
  %73 = call i32 @MemoryContextSwitchTo(i32 %72)
  store i32 %73, i32* %11, align 4
  %74 = load i32, i32* %12, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %124

76:                                               ; preds = %69
  %77 = load i32, i32* %9, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %124

79:                                               ; preds = %76
  %80 = load i32, i32* %8, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %86

82:                                               ; preds = %79
  %83 = load i32*, i32** %17, align 8
  %84 = load i32, i32* %83, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %109, label %86

86:                                               ; preds = %82, %79
  %87 = load i32, i32* %8, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %124, label %89

89:                                               ; preds = %86
  %90 = load i32*, i32** %17, align 8
  %91 = load i32, i32* %90, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %124, label %93

93:                                               ; preds = %89
  %94 = load i64, i64* %14, align 8
  %95 = load i64, i64* %13, align 8
  %96 = icmp eq i64 %94, %95
  br i1 %96, label %97, label %124

97:                                               ; preds = %93
  %98 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %99 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %98, i32 0, i32 4
  %100 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %101 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %100, i32 0, i32 3
  %102 = load i32, i32* %101, align 4
  %103 = load i64, i64* %7, align 8
  %104 = load i64*, i64** %16, align 8
  %105 = load i64, i64* %104, align 8
  %106 = call i32 @FunctionCall2Coll(i32* %99, i32 %102, i64 %103, i64 %105)
  %107 = call i64 @DatumGetBool(i32 %106)
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %124

109:                                              ; preds = %97, %82
  %110 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %111 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %110, i32 0, i32 2
  %112 = load i32, i32* %111, align 8
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %123, label %114

114:                                              ; preds = %109
  %115 = load i32*, i32** %17, align 8
  %116 = load i32, i32* %115, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %123, label %118

118:                                              ; preds = %114
  %119 = load i64*, i64** %16, align 8
  %120 = load i64, i64* %119, align 8
  %121 = call i32 @DatumGetPointer(i64 %120)
  %122 = call i32 @pfree(i32 %121)
  br label %123

123:                                              ; preds = %118, %114, %109
  br label %146

124:                                              ; preds = %97, %93, %89, %86, %76, %69
  %125 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %126 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %127 = load i32, i32* %6, align 4
  %128 = call i32 @advance_transition_function(%struct.TYPE_14__* %125, %struct.TYPE_13__* %126, i32 %127)
  %129 = load i32, i32* %8, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %140, label %131

131:                                              ; preds = %124
  %132 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %133 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %132, i32 0, i32 2
  %134 = load i32, i32* %133, align 8
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %140, label %136

136:                                              ; preds = %131
  %137 = load i64, i64* %7, align 8
  %138 = call i32 @DatumGetPointer(i64 %137)
  %139 = call i32 @pfree(i32 %138)
  br label %140

140:                                              ; preds = %136, %131, %124
  %141 = load i64*, i64** %16, align 8
  %142 = load i64, i64* %141, align 8
  store i64 %142, i64* %7, align 8
  %143 = load i64, i64* %13, align 8
  store i64 %143, i64* %14, align 8
  %144 = load i32*, i32** %17, align 8
  %145 = load i32, i32* %144, align 4
  store i32 %145, i32* %8, align 4
  store i32 1, i32* %9, align 4
  br label %146

146:                                              ; preds = %140, %123
  %147 = load i32, i32* %11, align 4
  %148 = call i32 @MemoryContextSwitchTo(i32 %147)
  br label %56

149:                                              ; preds = %56
  %150 = load i32, i32* %8, align 4
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %161, label %152

152:                                              ; preds = %149
  %153 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %154 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %153, i32 0, i32 2
  %155 = load i32, i32* %154, align 8
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %161, label %157

157:                                              ; preds = %152
  %158 = load i64, i64* %7, align 8
  %159 = call i32 @DatumGetPointer(i64 %158)
  %160 = call i32 @pfree(i32 %159)
  br label %161

161:                                              ; preds = %157, %152, %149
  %162 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %163 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %162, i32 0, i32 1
  %164 = load i32**, i32*** %163, align 8
  %165 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %166 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %165, i32 0, i32 0
  %167 = load i64, i64* %166, align 8
  %168 = getelementptr inbounds i32*, i32** %164, i64 %167
  %169 = load i32*, i32** %168, align 8
  %170 = call i32 @tuplesort_end(i32* %169)
  %171 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %172 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %171, i32 0, i32 1
  %173 = load i32**, i32*** %172, align 8
  %174 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %175 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %174, i32 0, i32 0
  %176 = load i64, i64* %175, align 8
  %177 = getelementptr inbounds i32*, i32** %173, i64 %176
  store i32* null, i32** %177, align 8
  ret void
}

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @tuplesort_performsort(i32*) #1

declare dso_local i64 @tuplesort_getdatum(i32*, i32, i64*, i32*, i64*) #1

declare dso_local i32 @MemoryContextReset(i32) #1

declare dso_local i32 @MemoryContextSwitchTo(i32) #1

declare dso_local i64 @DatumGetBool(i32) #1

declare dso_local i32 @FunctionCall2Coll(i32*, i32, i64, i64) #1

declare dso_local i32 @pfree(i32) #1

declare dso_local i32 @DatumGetPointer(i64) #1

declare dso_local i32 @advance_transition_function(%struct.TYPE_14__*, %struct.TYPE_13__*, i32) #1

declare dso_local i32 @tuplesort_end(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
