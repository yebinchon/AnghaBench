; ModuleID = '/home/carl/AnghaBench/postgres/contrib/btree_gist/extr_btree_utils_var.c_gbt_var_picksplit.c'
source_filename = "/home/carl/AnghaBench/postgres/contrib/btree_gist/extr_btree_utils_var.c_gbt_var_picksplit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { i32, %struct.TYPE_17__* }
%struct.TYPE_17__ = type { i8* }
%struct.TYPE_22__ = type { i32*, i32*, i64, i64, i8*, i8* }
%struct.TYPE_18__ = type { i64 }
%struct.TYPE_20__ = type { i32, i32* }
%struct.TYPE_19__ = type { i32*, i32, %struct.TYPE_18__* }
%struct.TYPE_23__ = type { i64, i64 }

@FirstOffsetNumber = common dso_local global i64 0, align 8
@gbt_vsrt_cmp = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_22__* @gbt_var_picksplit(%struct.TYPE_21__* %0, %struct.TYPE_22__* %1, i32 %2, %struct.TYPE_18__* %3, i32* %4) #0 {
  %6 = alloca %struct.TYPE_21__*, align 8
  %7 = alloca %struct.TYPE_22__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_18__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_20__*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i32**, align 8
  %18 = alloca %struct.TYPE_19__, align 8
  %19 = alloca %struct.TYPE_23__, align 8
  %20 = alloca %struct.TYPE_23__, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32*, align 8
  %24 = alloca i32*, align 8
  store %struct.TYPE_21__* %0, %struct.TYPE_21__** %6, align 8
  store %struct.TYPE_22__* %1, %struct.TYPE_22__** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.TYPE_18__* %3, %struct.TYPE_18__** %9, align 8
  store i32* %4, i32** %10, align 8
  %25 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = sub nsw i32 %27, 1
  store i32 %28, i32* %12, align 4
  store i32 0, i32* %14, align 4
  store i32** null, i32*** %17, align 8
  %29 = load i32, i32* %12, align 4
  %30 = add nsw i32 %29, 1
  %31 = sext i32 %30 to i64
  %32 = mul i64 %31, 16
  %33 = trunc i64 %32 to i32
  %34 = call i32** @palloc(i32 %33)
  %35 = bitcast i32** %34 to %struct.TYPE_20__*
  store %struct.TYPE_20__* %35, %struct.TYPE_20__** %13, align 8
  %36 = load i32, i32* %12, align 4
  %37 = add nsw i32 %36, 2
  %38 = sext i32 %37 to i64
  %39 = mul i64 %38, 4
  %40 = trunc i64 %39 to i32
  store i32 %40, i32* %15, align 4
  %41 = load i32, i32* %15, align 4
  %42 = call i32** @palloc(i32 %41)
  %43 = bitcast i32** %42 to i32*
  %44 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %45 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %44, i32 0, i32 0
  store i32* %43, i32** %45, align 8
  %46 = load i32, i32* %15, align 4
  %47 = call i32** @palloc(i32 %46)
  %48 = bitcast i32** %47 to i32*
  %49 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %50 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %49, i32 0, i32 1
  store i32* %48, i32** %50, align 8
  %51 = call i8* @PointerGetDatum(i32* null)
  %52 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %53 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %52, i32 0, i32 5
  store i8* %51, i8** %53, align 8
  %54 = call i8* @PointerGetDatum(i32* null)
  %55 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %56 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %55, i32 0, i32 4
  store i8* %54, i8** %56, align 8
  %57 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %58 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %57, i32 0, i32 2
  store i64 0, i64* %58, align 8
  %59 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %60 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %59, i32 0, i32 3
  store i64 0, i64* %60, align 8
  %61 = load i32, i32* %12, align 4
  %62 = add nsw i32 %61, 1
  %63 = sext i32 %62 to i64
  %64 = mul i64 8, %63
  %65 = trunc i64 %64 to i32
  %66 = call i32** @palloc(i32 %65)
  store i32** %66, i32*** %17, align 8
  %67 = load i64, i64* @FirstOffsetNumber, align 8
  %68 = trunc i64 %67 to i32
  store i32 %68, i32* %11, align 4
  br label %69

69:                                               ; preds = %146, %5
  %70 = load i32, i32* %11, align 4
  %71 = load i32, i32* %12, align 4
  %72 = icmp sle i32 %70, %71
  br i1 %72, label %73, label %149

73:                                               ; preds = %69
  %74 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %75 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %74, i32 0, i32 1
  %76 = load %struct.TYPE_17__*, %struct.TYPE_17__** %75, align 8
  %77 = load i32, i32* %11, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %76, i64 %78
  %80 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %79, i32 0, i32 0
  %81 = load i8*, i8** %80, align 8
  %82 = call i64 @DatumGetPointer(i8* %81)
  %83 = inttoptr i64 %82 to i8*
  store i8* %83, i8** %16, align 8
  %84 = load i8*, i8** %16, align 8
  %85 = bitcast i8* %84 to i32*
  %86 = call { i64, i64 } @gbt_var_key_readable(i32* %85)
  %87 = bitcast %struct.TYPE_23__* %20 to { i64, i64 }*
  %88 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %87, i32 0, i32 0
  %89 = extractvalue { i64, i64 } %86, 0
  store i64 %89, i64* %88, align 8
  %90 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %87, i32 0, i32 1
  %91 = extractvalue { i64, i64 } %86, 1
  store i64 %91, i64* %90, align 8
  %92 = bitcast %struct.TYPE_23__* %19 to i8*
  %93 = bitcast %struct.TYPE_23__* %20 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %92, i8* align 8 %93, i64 16, i1 false)
  %94 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %19, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %19, i32 0, i32 1
  %97 = load i64, i64* %96, align 8
  %98 = icmp eq i64 %95, %97
  br i1 %98, label %99, label %131

99:                                               ; preds = %73
  %100 = load i8*, i8** %16, align 8
  %101 = bitcast i8* %100 to i32*
  %102 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %103 = load i32*, i32** %10, align 8
  %104 = call i32* @gbt_var_leaf2node(i32* %101, %struct.TYPE_18__* %102, i32* %103)
  %105 = load i32**, i32*** %17, align 8
  %106 = load i32, i32* %14, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i32*, i32** %105, i64 %107
  store i32* %104, i32** %108, align 8
  %109 = load i32**, i32*** %17, align 8
  %110 = load i32, i32* %14, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i32*, i32** %109, i64 %111
  %113 = load i32*, i32** %112, align 8
  %114 = load %struct.TYPE_20__*, %struct.TYPE_20__** %13, align 8
  %115 = load i32, i32* %11, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %114, i64 %116
  %118 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %117, i32 0, i32 1
  store i32* %113, i32** %118, align 8
  %119 = load i32**, i32*** %17, align 8
  %120 = load i32, i32* %14, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds i32*, i32** %119, i64 %121
  %123 = load i32*, i32** %122, align 8
  %124 = load i8*, i8** %16, align 8
  %125 = bitcast i8* %124 to i32*
  %126 = icmp ne i32* %123, %125
  br i1 %126, label %127, label %130

127:                                              ; preds = %99
  %128 = load i32, i32* %14, align 4
  %129 = add nsw i32 %128, 1
  store i32 %129, i32* %14, align 4
  br label %130

130:                                              ; preds = %127, %99
  br label %139

131:                                              ; preds = %73
  %132 = load i8*, i8** %16, align 8
  %133 = bitcast i8* %132 to i32*
  %134 = load %struct.TYPE_20__*, %struct.TYPE_20__** %13, align 8
  %135 = load i32, i32* %11, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %134, i64 %136
  %138 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %137, i32 0, i32 1
  store i32* %133, i32** %138, align 8
  br label %139

139:                                              ; preds = %131, %130
  %140 = load i32, i32* %11, align 4
  %141 = load %struct.TYPE_20__*, %struct.TYPE_20__** %13, align 8
  %142 = load i32, i32* %11, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %141, i64 %143
  %145 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %144, i32 0, i32 0
  store i32 %140, i32* %145, align 8
  br label %146

146:                                              ; preds = %139
  %147 = load i32, i32* %11, align 4
  %148 = call i32 @OffsetNumberNext(i32 %147)
  store i32 %148, i32* %11, align 4
  br label %69

149:                                              ; preds = %69
  %150 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %151 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %18, i32 0, i32 2
  store %struct.TYPE_18__* %150, %struct.TYPE_18__** %151, align 8
  %152 = load i32, i32* %8, align 4
  %153 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %18, i32 0, i32 1
  store i32 %152, i32* %153, align 8
  %154 = load i32*, i32** %10, align 8
  %155 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %18, i32 0, i32 0
  store i32* %154, i32** %155, align 8
  %156 = load %struct.TYPE_20__*, %struct.TYPE_20__** %13, align 8
  %157 = load i64, i64* @FirstOffsetNumber, align 8
  %158 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %156, i64 %157
  %159 = bitcast %struct.TYPE_20__* %158 to i8*
  %160 = load i32, i32* %12, align 4
  %161 = sext i32 %160 to i64
  %162 = load i64, i64* @FirstOffsetNumber, align 8
  %163 = sub i64 %161, %162
  %164 = add i64 %163, 1
  %165 = trunc i64 %164 to i32
  %166 = load i32, i32* @gbt_vsrt_cmp, align 4
  %167 = bitcast %struct.TYPE_19__* %18 to i8*
  %168 = call i32 @qsort_arg(i8* %159, i32 %165, i32 16, i32 %166, i8* %167)
  %169 = load i64, i64* @FirstOffsetNumber, align 8
  %170 = trunc i64 %169 to i32
  store i32 %170, i32* %11, align 4
  br label %171

171:                                              ; preds = %246, %149
  %172 = load i32, i32* %11, align 4
  %173 = load i32, i32* %12, align 4
  %174 = icmp sle i32 %172, %173
  br i1 %174, label %175, label %249

175:                                              ; preds = %171
  %176 = load i32, i32* %11, align 4
  %177 = sext i32 %176 to i64
  %178 = load i32, i32* %12, align 4
  %179 = sext i32 %178 to i64
  %180 = load i64, i64* @FirstOffsetNumber, align 8
  %181 = sub i64 %179, %180
  %182 = add i64 %181, 1
  %183 = udiv i64 %182, 2
  %184 = icmp ule i64 %177, %183
  br i1 %184, label %185, label %215

185:                                              ; preds = %175
  %186 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %187 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %186, i32 0, i32 5
  %188 = load %struct.TYPE_20__*, %struct.TYPE_20__** %13, align 8
  %189 = load i32, i32* %11, align 4
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %188, i64 %190
  %192 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %191, i32 0, i32 1
  %193 = load i32*, i32** %192, align 8
  %194 = load i32, i32* %8, align 4
  %195 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %196 = load i32*, i32** %10, align 8
  %197 = call i32 @gbt_var_bin_union(i8** %187, i32* %193, i32 %194, %struct.TYPE_18__* %195, i32* %196)
  %198 = load %struct.TYPE_20__*, %struct.TYPE_20__** %13, align 8
  %199 = load i32, i32* %11, align 4
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %198, i64 %200
  %202 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %201, i32 0, i32 0
  %203 = load i32, i32* %202, align 8
  %204 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %205 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %204, i32 0, i32 0
  %206 = load i32*, i32** %205, align 8
  %207 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %208 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %207, i32 0, i32 2
  %209 = load i64, i64* %208, align 8
  %210 = getelementptr inbounds i32, i32* %206, i64 %209
  store i32 %203, i32* %210, align 4
  %211 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %212 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %211, i32 0, i32 2
  %213 = load i64, i64* %212, align 8
  %214 = add i64 %213, 1
  store i64 %214, i64* %212, align 8
  br label %245

215:                                              ; preds = %175
  %216 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %217 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %216, i32 0, i32 4
  %218 = load %struct.TYPE_20__*, %struct.TYPE_20__** %13, align 8
  %219 = load i32, i32* %11, align 4
  %220 = sext i32 %219 to i64
  %221 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %218, i64 %220
  %222 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %221, i32 0, i32 1
  %223 = load i32*, i32** %222, align 8
  %224 = load i32, i32* %8, align 4
  %225 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %226 = load i32*, i32** %10, align 8
  %227 = call i32 @gbt_var_bin_union(i8** %217, i32* %223, i32 %224, %struct.TYPE_18__* %225, i32* %226)
  %228 = load %struct.TYPE_20__*, %struct.TYPE_20__** %13, align 8
  %229 = load i32, i32* %11, align 4
  %230 = sext i32 %229 to i64
  %231 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %228, i64 %230
  %232 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %231, i32 0, i32 0
  %233 = load i32, i32* %232, align 8
  %234 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %235 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %234, i32 0, i32 1
  %236 = load i32*, i32** %235, align 8
  %237 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %238 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %237, i32 0, i32 3
  %239 = load i64, i64* %238, align 8
  %240 = getelementptr inbounds i32, i32* %236, i64 %239
  store i32 %233, i32* %240, align 4
  %241 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %242 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %241, i32 0, i32 3
  %243 = load i64, i64* %242, align 8
  %244 = add i64 %243, 1
  store i64 %244, i64* %242, align 8
  br label %245

245:                                              ; preds = %215, %185
  br label %246

246:                                              ; preds = %245
  %247 = load i32, i32* %11, align 4
  %248 = call i32 @OffsetNumberNext(i32 %247)
  store i32 %248, i32* %11, align 4
  br label %171

249:                                              ; preds = %171
  %250 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %251 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %250, i32 0, i32 0
  %252 = load i64, i64* %251, align 8
  %253 = icmp ne i64 %252, 0
  br i1 %253, label %254, label %298

254:                                              ; preds = %249
  %255 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %256 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %255, i32 0, i32 5
  %257 = load i8*, i8** %256, align 8
  %258 = call i64 @DatumGetPointer(i8* %257)
  %259 = inttoptr i64 %258 to i32*
  %260 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %261 = call i32 @gbt_var_node_cp_len(i32* %259, %struct.TYPE_18__* %260)
  store i32 %261, i32* %21, align 4
  %262 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %263 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %262, i32 0, i32 4
  %264 = load i8*, i8** %263, align 8
  %265 = call i64 @DatumGetPointer(i8* %264)
  %266 = inttoptr i64 %265 to i32*
  %267 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %268 = call i32 @gbt_var_node_cp_len(i32* %266, %struct.TYPE_18__* %267)
  store i32 %268, i32* %22, align 4
  %269 = load i32, i32* %21, align 4
  %270 = load i32, i32* %22, align 4
  %271 = call i32 @Max(i32 %269, i32 %270)
  store i32 %271, i32* %21, align 4
  %272 = load i32, i32* %21, align 4
  %273 = add nsw i32 %272, 1
  store i32 %273, i32* %21, align 4
  %274 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %275 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %274, i32 0, i32 5
  %276 = load i8*, i8** %275, align 8
  %277 = call i64 @DatumGetPointer(i8* %276)
  %278 = inttoptr i64 %277 to i32*
  %279 = load i32, i32* %21, align 4
  %280 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %281 = call i32* @gbt_var_node_truncate(i32* %278, i32 %279, %struct.TYPE_18__* %280)
  store i32* %281, i32** %23, align 8
  %282 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %283 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %282, i32 0, i32 4
  %284 = load i8*, i8** %283, align 8
  %285 = call i64 @DatumGetPointer(i8* %284)
  %286 = inttoptr i64 %285 to i32*
  %287 = load i32, i32* %21, align 4
  %288 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %289 = call i32* @gbt_var_node_truncate(i32* %286, i32 %287, %struct.TYPE_18__* %288)
  store i32* %289, i32** %24, align 8
  %290 = load i32*, i32** %23, align 8
  %291 = call i8* @PointerGetDatum(i32* %290)
  %292 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %293 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %292, i32 0, i32 5
  store i8* %291, i8** %293, align 8
  %294 = load i32*, i32** %24, align 8
  %295 = call i8* @PointerGetDatum(i32* %294)
  %296 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %297 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %296, i32 0, i32 4
  store i8* %295, i8** %297, align 8
  br label %298

298:                                              ; preds = %254, %249
  %299 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  ret %struct.TYPE_22__* %299
}

declare dso_local i32** @palloc(i32) #1

declare dso_local i8* @PointerGetDatum(i32*) #1

declare dso_local i64 @DatumGetPointer(i8*) #1

declare dso_local { i64, i64 } @gbt_var_key_readable(i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32* @gbt_var_leaf2node(i32*, %struct.TYPE_18__*, i32*) #1

declare dso_local i32 @OffsetNumberNext(i32) #1

declare dso_local i32 @qsort_arg(i8*, i32, i32, i32, i8*) #1

declare dso_local i32 @gbt_var_bin_union(i8**, i32*, i32, %struct.TYPE_18__*, i32*) #1

declare dso_local i32 @gbt_var_node_cp_len(i32*, %struct.TYPE_18__*) #1

declare dso_local i32 @Max(i32, i32) #1

declare dso_local i32* @gbt_var_node_truncate(i32*, i32, %struct.TYPE_18__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
