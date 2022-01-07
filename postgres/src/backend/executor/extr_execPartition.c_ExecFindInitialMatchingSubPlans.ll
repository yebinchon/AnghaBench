; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/executor/extr_execPartition.c_ExecFindInitialMatchingSubPlans.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/executor/extr_execPartition.c_ExecFindInitialMatchingSubPlans.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, i32, i32*, %struct.TYPE_12__**, i64, i32 }
%struct.TYPE_12__ = type { i32, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32, i32*, i32*, i32*, %struct.TYPE_10__, i64 }
%struct.TYPE_10__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @ExecFindInitialMatchingSubPlans(%struct.TYPE_13__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_13__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_12__*, align 8
  %9 = alloca %struct.TYPE_11__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_12__*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_11__*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca %struct.TYPE_11__*, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32* null, i32** %5, align 8
  %22 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @Assert(i32 %24)
  %26 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %26, i32 0, i32 5
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @MemoryContextSwitchTo(i32 %28)
  store i32 %29, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %30

30:                                               ; preds = %64, %2
  %31 = load i32, i32* %7, align 4
  %32 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = icmp slt i32 %31, %34
  br i1 %35, label %36, label %67

36:                                               ; preds = %30
  %37 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %37, i32 0, i32 3
  %39 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %38, align 8
  %40 = load i32, i32* %7, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %39, i64 %41
  %43 = load %struct.TYPE_12__*, %struct.TYPE_12__** %42, align 8
  store %struct.TYPE_12__* %43, %struct.TYPE_12__** %8, align 8
  %44 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %45 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %44, i32 0, i32 1
  %46 = load %struct.TYPE_11__*, %struct.TYPE_11__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %46, i64 0
  store %struct.TYPE_11__* %47, %struct.TYPE_11__** %9, align 8
  %48 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %49 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %50 = call i32 @find_matching_subplans_recurse(%struct.TYPE_12__* %48, %struct.TYPE_11__* %49, i32 1, i32** %5)
  %51 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %52 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %51, i32 0, i32 5
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %63

55:                                               ; preds = %36
  %56 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %57 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %56, i32 0, i32 4
  %58 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %57, i32 0, i32 0
  %59 = load %struct.TYPE_9__*, %struct.TYPE_9__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @ResetExprContext(i32 %61)
  br label %63

63:                                               ; preds = %55, %36
  br label %64

64:                                               ; preds = %63
  %65 = load i32, i32* %7, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %7, align 4
  br label %30

67:                                               ; preds = %30
  %68 = load i32*, i32** %5, align 8
  %69 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %70 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %69, i32 0, i32 2
  %71 = load i32*, i32** %70, align 8
  %72 = call i32* @bms_add_members(i32* %68, i32* %71)
  store i32* %72, i32** %5, align 8
  %73 = load i32, i32* %6, align 4
  %74 = call i32 @MemoryContextSwitchTo(i32 %73)
  %75 = load i32*, i32** %5, align 8
  %76 = call i32* @bms_copy(i32* %75)
  store i32* %76, i32** %5, align 8
  %77 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %78 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %77, i32 0, i32 5
  %79 = load i32, i32* %78, align 8
  %80 = call i32 @MemoryContextReset(i32 %79)
  %81 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %82 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %81, i32 0, i32 4
  %83 = load i64, i64* %82, align 8
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %272

85:                                               ; preds = %67
  %86 = load i32*, i32** %5, align 8
  %87 = call i32 @bms_num_members(i32* %86)
  %88 = load i32, i32* %4, align 4
  %89 = icmp slt i32 %87, %88
  br i1 %89, label %90, label %272

90:                                               ; preds = %85
  %91 = load i32, i32* %4, align 4
  %92 = sext i32 %91 to i64
  %93 = mul i64 4, %92
  %94 = trunc i64 %93 to i32
  %95 = call i64 @palloc0(i32 %94)
  %96 = inttoptr i64 %95 to i32*
  store i32* %96, i32** %10, align 8
  store i32 1, i32* %13, align 4
  store i32 -1, i32* %12, align 4
  br label %97

97:                                               ; preds = %102, %90
  %98 = load i32*, i32** %5, align 8
  %99 = load i32, i32* %12, align 4
  %100 = call i32 @bms_next_member(i32* %98, i32 %99)
  store i32 %100, i32* %12, align 4
  %101 = icmp sge i32 %100, 0
  br i1 %101, label %102, label %114

102:                                              ; preds = %97
  %103 = load i32, i32* %12, align 4
  %104 = load i32, i32* %4, align 4
  %105 = icmp slt i32 %103, %104
  %106 = zext i1 %105 to i32
  %107 = call i32 @Assert(i32 %106)
  %108 = load i32, i32* %13, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %13, align 4
  %110 = load i32*, i32** %10, align 8
  %111 = load i32, i32* %12, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i32, i32* %110, i64 %112
  store i32 %108, i32* %113, align 4
  br label %97

114:                                              ; preds = %97
  store i32 0, i32* %12, align 4
  br label %115

115:                                              ; preds = %241, %114
  %116 = load i32, i32* %12, align 4
  %117 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %118 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 4
  %120 = icmp slt i32 %116, %119
  br i1 %120, label %121, label %244

121:                                              ; preds = %115
  %122 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %123 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %122, i32 0, i32 3
  %124 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %123, align 8
  %125 = load i32, i32* %12, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %124, i64 %126
  %128 = load %struct.TYPE_12__*, %struct.TYPE_12__** %127, align 8
  store %struct.TYPE_12__* %128, %struct.TYPE_12__** %14, align 8
  %129 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %130 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  %132 = sub nsw i32 %131, 1
  store i32 %132, i32* %15, align 4
  br label %133

133:                                              ; preds = %237, %121
  %134 = load i32, i32* %15, align 4
  %135 = icmp sge i32 %134, 0
  br i1 %135, label %136, label %240

136:                                              ; preds = %133
  %137 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %138 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %137, i32 0, i32 1
  %139 = load %struct.TYPE_11__*, %struct.TYPE_11__** %138, align 8
  %140 = load i32, i32* %15, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %139, i64 %141
  store %struct.TYPE_11__* %142, %struct.TYPE_11__** %16, align 8
  %143 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  %144 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 8
  store i32 %145, i32* %17, align 4
  %146 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  %147 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %146, i32 0, i32 3
  %148 = load i32*, i32** %147, align 8
  %149 = call i32 @bms_free(i32* %148)
  %150 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  %151 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %150, i32 0, i32 3
  store i32* null, i32** %151, align 8
  store i32 0, i32* %18, align 4
  br label %152

152:                                              ; preds = %233, %136
  %153 = load i32, i32* %18, align 4
  %154 = load i32, i32* %17, align 4
  %155 = icmp slt i32 %153, %154
  br i1 %155, label %156, label %236

156:                                              ; preds = %152
  %157 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  %158 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %157, i32 0, i32 1
  %159 = load i32*, i32** %158, align 8
  %160 = load i32, i32* %18, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds i32, i32* %159, i64 %161
  %163 = load i32, i32* %162, align 4
  store i32 %163, i32* %19, align 4
  %164 = load i32, i32* %19, align 4
  %165 = icmp sge i32 %164, 0
  br i1 %165, label %166, label %200

166:                                              ; preds = %156
  %167 = load i32, i32* %19, align 4
  %168 = load i32, i32* %4, align 4
  %169 = icmp slt i32 %167, %168
  %170 = zext i1 %169 to i32
  %171 = call i32 @Assert(i32 %170)
  %172 = load i32*, i32** %10, align 8
  %173 = load i32, i32* %19, align 4
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds i32, i32* %172, i64 %174
  %176 = load i32, i32* %175, align 4
  %177 = sub nsw i32 %176, 1
  %178 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  %179 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %178, i32 0, i32 1
  %180 = load i32*, i32** %179, align 8
  %181 = load i32, i32* %18, align 4
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds i32, i32* %180, i64 %182
  store i32 %177, i32* %183, align 4
  %184 = load i32*, i32** %10, align 8
  %185 = load i32, i32* %19, align 4
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds i32, i32* %184, i64 %186
  %188 = load i32, i32* %187, align 4
  %189 = icmp sgt i32 %188, 0
  br i1 %189, label %190, label %199

190:                                              ; preds = %166
  %191 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  %192 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %191, i32 0, i32 3
  %193 = load i32*, i32** %192, align 8
  %194 = load i32, i32* %18, align 4
  %195 = call i8* @bms_add_member(i32* %193, i32 %194)
  %196 = bitcast i8* %195 to i32*
  %197 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  %198 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %197, i32 0, i32 3
  store i32* %196, i32** %198, align 8
  br label %199

199:                                              ; preds = %190, %166
  br label %232

200:                                              ; preds = %156
  %201 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  %202 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %201, i32 0, i32 2
  %203 = load i32*, i32** %202, align 8
  %204 = load i32, i32* %18, align 4
  %205 = sext i32 %204 to i64
  %206 = getelementptr inbounds i32, i32* %203, i64 %205
  %207 = load i32, i32* %206, align 4
  store i32 %207, i32* %20, align 4
  %208 = icmp sge i32 %207, 0
  br i1 %208, label %209, label %231

209:                                              ; preds = %200
  %210 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %211 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %210, i32 0, i32 1
  %212 = load %struct.TYPE_11__*, %struct.TYPE_11__** %211, align 8
  %213 = load i32, i32* %20, align 4
  %214 = sext i32 %213 to i64
  %215 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %212, i64 %214
  store %struct.TYPE_11__* %215, %struct.TYPE_11__** %21, align 8
  %216 = load %struct.TYPE_11__*, %struct.TYPE_11__** %21, align 8
  %217 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %216, i32 0, i32 3
  %218 = load i32*, i32** %217, align 8
  %219 = call i32 @bms_is_empty(i32* %218)
  %220 = icmp ne i32 %219, 0
  br i1 %220, label %230, label %221

221:                                              ; preds = %209
  %222 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  %223 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %222, i32 0, i32 3
  %224 = load i32*, i32** %223, align 8
  %225 = load i32, i32* %18, align 4
  %226 = call i8* @bms_add_member(i32* %224, i32 %225)
  %227 = bitcast i8* %226 to i32*
  %228 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  %229 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %228, i32 0, i32 3
  store i32* %227, i32** %229, align 8
  br label %230

230:                                              ; preds = %221, %209
  br label %231

231:                                              ; preds = %230, %200
  br label %232

232:                                              ; preds = %231, %199
  br label %233

233:                                              ; preds = %232
  %234 = load i32, i32* %18, align 4
  %235 = add nsw i32 %234, 1
  store i32 %235, i32* %18, align 4
  br label %152

236:                                              ; preds = %152
  br label %237

237:                                              ; preds = %236
  %238 = load i32, i32* %15, align 4
  %239 = add nsw i32 %238, -1
  store i32 %239, i32* %15, align 4
  br label %133

240:                                              ; preds = %133
  br label %241

241:                                              ; preds = %240
  %242 = load i32, i32* %12, align 4
  %243 = add nsw i32 %242, 1
  store i32 %243, i32* %12, align 4
  br label %115

244:                                              ; preds = %115
  store i32* null, i32** %11, align 8
  store i32 -1, i32* %12, align 4
  br label %245

245:                                              ; preds = %252, %244
  %246 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %247 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %246, i32 0, i32 2
  %248 = load i32*, i32** %247, align 8
  %249 = load i32, i32* %12, align 4
  %250 = call i32 @bms_next_member(i32* %248, i32 %249)
  store i32 %250, i32* %12, align 4
  %251 = icmp sge i32 %250, 0
  br i1 %251, label %252, label %262

252:                                              ; preds = %245
  %253 = load i32*, i32** %11, align 8
  %254 = load i32*, i32** %10, align 8
  %255 = load i32, i32* %12, align 4
  %256 = sext i32 %255 to i64
  %257 = getelementptr inbounds i32, i32* %254, i64 %256
  %258 = load i32, i32* %257, align 4
  %259 = sub nsw i32 %258, 1
  %260 = call i8* @bms_add_member(i32* %253, i32 %259)
  %261 = bitcast i8* %260 to i32*
  store i32* %261, i32** %11, align 8
  br label %245

262:                                              ; preds = %245
  %263 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %264 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %263, i32 0, i32 2
  %265 = load i32*, i32** %264, align 8
  %266 = call i32 @bms_free(i32* %265)
  %267 = load i32*, i32** %11, align 8
  %268 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %269 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %268, i32 0, i32 2
  store i32* %267, i32** %269, align 8
  %270 = load i32*, i32** %10, align 8
  %271 = call i32 @pfree(i32* %270)
  br label %272

272:                                              ; preds = %262, %85, %67
  %273 = load i32*, i32** %5, align 8
  ret i32* %273
}

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @MemoryContextSwitchTo(i32) #1

declare dso_local i32 @find_matching_subplans_recurse(%struct.TYPE_12__*, %struct.TYPE_11__*, i32, i32**) #1

declare dso_local i32 @ResetExprContext(i32) #1

declare dso_local i32* @bms_add_members(i32*, i32*) #1

declare dso_local i32* @bms_copy(i32*) #1

declare dso_local i32 @MemoryContextReset(i32) #1

declare dso_local i32 @bms_num_members(i32*) #1

declare dso_local i64 @palloc0(i32) #1

declare dso_local i32 @bms_next_member(i32*, i32) #1

declare dso_local i32 @bms_free(i32*) #1

declare dso_local i8* @bms_add_member(i32*, i32) #1

declare dso_local i32 @bms_is_empty(i32*) #1

declare dso_local i32 @pfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
