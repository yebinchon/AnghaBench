; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/executor/extr_nodeModifyTable.c_ExecComputeStoredGenerated.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/executor/extr_nodeModifyTable.c_ExecComputeStoredGenerated.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_28__ = type { i32, %struct.TYPE_25__* }
%struct.TYPE_25__ = type { i32**, i32 }
%struct.TYPE_23__ = type { i32*, i32* }
%struct.TYPE_24__ = type { i32, %struct.TYPE_22__* }
%struct.TYPE_22__ = type { i64 }
%struct.TYPE_26__ = type { i64, i32, i32 }
%struct.TYPE_27__ = type { %struct.TYPE_23__* }

@ATTRIBUTE_GENERATED_STORED = common dso_local global i64 0, align 8
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [66 x i8] c"no generation expression found for column number %d of table \22%s\22\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ExecComputeStoredGenerated(%struct.TYPE_28__* %0, %struct.TYPE_23__* %1) #0 {
  %3 = alloca %struct.TYPE_28__*, align 8
  %4 = alloca %struct.TYPE_23__*, align 8
  %5 = alloca %struct.TYPE_25__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_24__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_26__*, align 8
  %16 = alloca %struct.TYPE_27__*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.TYPE_28__* %0, %struct.TYPE_28__** %3, align 8
  store %struct.TYPE_23__* %1, %struct.TYPE_23__** %4, align 8
  %19 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %19, i32 0, i32 1
  %21 = load %struct.TYPE_25__*, %struct.TYPE_25__** %20, align 8
  store %struct.TYPE_25__* %21, %struct.TYPE_25__** %5, align 8
  %22 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  store i32 %24, i32* %6, align 4
  %25 = load i32, i32* %6, align 4
  %26 = call %struct.TYPE_24__* @RelationGetDescr(i32 %25)
  store %struct.TYPE_24__* %26, %struct.TYPE_24__** %7, align 8
  %27 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %28 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  store i32 %29, i32* %8, align 4
  %30 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %31 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %30, i32 0, i32 1
  %32 = load %struct.TYPE_22__*, %struct.TYPE_22__** %31, align 8
  %33 = icmp ne %struct.TYPE_22__* %32, null
  br i1 %33, label %34, label %41

34:                                               ; preds = %2
  %35 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %36 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %35, i32 0, i32 1
  %37 = load %struct.TYPE_22__*, %struct.TYPE_22__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br label %41

41:                                               ; preds = %34, %2
  %42 = phi i1 [ false, %2 ], [ %40, %34 ]
  %43 = zext i1 %42 to i32
  %44 = call i32 @Assert(i32 %43)
  %45 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %45, i32 0, i32 0
  %47 = load i32**, i32*** %46, align 8
  %48 = icmp eq i32** %47, null
  br i1 %48, label %49, label %106

49:                                               ; preds = %41
  %50 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %51 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @MemoryContextSwitchTo(i32 %52)
  store i32 %53, i32* %9, align 4
  %54 = load i32, i32* %8, align 4
  %55 = sext i32 %54 to i64
  %56 = mul i64 %55, 8
  %57 = trunc i64 %56 to i32
  %58 = call i32* @palloc(i32 %57)
  %59 = bitcast i32* %58 to i32**
  %60 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %61 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %60, i32 0, i32 0
  store i32** %59, i32*** %61, align 8
  store i32 0, i32* %12, align 4
  br label %62

62:                                               ; preds = %100, %49
  %63 = load i32, i32* %12, align 4
  %64 = load i32, i32* %8, align 4
  %65 = icmp slt i32 %63, %64
  br i1 %65, label %66, label %103

66:                                               ; preds = %62
  %67 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %68 = load i32, i32* %12, align 4
  %69 = call %struct.TYPE_26__* @TupleDescAttr(%struct.TYPE_24__* %67, i32 %68)
  %70 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* @ATTRIBUTE_GENERATED_STORED, align 8
  %73 = icmp eq i64 %71, %72
  br i1 %73, label %74, label %99

74:                                               ; preds = %66
  %75 = load i32, i32* %6, align 4
  %76 = load i32, i32* %12, align 4
  %77 = add nsw i32 %76, 1
  %78 = call i64 @build_column_default(i32 %75, i32 %77)
  %79 = inttoptr i64 %78 to i32*
  store i32* %79, i32** %13, align 8
  %80 = load i32*, i32** %13, align 8
  %81 = icmp eq i32* %80, null
  br i1 %81, label %82, label %89

82:                                               ; preds = %74
  %83 = load i32, i32* @ERROR, align 4
  %84 = load i32, i32* %12, align 4
  %85 = add nsw i32 %84, 1
  %86 = load i32, i32* %6, align 4
  %87 = call i32 @RelationGetRelationName(i32 %86)
  %88 = call i32 @elog(i32 %83, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str, i64 0, i64 0), i32 %85, i32 %87)
  br label %89

89:                                               ; preds = %82, %74
  %90 = load i32*, i32** %13, align 8
  %91 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %92 = call i32* @ExecPrepareExpr(i32* %90, %struct.TYPE_28__* %91)
  %93 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %94 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %93, i32 0, i32 0
  %95 = load i32**, i32*** %94, align 8
  %96 = load i32, i32* %12, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i32*, i32** %95, i64 %97
  store i32* %92, i32** %98, align 8
  br label %99

99:                                               ; preds = %89, %66
  br label %100

100:                                              ; preds = %99
  %101 = load i32, i32* %12, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %12, align 4
  br label %62

103:                                              ; preds = %62
  %104 = load i32, i32* %9, align 4
  %105 = call i32 @MemoryContextSwitchTo(i32 %104)
  br label %106

106:                                              ; preds = %103, %41
  %107 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %108 = call i32 @GetPerTupleMemoryContext(%struct.TYPE_28__* %107)
  %109 = call i32 @MemoryContextSwitchTo(i32 %108)
  store i32 %109, i32* %9, align 4
  %110 = load i32, i32* %8, align 4
  %111 = sext i32 %110 to i64
  %112 = mul i64 4, %111
  %113 = trunc i64 %112 to i32
  %114 = call i32* @palloc(i32 %113)
  store i32* %114, i32** %10, align 8
  %115 = load i32, i32* %8, align 4
  %116 = sext i32 %115 to i64
  %117 = mul i64 4, %116
  %118 = trunc i64 %117 to i32
  %119 = call i32* @palloc(i32 %118)
  store i32* %119, i32** %11, align 8
  %120 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %121 = call i32 @slot_getallattrs(%struct.TYPE_23__* %120)
  %122 = load i32*, i32** %11, align 8
  %123 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %124 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %123, i32 0, i32 0
  %125 = load i32*, i32** %124, align 8
  %126 = load i32, i32* %8, align 4
  %127 = sext i32 %126 to i64
  %128 = mul i64 4, %127
  %129 = trunc i64 %128 to i32
  %130 = call i32 @memcpy(i32* %122, i32* %125, i32 %129)
  store i32 0, i32* %14, align 4
  br label %131

131:                                              ; preds = %197, %106
  %132 = load i32, i32* %14, align 4
  %133 = load i32, i32* %8, align 4
  %134 = icmp slt i32 %132, %133
  br i1 %134, label %135, label %200

135:                                              ; preds = %131
  %136 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %137 = load i32, i32* %14, align 4
  %138 = call %struct.TYPE_26__* @TupleDescAttr(%struct.TYPE_24__* %136, i32 %137)
  store %struct.TYPE_26__* %138, %struct.TYPE_26__** %15, align 8
  %139 = load %struct.TYPE_26__*, %struct.TYPE_26__** %15, align 8
  %140 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %139, i32 0, i32 0
  %141 = load i64, i64* %140, align 8
  %142 = load i64, i64* @ATTRIBUTE_GENERATED_STORED, align 8
  %143 = icmp eq i64 %141, %142
  br i1 %143, label %144, label %169

144:                                              ; preds = %135
  %145 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %146 = call %struct.TYPE_27__* @GetPerTupleExprContext(%struct.TYPE_28__* %145)
  store %struct.TYPE_27__* %146, %struct.TYPE_27__** %16, align 8
  %147 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %148 = load %struct.TYPE_27__*, %struct.TYPE_27__** %16, align 8
  %149 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %148, i32 0, i32 0
  store %struct.TYPE_23__* %147, %struct.TYPE_23__** %149, align 8
  %150 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %151 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %150, i32 0, i32 0
  %152 = load i32**, i32*** %151, align 8
  %153 = load i32, i32* %14, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds i32*, i32** %152, i64 %154
  %156 = load i32*, i32** %155, align 8
  %157 = load %struct.TYPE_27__*, %struct.TYPE_27__** %16, align 8
  %158 = call i32 @ExecEvalExpr(i32* %156, %struct.TYPE_27__* %157, i32* %18)
  store i32 %158, i32* %17, align 4
  %159 = load i32, i32* %17, align 4
  %160 = load i32*, i32** %10, align 8
  %161 = load i32, i32* %14, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds i32, i32* %160, i64 %162
  store i32 %159, i32* %163, align 4
  %164 = load i32, i32* %18, align 4
  %165 = load i32*, i32** %11, align 8
  %166 = load i32, i32* %14, align 4
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds i32, i32* %165, i64 %167
  store i32 %164, i32* %168, align 4
  br label %196

169:                                              ; preds = %135
  %170 = load i32*, i32** %11, align 8
  %171 = load i32, i32* %14, align 4
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds i32, i32* %170, i64 %172
  %174 = load i32, i32* %173, align 4
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %195, label %176

176:                                              ; preds = %169
  %177 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %178 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %177, i32 0, i32 1
  %179 = load i32*, i32** %178, align 8
  %180 = load i32, i32* %14, align 4
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds i32, i32* %179, i64 %181
  %183 = load i32, i32* %182, align 4
  %184 = load %struct.TYPE_26__*, %struct.TYPE_26__** %15, align 8
  %185 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %184, i32 0, i32 2
  %186 = load i32, i32* %185, align 4
  %187 = load %struct.TYPE_26__*, %struct.TYPE_26__** %15, align 8
  %188 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %187, i32 0, i32 1
  %189 = load i32, i32* %188, align 8
  %190 = call i32 @datumCopy(i32 %183, i32 %186, i32 %189)
  %191 = load i32*, i32** %10, align 8
  %192 = load i32, i32* %14, align 4
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds i32, i32* %191, i64 %193
  store i32 %190, i32* %194, align 4
  br label %195

195:                                              ; preds = %176, %169
  br label %196

196:                                              ; preds = %195, %144
  br label %197

197:                                              ; preds = %196
  %198 = load i32, i32* %14, align 4
  %199 = add nsw i32 %198, 1
  store i32 %199, i32* %14, align 4
  br label %131

200:                                              ; preds = %131
  %201 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %202 = call i32 @ExecClearTuple(%struct.TYPE_23__* %201)
  %203 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %204 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %203, i32 0, i32 1
  %205 = load i32*, i32** %204, align 8
  %206 = load i32*, i32** %10, align 8
  %207 = load i32, i32* %8, align 4
  %208 = sext i32 %207 to i64
  %209 = mul i64 4, %208
  %210 = trunc i64 %209 to i32
  %211 = call i32 @memcpy(i32* %205, i32* %206, i32 %210)
  %212 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %213 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %212, i32 0, i32 0
  %214 = load i32*, i32** %213, align 8
  %215 = load i32*, i32** %11, align 8
  %216 = load i32, i32* %8, align 4
  %217 = sext i32 %216 to i64
  %218 = mul i64 4, %217
  %219 = trunc i64 %218 to i32
  %220 = call i32 @memcpy(i32* %214, i32* %215, i32 %219)
  %221 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %222 = call i32 @ExecStoreVirtualTuple(%struct.TYPE_23__* %221)
  %223 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %224 = call i32 @ExecMaterializeSlot(%struct.TYPE_23__* %223)
  %225 = load i32, i32* %9, align 4
  %226 = call i32 @MemoryContextSwitchTo(i32 %225)
  ret void
}

declare dso_local %struct.TYPE_24__* @RelationGetDescr(i32) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @MemoryContextSwitchTo(i32) #1

declare dso_local i32* @palloc(i32) #1

declare dso_local %struct.TYPE_26__* @TupleDescAttr(%struct.TYPE_24__*, i32) #1

declare dso_local i64 @build_column_default(i32, i32) #1

declare dso_local i32 @elog(i32, i8*, i32, i32) #1

declare dso_local i32 @RelationGetRelationName(i32) #1

declare dso_local i32* @ExecPrepareExpr(i32*, %struct.TYPE_28__*) #1

declare dso_local i32 @GetPerTupleMemoryContext(%struct.TYPE_28__*) #1

declare dso_local i32 @slot_getallattrs(%struct.TYPE_23__*) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local %struct.TYPE_27__* @GetPerTupleExprContext(%struct.TYPE_28__*) #1

declare dso_local i32 @ExecEvalExpr(i32*, %struct.TYPE_27__*, i32*) #1

declare dso_local i32 @datumCopy(i32, i32, i32) #1

declare dso_local i32 @ExecClearTuple(%struct.TYPE_23__*) #1

declare dso_local i32 @ExecStoreVirtualTuple(%struct.TYPE_23__*) #1

declare dso_local i32 @ExecMaterializeSlot(%struct.TYPE_23__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
