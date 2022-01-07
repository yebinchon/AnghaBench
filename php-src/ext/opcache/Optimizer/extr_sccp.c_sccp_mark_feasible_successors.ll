; ModuleID = '/home/carl/AnghaBench/php-src/ext/opcache/Optimizer/extr_sccp.c_sccp_mark_feasible_successors.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/opcache/Optimizer/extr_sccp.c_sccp_mark_feasible_successors.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { %struct.TYPE_15__*, i32* }
%struct.TYPE_15__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i32* }
%struct.TYPE_17__ = type { i32*, i32 }
%struct.TYPE_16__ = type { i32, i32, %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32 }

@FAILURE = common dso_local global i32 0, align 4
@IS_TRUE = common dso_local global i32 0, align 4
@IS_FALSE = common dso_local global i32 0, align 4
@IS_NULL = common dso_local global i32 0, align 4
@IS_ARRAY = common dso_local global i32 0, align 4
@IS_LONG = common dso_local global i32 0, align 4
@IS_STRING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_18__*, i32, %struct.TYPE_17__*, %struct.TYPE_16__*, i32*)* @sccp_mark_feasible_successors to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sccp_mark_feasible_successors(%struct.TYPE_18__* %0, i32 %1, %struct.TYPE_17__* %2, %struct.TYPE_16__* %3, i32* %4) #0 {
  %6 = alloca %struct.TYPE_18__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_17__*, align 8
  %9 = alloca %struct.TYPE_16__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca %struct.TYPE_15__*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32*, align 8
  %21 = alloca %struct.TYPE_15__*, align 8
  %22 = alloca i32*, align 8
  %23 = alloca i32*, align 8
  %24 = alloca i32, align 4
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.TYPE_17__* %2, %struct.TYPE_17__** %8, align 8
  store %struct.TYPE_16__* %3, %struct.TYPE_16__** %9, align 8
  store i32* %4, i32** %10, align 8
  %25 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %26 = bitcast %struct.TYPE_18__* %25 to i32*
  store i32* %26, i32** %11, align 8
  %27 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %28 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  switch i32 %29, label %47 [
    i32 142, label %30
    i32 141, label %30
    i32 139, label %30
    i32 138, label %30
  ]

30:                                               ; preds = %5, %5, %5, %5
  %31 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %32 = load i32, i32* %7, align 4
  %33 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %34 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @scdf_mark_edge_feasible(%struct.TYPE_18__* %31, i32 %32, i32 %37)
  %39 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %40 = load i32, i32* %7, align 4
  %41 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %42 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %41, i32 0, i32 0
  %43 = load i32*, i32** %42, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 1
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @scdf_mark_edge_feasible(%struct.TYPE_18__* %39, i32 %40, i32 %45)
  br label %333

47:                                               ; preds = %5
  %48 = load i32*, i32** %11, align 8
  %49 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %50 = load i32*, i32** %10, align 8
  %51 = call i32* @get_op1_value(i32* %48, %struct.TYPE_16__* %49, i32* %50)
  store i32* %51, i32** %12, align 8
  %52 = load i32*, i32** %12, align 8
  %53 = icmp ne i32* %52, null
  br i1 %53, label %54, label %58

54:                                               ; preds = %47
  %55 = load i32*, i32** %12, align 8
  %56 = call i64 @IS_BOT(i32* %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %80

58:                                               ; preds = %54, %47
  store i32 0, i32* %14, align 4
  br label %59

59:                                               ; preds = %76, %58
  %60 = load i32, i32* %14, align 4
  %61 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %62 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 8
  %64 = icmp slt i32 %60, %63
  br i1 %64, label %65, label %79

65:                                               ; preds = %59
  %66 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %67 = load i32, i32* %7, align 4
  %68 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %69 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %68, i32 0, i32 0
  %70 = load i32*, i32** %69, align 8
  %71 = load i32, i32* %14, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i32, i32* %70, i64 %72
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @scdf_mark_edge_feasible(%struct.TYPE_18__* %66, i32 %67, i32 %74)
  br label %76

76:                                               ; preds = %65
  %77 = load i32, i32* %14, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %14, align 4
  br label %59

79:                                               ; preds = %59
  br label %333

80:                                               ; preds = %54
  %81 = load i32*, i32** %12, align 8
  %82 = call i64 @IS_TOP(i32* %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %80
  br label %333

85:                                               ; preds = %80
  %86 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %87 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  switch i32 %88, label %300 [
    i32 133, label %89
    i32 132, label %89
    i32 131, label %89
    i32 135, label %117
    i32 134, label %117
    i32 130, label %117
    i32 140, label %145
    i32 137, label %151
    i32 136, label %151
    i32 129, label %188
    i32 128, label %244
  ]

89:                                               ; preds = %85, %85, %85
  %90 = load i32*, i32** %12, align 8
  %91 = call i32 @ct_eval_bool_cast(i32* %13, i32* %90)
  %92 = load i32, i32* @FAILURE, align 4
  %93 = icmp eq i32 %91, %92
  br i1 %93, label %94, label %111

94:                                               ; preds = %89
  %95 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %96 = load i32, i32* %7, align 4
  %97 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %98 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %97, i32 0, i32 0
  %99 = load i32*, i32** %98, align 8
  %100 = getelementptr inbounds i32, i32* %99, i64 0
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @scdf_mark_edge_feasible(%struct.TYPE_18__* %95, i32 %96, i32 %101)
  %103 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %104 = load i32, i32* %7, align 4
  %105 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %106 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %105, i32 0, i32 0
  %107 = load i32*, i32** %106, align 8
  %108 = getelementptr inbounds i32, i32* %107, i64 1
  %109 = load i32, i32* %108, align 4
  %110 = call i32 @scdf_mark_edge_feasible(%struct.TYPE_18__* %103, i32 %104, i32 %109)
  br label %333

111:                                              ; preds = %89
  %112 = load i32, i32* %13, align 4
  %113 = call i32 @Z_TYPE(i32 %112)
  %114 = load i32, i32* @IS_TRUE, align 4
  %115 = icmp eq i32 %113, %114
  %116 = zext i1 %115 to i32
  store i32 %116, i32* %14, align 4
  br label %322

117:                                              ; preds = %85, %85, %85
  %118 = load i32*, i32** %12, align 8
  %119 = call i32 @ct_eval_bool_cast(i32* %13, i32* %118)
  %120 = load i32, i32* @FAILURE, align 4
  %121 = icmp eq i32 %119, %120
  br i1 %121, label %122, label %139

122:                                              ; preds = %117
  %123 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %124 = load i32, i32* %7, align 4
  %125 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %126 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %125, i32 0, i32 0
  %127 = load i32*, i32** %126, align 8
  %128 = getelementptr inbounds i32, i32* %127, i64 0
  %129 = load i32, i32* %128, align 4
  %130 = call i32 @scdf_mark_edge_feasible(%struct.TYPE_18__* %123, i32 %124, i32 %129)
  %131 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %132 = load i32, i32* %7, align 4
  %133 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %134 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %133, i32 0, i32 0
  %135 = load i32*, i32** %134, align 8
  %136 = getelementptr inbounds i32, i32* %135, i64 1
  %137 = load i32, i32* %136, align 4
  %138 = call i32 @scdf_mark_edge_feasible(%struct.TYPE_18__* %131, i32 %132, i32 %137)
  br label %333

139:                                              ; preds = %117
  %140 = load i32, i32* %13, align 4
  %141 = call i32 @Z_TYPE(i32 %140)
  %142 = load i32, i32* @IS_FALSE, align 4
  %143 = icmp eq i32 %141, %142
  %144 = zext i1 %143 to i32
  store i32 %144, i32* %14, align 4
  br label %322

145:                                              ; preds = %85
  %146 = load i32*, i32** %12, align 8
  %147 = call i32 @Z_TYPE_P(i32* %146)
  %148 = load i32, i32* @IS_NULL, align 4
  %149 = icmp eq i32 %147, %148
  %150 = zext i1 %149 to i32
  store i32 %150, i32* %14, align 4
  br label %322

151:                                              ; preds = %85, %85
  %152 = load i32*, i32** %12, align 8
  %153 = call i32 @Z_TYPE_P(i32* %152)
  %154 = load i32, i32* @IS_ARRAY, align 4
  %155 = icmp ne i32 %153, %154
  br i1 %155, label %165, label %156

156:                                              ; preds = %151
  %157 = load i32*, i32** %12, align 8
  %158 = call i32 @IS_PARTIAL_ARRAY(i32* %157)
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %182

160:                                              ; preds = %156
  %161 = load i32*, i32** %12, align 8
  %162 = call i32 @Z_ARR_P(i32* %161)
  %163 = call i32 @zend_hash_num_elements(i32 %162)
  %164 = icmp eq i32 %163, 0
  br i1 %164, label %165, label %182

165:                                              ; preds = %160, %151
  %166 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %167 = load i32, i32* %7, align 4
  %168 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %169 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %168, i32 0, i32 0
  %170 = load i32*, i32** %169, align 8
  %171 = getelementptr inbounds i32, i32* %170, i64 0
  %172 = load i32, i32* %171, align 4
  %173 = call i32 @scdf_mark_edge_feasible(%struct.TYPE_18__* %166, i32 %167, i32 %172)
  %174 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %175 = load i32, i32* %7, align 4
  %176 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %177 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %176, i32 0, i32 0
  %178 = load i32*, i32** %177, align 8
  %179 = getelementptr inbounds i32, i32* %178, i64 1
  %180 = load i32, i32* %179, align 4
  %181 = call i32 @scdf_mark_edge_feasible(%struct.TYPE_18__* %174, i32 %175, i32 %180)
  br label %333

182:                                              ; preds = %160, %156
  %183 = load i32*, i32** %12, align 8
  %184 = call i32 @Z_ARR_P(i32* %183)
  %185 = call i32 @zend_hash_num_elements(i32 %184)
  %186 = icmp ne i32 %185, 0
  %187 = zext i1 %186 to i32
  store i32 %187, i32* %14, align 4
  br label %322

188:                                              ; preds = %85
  %189 = load i32*, i32** %12, align 8
  %190 = call i32 @Z_TYPE_P(i32* %189)
  %191 = load i32, i32* @IS_LONG, align 4
  %192 = icmp eq i32 %190, %191
  br i1 %192, label %193, label %243

193:                                              ; preds = %188
  %194 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %195 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %194, i32 0, i32 1
  %196 = load i32*, i32** %195, align 8
  store i32* %196, i32** %15, align 8
  %197 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %198 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %197, i32 0, i32 0
  %199 = load %struct.TYPE_15__*, %struct.TYPE_15__** %198, align 8
  store %struct.TYPE_15__* %199, %struct.TYPE_15__** %16, align 8
  %200 = load i32*, i32** %15, align 8
  %201 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %202 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %201, i32 0, i32 2
  %203 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %202, i32 0, i32 0
  %204 = load i32, i32* %203, align 4
  %205 = call i32 @CT_CONSTANT_EX(i32* %200, i32 %204)
  %206 = call i32* @Z_ARRVAL_P(i32 %205)
  store i32* %206, i32** %17, align 8
  %207 = load i32*, i32** %17, align 8
  %208 = load i32*, i32** %12, align 8
  %209 = call i32 @Z_LVAL_P(i32* %208)
  %210 = call i32* @zend_hash_index_find(i32* %207, i32 %209)
  store i32* %210, i32** %18, align 8
  %211 = load i32*, i32** %18, align 8
  %212 = icmp ne i32* %211, null
  br i1 %212, label %213, label %225

213:                                              ; preds = %193
  %214 = load %struct.TYPE_15__*, %struct.TYPE_15__** %16, align 8
  %215 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %214, i32 0, i32 0
  %216 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %215, i32 0, i32 0
  %217 = load i32*, i32** %216, align 8
  %218 = load i32*, i32** %15, align 8
  %219 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %220 = load i32*, i32** %18, align 8
  %221 = call i32 @Z_LVAL_P(i32* %220)
  %222 = call i64 @ZEND_OFFSET_TO_OPLINE_NUM(i32* %218, %struct.TYPE_16__* %219, i32 %221)
  %223 = getelementptr inbounds i32, i32* %217, i64 %222
  %224 = load i32, i32* %223, align 4
  store i32 %224, i32* %19, align 4
  br label %238

225:                                              ; preds = %193
  %226 = load %struct.TYPE_15__*, %struct.TYPE_15__** %16, align 8
  %227 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %226, i32 0, i32 0
  %228 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %227, i32 0, i32 0
  %229 = load i32*, i32** %228, align 8
  %230 = load i32*, i32** %15, align 8
  %231 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %232 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %233 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %232, i32 0, i32 1
  %234 = load i32, i32* %233, align 4
  %235 = call i64 @ZEND_OFFSET_TO_OPLINE_NUM(i32* %230, %struct.TYPE_16__* %231, i32 %234)
  %236 = getelementptr inbounds i32, i32* %229, i64 %235
  %237 = load i32, i32* %236, align 4
  store i32 %237, i32* %19, align 4
  br label %238

238:                                              ; preds = %225, %213
  %239 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %240 = load i32, i32* %7, align 4
  %241 = load i32, i32* %19, align 4
  %242 = call i32 @scdf_mark_edge_feasible(%struct.TYPE_18__* %239, i32 %240, i32 %241)
  br label %333

243:                                              ; preds = %188
  store i32 0, i32* %14, align 4
  br label %322

244:                                              ; preds = %85
  %245 = load i32*, i32** %12, align 8
  %246 = call i32 @Z_TYPE_P(i32* %245)
  %247 = load i32, i32* @IS_STRING, align 4
  %248 = icmp eq i32 %246, %247
  br i1 %248, label %249, label %299

249:                                              ; preds = %244
  %250 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %251 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %250, i32 0, i32 1
  %252 = load i32*, i32** %251, align 8
  store i32* %252, i32** %20, align 8
  %253 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %254 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %253, i32 0, i32 0
  %255 = load %struct.TYPE_15__*, %struct.TYPE_15__** %254, align 8
  store %struct.TYPE_15__* %255, %struct.TYPE_15__** %21, align 8
  %256 = load i32*, i32** %20, align 8
  %257 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %258 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %257, i32 0, i32 2
  %259 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %258, i32 0, i32 0
  %260 = load i32, i32* %259, align 4
  %261 = call i32 @CT_CONSTANT_EX(i32* %256, i32 %260)
  %262 = call i32* @Z_ARRVAL_P(i32 %261)
  store i32* %262, i32** %22, align 8
  %263 = load i32*, i32** %22, align 8
  %264 = load i32*, i32** %12, align 8
  %265 = call i32 @Z_STR_P(i32* %264)
  %266 = call i32* @zend_hash_find(i32* %263, i32 %265)
  store i32* %266, i32** %23, align 8
  %267 = load i32*, i32** %23, align 8
  %268 = icmp ne i32* %267, null
  br i1 %268, label %269, label %281

269:                                              ; preds = %249
  %270 = load %struct.TYPE_15__*, %struct.TYPE_15__** %21, align 8
  %271 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %270, i32 0, i32 0
  %272 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %271, i32 0, i32 0
  %273 = load i32*, i32** %272, align 8
  %274 = load i32*, i32** %20, align 8
  %275 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %276 = load i32*, i32** %23, align 8
  %277 = call i32 @Z_LVAL_P(i32* %276)
  %278 = call i64 @ZEND_OFFSET_TO_OPLINE_NUM(i32* %274, %struct.TYPE_16__* %275, i32 %277)
  %279 = getelementptr inbounds i32, i32* %273, i64 %278
  %280 = load i32, i32* %279, align 4
  store i32 %280, i32* %24, align 4
  br label %294

281:                                              ; preds = %249
  %282 = load %struct.TYPE_15__*, %struct.TYPE_15__** %21, align 8
  %283 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %282, i32 0, i32 0
  %284 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %283, i32 0, i32 0
  %285 = load i32*, i32** %284, align 8
  %286 = load i32*, i32** %20, align 8
  %287 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %288 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %289 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %288, i32 0, i32 1
  %290 = load i32, i32* %289, align 4
  %291 = call i64 @ZEND_OFFSET_TO_OPLINE_NUM(i32* %286, %struct.TYPE_16__* %287, i32 %290)
  %292 = getelementptr inbounds i32, i32* %285, i64 %291
  %293 = load i32, i32* %292, align 4
  store i32 %293, i32* %24, align 4
  br label %294

294:                                              ; preds = %281, %269
  %295 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %296 = load i32, i32* %7, align 4
  %297 = load i32, i32* %24, align 4
  %298 = call i32 @scdf_mark_edge_feasible(%struct.TYPE_18__* %295, i32 %296, i32 %297)
  br label %333

299:                                              ; preds = %244
  store i32 0, i32* %14, align 4
  br label %322

300:                                              ; preds = %85
  store i32 0, i32* %14, align 4
  br label %301

301:                                              ; preds = %318, %300
  %302 = load i32, i32* %14, align 4
  %303 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %304 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %303, i32 0, i32 1
  %305 = load i32, i32* %304, align 8
  %306 = icmp slt i32 %302, %305
  br i1 %306, label %307, label %321

307:                                              ; preds = %301
  %308 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %309 = load i32, i32* %7, align 4
  %310 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %311 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %310, i32 0, i32 0
  %312 = load i32*, i32** %311, align 8
  %313 = load i32, i32* %14, align 4
  %314 = sext i32 %313 to i64
  %315 = getelementptr inbounds i32, i32* %312, i64 %314
  %316 = load i32, i32* %315, align 4
  %317 = call i32 @scdf_mark_edge_feasible(%struct.TYPE_18__* %308, i32 %309, i32 %316)
  br label %318

318:                                              ; preds = %307
  %319 = load i32, i32* %14, align 4
  %320 = add nsw i32 %319, 1
  store i32 %320, i32* %14, align 4
  br label %301

321:                                              ; preds = %301
  br label %333

322:                                              ; preds = %299, %243, %182, %145, %139, %111
  %323 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %324 = load i32, i32* %7, align 4
  %325 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %326 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %325, i32 0, i32 0
  %327 = load i32*, i32** %326, align 8
  %328 = load i32, i32* %14, align 4
  %329 = sext i32 %328 to i64
  %330 = getelementptr inbounds i32, i32* %327, i64 %329
  %331 = load i32, i32* %330, align 4
  %332 = call i32 @scdf_mark_edge_feasible(%struct.TYPE_18__* %323, i32 %324, i32 %331)
  br label %333

333:                                              ; preds = %322, %321, %294, %238, %165, %122, %94, %84, %79, %30
  ret void
}

declare dso_local i32 @scdf_mark_edge_feasible(%struct.TYPE_18__*, i32, i32) #1

declare dso_local i32* @get_op1_value(i32*, %struct.TYPE_16__*, i32*) #1

declare dso_local i64 @IS_BOT(i32*) #1

declare dso_local i64 @IS_TOP(i32*) #1

declare dso_local i32 @ct_eval_bool_cast(i32*, i32*) #1

declare dso_local i32 @Z_TYPE(i32) #1

declare dso_local i32 @Z_TYPE_P(i32*) #1

declare dso_local i32 @IS_PARTIAL_ARRAY(i32*) #1

declare dso_local i32 @zend_hash_num_elements(i32) #1

declare dso_local i32 @Z_ARR_P(i32*) #1

declare dso_local i32* @Z_ARRVAL_P(i32) #1

declare dso_local i32 @CT_CONSTANT_EX(i32*, i32) #1

declare dso_local i32* @zend_hash_index_find(i32*, i32) #1

declare dso_local i32 @Z_LVAL_P(i32*) #1

declare dso_local i64 @ZEND_OFFSET_TO_OPLINE_NUM(i32*, %struct.TYPE_16__*, i32) #1

declare dso_local i32* @zend_hash_find(i32*, i32) #1

declare dso_local i32 @Z_STR_P(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
