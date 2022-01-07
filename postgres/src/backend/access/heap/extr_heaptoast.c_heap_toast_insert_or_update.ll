; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/heap/extr_heaptoast.c_heap_toast_insert_or_update.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/heap/extr_heaptoast.c_heap_toast_insert_or_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_32__ = type { %struct.TYPE_27__*, %struct.TYPE_29__* }
%struct.TYPE_27__ = type { i64, i64 }
%struct.TYPE_29__ = type { i32 }
%struct.TYPE_34__ = type { i32, %struct.TYPE_33__*, i32, i32 }
%struct.TYPE_33__ = type { i32, i32*, i32 }
%struct.TYPE_30__ = type { i32*, i32*, i32, %struct.TYPE_31__*, i32*, i32*, %struct.TYPE_32__* }
%struct.TYPE_31__ = type { i64, i32 }
%struct.TYPE_28__ = type { i8 }

@MaxHeapAttributeNumber = common dso_local global i32 0, align 4
@HEAP_INSERT_SPECULATIVE = common dso_local global i32 0, align 4
@RELKIND_RELATION = common dso_local global i64 0, align 8
@RELKIND_MATVIEW = common dso_local global i64 0, align 8
@SizeofHeapTupleHeader = common dso_local global i8* null, align 8
@TOAST_HAS_NULLS = common dso_local global i32 0, align 4
@TOAST_TUPLE_TARGET = common dso_local global i32 0, align 4
@TOASTCOL_INCOMPRESSIBLE = common dso_local global i32 0, align 4
@InvalidOid = common dso_local global i64 0, align 8
@TOAST_TUPLE_TARGET_MAIN = common dso_local global i64 0, align 8
@TOAST_NEEDS_CHANGE = common dso_local global i32 0, align 4
@HEAPTUPLESIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_34__* @heap_toast_insert_or_update(%struct.TYPE_32__* %0, %struct.TYPE_34__* %1, %struct.TYPE_34__* %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_32__*, align 8
  %6 = alloca %struct.TYPE_34__*, align 8
  %7 = alloca %struct.TYPE_34__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_34__*, align 8
  %10 = alloca %struct.TYPE_29__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca %struct.TYPE_30__, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca %struct.TYPE_33__*, align 8
  %26 = alloca %struct.TYPE_33__*, align 8
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  store %struct.TYPE_32__* %0, %struct.TYPE_32__** %5, align 8
  store %struct.TYPE_34__* %1, %struct.TYPE_34__** %6, align 8
  store %struct.TYPE_34__* %2, %struct.TYPE_34__** %7, align 8
  store i32 %3, i32* %8, align 4
  %30 = load i32, i32* @MaxHeapAttributeNumber, align 4
  %31 = zext i32 %30 to i64
  %32 = call i8* @llvm.stacksave()
  store i8* %32, i8** %14, align 8
  %33 = alloca i32, i64 %31, align 16
  store i64 %31, i64* %15, align 8
  %34 = load i32, i32* @MaxHeapAttributeNumber, align 4
  %35 = zext i32 %34 to i64
  %36 = alloca i32, i64 %35, align 16
  store i64 %35, i64* %16, align 8
  %37 = load i32, i32* @MaxHeapAttributeNumber, align 4
  %38 = zext i32 %37 to i64
  %39 = alloca i32, i64 %38, align 16
  store i64 %38, i64* %17, align 8
  %40 = load i32, i32* @MaxHeapAttributeNumber, align 4
  %41 = zext i32 %40 to i64
  %42 = alloca i32, i64 %41, align 16
  store i64 %41, i64* %18, align 8
  %43 = load i32, i32* @MaxHeapAttributeNumber, align 4
  %44 = zext i32 %43 to i64
  %45 = alloca %struct.TYPE_31__, i64 %44, align 16
  store i64 %44, i64* %19, align 8
  %46 = load i32, i32* @HEAP_INSERT_SPECULATIVE, align 4
  %47 = xor i32 %46, -1
  %48 = load i32, i32* %8, align 4
  %49 = and i32 %48, %47
  store i32 %49, i32* %8, align 4
  %50 = load %struct.TYPE_32__*, %struct.TYPE_32__** %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %50, i32 0, i32 0
  %52 = load %struct.TYPE_27__*, %struct.TYPE_27__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @RELKIND_RELATION, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %65, label %57

57:                                               ; preds = %4
  %58 = load %struct.TYPE_32__*, %struct.TYPE_32__** %5, align 8
  %59 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %58, i32 0, i32 0
  %60 = load %struct.TYPE_27__*, %struct.TYPE_27__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @RELKIND_MATVIEW, align 8
  %64 = icmp eq i64 %62, %63
  br label %65

65:                                               ; preds = %57, %4
  %66 = phi i1 [ true, %4 ], [ %64, %57 ]
  %67 = zext i1 %66 to i32
  %68 = call i32 @Assert(i32 %67)
  %69 = load %struct.TYPE_32__*, %struct.TYPE_32__** %5, align 8
  %70 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %69, i32 0, i32 1
  %71 = load %struct.TYPE_29__*, %struct.TYPE_29__** %70, align 8
  store %struct.TYPE_29__* %71, %struct.TYPE_29__** %10, align 8
  %72 = load %struct.TYPE_29__*, %struct.TYPE_29__** %10, align 8
  %73 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  store i32 %74, i32* %11, align 4
  %75 = load i32, i32* %11, align 4
  %76 = load i32, i32* @MaxHeapAttributeNumber, align 4
  %77 = icmp sle i32 %75, %76
  %78 = zext i1 %77 to i32
  %79 = call i32 @Assert(i32 %78)
  %80 = load %struct.TYPE_34__*, %struct.TYPE_34__** %6, align 8
  %81 = load %struct.TYPE_29__*, %struct.TYPE_29__** %10, align 8
  %82 = call i32 @heap_deform_tuple(%struct.TYPE_34__* %80, %struct.TYPE_29__* %81, i32* %39, i32* %33)
  %83 = load %struct.TYPE_34__*, %struct.TYPE_34__** %7, align 8
  %84 = icmp ne %struct.TYPE_34__* %83, null
  br i1 %84, label %85, label %89

85:                                               ; preds = %65
  %86 = load %struct.TYPE_34__*, %struct.TYPE_34__** %7, align 8
  %87 = load %struct.TYPE_29__*, %struct.TYPE_29__** %10, align 8
  %88 = call i32 @heap_deform_tuple(%struct.TYPE_34__* %86, %struct.TYPE_29__* %87, i32* %42, i32* %36)
  br label %89

89:                                               ; preds = %85, %65
  %90 = load %struct.TYPE_32__*, %struct.TYPE_32__** %5, align 8
  %91 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %20, i32 0, i32 6
  store %struct.TYPE_32__* %90, %struct.TYPE_32__** %91, align 8
  %92 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %20, i32 0, i32 5
  store i32* %39, i32** %92, align 8
  %93 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %20, i32 0, i32 0
  store i32* %33, i32** %93, align 8
  %94 = load %struct.TYPE_34__*, %struct.TYPE_34__** %7, align 8
  %95 = icmp eq %struct.TYPE_34__* %94, null
  br i1 %95, label %96, label %99

96:                                               ; preds = %89
  %97 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %20, i32 0, i32 4
  store i32* null, i32** %97, align 8
  %98 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %20, i32 0, i32 1
  store i32* null, i32** %98, align 8
  br label %102

99:                                               ; preds = %89
  %100 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %20, i32 0, i32 4
  store i32* %42, i32** %100, align 8
  %101 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %20, i32 0, i32 1
  store i32* %36, i32** %101, align 8
  br label %102

102:                                              ; preds = %99, %96
  %103 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %20, i32 0, i32 3
  store %struct.TYPE_31__* %45, %struct.TYPE_31__** %103, align 8
  %104 = call i32 @toast_tuple_init(%struct.TYPE_30__* %20)
  %105 = load i8*, i8** @SizeofHeapTupleHeader, align 8
  %106 = ptrtoint i8* %105 to i64
  store i64 %106, i64* %13, align 8
  %107 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %20, i32 0, i32 2
  %108 = load i32, i32* %107, align 8
  %109 = load i32, i32* @TOAST_HAS_NULLS, align 4
  %110 = and i32 %108, %109
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %118

112:                                              ; preds = %102
  %113 = load i32, i32* %11, align 4
  %114 = call i32 @BITMAPLEN(i32 %113)
  %115 = sext i32 %114 to i64
  %116 = load i64, i64* %13, align 8
  %117 = add nsw i64 %116, %115
  store i64 %117, i64* %13, align 8
  br label %118

118:                                              ; preds = %112, %102
  %119 = load i64, i64* %13, align 8
  %120 = trunc i64 %119 to i32
  %121 = call i8* @MAXALIGN(i32 %120)
  %122 = ptrtoint i8* %121 to i64
  store i64 %122, i64* %13, align 8
  %123 = load %struct.TYPE_32__*, %struct.TYPE_32__** %5, align 8
  %124 = load i32, i32* @TOAST_TUPLE_TARGET, align 4
  %125 = call i64 @RelationGetToastTupleTarget(%struct.TYPE_32__* %123, i32 %124)
  %126 = load i64, i64* %13, align 8
  %127 = sub nsw i64 %125, %126
  store i64 %127, i64* %12, align 8
  br label %128

128:                                              ; preds = %177, %118
  %129 = load %struct.TYPE_29__*, %struct.TYPE_29__** %10, align 8
  %130 = call i64 @heap_compute_data_size(%struct.TYPE_29__* %129, i32* %39, i32* %33)
  %131 = load i64, i64* %12, align 8
  %132 = icmp sgt i64 %130, %131
  br i1 %132, label %133, label %178

133:                                              ; preds = %128
  %134 = call i32 @toast_tuple_find_biggest_attribute(%struct.TYPE_30__* %20, i32 1, i32 0)
  store i32 %134, i32* %21, align 4
  %135 = load i32, i32* %21, align 4
  %136 = icmp slt i32 %135, 0
  br i1 %136, label %137, label %138

137:                                              ; preds = %133
  br label %178

138:                                              ; preds = %133
  %139 = load %struct.TYPE_29__*, %struct.TYPE_29__** %10, align 8
  %140 = load i32, i32* %21, align 4
  %141 = call %struct.TYPE_28__* @TupleDescAttr(%struct.TYPE_29__* %139, i32 %140)
  %142 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %141, i32 0, i32 0
  %143 = load i8, i8* %142, align 1
  %144 = sext i8 %143 to i32
  %145 = icmp eq i32 %144, 120
  br i1 %145, label %146, label %149

146:                                              ; preds = %138
  %147 = load i32, i32* %21, align 4
  %148 = call i32 @toast_tuple_try_compression(%struct.TYPE_30__* %20, i32 %147)
  br label %157

149:                                              ; preds = %138
  %150 = load i32, i32* @TOASTCOL_INCOMPRESSIBLE, align 4
  %151 = load i32, i32* %21, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %45, i64 %152
  %154 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %153, i32 0, i32 1
  %155 = load i32, i32* %154, align 8
  %156 = or i32 %155, %150
  store i32 %156, i32* %154, align 8
  br label %157

157:                                              ; preds = %149, %146
  %158 = load i32, i32* %21, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %45, i64 %159
  %161 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %160, i32 0, i32 0
  %162 = load i64, i64* %161, align 16
  %163 = load i64, i64* %12, align 8
  %164 = icmp sgt i64 %162, %163
  br i1 %164, label %165, label %177

165:                                              ; preds = %157
  %166 = load %struct.TYPE_32__*, %struct.TYPE_32__** %5, align 8
  %167 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %166, i32 0, i32 0
  %168 = load %struct.TYPE_27__*, %struct.TYPE_27__** %167, align 8
  %169 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %168, i32 0, i32 1
  %170 = load i64, i64* %169, align 8
  %171 = load i64, i64* @InvalidOid, align 8
  %172 = icmp ne i64 %170, %171
  br i1 %172, label %173, label %177

173:                                              ; preds = %165
  %174 = load i32, i32* %21, align 4
  %175 = load i32, i32* %8, align 4
  %176 = call i32 @toast_tuple_externalize(%struct.TYPE_30__* %20, i32 %174, i32 %175)
  br label %177

177:                                              ; preds = %173, %165, %157
  br label %128

178:                                              ; preds = %137, %128
  br label %179

179:                                              ; preds = %199, %178
  %180 = load %struct.TYPE_29__*, %struct.TYPE_29__** %10, align 8
  %181 = call i64 @heap_compute_data_size(%struct.TYPE_29__* %180, i32* %39, i32* %33)
  %182 = load i64, i64* %12, align 8
  %183 = icmp sgt i64 %181, %182
  br i1 %183, label %184, label %192

184:                                              ; preds = %179
  %185 = load %struct.TYPE_32__*, %struct.TYPE_32__** %5, align 8
  %186 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %185, i32 0, i32 0
  %187 = load %struct.TYPE_27__*, %struct.TYPE_27__** %186, align 8
  %188 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %187, i32 0, i32 1
  %189 = load i64, i64* %188, align 8
  %190 = load i64, i64* @InvalidOid, align 8
  %191 = icmp ne i64 %189, %190
  br label %192

192:                                              ; preds = %184, %179
  %193 = phi i1 [ false, %179 ], [ %191, %184 ]
  br i1 %193, label %194, label %203

194:                                              ; preds = %192
  %195 = call i32 @toast_tuple_find_biggest_attribute(%struct.TYPE_30__* %20, i32 0, i32 0)
  store i32 %195, i32* %22, align 4
  %196 = load i32, i32* %22, align 4
  %197 = icmp slt i32 %196, 0
  br i1 %197, label %198, label %199

198:                                              ; preds = %194
  br label %203

199:                                              ; preds = %194
  %200 = load i32, i32* %22, align 4
  %201 = load i32, i32* %8, align 4
  %202 = call i32 @toast_tuple_externalize(%struct.TYPE_30__* %20, i32 %200, i32 %201)
  br label %179

203:                                              ; preds = %198, %192
  br label %204

204:                                              ; preds = %214, %203
  %205 = load %struct.TYPE_29__*, %struct.TYPE_29__** %10, align 8
  %206 = call i64 @heap_compute_data_size(%struct.TYPE_29__* %205, i32* %39, i32* %33)
  %207 = load i64, i64* %12, align 8
  %208 = icmp sgt i64 %206, %207
  br i1 %208, label %209, label %217

209:                                              ; preds = %204
  %210 = call i32 @toast_tuple_find_biggest_attribute(%struct.TYPE_30__* %20, i32 1, i32 1)
  store i32 %210, i32* %23, align 4
  %211 = load i32, i32* %23, align 4
  %212 = icmp slt i32 %211, 0
  br i1 %212, label %213, label %214

213:                                              ; preds = %209
  br label %217

214:                                              ; preds = %209
  %215 = load i32, i32* %23, align 4
  %216 = call i32 @toast_tuple_try_compression(%struct.TYPE_30__* %20, i32 %215)
  br label %204

217:                                              ; preds = %213, %204
  %218 = load i64, i64* @TOAST_TUPLE_TARGET_MAIN, align 8
  %219 = load i64, i64* %13, align 8
  %220 = sub nsw i64 %218, %219
  store i64 %220, i64* %12, align 8
  br label %221

221:                                              ; preds = %241, %217
  %222 = load %struct.TYPE_29__*, %struct.TYPE_29__** %10, align 8
  %223 = call i64 @heap_compute_data_size(%struct.TYPE_29__* %222, i32* %39, i32* %33)
  %224 = load i64, i64* %12, align 8
  %225 = icmp sgt i64 %223, %224
  br i1 %225, label %226, label %234

226:                                              ; preds = %221
  %227 = load %struct.TYPE_32__*, %struct.TYPE_32__** %5, align 8
  %228 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %227, i32 0, i32 0
  %229 = load %struct.TYPE_27__*, %struct.TYPE_27__** %228, align 8
  %230 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %229, i32 0, i32 1
  %231 = load i64, i64* %230, align 8
  %232 = load i64, i64* @InvalidOid, align 8
  %233 = icmp ne i64 %231, %232
  br label %234

234:                                              ; preds = %226, %221
  %235 = phi i1 [ false, %221 ], [ %233, %226 ]
  br i1 %235, label %236, label %245

236:                                              ; preds = %234
  %237 = call i32 @toast_tuple_find_biggest_attribute(%struct.TYPE_30__* %20, i32 0, i32 1)
  store i32 %237, i32* %24, align 4
  %238 = load i32, i32* %24, align 4
  %239 = icmp slt i32 %238, 0
  br i1 %239, label %240, label %241

240:                                              ; preds = %236
  br label %245

241:                                              ; preds = %236
  %242 = load i32, i32* %24, align 4
  %243 = load i32, i32* %8, align 4
  %244 = call i32 @toast_tuple_externalize(%struct.TYPE_30__* %20, i32 %242, i32 %243)
  br label %221

245:                                              ; preds = %240, %234
  %246 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %20, i32 0, i32 2
  %247 = load i32, i32* %246, align 8
  %248 = load i32, i32* @TOAST_NEEDS_CHANGE, align 4
  %249 = and i32 %247, %248
  %250 = icmp ne i32 %249, 0
  br i1 %250, label %251, label %336

251:                                              ; preds = %245
  %252 = load %struct.TYPE_34__*, %struct.TYPE_34__** %6, align 8
  %253 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %252, i32 0, i32 1
  %254 = load %struct.TYPE_33__*, %struct.TYPE_33__** %253, align 8
  store %struct.TYPE_33__* %254, %struct.TYPE_33__** %25, align 8
  %255 = load i8*, i8** @SizeofHeapTupleHeader, align 8
  %256 = ptrtoint i8* %255 to i32
  store i32 %256, i32* %27, align 4
  %257 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %20, i32 0, i32 2
  %258 = load i32, i32* %257, align 8
  %259 = load i32, i32* @TOAST_HAS_NULLS, align 4
  %260 = and i32 %258, %259
  %261 = icmp ne i32 %260, 0
  br i1 %261, label %262, label %267

262:                                              ; preds = %251
  %263 = load i32, i32* %11, align 4
  %264 = call i32 @BITMAPLEN(i32 %263)
  %265 = load i32, i32* %27, align 4
  %266 = add nsw i32 %265, %264
  store i32 %266, i32* %27, align 4
  br label %267

267:                                              ; preds = %262, %251
  %268 = load i32, i32* %27, align 4
  %269 = call i8* @MAXALIGN(i32 %268)
  %270 = ptrtoint i8* %269 to i32
  store i32 %270, i32* %27, align 4
  %271 = load %struct.TYPE_29__*, %struct.TYPE_29__** %10, align 8
  %272 = call i64 @heap_compute_data_size(%struct.TYPE_29__* %271, i32* %39, i32* %33)
  %273 = trunc i64 %272 to i32
  store i32 %273, i32* %28, align 4
  %274 = load i32, i32* %27, align 4
  %275 = load i32, i32* %28, align 4
  %276 = add nsw i32 %274, %275
  store i32 %276, i32* %29, align 4
  %277 = load i32, i32* @HEAPTUPLESIZE, align 4
  %278 = load i32, i32* %29, align 4
  %279 = add nsw i32 %277, %278
  %280 = call i64 @palloc0(i32 %279)
  %281 = inttoptr i64 %280 to %struct.TYPE_34__*
  store %struct.TYPE_34__* %281, %struct.TYPE_34__** %9, align 8
  %282 = load i32, i32* %29, align 4
  %283 = load %struct.TYPE_34__*, %struct.TYPE_34__** %9, align 8
  %284 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %283, i32 0, i32 0
  store i32 %282, i32* %284, align 8
  %285 = load %struct.TYPE_34__*, %struct.TYPE_34__** %6, align 8
  %286 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %285, i32 0, i32 3
  %287 = load i32, i32* %286, align 4
  %288 = load %struct.TYPE_34__*, %struct.TYPE_34__** %9, align 8
  %289 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %288, i32 0, i32 3
  store i32 %287, i32* %289, align 4
  %290 = load %struct.TYPE_34__*, %struct.TYPE_34__** %6, align 8
  %291 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %290, i32 0, i32 2
  %292 = load i32, i32* %291, align 8
  %293 = load %struct.TYPE_34__*, %struct.TYPE_34__** %9, align 8
  %294 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %293, i32 0, i32 2
  store i32 %292, i32* %294, align 8
  %295 = load %struct.TYPE_34__*, %struct.TYPE_34__** %9, align 8
  %296 = bitcast %struct.TYPE_34__* %295 to i8*
  %297 = load i32, i32* @HEAPTUPLESIZE, align 4
  %298 = sext i32 %297 to i64
  %299 = getelementptr inbounds i8, i8* %296, i64 %298
  %300 = bitcast i8* %299 to %struct.TYPE_33__*
  store %struct.TYPE_33__* %300, %struct.TYPE_33__** %26, align 8
  %301 = load %struct.TYPE_33__*, %struct.TYPE_33__** %26, align 8
  %302 = load %struct.TYPE_34__*, %struct.TYPE_34__** %9, align 8
  %303 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %302, i32 0, i32 1
  store %struct.TYPE_33__* %301, %struct.TYPE_33__** %303, align 8
  %304 = load %struct.TYPE_33__*, %struct.TYPE_33__** %26, align 8
  %305 = load %struct.TYPE_33__*, %struct.TYPE_33__** %25, align 8
  %306 = load i8*, i8** @SizeofHeapTupleHeader, align 8
  %307 = call i32 @memcpy(%struct.TYPE_33__* %304, %struct.TYPE_33__* %305, i8* %306)
  %308 = load %struct.TYPE_33__*, %struct.TYPE_33__** %26, align 8
  %309 = load i32, i32* %11, align 4
  %310 = call i32 @HeapTupleHeaderSetNatts(%struct.TYPE_33__* %308, i32 %309)
  %311 = load i32, i32* %27, align 4
  %312 = load %struct.TYPE_33__*, %struct.TYPE_33__** %26, align 8
  %313 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %312, i32 0, i32 0
  store i32 %311, i32* %313, align 8
  %314 = load %struct.TYPE_29__*, %struct.TYPE_29__** %10, align 8
  %315 = load %struct.TYPE_33__*, %struct.TYPE_33__** %26, align 8
  %316 = bitcast %struct.TYPE_33__* %315 to i8*
  %317 = load i32, i32* %27, align 4
  %318 = sext i32 %317 to i64
  %319 = getelementptr inbounds i8, i8* %316, i64 %318
  %320 = load i32, i32* %28, align 4
  %321 = load %struct.TYPE_33__*, %struct.TYPE_33__** %26, align 8
  %322 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %321, i32 0, i32 2
  %323 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %20, i32 0, i32 2
  %324 = load i32, i32* %323, align 8
  %325 = load i32, i32* @TOAST_HAS_NULLS, align 4
  %326 = and i32 %324, %325
  %327 = icmp ne i32 %326, 0
  br i1 %327, label %328, label %332

328:                                              ; preds = %267
  %329 = load %struct.TYPE_33__*, %struct.TYPE_33__** %26, align 8
  %330 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %329, i32 0, i32 1
  %331 = load i32*, i32** %330, align 8
  br label %333

332:                                              ; preds = %267
  br label %333

333:                                              ; preds = %332, %328
  %334 = phi i32* [ %331, %328 ], [ null, %332 ]
  %335 = call i32 @heap_fill_tuple(%struct.TYPE_29__* %314, i32* %39, i32* %33, i8* %319, i32 %320, i32* %322, i32* %334)
  br label %338

336:                                              ; preds = %245
  %337 = load %struct.TYPE_34__*, %struct.TYPE_34__** %6, align 8
  store %struct.TYPE_34__* %337, %struct.TYPE_34__** %9, align 8
  br label %338

338:                                              ; preds = %336, %333
  %339 = call i32 @toast_tuple_cleanup(%struct.TYPE_30__* %20)
  %340 = load %struct.TYPE_34__*, %struct.TYPE_34__** %9, align 8
  %341 = load i8*, i8** %14, align 8
  call void @llvm.stackrestore(i8* %341)
  ret %struct.TYPE_34__* %340
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @Assert(i32) #2

declare dso_local i32 @heap_deform_tuple(%struct.TYPE_34__*, %struct.TYPE_29__*, i32*, i32*) #2

declare dso_local i32 @toast_tuple_init(%struct.TYPE_30__*) #2

declare dso_local i32 @BITMAPLEN(i32) #2

declare dso_local i8* @MAXALIGN(i32) #2

declare dso_local i64 @RelationGetToastTupleTarget(%struct.TYPE_32__*, i32) #2

declare dso_local i64 @heap_compute_data_size(%struct.TYPE_29__*, i32*, i32*) #2

declare dso_local i32 @toast_tuple_find_biggest_attribute(%struct.TYPE_30__*, i32, i32) #2

declare dso_local %struct.TYPE_28__* @TupleDescAttr(%struct.TYPE_29__*, i32) #2

declare dso_local i32 @toast_tuple_try_compression(%struct.TYPE_30__*, i32) #2

declare dso_local i32 @toast_tuple_externalize(%struct.TYPE_30__*, i32, i32) #2

declare dso_local i64 @palloc0(i32) #2

declare dso_local i32 @memcpy(%struct.TYPE_33__*, %struct.TYPE_33__*, i8*) #2

declare dso_local i32 @HeapTupleHeaderSetNatts(%struct.TYPE_33__*, i32) #2

declare dso_local i32 @heap_fill_tuple(%struct.TYPE_29__*, i32*, i32*, i8*, i32, i32*, i32*) #2

declare dso_local i32 @toast_tuple_cleanup(%struct.TYPE_30__*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
