; ModuleID = '/home/carl/AnghaBench/php-src/ext/opcache/Optimizer/extr_compact_vars.c_zend_optimizer_compact_vars.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/opcache/Optimizer/extr_compact_vars.c_zend_optimizer_compact_vars.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32, i32, i32**, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32, i32, i32, i64, i32, %struct.TYPE_9__, %struct.TYPE_8__, %struct.TYPE_7__ }
%struct.TYPE_9__ = type { i8* }
%struct.TYPE_8__ = type { i8* }
%struct.TYPE_7__ = type { i8* }

@use_heap1 = common dso_local global i32 0, align 4
@use_heap2 = common dso_local global i32 0, align 4
@IS_CV = common dso_local global i32 0, align 4
@IS_VAR = common dso_local global i32 0, align 4
@IS_TMP_VAR = common dso_local global i32 0, align 4
@ZEND_ROPE_INIT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @zend_optimizer_compact_vars(%struct.TYPE_10__* %0) #0 {
  %2 = alloca %struct.TYPE_10__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_11__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_11__*, align 8
  %12 = alloca i32**, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %2, align 8
  %13 = load i32, i32* @use_heap1, align 4
  %14 = call i32 @ALLOCA_FLAG(i32 %13)
  %15 = load i32, i32* @use_heap2, align 4
  %16 = call i32 @ALLOCA_FLAG(i32 %15)
  %17 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %18 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %21 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = add nsw i32 %19, %22
  %24 = call i32 @zend_bitset_len(i32 %23)
  store i32 %24, i32* %4, align 4
  %25 = load i32, i32* %4, align 4
  %26 = load i32, i32* @use_heap1, align 4
  %27 = call i32* @ZEND_BITSET_ALLOCA(i32 %25, i32 %26)
  store i32* %27, i32** %5, align 8
  %28 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %29 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %32 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = add nsw i32 %30, %33
  %35 = sext i32 %34 to i64
  %36 = mul i64 %35, 4
  %37 = trunc i64 %36 to i32
  %38 = load i32, i32* @use_heap2, align 4
  %39 = call i32* @do_alloca(i32 %37, i32 %38)
  store i32* %39, i32** %6, align 8
  %40 = load i32*, i32** %5, align 8
  %41 = load i32, i32* %4, align 4
  %42 = call i32 @zend_bitset_clear(i32* %40, i32 %41)
  store i32 0, i32* %3, align 4
  br label %43

43:                                               ; preds = %145, %1
  %44 = load i32, i32* %3, align 4
  %45 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %46 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 8
  %48 = icmp slt i32 %44, %47
  br i1 %48, label %49, label %148

49:                                               ; preds = %43
  %50 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %51 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %50, i32 0, i32 4
  %52 = load %struct.TYPE_11__*, %struct.TYPE_11__** %51, align 8
  %53 = load i32, i32* %3, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %52, i64 %54
  store %struct.TYPE_11__* %55, %struct.TYPE_11__** %9, align 8
  %56 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %57 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* @IS_CV, align 4
  %60 = load i32, i32* @IS_VAR, align 4
  %61 = or i32 %59, %60
  %62 = load i32, i32* @IS_TMP_VAR, align 4
  %63 = or i32 %61, %62
  %64 = and i32 %58, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %74

66:                                               ; preds = %49
  %67 = load i32*, i32** %5, align 8
  %68 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %69 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %68, i32 0, i32 7
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i32 0, i32 0
  %71 = load i8*, i8** %70, align 8
  %72 = call i64 @VAR_NUM(i8* %71)
  %73 = call i32 @zend_bitset_incl(i32* %67, i64 %72)
  br label %74

74:                                               ; preds = %66, %49
  %75 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %76 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* @IS_CV, align 4
  %79 = load i32, i32* @IS_VAR, align 4
  %80 = or i32 %78, %79
  %81 = load i32, i32* @IS_TMP_VAR, align 4
  %82 = or i32 %80, %81
  %83 = and i32 %77, %82
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %93

85:                                               ; preds = %74
  %86 = load i32*, i32** %5, align 8
  %87 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %88 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %87, i32 0, i32 6
  %89 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %88, i32 0, i32 0
  %90 = load i8*, i8** %89, align 8
  %91 = call i64 @VAR_NUM(i8* %90)
  %92 = call i32 @zend_bitset_incl(i32* %86, i64 %91)
  br label %93

93:                                               ; preds = %85, %74
  %94 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %95 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 8
  %97 = load i32, i32* @IS_CV, align 4
  %98 = load i32, i32* @IS_VAR, align 4
  %99 = or i32 %97, %98
  %100 = load i32, i32* @IS_TMP_VAR, align 4
  %101 = or i32 %99, %100
  %102 = and i32 %96, %101
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %144

104:                                              ; preds = %93
  %105 = load i32*, i32** %5, align 8
  %106 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %107 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %106, i32 0, i32 5
  %108 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %107, i32 0, i32 0
  %109 = load i8*, i8** %108, align 8
  %110 = call i64 @VAR_NUM(i8* %109)
  %111 = call i32 @zend_bitset_incl(i32* %105, i64 %110)
  %112 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %113 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %112, i32 0, i32 3
  %114 = load i64, i64* %113, align 8
  %115 = load i64, i64* @ZEND_ROPE_INIT, align 8
  %116 = icmp eq i64 %114, %115
  br i1 %116, label %117, label %143

117:                                              ; preds = %104
  %118 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %119 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %118, i32 0, i32 4
  %120 = load i32, i32* %119, align 8
  %121 = sext i32 %120 to i64
  %122 = mul i64 %121, 8
  %123 = add i64 %122, 3
  %124 = udiv i64 %123, 4
  %125 = trunc i64 %124 to i32
  store i32 %125, i32* %10, align 4
  br label %126

126:                                              ; preds = %129, %117
  %127 = load i32, i32* %10, align 4
  %128 = icmp sgt i32 %127, 1
  br i1 %128, label %129, label %142

129:                                              ; preds = %126
  %130 = load i32, i32* %10, align 4
  %131 = add nsw i32 %130, -1
  store i32 %131, i32* %10, align 4
  %132 = load i32*, i32** %5, align 8
  %133 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %134 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %133, i32 0, i32 5
  %135 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %134, i32 0, i32 0
  %136 = load i8*, i8** %135, align 8
  %137 = call i64 @VAR_NUM(i8* %136)
  %138 = load i32, i32* %10, align 4
  %139 = sext i32 %138 to i64
  %140 = add i64 %137, %139
  %141 = call i32 @zend_bitset_incl(i32* %132, i64 %140)
  br label %126

142:                                              ; preds = %126
  br label %143

143:                                              ; preds = %142, %104
  br label %144

144:                                              ; preds = %143, %93
  br label %145

145:                                              ; preds = %144
  %146 = load i32, i32* %3, align 4
  %147 = add nsw i32 %146, 1
  store i32 %147, i32* %3, align 4
  br label %43

148:                                              ; preds = %43
  store i32 0, i32* %7, align 4
  store i32 0, i32* %3, align 4
  br label %149

149:                                              ; preds = %173, %148
  %150 = load i32, i32* %3, align 4
  %151 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %152 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 8
  %154 = icmp slt i32 %150, %153
  br i1 %154, label %155, label %176

155:                                              ; preds = %149
  %156 = load i32*, i32** %5, align 8
  %157 = load i32, i32* %3, align 4
  %158 = call i64 @zend_bitset_in(i32* %156, i32 %157)
  %159 = icmp ne i64 %158, 0
  br i1 %159, label %160, label %167

160:                                              ; preds = %155
  %161 = load i32, i32* %7, align 4
  %162 = add nsw i32 %161, 1
  store i32 %162, i32* %7, align 4
  %163 = load i32*, i32** %6, align 8
  %164 = load i32, i32* %3, align 4
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds i32, i32* %163, i64 %165
  store i32 %161, i32* %166, align 4
  br label %172

167:                                              ; preds = %155
  %168 = load i32*, i32** %6, align 8
  %169 = load i32, i32* %3, align 4
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds i32, i32* %168, i64 %170
  store i32 -1, i32* %171, align 4
  br label %172

172:                                              ; preds = %167, %160
  br label %173

173:                                              ; preds = %172
  %174 = load i32, i32* %3, align 4
  %175 = add nsw i32 %174, 1
  store i32 %175, i32* %3, align 4
  br label %149

176:                                              ; preds = %149
  store i32 0, i32* %8, align 4
  %177 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %178 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 8
  store i32 %179, i32* %3, align 4
  br label %180

180:                                              ; preds = %210, %176
  %181 = load i32, i32* %3, align 4
  %182 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %183 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %182, i32 0, i32 0
  %184 = load i32, i32* %183, align 8
  %185 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %186 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %185, i32 0, i32 1
  %187 = load i32, i32* %186, align 4
  %188 = add nsw i32 %184, %187
  %189 = icmp slt i32 %181, %188
  br i1 %189, label %190, label %213

190:                                              ; preds = %180
  %191 = load i32*, i32** %5, align 8
  %192 = load i32, i32* %3, align 4
  %193 = call i64 @zend_bitset_in(i32* %191, i32 %192)
  %194 = icmp ne i64 %193, 0
  br i1 %194, label %195, label %204

195:                                              ; preds = %190
  %196 = load i32, i32* %7, align 4
  %197 = load i32, i32* %8, align 4
  %198 = add nsw i32 %197, 1
  store i32 %198, i32* %8, align 4
  %199 = add nsw i32 %196, %197
  %200 = load i32*, i32** %6, align 8
  %201 = load i32, i32* %3, align 4
  %202 = sext i32 %201 to i64
  %203 = getelementptr inbounds i32, i32* %200, i64 %202
  store i32 %199, i32* %203, align 4
  br label %209

204:                                              ; preds = %190
  %205 = load i32*, i32** %6, align 8
  %206 = load i32, i32* %3, align 4
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds i32, i32* %205, i64 %207
  store i32 -1, i32* %208, align 4
  br label %209

209:                                              ; preds = %204, %195
  br label %210

210:                                              ; preds = %209
  %211 = load i32, i32* %3, align 4
  %212 = add nsw i32 %211, 1
  store i32 %212, i32* %3, align 4
  br label %180

213:                                              ; preds = %180
  %214 = load i32*, i32** %5, align 8
  %215 = load i32, i32* @use_heap1, align 4
  %216 = call i32 @free_alloca(i32* %214, i32 %215)
  %217 = load i32, i32* %7, align 4
  %218 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %219 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %218, i32 0, i32 0
  %220 = load i32, i32* %219, align 8
  %221 = icmp eq i32 %217, %220
  br i1 %221, label %222, label %232

222:                                              ; preds = %213
  %223 = load i32, i32* %8, align 4
  %224 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %225 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %224, i32 0, i32 1
  %226 = load i32, i32* %225, align 4
  %227 = icmp eq i32 %223, %226
  br i1 %227, label %228, label %232

228:                                              ; preds = %222
  %229 = load i32*, i32** %6, align 8
  %230 = load i32, i32* @use_heap2, align 4
  %231 = call i32 @free_alloca(i32* %229, i32 %230)
  br label %434

232:                                              ; preds = %222, %213
  %233 = load i32, i32* %7, align 4
  %234 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %235 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %234, i32 0, i32 0
  %236 = load i32, i32* %235, align 8
  %237 = icmp sle i32 %233, %236
  %238 = zext i1 %237 to i32
  %239 = call i32 @ZEND_ASSERT(i32 %238)
  %240 = load i32, i32* %8, align 4
  %241 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %242 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %241, i32 0, i32 1
  %243 = load i32, i32* %242, align 4
  %244 = icmp sle i32 %240, %243
  %245 = zext i1 %244 to i32
  %246 = call i32 @ZEND_ASSERT(i32 %245)
  store i32 0, i32* %3, align 4
  br label %247

247:                                              ; preds = %332, %232
  %248 = load i32, i32* %3, align 4
  %249 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %250 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %249, i32 0, i32 2
  %251 = load i32, i32* %250, align 8
  %252 = icmp slt i32 %248, %251
  br i1 %252, label %253, label %335

253:                                              ; preds = %247
  %254 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %255 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %254, i32 0, i32 4
  %256 = load %struct.TYPE_11__*, %struct.TYPE_11__** %255, align 8
  %257 = load i32, i32* %3, align 4
  %258 = sext i32 %257 to i64
  %259 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %256, i64 %258
  store %struct.TYPE_11__* %259, %struct.TYPE_11__** %11, align 8
  %260 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %261 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %260, i32 0, i32 0
  %262 = load i32, i32* %261, align 8
  %263 = load i32, i32* @IS_CV, align 4
  %264 = load i32, i32* @IS_VAR, align 4
  %265 = or i32 %263, %264
  %266 = load i32, i32* @IS_TMP_VAR, align 4
  %267 = or i32 %265, %266
  %268 = and i32 %262, %267
  %269 = icmp ne i32 %268, 0
  br i1 %269, label %270, label %283

270:                                              ; preds = %253
  %271 = load i32*, i32** %6, align 8
  %272 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %273 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %272, i32 0, i32 7
  %274 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %273, i32 0, i32 0
  %275 = load i8*, i8** %274, align 8
  %276 = call i64 @VAR_NUM(i8* %275)
  %277 = getelementptr inbounds i32, i32* %271, i64 %276
  %278 = load i32, i32* %277, align 4
  %279 = call i8* @NUM_VAR(i32 %278)
  %280 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %281 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %280, i32 0, i32 7
  %282 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %281, i32 0, i32 0
  store i8* %279, i8** %282, align 8
  br label %283

283:                                              ; preds = %270, %253
  %284 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %285 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %284, i32 0, i32 1
  %286 = load i32, i32* %285, align 4
  %287 = load i32, i32* @IS_CV, align 4
  %288 = load i32, i32* @IS_VAR, align 4
  %289 = or i32 %287, %288
  %290 = load i32, i32* @IS_TMP_VAR, align 4
  %291 = or i32 %289, %290
  %292 = and i32 %286, %291
  %293 = icmp ne i32 %292, 0
  br i1 %293, label %294, label %307

294:                                              ; preds = %283
  %295 = load i32*, i32** %6, align 8
  %296 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %297 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %296, i32 0, i32 6
  %298 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %297, i32 0, i32 0
  %299 = load i8*, i8** %298, align 8
  %300 = call i64 @VAR_NUM(i8* %299)
  %301 = getelementptr inbounds i32, i32* %295, i64 %300
  %302 = load i32, i32* %301, align 4
  %303 = call i8* @NUM_VAR(i32 %302)
  %304 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %305 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %304, i32 0, i32 6
  %306 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %305, i32 0, i32 0
  store i8* %303, i8** %306, align 8
  br label %307

307:                                              ; preds = %294, %283
  %308 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %309 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %308, i32 0, i32 2
  %310 = load i32, i32* %309, align 8
  %311 = load i32, i32* @IS_CV, align 4
  %312 = load i32, i32* @IS_VAR, align 4
  %313 = or i32 %311, %312
  %314 = load i32, i32* @IS_TMP_VAR, align 4
  %315 = or i32 %313, %314
  %316 = and i32 %310, %315
  %317 = icmp ne i32 %316, 0
  br i1 %317, label %318, label %331

318:                                              ; preds = %307
  %319 = load i32*, i32** %6, align 8
  %320 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %321 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %320, i32 0, i32 5
  %322 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %321, i32 0, i32 0
  %323 = load i8*, i8** %322, align 8
  %324 = call i64 @VAR_NUM(i8* %323)
  %325 = getelementptr inbounds i32, i32* %319, i64 %324
  %326 = load i32, i32* %325, align 4
  %327 = call i8* @NUM_VAR(i32 %326)
  %328 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %329 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %328, i32 0, i32 5
  %330 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %329, i32 0, i32 0
  store i8* %327, i8** %330, align 8
  br label %331

331:                                              ; preds = %318, %307
  br label %332

332:                                              ; preds = %331
  %333 = load i32, i32* %3, align 4
  %334 = add nsw i32 %333, 1
  store i32 %334, i32* %3, align 4
  br label %247

335:                                              ; preds = %247
  %336 = load i32, i32* %7, align 4
  %337 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %338 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %337, i32 0, i32 0
  %339 = load i32, i32* %338, align 8
  %340 = icmp ne i32 %336, %339
  br i1 %340, label %341, label %427

341:                                              ; preds = %335
  %342 = load i32, i32* %7, align 4
  %343 = icmp ne i32 %342, 0
  br i1 %343, label %344, label %397

344:                                              ; preds = %341
  %345 = load i32, i32* %7, align 4
  %346 = call i32** @safe_emalloc(i32 8, i32 %345, i32 0)
  store i32** %346, i32*** %12, align 8
  store i32 0, i32* %3, align 4
  br label %347

347:                                              ; preds = %386, %344
  %348 = load i32, i32* %3, align 4
  %349 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %350 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %349, i32 0, i32 0
  %351 = load i32, i32* %350, align 8
  %352 = icmp slt i32 %348, %351
  br i1 %352, label %353, label %389

353:                                              ; preds = %347
  %354 = load i32*, i32** %6, align 8
  %355 = load i32, i32* %3, align 4
  %356 = sext i32 %355 to i64
  %357 = getelementptr inbounds i32, i32* %354, i64 %356
  %358 = load i32, i32* %357, align 4
  %359 = icmp ne i32 %358, -1
  br i1 %359, label %360, label %376

360:                                              ; preds = %353
  %361 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %362 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %361, i32 0, i32 3
  %363 = load i32**, i32*** %362, align 8
  %364 = load i32, i32* %3, align 4
  %365 = sext i32 %364 to i64
  %366 = getelementptr inbounds i32*, i32** %363, i64 %365
  %367 = load i32*, i32** %366, align 8
  %368 = load i32**, i32*** %12, align 8
  %369 = load i32*, i32** %6, align 8
  %370 = load i32, i32* %3, align 4
  %371 = sext i32 %370 to i64
  %372 = getelementptr inbounds i32, i32* %369, i64 %371
  %373 = load i32, i32* %372, align 4
  %374 = sext i32 %373 to i64
  %375 = getelementptr inbounds i32*, i32** %368, i64 %374
  store i32* %367, i32** %375, align 8
  br label %385

376:                                              ; preds = %353
  %377 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %378 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %377, i32 0, i32 3
  %379 = load i32**, i32*** %378, align 8
  %380 = load i32, i32* %3, align 4
  %381 = sext i32 %380 to i64
  %382 = getelementptr inbounds i32*, i32** %379, i64 %381
  %383 = load i32*, i32** %382, align 8
  %384 = call i32 @zend_string_release_ex(i32* %383, i32 0)
  br label %385

385:                                              ; preds = %376, %360
  br label %386

386:                                              ; preds = %385
  %387 = load i32, i32* %3, align 4
  %388 = add nsw i32 %387, 1
  store i32 %388, i32* %3, align 4
  br label %347

389:                                              ; preds = %347
  %390 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %391 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %390, i32 0, i32 3
  %392 = load i32**, i32*** %391, align 8
  %393 = call i32 @efree(i32** %392)
  %394 = load i32**, i32*** %12, align 8
  %395 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %396 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %395, i32 0, i32 3
  store i32** %394, i32*** %396, align 8
  br label %423

397:                                              ; preds = %341
  store i32 0, i32* %3, align 4
  br label %398

398:                                              ; preds = %413, %397
  %399 = load i32, i32* %3, align 4
  %400 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %401 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %400, i32 0, i32 0
  %402 = load i32, i32* %401, align 8
  %403 = icmp slt i32 %399, %402
  br i1 %403, label %404, label %416

404:                                              ; preds = %398
  %405 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %406 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %405, i32 0, i32 3
  %407 = load i32**, i32*** %406, align 8
  %408 = load i32, i32* %3, align 4
  %409 = sext i32 %408 to i64
  %410 = getelementptr inbounds i32*, i32** %407, i64 %409
  %411 = load i32*, i32** %410, align 8
  %412 = call i32 @zend_string_release_ex(i32* %411, i32 0)
  br label %413

413:                                              ; preds = %404
  %414 = load i32, i32* %3, align 4
  %415 = add nsw i32 %414, 1
  store i32 %415, i32* %3, align 4
  br label %398

416:                                              ; preds = %398
  %417 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %418 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %417, i32 0, i32 3
  %419 = load i32**, i32*** %418, align 8
  %420 = call i32 @efree(i32** %419)
  %421 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %422 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %421, i32 0, i32 3
  store i32** null, i32*** %422, align 8
  br label %423

423:                                              ; preds = %416, %389
  %424 = load i32, i32* %7, align 4
  %425 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %426 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %425, i32 0, i32 0
  store i32 %424, i32* %426, align 8
  br label %427

427:                                              ; preds = %423, %335
  %428 = load i32, i32* %8, align 4
  %429 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %430 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %429, i32 0, i32 1
  store i32 %428, i32* %430, align 4
  %431 = load i32*, i32** %6, align 8
  %432 = load i32, i32* @use_heap2, align 4
  %433 = call i32 @free_alloca(i32* %431, i32 %432)
  br label %434

434:                                              ; preds = %427, %228
  ret void
}

declare dso_local i32 @ALLOCA_FLAG(i32) #1

declare dso_local i32 @zend_bitset_len(i32) #1

declare dso_local i32* @ZEND_BITSET_ALLOCA(i32, i32) #1

declare dso_local i32* @do_alloca(i32, i32) #1

declare dso_local i32 @zend_bitset_clear(i32*, i32) #1

declare dso_local i32 @zend_bitset_incl(i32*, i64) #1

declare dso_local i64 @VAR_NUM(i8*) #1

declare dso_local i64 @zend_bitset_in(i32*, i32) #1

declare dso_local i32 @free_alloca(i32*, i32) #1

declare dso_local i32 @ZEND_ASSERT(i32) #1

declare dso_local i8* @NUM_VAR(i32) #1

declare dso_local i32** @safe_emalloc(i32, i32, i32) #1

declare dso_local i32 @zend_string_release_ex(i32*, i32) #1

declare dso_local i32 @efree(i32**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
