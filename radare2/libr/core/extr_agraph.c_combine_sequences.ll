; ModuleID = '/home/carl/AnghaBench/radare2/libr/core/extr_agraph.c_combine_sequences.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/core/extr_agraph.c_combine_sequences.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i32** }
%struct.TYPE_15__ = type { i8* }
%struct.TYPE_16__ = type { i32 }
%struct.len_pos_t = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_17__*, i32, i32*, i32*, i32, i32, i32)* @combine_sequences to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @combine_sequences(%struct.TYPE_17__* %0, i32 %1, i32* %2, i32* %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca %struct.TYPE_17__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_15__*, align 8
  %16 = alloca %struct.TYPE_15__*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca %struct.TYPE_16__*, align 8
  %20 = alloca %struct.TYPE_16__*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca %struct.len_pos_t*, align 8
  %28 = alloca %struct.len_pos_t*, align 8
  %29 = alloca i32*, align 8
  %30 = alloca %struct.TYPE_16__*, align 8
  %31 = alloca i32*, align 8
  %32 = alloca %struct.TYPE_16__*, align 8
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32* %2, i32** %10, align 8
  store i32* %3, i32** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  %33 = call %struct.TYPE_15__* (...) @r_list_new()
  store %struct.TYPE_15__* %33, %struct.TYPE_15__** %15, align 8
  %34 = call %struct.TYPE_15__* (...) @r_list_new()
  store %struct.TYPE_15__* %34, %struct.TYPE_15__** %16, align 8
  %35 = load %struct.TYPE_15__*, %struct.TYPE_15__** %15, align 8
  %36 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %35, i32 0, i32 0
  store i8* bitcast (i32 (%struct.len_pos_t*)* @free to i8*), i8** %36, align 8
  %37 = load %struct.TYPE_15__*, %struct.TYPE_15__** %16, align 8
  %38 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %37, i32 0, i32 0
  store i8* bitcast (i32 (%struct.len_pos_t*)* @free to i8*), i8** %38, align 8
  %39 = load i32, i32* %13, align 4
  %40 = load i32, i32* %14, align 4
  %41 = add nsw i32 %39, %40
  %42 = sdiv i32 %41, 2
  store i32 %42, i32* %23, align 4
  %43 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %44 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %43, i32 0, i32 0
  %45 = load %struct.TYPE_14__*, %struct.TYPE_14__** %44, align 8
  %46 = load i32, i32* %9, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %45, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %48, i32 0, i32 0
  %50 = load i32**, i32*** %49, align 8
  %51 = load i32, i32* %23, align 4
  %52 = sub nsw i32 %51, 1
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i32*, i32** %50, i64 %53
  %55 = load i32*, i32** %54, align 8
  store i32* %55, i32** %17, align 8
  %56 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %57 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %56, i32 0, i32 0
  %58 = load %struct.TYPE_14__*, %struct.TYPE_14__** %57, align 8
  %59 = load i32, i32* %9, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %58, i64 %60
  %62 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %61, i32 0, i32 0
  %63 = load i32**, i32*** %62, align 8
  %64 = load i32, i32* %23, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i32*, i32** %63, i64 %65
  %67 = load i32*, i32** %66, align 8
  store i32* %67, i32** %18, align 8
  %68 = load i32*, i32** %17, align 8
  %69 = call %struct.TYPE_16__* @get_anode(i32* %68)
  store %struct.TYPE_16__* %69, %struct.TYPE_16__** %19, align 8
  %70 = load i32*, i32** %18, align 8
  %71 = call %struct.TYPE_16__* @get_anode(i32* %70)
  store %struct.TYPE_16__* %71, %struct.TYPE_16__** %20, align 8
  %72 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %73 = load i32, i32* %9, align 4
  %74 = load i32*, i32** %10, align 8
  %75 = load i32, i32* %12, align 4
  %76 = load i32, i32* %13, align 4
  %77 = load i32, i32* %23, align 4
  %78 = load %struct.TYPE_15__*, %struct.TYPE_15__** %15, align 8
  %79 = call i32 @collect_changes(%struct.TYPE_17__* %72, i32 %73, i32* %74, i32 %75, i32 %76, i32 %77, %struct.TYPE_15__* %78, i32 1)
  %80 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %81 = load i32, i32* %9, align 4
  %82 = load i32*, i32** %11, align 8
  %83 = load i32, i32* %12, align 4
  %84 = load i32, i32* %23, align 4
  %85 = load i32, i32* %14, align 4
  %86 = load %struct.TYPE_15__*, %struct.TYPE_15__** %16, align 8
  %87 = call i32 @collect_changes(%struct.TYPE_17__* %80, i32 %81, i32* %82, i32 %83, i32 %84, i32 %85, %struct.TYPE_15__* %86, i32 0)
  store i32 0, i32* %22, align 4
  store i32 0, i32* %21, align 4
  %88 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %89 = load i32*, i32** %17, align 8
  %90 = load i32*, i32** %18, align 8
  %91 = call i32 @dist_nodes(%struct.TYPE_17__* %88, i32* %89, i32* %90)
  store i32 %91, i32* %24, align 4
  %92 = load %struct.TYPE_16__*, %struct.TYPE_16__** %19, align 8
  %93 = icmp ne %struct.TYPE_16__* %92, null
  br i1 %93, label %94, label %210

94:                                               ; preds = %7
  %95 = load %struct.TYPE_16__*, %struct.TYPE_16__** %20, align 8
  %96 = icmp ne %struct.TYPE_16__* %95, null
  br i1 %96, label %97, label %210

97:                                               ; preds = %94
  br label %98

98:                                               ; preds = %208, %97
  %99 = load %struct.TYPE_16__*, %struct.TYPE_16__** %20, align 8
  %100 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.TYPE_16__*, %struct.TYPE_16__** %19, align 8
  %103 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = sub nsw i32 %101, %104
  %106 = load i32, i32* %24, align 4
  %107 = icmp slt i32 %105, %106
  br i1 %107, label %108, label %209

108:                                              ; preds = %98
  %109 = load %struct.TYPE_16__*, %struct.TYPE_16__** %20, align 8
  %110 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = load %struct.TYPE_16__*, %struct.TYPE_16__** %19, align 8
  %113 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = icmp eq i32 %111, %114
  br i1 %115, label %116, label %131

116:                                              ; preds = %108
  %117 = load i32, i32* %24, align 4
  %118 = sdiv i32 %117, 2
  store i32 %118, i32* %26, align 4
  %119 = load i32, i32* %26, align 4
  %120 = load %struct.TYPE_16__*, %struct.TYPE_16__** %19, align 8
  %121 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = sub nsw i32 %122, %119
  store i32 %123, i32* %121, align 4
  %124 = load i32, i32* %24, align 4
  %125 = load i32, i32* %26, align 4
  %126 = sub nsw i32 %124, %125
  %127 = load %struct.TYPE_16__*, %struct.TYPE_16__** %20, align 8
  %128 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = add nsw i32 %129, %126
  store i32 %130, i32* %128, align 4
  br label %208

131:                                              ; preds = %108
  %132 = load i32, i32* %21, align 4
  %133 = load i32, i32* %22, align 4
  %134 = icmp slt i32 %132, %133
  br i1 %134, label %135, label %171

135:                                              ; preds = %131
  %136 = load %struct.TYPE_15__*, %struct.TYPE_15__** %15, align 8
  %137 = call i64 @r_list_empty(%struct.TYPE_15__* %136)
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %139, label %147

139:                                              ; preds = %135
  %140 = load %struct.TYPE_16__*, %struct.TYPE_16__** %20, align 8
  %141 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 4
  %143 = load i32, i32* %24, align 4
  %144 = sub nsw i32 %142, %143
  %145 = load %struct.TYPE_16__*, %struct.TYPE_16__** %19, align 8
  %146 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %145, i32 0, i32 0
  store i32 %144, i32* %146, align 4
  br label %170

147:                                              ; preds = %135
  %148 = load %struct.TYPE_15__*, %struct.TYPE_15__** %15, align 8
  %149 = call i64 @r_list_pop(%struct.TYPE_15__* %148)
  %150 = inttoptr i64 %149 to %struct.len_pos_t*
  store %struct.len_pos_t* %150, %struct.len_pos_t** %27, align 8
  %151 = load i32, i32* %21, align 4
  %152 = load %struct.len_pos_t*, %struct.len_pos_t** %27, align 8
  %153 = getelementptr inbounds %struct.len_pos_t, %struct.len_pos_t* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 4
  %155 = add nsw i32 %151, %154
  store i32 %155, i32* %21, align 4
  %156 = load %struct.len_pos_t*, %struct.len_pos_t** %27, align 8
  %157 = getelementptr inbounds %struct.len_pos_t, %struct.len_pos_t* %156, i32 0, i32 1
  %158 = load i32, i32* %157, align 4
  %159 = load %struct.TYPE_16__*, %struct.TYPE_16__** %20, align 8
  %160 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 4
  %162 = load i32, i32* %24, align 4
  %163 = sub nsw i32 %161, %162
  %164 = call i8* @R_MAX(i32 %158, i32 %163)
  %165 = ptrtoint i8* %164 to i32
  %166 = load %struct.TYPE_16__*, %struct.TYPE_16__** %19, align 8
  %167 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %166, i32 0, i32 0
  store i32 %165, i32* %167, align 4
  %168 = load %struct.len_pos_t*, %struct.len_pos_t** %27, align 8
  %169 = call i32 @free(%struct.len_pos_t* %168)
  br label %170

170:                                              ; preds = %147, %139
  br label %207

171:                                              ; preds = %131
  %172 = load %struct.TYPE_15__*, %struct.TYPE_15__** %16, align 8
  %173 = call i64 @r_list_empty(%struct.TYPE_15__* %172)
  %174 = icmp ne i64 %173, 0
  br i1 %174, label %175, label %183

175:                                              ; preds = %171
  %176 = load %struct.TYPE_16__*, %struct.TYPE_16__** %19, align 8
  %177 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 4
  %179 = load i32, i32* %24, align 4
  %180 = add nsw i32 %178, %179
  %181 = load %struct.TYPE_16__*, %struct.TYPE_16__** %20, align 8
  %182 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %181, i32 0, i32 0
  store i32 %180, i32* %182, align 4
  br label %206

183:                                              ; preds = %171
  %184 = load %struct.TYPE_15__*, %struct.TYPE_15__** %16, align 8
  %185 = call i64 @r_list_pop(%struct.TYPE_15__* %184)
  %186 = inttoptr i64 %185 to %struct.len_pos_t*
  store %struct.len_pos_t* %186, %struct.len_pos_t** %28, align 8
  %187 = load i32, i32* %22, align 4
  %188 = load %struct.len_pos_t*, %struct.len_pos_t** %28, align 8
  %189 = getelementptr inbounds %struct.len_pos_t, %struct.len_pos_t* %188, i32 0, i32 0
  %190 = load i32, i32* %189, align 4
  %191 = add nsw i32 %187, %190
  store i32 %191, i32* %22, align 4
  %192 = load %struct.len_pos_t*, %struct.len_pos_t** %28, align 8
  %193 = getelementptr inbounds %struct.len_pos_t, %struct.len_pos_t* %192, i32 0, i32 1
  %194 = load i32, i32* %193, align 4
  %195 = load %struct.TYPE_16__*, %struct.TYPE_16__** %19, align 8
  %196 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %195, i32 0, i32 0
  %197 = load i32, i32* %196, align 4
  %198 = load i32, i32* %24, align 4
  %199 = add nsw i32 %197, %198
  %200 = call i8* @R_MIN(i32 %194, i32 %199)
  %201 = ptrtoint i8* %200 to i32
  %202 = load %struct.TYPE_16__*, %struct.TYPE_16__** %20, align 8
  %203 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %202, i32 0, i32 0
  store i32 %201, i32* %203, align 4
  %204 = load %struct.len_pos_t*, %struct.len_pos_t** %28, align 8
  %205 = call i32 @free(%struct.len_pos_t* %204)
  br label %206

206:                                              ; preds = %183, %175
  br label %207

207:                                              ; preds = %206, %170
  br label %208

208:                                              ; preds = %207, %116
  br label %98

209:                                              ; preds = %98
  br label %210

210:                                              ; preds = %209, %94, %7
  %211 = load %struct.TYPE_15__*, %struct.TYPE_15__** %15, align 8
  %212 = call i32 @r_list_free(%struct.TYPE_15__* %211)
  %213 = load %struct.TYPE_15__*, %struct.TYPE_15__** %16, align 8
  %214 = call i32 @r_list_free(%struct.TYPE_15__* %213)
  %215 = load i32, i32* %23, align 4
  %216 = sub nsw i32 %215, 2
  store i32 %216, i32* %25, align 4
  br label %217

217:                                              ; preds = %258, %210
  %218 = load i32, i32* %25, align 4
  %219 = load i32, i32* %13, align 4
  %220 = icmp sge i32 %218, %219
  br i1 %220, label %221, label %261

221:                                              ; preds = %217
  %222 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %223 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %222, i32 0, i32 0
  %224 = load %struct.TYPE_14__*, %struct.TYPE_14__** %223, align 8
  %225 = load i32, i32* %9, align 4
  %226 = sext i32 %225 to i64
  %227 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %224, i64 %226
  %228 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %227, i32 0, i32 0
  %229 = load i32**, i32*** %228, align 8
  %230 = load i32, i32* %25, align 4
  %231 = sext i32 %230 to i64
  %232 = getelementptr inbounds i32*, i32** %229, i64 %231
  %233 = load i32*, i32** %232, align 8
  store i32* %233, i32** %29, align 8
  %234 = load i32*, i32** %29, align 8
  %235 = call %struct.TYPE_16__* @get_anode(i32* %234)
  store %struct.TYPE_16__* %235, %struct.TYPE_16__** %30, align 8
  %236 = load %struct.TYPE_16__*, %struct.TYPE_16__** %30, align 8
  %237 = icmp ne %struct.TYPE_16__* %236, null
  br i1 %237, label %238, label %257

238:                                              ; preds = %221
  %239 = load %struct.TYPE_16__*, %struct.TYPE_16__** %19, align 8
  %240 = icmp ne %struct.TYPE_16__* %239, null
  br i1 %240, label %241, label %257

241:                                              ; preds = %238
  %242 = load %struct.TYPE_16__*, %struct.TYPE_16__** %30, align 8
  %243 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %242, i32 0, i32 0
  %244 = load i32, i32* %243, align 4
  %245 = load %struct.TYPE_16__*, %struct.TYPE_16__** %19, align 8
  %246 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %245, i32 0, i32 0
  %247 = load i32, i32* %246, align 4
  %248 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %249 = load i32*, i32** %29, align 8
  %250 = load i32*, i32** %17, align 8
  %251 = call i32 @dist_nodes(%struct.TYPE_17__* %248, i32* %249, i32* %250)
  %252 = sub nsw i32 %247, %251
  %253 = call i8* @R_MIN(i32 %244, i32 %252)
  %254 = ptrtoint i8* %253 to i32
  %255 = load %struct.TYPE_16__*, %struct.TYPE_16__** %30, align 8
  %256 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %255, i32 0, i32 0
  store i32 %254, i32* %256, align 4
  br label %257

257:                                              ; preds = %241, %238, %221
  br label %258

258:                                              ; preds = %257
  %259 = load i32, i32* %25, align 4
  %260 = add nsw i32 %259, -1
  store i32 %260, i32* %25, align 4
  br label %217

261:                                              ; preds = %217
  %262 = load i32, i32* %23, align 4
  %263 = add nsw i32 %262, 1
  store i32 %263, i32* %25, align 4
  br label %264

264:                                              ; preds = %305, %261
  %265 = load i32, i32* %25, align 4
  %266 = load i32, i32* %14, align 4
  %267 = icmp slt i32 %265, %266
  br i1 %267, label %268, label %308

268:                                              ; preds = %264
  %269 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %270 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %269, i32 0, i32 0
  %271 = load %struct.TYPE_14__*, %struct.TYPE_14__** %270, align 8
  %272 = load i32, i32* %9, align 4
  %273 = sext i32 %272 to i64
  %274 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %271, i64 %273
  %275 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %274, i32 0, i32 0
  %276 = load i32**, i32*** %275, align 8
  %277 = load i32, i32* %25, align 4
  %278 = sext i32 %277 to i64
  %279 = getelementptr inbounds i32*, i32** %276, i64 %278
  %280 = load i32*, i32** %279, align 8
  store i32* %280, i32** %31, align 8
  %281 = load i32*, i32** %31, align 8
  %282 = call %struct.TYPE_16__* @get_anode(i32* %281)
  store %struct.TYPE_16__* %282, %struct.TYPE_16__** %32, align 8
  %283 = load %struct.TYPE_16__*, %struct.TYPE_16__** %32, align 8
  %284 = icmp ne %struct.TYPE_16__* %283, null
  br i1 %284, label %285, label %304

285:                                              ; preds = %268
  %286 = load %struct.TYPE_16__*, %struct.TYPE_16__** %20, align 8
  %287 = icmp ne %struct.TYPE_16__* %286, null
  br i1 %287, label %288, label %304

288:                                              ; preds = %285
  %289 = load %struct.TYPE_16__*, %struct.TYPE_16__** %32, align 8
  %290 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %289, i32 0, i32 0
  %291 = load i32, i32* %290, align 4
  %292 = load %struct.TYPE_16__*, %struct.TYPE_16__** %20, align 8
  %293 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %292, i32 0, i32 0
  %294 = load i32, i32* %293, align 4
  %295 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %296 = load i32*, i32** %18, align 8
  %297 = load i32*, i32** %31, align 8
  %298 = call i32 @dist_nodes(%struct.TYPE_17__* %295, i32* %296, i32* %297)
  %299 = add nsw i32 %294, %298
  %300 = call i8* @R_MAX(i32 %291, i32 %299)
  %301 = ptrtoint i8* %300 to i32
  %302 = load %struct.TYPE_16__*, %struct.TYPE_16__** %32, align 8
  %303 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %302, i32 0, i32 0
  store i32 %301, i32* %303, align 4
  br label %304

304:                                              ; preds = %288, %285, %268
  br label %305

305:                                              ; preds = %304
  %306 = load i32, i32* %25, align 4
  %307 = add nsw i32 %306, 1
  store i32 %307, i32* %25, align 4
  br label %264

308:                                              ; preds = %264
  ret void
}

declare dso_local %struct.TYPE_15__* @r_list_new(...) #1

declare dso_local i32 @free(%struct.len_pos_t*) #1

declare dso_local %struct.TYPE_16__* @get_anode(i32*) #1

declare dso_local i32 @collect_changes(%struct.TYPE_17__*, i32, i32*, i32, i32, i32, %struct.TYPE_15__*, i32) #1

declare dso_local i32 @dist_nodes(%struct.TYPE_17__*, i32*, i32*) #1

declare dso_local i64 @r_list_empty(%struct.TYPE_15__*) #1

declare dso_local i64 @r_list_pop(%struct.TYPE_15__*) #1

declare dso_local i8* @R_MAX(i32, i32) #1

declare dso_local i8* @R_MIN(i32, i32) #1

declare dso_local i32 @r_list_free(%struct.TYPE_15__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
