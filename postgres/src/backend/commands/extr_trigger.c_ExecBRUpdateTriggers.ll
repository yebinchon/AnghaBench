; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/commands/extr_trigger.c_ExecBRUpdateTriggers.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/commands/extr_trigger.c_ExecBRUpdateTriggers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32, i32, i32, i32, %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32, %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_14__ = type { i32, %struct.TYPE_15__*, i32*, i32*, i32*, i32*, i32*, i32*, i32, i32 }

@T_TriggerData = common dso_local global i32 0, align 4
@TRIGGER_EVENT_UPDATE = common dso_local global i32 0, align 4
@TRIGGER_EVENT_ROW = common dso_local global i32 0, align 4
@TRIGGER_EVENT_BEFORE = common dso_local global i32 0, align 4
@TRIGGER_TYPE_ROW = common dso_local global i32 0, align 4
@TRIGGER_TYPE_BEFORE = common dso_local global i32 0, align 4
@TRIGGER_TYPE_UPDATE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ExecBRUpdateTriggers(i32* %0, i32* %1, %struct.TYPE_16__* %2, i32 %3, i32* %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_16__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.TYPE_13__*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca %struct.TYPE_14__, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32*, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32*, align 8
  %25 = alloca i32*, align 8
  %26 = alloca %struct.TYPE_15__*, align 8
  %27 = alloca i32*, align 8
  store i32* %0, i32** %8, align 8
  store i32* %1, i32** %9, align 8
  store %struct.TYPE_16__* %2, %struct.TYPE_16__** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  %28 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %29 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %28, i32 0, i32 4
  %30 = load %struct.TYPE_13__*, %struct.TYPE_13__** %29, align 8
  store %struct.TYPE_13__* %30, %struct.TYPE_13__** %14, align 8
  %31 = load i32*, i32** %8, align 8
  %32 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %33 = call i32* @ExecGetTriggerOldSlot(i32* %31, %struct.TYPE_16__* %32)
  store i32* %33, i32** %15, align 8
  store i32* null, i32** %16, align 8
  store i32 0, i32* %18, align 4
  store i32 0, i32* %19, align 4
  %34 = load i32*, i32** %8, align 8
  %35 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %36 = call i32 @ExecUpdateLockMode(i32* %34, %struct.TYPE_16__* %35)
  store i32 %36, i32* %23, align 4
  %37 = load i32*, i32** %12, align 8
  %38 = call i32 @HeapTupleIsValid(i32* %37)
  %39 = load i32, i32* %11, align 4
  %40 = call i32 @ItemPointerIsValid(i32 %39)
  %41 = xor i32 %38, %40
  %42 = call i32 @Assert(i32 %41)
  %43 = load i32*, i32** %12, align 8
  %44 = icmp eq i32* %43, null
  br i1 %44, label %45, label %75

45:                                               ; preds = %6
  store i32* null, i32** %24, align 8
  %46 = load i32*, i32** %8, align 8
  %47 = load i32*, i32** %9, align 8
  %48 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %49 = load i32, i32* %11, align 4
  %50 = load i32, i32* %23, align 4
  %51 = load i32*, i32** %15, align 8
  %52 = call i32 @GetTupleForTrigger(i32* %46, i32* %47, %struct.TYPE_16__* %48, i32 %49, i32 %50, i32* %51, i32** %24)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %55, label %54

54:                                               ; preds = %45
  store i32 0, i32* %7, align 4
  br label %210

55:                                               ; preds = %45
  %56 = load i32*, i32** %24, align 8
  %57 = icmp ne i32* %56, null
  br i1 %57, label %58, label %72

58:                                               ; preds = %55
  %59 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %60 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %59, i32 0, i32 3
  %61 = load i32, i32* %60, align 4
  %62 = load i32*, i32** %24, align 8
  %63 = call i32* @ExecFilterJunk(i32 %61, i32* %62)
  store i32* %63, i32** %25, align 8
  %64 = load i32*, i32** %13, align 8
  %65 = load i32*, i32** %25, align 8
  %66 = icmp ne i32* %64, %65
  br i1 %66, label %67, label %71

67:                                               ; preds = %58
  %68 = load i32*, i32** %13, align 8
  %69 = load i32*, i32** %25, align 8
  %70 = call i32 @ExecCopySlot(i32* %68, i32* %69)
  br label %71

71:                                               ; preds = %67, %58
  br label %72

72:                                               ; preds = %71, %55
  %73 = load i32*, i32** %15, align 8
  %74 = call i32* @ExecFetchSlotHeapTuple(i32* %73, i32 1, i32* %18)
  store i32* %74, i32** %17, align 8
  br label %80

75:                                               ; preds = %6
  %76 = load i32*, i32** %12, align 8
  %77 = load i32*, i32** %15, align 8
  %78 = call i32 @ExecForceStoreHeapTuple(i32* %76, i32* %77, i32 0)
  %79 = load i32*, i32** %12, align 8
  store i32* %79, i32** %17, align 8
  br label %80

80:                                               ; preds = %75, %72
  %81 = load i32, i32* @T_TriggerData, align 4
  %82 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %20, i32 0, i32 9
  store i32 %81, i32* %82, align 4
  %83 = load i32, i32* @TRIGGER_EVENT_UPDATE, align 4
  %84 = load i32, i32* @TRIGGER_EVENT_ROW, align 4
  %85 = or i32 %83, %84
  %86 = load i32, i32* @TRIGGER_EVENT_BEFORE, align 4
  %87 = or i32 %85, %86
  %88 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %20, i32 0, i32 0
  store i32 %87, i32* %88, align 8
  %89 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %90 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %20, i32 0, i32 8
  store i32 %91, i32* %92, align 8
  %93 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %20, i32 0, i32 7
  store i32* null, i32** %93, align 8
  %94 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %20, i32 0, i32 6
  store i32* null, i32** %94, align 8
  %95 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %96 = load i32*, i32** %8, align 8
  %97 = call i32* @GetAllUpdatedColumns(%struct.TYPE_16__* %95, i32* %96)
  store i32* %97, i32** %22, align 8
  store i32 0, i32* %21, align 4
  br label %98

98:                                               ; preds = %200, %80
  %99 = load i32, i32* %21, align 4
  %100 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %101 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = icmp slt i32 %99, %102
  br i1 %103, label %104, label %203

104:                                              ; preds = %98
  %105 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %106 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %105, i32 0, i32 1
  %107 = load %struct.TYPE_15__*, %struct.TYPE_15__** %106, align 8
  %108 = load i32, i32* %21, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %107, i64 %109
  store %struct.TYPE_15__* %110, %struct.TYPE_15__** %26, align 8
  %111 = load %struct.TYPE_15__*, %struct.TYPE_15__** %26, align 8
  %112 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = load i32, i32* @TRIGGER_TYPE_ROW, align 4
  %115 = load i32, i32* @TRIGGER_TYPE_BEFORE, align 4
  %116 = load i32, i32* @TRIGGER_TYPE_UPDATE, align 4
  %117 = call i32 @TRIGGER_TYPE_MATCHES(i32 %113, i32 %114, i32 %115, i32 %116)
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %120, label %119

119:                                              ; preds = %104
  br label %200

120:                                              ; preds = %104
  %121 = load i32*, i32** %8, align 8
  %122 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %123 = load %struct.TYPE_15__*, %struct.TYPE_15__** %26, align 8
  %124 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %20, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = load i32*, i32** %22, align 8
  %127 = load i32*, i32** %15, align 8
  %128 = load i32*, i32** %13, align 8
  %129 = call i32 @TriggerEnabled(i32* %121, %struct.TYPE_16__* %122, %struct.TYPE_15__* %123, i32 %125, i32* %126, i32* %127, i32* %128)
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %132, label %131

131:                                              ; preds = %120
  br label %200

132:                                              ; preds = %120
  %133 = load i32*, i32** %16, align 8
  %134 = icmp ne i32* %133, null
  br i1 %134, label %138, label %135

135:                                              ; preds = %132
  %136 = load i32*, i32** %13, align 8
  %137 = call i32* @ExecFetchSlotHeapTuple(i32* %136, i32 1, i32* %19)
  store i32* %137, i32** %16, align 8
  br label %138

138:                                              ; preds = %135, %132
  %139 = load i32*, i32** %15, align 8
  %140 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %20, i32 0, i32 5
  store i32* %139, i32** %140, align 8
  %141 = load i32*, i32** %17, align 8
  %142 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %20, i32 0, i32 4
  store i32* %141, i32** %142, align 8
  %143 = load i32*, i32** %16, align 8
  store i32* %143, i32** %27, align 8
  %144 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %20, i32 0, i32 3
  store i32* %143, i32** %144, align 8
  %145 = load i32*, i32** %13, align 8
  %146 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %20, i32 0, i32 2
  store i32* %145, i32** %146, align 8
  %147 = load %struct.TYPE_15__*, %struct.TYPE_15__** %26, align 8
  %148 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %20, i32 0, i32 1
  store %struct.TYPE_15__* %147, %struct.TYPE_15__** %148, align 8
  %149 = load i32, i32* %21, align 4
  %150 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %151 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %150, i32 0, i32 1
  %152 = load i32, i32* %151, align 4
  %153 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %154 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 8
  %156 = load i32*, i32** %8, align 8
  %157 = call i32 @GetPerTupleMemoryContext(i32* %156)
  %158 = call i32* @ExecCallTriggerFunc(%struct.TYPE_14__* %20, i32 %149, i32 %152, i32 %155, i32 %157)
  store i32* %158, i32** %16, align 8
  %159 = load i32*, i32** %16, align 8
  %160 = icmp eq i32* %159, null
  br i1 %160, label %161, label %174

161:                                              ; preds = %138
  %162 = load i32, i32* %18, align 4
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %167

164:                                              ; preds = %161
  %165 = load i32*, i32** %17, align 8
  %166 = call i32 @heap_freetuple(i32* %165)
  br label %167

167:                                              ; preds = %164, %161
  %168 = load i32, i32* %19, align 4
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %173

170:                                              ; preds = %167
  %171 = load i32*, i32** %27, align 8
  %172 = call i32 @heap_freetuple(i32* %171)
  br label %173

173:                                              ; preds = %170, %167
  store i32 0, i32* %7, align 4
  br label %210

174:                                              ; preds = %138
  %175 = load i32*, i32** %16, align 8
  %176 = load i32*, i32** %27, align 8
  %177 = icmp ne i32* %175, %176
  br i1 %177, label %178, label %198

178:                                              ; preds = %174
  %179 = load i32*, i32** %16, align 8
  %180 = load i32*, i32** %13, align 8
  %181 = call i32 @ExecForceStoreHeapTuple(i32* %179, i32* %180, i32 0)
  %182 = load i32, i32* %18, align 4
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %184, label %191

184:                                              ; preds = %178
  %185 = load i32*, i32** %16, align 8
  %186 = load i32*, i32** %17, align 8
  %187 = icmp eq i32* %185, %186
  br i1 %187, label %188, label %191

188:                                              ; preds = %184
  %189 = load i32*, i32** %13, align 8
  %190 = call i32 @ExecMaterializeSlot(i32* %189)
  br label %191

191:                                              ; preds = %188, %184, %178
  %192 = load i32, i32* %19, align 4
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %194, label %197

194:                                              ; preds = %191
  %195 = load i32*, i32** %27, align 8
  %196 = call i32 @heap_freetuple(i32* %195)
  br label %197

197:                                              ; preds = %194, %191
  store i32* null, i32** %16, align 8
  br label %198

198:                                              ; preds = %197, %174
  br label %199

199:                                              ; preds = %198
  br label %200

200:                                              ; preds = %199, %131, %119
  %201 = load i32, i32* %21, align 4
  %202 = add nsw i32 %201, 1
  store i32 %202, i32* %21, align 4
  br label %98

203:                                              ; preds = %98
  %204 = load i32, i32* %18, align 4
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %206, label %209

206:                                              ; preds = %203
  %207 = load i32*, i32** %17, align 8
  %208 = call i32 @heap_freetuple(i32* %207)
  br label %209

209:                                              ; preds = %206, %203
  store i32 1, i32* %7, align 4
  br label %210

210:                                              ; preds = %209, %173, %54
  %211 = load i32, i32* %7, align 4
  ret i32 %211
}

declare dso_local i32* @ExecGetTriggerOldSlot(i32*, %struct.TYPE_16__*) #1

declare dso_local i32 @ExecUpdateLockMode(i32*, %struct.TYPE_16__*) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @HeapTupleIsValid(i32*) #1

declare dso_local i32 @ItemPointerIsValid(i32) #1

declare dso_local i32 @GetTupleForTrigger(i32*, i32*, %struct.TYPE_16__*, i32, i32, i32*, i32**) #1

declare dso_local i32* @ExecFilterJunk(i32, i32*) #1

declare dso_local i32 @ExecCopySlot(i32*, i32*) #1

declare dso_local i32* @ExecFetchSlotHeapTuple(i32*, i32, i32*) #1

declare dso_local i32 @ExecForceStoreHeapTuple(i32*, i32*, i32) #1

declare dso_local i32* @GetAllUpdatedColumns(%struct.TYPE_16__*, i32*) #1

declare dso_local i32 @TRIGGER_TYPE_MATCHES(i32, i32, i32, i32) #1

declare dso_local i32 @TriggerEnabled(i32*, %struct.TYPE_16__*, %struct.TYPE_15__*, i32, i32*, i32*, i32*) #1

declare dso_local i32* @ExecCallTriggerFunc(%struct.TYPE_14__*, i32, i32, i32, i32) #1

declare dso_local i32 @GetPerTupleMemoryContext(i32*) #1

declare dso_local i32 @heap_freetuple(i32*) #1

declare dso_local i32 @ExecMaterializeSlot(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
