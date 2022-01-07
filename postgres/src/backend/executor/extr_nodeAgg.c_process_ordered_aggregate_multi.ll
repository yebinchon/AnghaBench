; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/executor/extr_nodeAgg.c_process_ordered_aggregate_multi.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/executor/extr_nodeAgg.c_process_ordered_aggregate_multi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { i64, %struct.TYPE_19__* }
%struct.TYPE_19__ = type { %struct.TYPE_17__*, %struct.TYPE_17__* }
%struct.TYPE_17__ = type { i32*, i32* }
%struct.TYPE_20__ = type { i32, i32, i32**, i32, %struct.TYPE_17__*, %struct.TYPE_17__*, %struct.TYPE_18__* }
%struct.TYPE_18__ = type { %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_21__*, %struct.TYPE_20__*, i32)* @process_ordered_aggregate_multi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @process_ordered_aggregate_multi(%struct.TYPE_21__* %0, %struct.TYPE_20__* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_21__*, align 8
  %5 = alloca %struct.TYPE_20__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_19__*, align 8
  %8 = alloca %struct.TYPE_18__*, align 8
  %9 = alloca %struct.TYPE_17__*, align 8
  %10 = alloca %struct.TYPE_17__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_17__*, align 8
  %17 = alloca i32, align 4
  %18 = alloca %struct.TYPE_17__*, align 8
  store %struct.TYPE_21__* %0, %struct.TYPE_21__** %4, align 8
  store %struct.TYPE_20__* %1, %struct.TYPE_20__** %5, align 8
  store i32 %2, i32* %6, align 4
  %19 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %19, i32 0, i32 1
  %21 = load %struct.TYPE_19__*, %struct.TYPE_19__** %20, align 8
  store %struct.TYPE_19__* %21, %struct.TYPE_19__** %7, align 8
  %22 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %22, i32 0, i32 6
  %24 = load %struct.TYPE_18__*, %struct.TYPE_18__** %23, align 8
  store %struct.TYPE_18__* %24, %struct.TYPE_18__** %8, align 8
  %25 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %25, i32 0, i32 5
  %27 = load %struct.TYPE_17__*, %struct.TYPE_17__** %26, align 8
  store %struct.TYPE_17__* %27, %struct.TYPE_17__** %9, align 8
  %28 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %28, i32 0, i32 4
  %30 = load %struct.TYPE_17__*, %struct.TYPE_17__** %29, align 8
  store %struct.TYPE_17__* %30, %struct.TYPE_17__** %10, align 8
  %31 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  store i32 %33, i32* %11, align 4
  %34 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  store i32 %36, i32* %12, align 4
  store i64 0, i64* %13, align 8
  store i64 0, i64* %14, align 8
  store i32 0, i32* %15, align 4
  %37 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %37, i32 0, i32 1
  %39 = load %struct.TYPE_19__*, %struct.TYPE_19__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %39, i32 0, i32 0
  %41 = load %struct.TYPE_17__*, %struct.TYPE_17__** %40, align 8
  store %struct.TYPE_17__* %41, %struct.TYPE_17__** %16, align 8
  %42 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %42, i32 0, i32 2
  %44 = load i32**, i32*** %43, align 8
  %45 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = getelementptr inbounds i32*, i32** %44, i64 %47
  %49 = load i32*, i32** %48, align 8
  %50 = call i32 @tuplesort_performsort(i32* %49)
  %51 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %52 = call i32 @ExecClearTuple(%struct.TYPE_17__* %51)
  %53 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %54 = icmp ne %struct.TYPE_17__* %53, null
  br i1 %54, label %55, label %58

55:                                               ; preds = %3
  %56 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %57 = call i32 @ExecClearTuple(%struct.TYPE_17__* %56)
  br label %58

58:                                               ; preds = %55, %3
  br label %59

59:                                               ; preds = %150, %58
  %60 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %61 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %60, i32 0, i32 2
  %62 = load i32**, i32*** %61, align 8
  %63 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %64 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = getelementptr inbounds i32*, i32** %62, i64 %65
  %67 = load i32*, i32** %66, align 8
  %68 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %69 = call i64 @tuplesort_gettupleslot(i32* %67, i32 1, i32 1, %struct.TYPE_17__* %68, i64* %13)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %155

71:                                               ; preds = %59
  %72 = call i32 (...) @CHECK_FOR_INTERRUPTS()
  %73 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %74 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %75 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %74, i32 0, i32 0
  store %struct.TYPE_17__* %73, %struct.TYPE_17__** %75, align 8
  %76 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %77 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %78 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %77, i32 0, i32 1
  store %struct.TYPE_17__* %76, %struct.TYPE_17__** %78, align 8
  %79 = load i32, i32* %12, align 4
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %95, label %81

81:                                               ; preds = %71
  %82 = load i32, i32* %15, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %95

84:                                               ; preds = %81
  %85 = load i64, i64* %13, align 8
  %86 = load i64, i64* %14, align 8
  %87 = icmp ne i64 %85, %86
  br i1 %87, label %95, label %88

88:                                               ; preds = %84
  %89 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %90 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %89, i32 0, i32 3
  %91 = load i32, i32* %90, align 8
  %92 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %93 = call i32 @ExecQual(i32 %91, %struct.TYPE_19__* %92)
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %150, label %95

95:                                               ; preds = %88, %84, %81, %71
  %96 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %97 = load i32, i32* %11, align 4
  %98 = call i32 @slot_getsomeattrs(%struct.TYPE_17__* %96, i32 %97)
  store i32 0, i32* %17, align 4
  br label %99

99:                                               ; preds = %134, %95
  %100 = load i32, i32* %17, align 4
  %101 = load i32, i32* %11, align 4
  %102 = icmp slt i32 %100, %101
  br i1 %102, label %103, label %137

103:                                              ; preds = %99
  %104 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %105 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %104, i32 0, i32 1
  %106 = load i32*, i32** %105, align 8
  %107 = load i32, i32* %17, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i32, i32* %106, i64 %108
  %110 = load i32, i32* %109, align 4
  %111 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %112 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %111, i32 0, i32 0
  %113 = load %struct.TYPE_16__*, %struct.TYPE_16__** %112, align 8
  %114 = load i32, i32* %17, align 4
  %115 = add nsw i32 %114, 1
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %113, i64 %116
  %118 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %117, i32 0, i32 1
  store i32 %110, i32* %118, align 4
  %119 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %120 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %119, i32 0, i32 0
  %121 = load i32*, i32** %120, align 8
  %122 = load i32, i32* %17, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds i32, i32* %121, i64 %123
  %125 = load i32, i32* %124, align 4
  %126 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %127 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %126, i32 0, i32 0
  %128 = load %struct.TYPE_16__*, %struct.TYPE_16__** %127, align 8
  %129 = load i32, i32* %17, align 4
  %130 = add nsw i32 %129, 1
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %128, i64 %131
  %133 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %132, i32 0, i32 0
  store i32 %125, i32* %133, align 4
  br label %134

134:                                              ; preds = %103
  %135 = load i32, i32* %17, align 4
  %136 = add nsw i32 %135, 1
  store i32 %136, i32* %17, align 4
  br label %99

137:                                              ; preds = %99
  %138 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %139 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %140 = load i32, i32* %6, align 4
  %141 = call i32 @advance_transition_function(%struct.TYPE_21__* %138, %struct.TYPE_20__* %139, i32 %140)
  %142 = load i32, i32* %12, align 4
  %143 = icmp sgt i32 %142, 0
  br i1 %143, label %144, label %149

144:                                              ; preds = %137
  %145 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  store %struct.TYPE_17__* %145, %struct.TYPE_17__** %18, align 8
  %146 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  store %struct.TYPE_17__* %146, %struct.TYPE_17__** %10, align 8
  %147 = load %struct.TYPE_17__*, %struct.TYPE_17__** %18, align 8
  store %struct.TYPE_17__* %147, %struct.TYPE_17__** %9, align 8
  %148 = load i64, i64* %13, align 8
  store i64 %148, i64* %14, align 8
  store i32 1, i32* %15, align 4
  br label %149

149:                                              ; preds = %144, %137
  br label %150

150:                                              ; preds = %149, %88
  %151 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %152 = call i32 @ResetExprContext(%struct.TYPE_19__* %151)
  %153 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %154 = call i32 @ExecClearTuple(%struct.TYPE_17__* %153)
  br label %59

155:                                              ; preds = %59
  %156 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %157 = icmp ne %struct.TYPE_17__* %156, null
  br i1 %157, label %158, label %161

158:                                              ; preds = %155
  %159 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %160 = call i32 @ExecClearTuple(%struct.TYPE_17__* %159)
  br label %161

161:                                              ; preds = %158, %155
  %162 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %163 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %162, i32 0, i32 2
  %164 = load i32**, i32*** %163, align 8
  %165 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %166 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %165, i32 0, i32 0
  %167 = load i64, i64* %166, align 8
  %168 = getelementptr inbounds i32*, i32** %164, i64 %167
  %169 = load i32*, i32** %168, align 8
  %170 = call i32 @tuplesort_end(i32* %169)
  %171 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %172 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %171, i32 0, i32 2
  %173 = load i32**, i32*** %172, align 8
  %174 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %175 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %174, i32 0, i32 0
  %176 = load i64, i64* %175, align 8
  %177 = getelementptr inbounds i32*, i32** %173, i64 %176
  store i32* null, i32** %177, align 8
  %178 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %179 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %180 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %179, i32 0, i32 0
  store %struct.TYPE_17__* %178, %struct.TYPE_17__** %180, align 8
  ret void
}

declare dso_local i32 @tuplesort_performsort(i32*) #1

declare dso_local i32 @ExecClearTuple(%struct.TYPE_17__*) #1

declare dso_local i64 @tuplesort_gettupleslot(i32*, i32, i32, %struct.TYPE_17__*, i64*) #1

declare dso_local i32 @CHECK_FOR_INTERRUPTS(...) #1

declare dso_local i32 @ExecQual(i32, %struct.TYPE_19__*) #1

declare dso_local i32 @slot_getsomeattrs(%struct.TYPE_17__*, i32) #1

declare dso_local i32 @advance_transition_function(%struct.TYPE_21__*, %struct.TYPE_20__*, i32) #1

declare dso_local i32 @ResetExprContext(%struct.TYPE_19__*) #1

declare dso_local i32 @tuplesort_end(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
