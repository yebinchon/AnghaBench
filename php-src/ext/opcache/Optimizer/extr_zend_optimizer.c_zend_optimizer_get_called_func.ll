; ModuleID = '/home/carl/AnghaBench/php-src/ext/opcache/Optimizer/extr_zend_optimizer.c_zend_optimizer_get_called_func.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/opcache/Optimizer/extr_zend_optimizer.c_zend_optimizer_get_called_func.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_24__ = type { %struct.TYPE_19__, %struct.TYPE_18__, i32 }
%struct.TYPE_19__ = type { i32, %struct.TYPE_20__* }
%struct.TYPE_20__ = type { i32, i32 }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_21__ = type { i32 }
%struct.TYPE_22__ = type { %struct.TYPE_20__*, i32 }
%struct.TYPE_23__ = type { i32, i32, i32, i32 }
%struct.TYPE_25__ = type { %struct.TYPE_24__*, i32, i32 }

@function_table = common dso_local global i32 0, align 4
@ZEND_INTERNAL_FUNCTION = common dso_local global i32 0, align 4
@ZEND_USER_FUNCTION = common dso_local global i32 0, align 4
@IS_CONST = common dso_local global i32 0, align 4
@IS_STRING = common dso_local global i32 0, align 4
@ZEND_ACC_PUBLIC = common dso_local global i32 0, align 4
@IS_UNUSED = common dso_local global i32 0, align 4
@ZEND_ACC_TRAIT = common dso_local global i32 0, align 4
@ZEND_ACC_PRIVATE = common dso_local global i32 0, align 4
@ZEND_ACC_FINAL = common dso_local global i32 0, align 4
@ZEND_USER_CLASS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_24__* @zend_optimizer_get_called_func(%struct.TYPE_21__* %0, %struct.TYPE_22__* %1, %struct.TYPE_23__* %2) #0 {
  %4 = alloca %struct.TYPE_24__*, align 8
  %5 = alloca %struct.TYPE_21__*, align 8
  %6 = alloca %struct.TYPE_22__*, align 8
  %7 = alloca %struct.TYPE_23__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_24__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_24__*, align 8
  %12 = alloca %struct.TYPE_25__*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.TYPE_24__*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  %18 = alloca %struct.TYPE_24__*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca %struct.TYPE_25__*, align 8
  store %struct.TYPE_21__* %0, %struct.TYPE_21__** %5, align 8
  store %struct.TYPE_22__* %1, %struct.TYPE_22__** %6, align 8
  store %struct.TYPE_23__* %2, %struct.TYPE_23__** %7, align 8
  %23 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %24 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  switch i32 %25, label %332 [
    i32 133, label %26
    i32 132, label %83
    i32 130, label %83
    i32 129, label %157
    i32 131, label %220
    i32 128, label %314
  ]

26:                                               ; preds = %3
  %27 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %28 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = call i32* @CRT_CONSTANT(i32 %29)
  %31 = call i32* @Z_STR_P(i32* %30)
  store i32* %31, i32** %8, align 8
  %32 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %33 = icmp ne %struct.TYPE_21__* %32, null
  br i1 %33, label %34, label %42

34:                                               ; preds = %26
  %35 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %35, i32 0, i32 0
  %37 = load i32*, i32** %8, align 8
  %38 = call %struct.TYPE_24__* @zend_hash_find_ptr(i32* %36, i32* %37)
  store %struct.TYPE_24__* %38, %struct.TYPE_24__** %9, align 8
  %39 = icmp ne %struct.TYPE_24__* %38, null
  br i1 %39, label %40, label %42

40:                                               ; preds = %34
  %41 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  store %struct.TYPE_24__* %41, %struct.TYPE_24__** %4, align 8
  br label %333

42:                                               ; preds = %34, %26
  %43 = load i32, i32* @function_table, align 4
  %44 = call i32* @EG(i32 %43)
  %45 = load i32*, i32** %8, align 8
  %46 = call %struct.TYPE_24__* @zend_hash_find_ptr(i32* %44, i32* %45)
  store %struct.TYPE_24__* %46, %struct.TYPE_24__** %9, align 8
  %47 = icmp ne %struct.TYPE_24__* %46, null
  br i1 %47, label %48, label %81

48:                                               ; preds = %42
  %49 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %50 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @ZEND_INTERNAL_FUNCTION, align 4
  %53 = icmp eq i32 %51, %52
  br i1 %53, label %54, label %56

54:                                               ; preds = %48
  %55 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  store %struct.TYPE_24__* %55, %struct.TYPE_24__** %4, align 8
  br label %333

56:                                               ; preds = %48
  %57 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %58 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @ZEND_USER_FUNCTION, align 4
  %61 = icmp eq i32 %59, %60
  br i1 %61, label %62, label %79

62:                                               ; preds = %56
  %63 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %64 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %79

68:                                               ; preds = %62
  %69 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %70 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %74 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 8
  %76 = icmp eq i32 %72, %75
  br i1 %76, label %77, label %79

77:                                               ; preds = %68
  %78 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  store %struct.TYPE_24__* %78, %struct.TYPE_24__** %4, align 8
  br label %333

79:                                               ; preds = %68, %62, %56
  br label %80

80:                                               ; preds = %79
  br label %81

81:                                               ; preds = %80, %42
  br label %82

82:                                               ; preds = %81
  br label %332

83:                                               ; preds = %3, %3
  %84 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %85 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* @IS_CONST, align 4
  %88 = icmp eq i32 %86, %87
  br i1 %88, label %89, label %156

89:                                               ; preds = %83
  %90 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %91 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = call i32* @CRT_CONSTANT(i32 %92)
  %94 = call i32 @Z_TYPE_P(i32* %93)
  %95 = load i32, i32* @IS_STRING, align 4
  %96 = icmp eq i32 %94, %95
  br i1 %96, label %97, label %156

97:                                               ; preds = %89
  %98 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %99 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = call i32* @CRT_CONSTANT(i32 %100)
  %102 = getelementptr inbounds i32, i32* %101, i64 1
  store i32* %102, i32** %10, align 8
  %103 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %104 = icmp ne %struct.TYPE_21__* %103, null
  br i1 %104, label %105, label %114

105:                                              ; preds = %97
  %106 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %107 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %106, i32 0, i32 0
  %108 = load i32*, i32** %10, align 8
  %109 = call i32* @Z_STR_P(i32* %108)
  %110 = call %struct.TYPE_24__* @zend_hash_find_ptr(i32* %107, i32* %109)
  store %struct.TYPE_24__* %110, %struct.TYPE_24__** %11, align 8
  %111 = icmp ne %struct.TYPE_24__* %110, null
  br i1 %111, label %112, label %114

112:                                              ; preds = %105
  %113 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  store %struct.TYPE_24__* %113, %struct.TYPE_24__** %4, align 8
  br label %333

114:                                              ; preds = %105, %97
  %115 = load i32, i32* @function_table, align 4
  %116 = call i32* @EG(i32 %115)
  %117 = load i32*, i32** %10, align 8
  %118 = call i32* @Z_STR_P(i32* %117)
  %119 = call %struct.TYPE_24__* @zend_hash_find_ptr(i32* %116, i32* %118)
  store %struct.TYPE_24__* %119, %struct.TYPE_24__** %11, align 8
  %120 = icmp ne %struct.TYPE_24__* %119, null
  br i1 %120, label %121, label %154

121:                                              ; preds = %114
  %122 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %123 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %122, i32 0, i32 2
  %124 = load i32, i32* %123, align 4
  %125 = load i32, i32* @ZEND_INTERNAL_FUNCTION, align 4
  %126 = icmp eq i32 %124, %125
  br i1 %126, label %127, label %129

127:                                              ; preds = %121
  %128 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  store %struct.TYPE_24__* %128, %struct.TYPE_24__** %4, align 8
  br label %333

129:                                              ; preds = %121
  %130 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %131 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %130, i32 0, i32 2
  %132 = load i32, i32* %131, align 4
  %133 = load i32, i32* @ZEND_USER_FUNCTION, align 4
  %134 = icmp eq i32 %132, %133
  br i1 %134, label %135, label %152

135:                                              ; preds = %129
  %136 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %137 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %136, i32 0, i32 1
  %138 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %152

141:                                              ; preds = %135
  %142 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %143 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %142, i32 0, i32 1
  %144 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 8
  %146 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %147 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %146, i32 0, i32 1
  %148 = load i32, i32* %147, align 8
  %149 = icmp eq i32 %145, %148
  br i1 %149, label %150, label %152

150:                                              ; preds = %141
  %151 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  store %struct.TYPE_24__* %151, %struct.TYPE_24__** %4, align 8
  br label %333

152:                                              ; preds = %141, %135, %129
  br label %153

153:                                              ; preds = %152
  br label %154

154:                                              ; preds = %153, %114
  br label %155

155:                                              ; preds = %154
  br label %156

156:                                              ; preds = %155, %89, %83
  br label %332

157:                                              ; preds = %3
  %158 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %159 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %158, i32 0, i32 2
  %160 = load i32, i32* %159, align 4
  %161 = load i32, i32* @IS_CONST, align 4
  %162 = icmp eq i32 %160, %161
  br i1 %162, label %163, label %219

163:                                              ; preds = %157
  %164 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %165 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %164, i32 0, i32 1
  %166 = load i32, i32* %165, align 4
  %167 = call i32* @CRT_CONSTANT(i32 %166)
  %168 = call i32 @Z_TYPE_P(i32* %167)
  %169 = load i32, i32* @IS_STRING, align 4
  %170 = icmp eq i32 %168, %169
  br i1 %170, label %171, label %219

171:                                              ; preds = %163
  %172 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %173 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %174 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %175 = call %struct.TYPE_25__* @get_class_entry_from_op1(%struct.TYPE_21__* %172, %struct.TYPE_22__* %173, %struct.TYPE_23__* %174)
  store %struct.TYPE_25__* %175, %struct.TYPE_25__** %12, align 8
  %176 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %177 = icmp ne %struct.TYPE_25__* %176, null
  br i1 %177, label %178, label %218

178:                                              ; preds = %171
  %179 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %180 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %179, i32 0, i32 1
  %181 = load i32, i32* %180, align 4
  %182 = call i32* @CRT_CONSTANT(i32 %181)
  %183 = getelementptr inbounds i32, i32* %182, i64 1
  %184 = call i32* @Z_STR_P(i32* %183)
  store i32* %184, i32** %13, align 8
  %185 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %186 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %185, i32 0, i32 2
  %187 = load i32*, i32** %13, align 8
  %188 = call %struct.TYPE_24__* @zend_hash_find_ptr(i32* %186, i32* %187)
  store %struct.TYPE_24__* %188, %struct.TYPE_24__** %14, align 8
  %189 = load %struct.TYPE_24__*, %struct.TYPE_24__** %14, align 8
  %190 = icmp ne %struct.TYPE_24__* %189, null
  br i1 %190, label %191, label %217

191:                                              ; preds = %178
  %192 = load %struct.TYPE_24__*, %struct.TYPE_24__** %14, align 8
  %193 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %192, i32 0, i32 0
  %194 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %193, i32 0, i32 0
  %195 = load i32, i32* %194, align 8
  %196 = load i32, i32* @ZEND_ACC_PUBLIC, align 4
  %197 = and i32 %195, %196
  %198 = icmp ne i32 %197, 0
  %199 = zext i1 %198 to i32
  store i32 %199, i32* %15, align 4
  %200 = load %struct.TYPE_24__*, %struct.TYPE_24__** %14, align 8
  %201 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %200, i32 0, i32 0
  %202 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %201, i32 0, i32 1
  %203 = load %struct.TYPE_20__*, %struct.TYPE_20__** %202, align 8
  %204 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %205 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %204, i32 0, i32 0
  %206 = load %struct.TYPE_20__*, %struct.TYPE_20__** %205, align 8
  %207 = icmp eq %struct.TYPE_20__* %203, %206
  %208 = zext i1 %207 to i32
  store i32 %208, i32* %16, align 4
  %209 = load i32, i32* %15, align 4
  %210 = icmp ne i32 %209, 0
  br i1 %210, label %214, label %211

211:                                              ; preds = %191
  %212 = load i32, i32* %16, align 4
  %213 = icmp ne i32 %212, 0
  br i1 %213, label %214, label %216

214:                                              ; preds = %211, %191
  %215 = load %struct.TYPE_24__*, %struct.TYPE_24__** %14, align 8
  store %struct.TYPE_24__* %215, %struct.TYPE_24__** %4, align 8
  br label %333

216:                                              ; preds = %211
  br label %217

217:                                              ; preds = %216, %178
  br label %218

218:                                              ; preds = %217, %171
  br label %219

219:                                              ; preds = %218, %163, %157
  br label %332

220:                                              ; preds = %3
  %221 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %222 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %221, i32 0, i32 3
  %223 = load i32, i32* %222, align 4
  %224 = load i32, i32* @IS_UNUSED, align 4
  %225 = icmp eq i32 %223, %224
  br i1 %225, label %226, label %313

226:                                              ; preds = %220
  %227 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %228 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %227, i32 0, i32 2
  %229 = load i32, i32* %228, align 4
  %230 = load i32, i32* @IS_CONST, align 4
  %231 = icmp eq i32 %229, %230
  br i1 %231, label %232, label %313

232:                                              ; preds = %226
  %233 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %234 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %233, i32 0, i32 1
  %235 = load i32, i32* %234, align 4
  %236 = call i32* @CRT_CONSTANT(i32 %235)
  %237 = call i32 @Z_TYPE_P(i32* %236)
  %238 = load i32, i32* @IS_STRING, align 4
  %239 = icmp eq i32 %237, %238
  br i1 %239, label %240, label %313

240:                                              ; preds = %232
  %241 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %242 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %241, i32 0, i32 0
  %243 = load %struct.TYPE_20__*, %struct.TYPE_20__** %242, align 8
  %244 = icmp ne %struct.TYPE_20__* %243, null
  br i1 %244, label %245, label %313

245:                                              ; preds = %240
  %246 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %247 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %246, i32 0, i32 0
  %248 = load %struct.TYPE_20__*, %struct.TYPE_20__** %247, align 8
  %249 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %248, i32 0, i32 0
  %250 = load i32, i32* %249, align 4
  %251 = load i32, i32* @ZEND_ACC_TRAIT, align 4
  %252 = and i32 %250, %251
  %253 = icmp ne i32 %252, 0
  br i1 %253, label %313, label %254

254:                                              ; preds = %245
  %255 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %256 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %255, i32 0, i32 1
  %257 = load i32, i32* %256, align 4
  %258 = call i32* @CRT_CONSTANT(i32 %257)
  %259 = getelementptr inbounds i32, i32* %258, i64 1
  %260 = call i32* @Z_STR_P(i32* %259)
  store i32* %260, i32** %17, align 8
  %261 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %262 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %261, i32 0, i32 0
  %263 = load %struct.TYPE_20__*, %struct.TYPE_20__** %262, align 8
  %264 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %263, i32 0, i32 1
  %265 = load i32*, i32** %17, align 8
  %266 = call %struct.TYPE_24__* @zend_hash_find_ptr(i32* %264, i32* %265)
  store %struct.TYPE_24__* %266, %struct.TYPE_24__** %18, align 8
  %267 = load %struct.TYPE_24__*, %struct.TYPE_24__** %18, align 8
  %268 = icmp ne %struct.TYPE_24__* %267, null
  br i1 %268, label %269, label %312

269:                                              ; preds = %254
  %270 = load %struct.TYPE_24__*, %struct.TYPE_24__** %18, align 8
  %271 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %270, i32 0, i32 0
  %272 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %271, i32 0, i32 0
  %273 = load i32, i32* %272, align 8
  %274 = load i32, i32* @ZEND_ACC_PRIVATE, align 4
  %275 = and i32 %273, %274
  %276 = icmp ne i32 %275, 0
  %277 = zext i1 %276 to i32
  store i32 %277, i32* %19, align 4
  %278 = load %struct.TYPE_24__*, %struct.TYPE_24__** %18, align 8
  %279 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %278, i32 0, i32 0
  %280 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %279, i32 0, i32 0
  %281 = load i32, i32* %280, align 8
  %282 = load i32, i32* @ZEND_ACC_FINAL, align 4
  %283 = and i32 %281, %282
  %284 = icmp ne i32 %283, 0
  %285 = zext i1 %284 to i32
  store i32 %285, i32* %20, align 4
  %286 = load %struct.TYPE_24__*, %struct.TYPE_24__** %18, align 8
  %287 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %286, i32 0, i32 0
  %288 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %287, i32 0, i32 1
  %289 = load %struct.TYPE_20__*, %struct.TYPE_20__** %288, align 8
  %290 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %291 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %290, i32 0, i32 0
  %292 = load %struct.TYPE_20__*, %struct.TYPE_20__** %291, align 8
  %293 = icmp eq %struct.TYPE_20__* %289, %292
  %294 = zext i1 %293 to i32
  store i32 %294, i32* %21, align 4
  %295 = load i32, i32* %19, align 4
  %296 = icmp ne i32 %295, 0
  br i1 %296, label %297, label %300

297:                                              ; preds = %269
  %298 = load i32, i32* %21, align 4
  %299 = icmp ne i32 %298, 0
  br i1 %299, label %309, label %300

300:                                              ; preds = %297, %269
  %301 = load i32, i32* %20, align 4
  %302 = icmp ne i32 %301, 0
  br i1 %302, label %303, label %311

303:                                              ; preds = %300
  %304 = load i32, i32* %19, align 4
  %305 = icmp ne i32 %304, 0
  br i1 %305, label %306, label %309

306:                                              ; preds = %303
  %307 = load i32, i32* %21, align 4
  %308 = icmp ne i32 %307, 0
  br i1 %308, label %309, label %311

309:                                              ; preds = %306, %303, %297
  %310 = load %struct.TYPE_24__*, %struct.TYPE_24__** %18, align 8
  store %struct.TYPE_24__* %310, %struct.TYPE_24__** %4, align 8
  br label %333

311:                                              ; preds = %306, %300
  br label %312

312:                                              ; preds = %311, %254
  br label %313

313:                                              ; preds = %312, %245, %240, %232, %226, %220
  br label %332

314:                                              ; preds = %3
  %315 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %316 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %317 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %318 = call %struct.TYPE_25__* @get_class_entry_from_op1(%struct.TYPE_21__* %315, %struct.TYPE_22__* %316, %struct.TYPE_23__* %317)
  store %struct.TYPE_25__* %318, %struct.TYPE_25__** %22, align 8
  %319 = load %struct.TYPE_25__*, %struct.TYPE_25__** %22, align 8
  %320 = icmp ne %struct.TYPE_25__* %319, null
  br i1 %320, label %321, label %331

321:                                              ; preds = %314
  %322 = load %struct.TYPE_25__*, %struct.TYPE_25__** %22, align 8
  %323 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %322, i32 0, i32 1
  %324 = load i32, i32* %323, align 8
  %325 = load i32, i32* @ZEND_USER_CLASS, align 4
  %326 = icmp eq i32 %324, %325
  br i1 %326, label %327, label %331

327:                                              ; preds = %321
  %328 = load %struct.TYPE_25__*, %struct.TYPE_25__** %22, align 8
  %329 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %328, i32 0, i32 0
  %330 = load %struct.TYPE_24__*, %struct.TYPE_24__** %329, align 8
  store %struct.TYPE_24__* %330, %struct.TYPE_24__** %4, align 8
  br label %333

331:                                              ; preds = %321, %314
  br label %332

332:                                              ; preds = %3, %331, %313, %219, %156, %82
  store %struct.TYPE_24__* null, %struct.TYPE_24__** %4, align 8
  br label %333

333:                                              ; preds = %332, %327, %309, %214, %150, %127, %112, %77, %54, %40
  %334 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  ret %struct.TYPE_24__* %334
}

declare dso_local i32* @Z_STR_P(i32*) #1

declare dso_local i32* @CRT_CONSTANT(i32) #1

declare dso_local %struct.TYPE_24__* @zend_hash_find_ptr(i32*, i32*) #1

declare dso_local i32* @EG(i32) #1

declare dso_local i32 @Z_TYPE_P(i32*) #1

declare dso_local %struct.TYPE_25__* @get_class_entry_from_op1(%struct.TYPE_21__*, %struct.TYPE_22__*, %struct.TYPE_23__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
