; ModuleID = '/home/carl/AnghaBench/php-src/ext/opcache/Optimizer/extr_zend_optimizer.c_zend_optimizer_replace_by_const.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/opcache/Optimizer/extr_zend_optimizer.c_zend_optimizer_replace_by_const.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32, i32, i32, %struct.TYPE_17__* }
%struct.TYPE_17__ = type { i64, i32, i64, %struct.TYPE_15__, %struct.TYPE_14__, i32 }
%struct.TYPE_15__ = type { i64 }
%struct.TYPE_14__ = type { i64, i8* }
%struct.TYPE_18__ = type { i32 }

@ZEND_SEND_VAL = common dso_local global i8* null, align 8
@ZEND_SEND_VAL_EX = common dso_local global i8* null, align 8
@IS_STRING = common dso_local global i32 0, align 4
@IS_CONST = common dso_local global i8* null, align 8
@ZEND_FREE = common dso_local global i32 0, align 4
@ZEND_IS_EQUAL = common dso_local global i32 0, align 4
@ZEND_FREE_SWITCH = common dso_local global i32 0, align 4
@ZEND_FREE_ON_RETURN = common dso_local global i32 0, align 4
@ZEND_ACC_RETURN_REFERENCE = common dso_local global i32 0, align 4
@ZEND_RETURN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zend_optimizer_replace_by_const(%struct.TYPE_16__* %0, %struct.TYPE_17__* %1, i64 %2, i64 %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_16__*, align 8
  %8 = alloca %struct.TYPE_17__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_17__*, align 8
  %13 = alloca %struct.TYPE_17__*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_17__*, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.TYPE_18__*, align 8
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %7, align 8
  store %struct.TYPE_17__* %1, %struct.TYPE_17__** %8, align 8
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store i32* %4, i32** %11, align 8
  %18 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %19 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %18, i32 0, i32 3
  %20 = load %struct.TYPE_17__*, %struct.TYPE_17__** %19, align 8
  %21 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %22 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %20, i64 %24
  store %struct.TYPE_17__* %25, %struct.TYPE_17__** %12, align 8
  br label %26

26:                                               ; preds = %345, %5
  %27 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %28 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %29 = icmp ult %struct.TYPE_17__* %27, %28
  br i1 %29, label %30, label %348

30:                                               ; preds = %26
  %31 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %32 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* %9, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %327

36:                                               ; preds = %30
  %37 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %38 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %37, i32 0, i32 4
  %39 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* %10, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %327

43:                                               ; preds = %36
  %44 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %45 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  switch i32 %46, label %321 [
    i32 141, label %47
    i32 143, label %47
    i32 144, label %47
    i32 142, label %47
    i32 139, label %47
    i32 146, label %47
    i32 131, label %47
    i32 138, label %47
    i32 135, label %48
    i32 134, label %55
    i32 137, label %55
    i32 133, label %62
    i32 132, label %63
    i32 136, label %68
    i32 140, label %73
    i32 130, label %165
    i32 129, label %165
    i32 145, label %165
    i32 128, label %271
  ]

47:                                               ; preds = %43, %43, %43, %43, %43, %43, %43, %43
  store i32 0, i32* %6, align 4
  br label %349

48:                                               ; preds = %43
  %49 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %50 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %49, i32 0, i32 5
  store i32 0, i32* %50, align 8
  %51 = load i8*, i8** @ZEND_SEND_VAL, align 8
  %52 = ptrtoint i8* %51 to i32
  %53 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %54 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %53, i32 0, i32 1
  store i32 %52, i32* %54, align 8
  br label %322

55:                                               ; preds = %43, %43
  %56 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %57 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %56, i32 0, i32 5
  store i32 0, i32* %57, align 8
  %58 = load i8*, i8** @ZEND_SEND_VAL_EX, align 8
  %59 = ptrtoint i8* %58 to i32
  %60 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %61 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %60, i32 0, i32 1
  store i32 %59, i32* %61, align 8
  br label %322

62:                                               ; preds = %43
  store i32 0, i32* %6, align 4
  br label %349

63:                                               ; preds = %43
  %64 = load i8*, i8** @ZEND_SEND_VAL, align 8
  %65 = ptrtoint i8* %64 to i32
  %66 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %67 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %66, i32 0, i32 1
  store i32 %65, i32* %67, align 8
  br label %322

68:                                               ; preds = %43
  %69 = load i8*, i8** @ZEND_SEND_VAL_EX, align 8
  %70 = ptrtoint i8* %69 to i32
  %71 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %72 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %71, i32 0, i32 1
  store i32 %70, i32* %72, align 8
  br label %322

73:                                               ; preds = %43
  %74 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  store %struct.TYPE_17__* %74, %struct.TYPE_17__** %13, align 8
  br label %75

75:                                               ; preds = %136, %73
  %76 = load %struct.TYPE_17__*, %struct.TYPE_17__** %13, align 8
  %77 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 8
  %79 = icmp eq i32 %78, 140
  br i1 %79, label %80, label %114

80:                                               ; preds = %75
  %81 = load %struct.TYPE_17__*, %struct.TYPE_17__** %13, align 8
  %82 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = load i64, i64* %9, align 8
  %85 = icmp eq i64 %83, %84
  br i1 %85, label %86, label %114

86:                                               ; preds = %80
  %87 = load %struct.TYPE_17__*, %struct.TYPE_17__** %13, align 8
  %88 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %87, i32 0, i32 4
  %89 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = load i64, i64* %10, align 8
  %92 = icmp eq i64 %90, %91
  br i1 %92, label %93, label %114

93:                                               ; preds = %86
  %94 = load i32*, i32** %11, align 8
  %95 = call i32 @ZVAL_COPY(i32* %14, i32* %94)
  %96 = load i32, i32* %14, align 4
  %97 = call i32 @Z_TYPE(i32 %96)
  %98 = load i32, i32* @IS_STRING, align 4
  %99 = icmp eq i32 %97, %98
  br i1 %99, label %100, label %104

100:                                              ; preds = %93
  %101 = load i32, i32* %14, align 4
  %102 = call i32 @Z_STR(i32 %101)
  %103 = call i32 @zend_string_hash_val(i32 %102)
  br label %104

104:                                              ; preds = %100, %93
  %105 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %106 = call i8* @zend_optimizer_add_literal(%struct.TYPE_16__* %105, i32* %14)
  %107 = load %struct.TYPE_17__*, %struct.TYPE_17__** %13, align 8
  %108 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %107, i32 0, i32 4
  %109 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %108, i32 0, i32 1
  store i8* %106, i8** %109, align 8
  %110 = load i8*, i8** @IS_CONST, align 8
  %111 = ptrtoint i8* %110 to i64
  %112 = load %struct.TYPE_17__*, %struct.TYPE_17__** %13, align 8
  %113 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %112, i32 0, i32 0
  store i64 %111, i64* %113, align 8
  br label %114

114:                                              ; preds = %104, %86, %80, %75
  %115 = load %struct.TYPE_17__*, %struct.TYPE_17__** %13, align 8
  %116 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %115, i32 1
  store %struct.TYPE_17__* %116, %struct.TYPE_17__** %13, align 8
  br label %117

117:                                              ; preds = %114
  %118 = load %struct.TYPE_17__*, %struct.TYPE_17__** %13, align 8
  %119 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 8
  %121 = load i32, i32* @ZEND_FREE, align 4
  %122 = icmp ne i32 %120, %121
  br i1 %122, label %136, label %123

123:                                              ; preds = %117
  %124 = load %struct.TYPE_17__*, %struct.TYPE_17__** %13, align 8
  %125 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %124, i32 0, i32 0
  %126 = load i64, i64* %125, align 8
  %127 = load i64, i64* %9, align 8
  %128 = icmp ne i64 %126, %127
  br i1 %128, label %136, label %129

129:                                              ; preds = %123
  %130 = load %struct.TYPE_17__*, %struct.TYPE_17__** %13, align 8
  %131 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %130, i32 0, i32 4
  %132 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %131, i32 0, i32 0
  %133 = load i64, i64* %132, align 8
  %134 = load i64, i64* %10, align 8
  %135 = icmp ne i64 %133, %134
  br label %136

136:                                              ; preds = %129, %123, %117
  %137 = phi i1 [ true, %123 ], [ true, %117 ], [ %135, %129 ]
  br i1 %137, label %75, label %138

138:                                              ; preds = %136
  %139 = load %struct.TYPE_17__*, %struct.TYPE_17__** %13, align 8
  %140 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 8
  %142 = load i32, i32* @ZEND_FREE, align 4
  %143 = icmp eq i32 %141, %142
  br i1 %143, label %144, label %157

144:                                              ; preds = %138
  %145 = load %struct.TYPE_17__*, %struct.TYPE_17__** %13, align 8
  %146 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %145, i32 0, i32 0
  %147 = load i64, i64* %146, align 8
  %148 = load i64, i64* %9, align 8
  %149 = icmp eq i64 %147, %148
  br i1 %149, label %150, label %157

150:                                              ; preds = %144
  %151 = load %struct.TYPE_17__*, %struct.TYPE_17__** %13, align 8
  %152 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %151, i32 0, i32 4
  %153 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %152, i32 0, i32 0
  %154 = load i64, i64* %153, align 8
  %155 = load i64, i64* %10, align 8
  %156 = icmp eq i64 %154, %155
  br label %157

157:                                              ; preds = %150, %144, %138
  %158 = phi i1 [ false, %144 ], [ false, %138 ], [ %156, %150 ]
  %159 = zext i1 %158 to i32
  %160 = call i32 @ZEND_ASSERT(i32 %159)
  %161 = load %struct.TYPE_17__*, %struct.TYPE_17__** %13, align 8
  %162 = call i32 @MAKE_NOP(%struct.TYPE_17__* %161)
  %163 = load i32*, i32** %11, align 8
  %164 = call i32 @zval_ptr_dtor_nogc(i32* %163)
  store i32 1, i32* %6, align 4
  br label %349

165:                                              ; preds = %43, %43, %43
  %166 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %167 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %166, i32 0, i32 3
  %168 = load %struct.TYPE_17__*, %struct.TYPE_17__** %167, align 8
  %169 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %170 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 8
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %168, i64 %172
  store %struct.TYPE_17__* %173, %struct.TYPE_17__** %15, align 8
  br label %174

174:                                              ; preds = %265, %165
  %175 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %176 = load %struct.TYPE_17__*, %struct.TYPE_17__** %15, align 8
  %177 = icmp ult %struct.TYPE_17__* %175, %176
  br i1 %177, label %178, label %268

178:                                              ; preds = %174
  %179 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %180 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %179, i32 0, i32 0
  %181 = load i64, i64* %180, align 8
  %182 = load i64, i64* %9, align 8
  %183 = icmp eq i64 %181, %182
  br i1 %183, label %184, label %265

184:                                              ; preds = %178
  %185 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %186 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %185, i32 0, i32 4
  %187 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %186, i32 0, i32 0
  %188 = load i64, i64* %187, align 8
  %189 = load i64, i64* %10, align 8
  %190 = icmp eq i64 %188, %189
  br i1 %190, label %191, label %265

191:                                              ; preds = %184
  %192 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %193 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %192, i32 0, i32 1
  %194 = load i32, i32* %193, align 8
  %195 = icmp eq i32 %194, 145
  br i1 %195, label %206, label %196

196:                                              ; preds = %191
  %197 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %198 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %197, i32 0, i32 1
  %199 = load i32, i32* %198, align 8
  %200 = icmp eq i32 %199, 130
  br i1 %200, label %206, label %201

201:                                              ; preds = %196
  %202 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %203 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %202, i32 0, i32 1
  %204 = load i32, i32* %203, align 8
  %205 = icmp eq i32 %204, 129
  br i1 %205, label %206, label %236

206:                                              ; preds = %201, %196, %191
  %207 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %208 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %207, i32 0, i32 1
  %209 = load i32, i32* %208, align 8
  %210 = icmp eq i32 %209, 145
  br i1 %210, label %211, label %215

211:                                              ; preds = %206
  %212 = load i32, i32* @ZEND_IS_EQUAL, align 4
  %213 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %214 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %213, i32 0, i32 1
  store i32 %212, i32* %214, align 8
  br label %215

215:                                              ; preds = %211, %206
  %216 = load i32*, i32** %11, align 8
  %217 = call i32 @ZVAL_COPY(i32* %16, i32* %216)
  %218 = load i32, i32* %16, align 4
  %219 = call i32 @Z_TYPE(i32 %218)
  %220 = load i32, i32* @IS_STRING, align 4
  %221 = icmp eq i32 %219, %220
  br i1 %221, label %222, label %226

222:                                              ; preds = %215
  %223 = load i32, i32* %16, align 4
  %224 = call i32 @Z_STR(i32 %223)
  %225 = call i32 @zend_string_hash_val(i32 %224)
  br label %226

226:                                              ; preds = %222, %215
  %227 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %228 = call i8* @zend_optimizer_add_literal(%struct.TYPE_16__* %227, i32* %16)
  %229 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %230 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %229, i32 0, i32 4
  %231 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %230, i32 0, i32 1
  store i8* %228, i8** %231, align 8
  %232 = load i8*, i8** @IS_CONST, align 8
  %233 = ptrtoint i8* %232 to i64
  %234 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %235 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %234, i32 0, i32 0
  store i64 %233, i64* %235, align 8
  br label %264

236:                                              ; preds = %201
  %237 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %238 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %237, i32 0, i32 1
  %239 = load i32, i32* %238, align 8
  %240 = load i32, i32* @ZEND_FREE, align 4
  %241 = icmp eq i32 %239, %240
  br i1 %241, label %242, label %261

242:                                              ; preds = %236
  %243 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %244 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %243, i32 0, i32 5
  %245 = load i32, i32* %244, align 8
  %246 = load i32, i32* @ZEND_FREE_SWITCH, align 4
  %247 = icmp eq i32 %245, %246
  br i1 %247, label %248, label %251

248:                                              ; preds = %242
  %249 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %250 = call i32 @MAKE_NOP(%struct.TYPE_17__* %249)
  br label %268

251:                                              ; preds = %242
  %252 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %253 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %252, i32 0, i32 5
  %254 = load i32, i32* %253, align 8
  %255 = load i32, i32* @ZEND_FREE_ON_RETURN, align 4
  %256 = icmp eq i32 %254, %255
  %257 = zext i1 %256 to i32
  %258 = call i32 @ZEND_ASSERT(i32 %257)
  %259 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %260 = call i32 @MAKE_NOP(%struct.TYPE_17__* %259)
  br label %263

261:                                              ; preds = %236
  %262 = call i32 @ZEND_ASSERT(i32 0)
  br label %263

263:                                              ; preds = %261, %251
  br label %264

264:                                              ; preds = %263, %226
  br label %265

265:                                              ; preds = %264, %184, %178
  %266 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %267 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %266, i32 1
  store %struct.TYPE_17__* %267, %struct.TYPE_17__** %8, align 8
  br label %174

268:                                              ; preds = %248, %174
  %269 = load i32*, i32** %11, align 8
  %270 = call i32 @zval_ptr_dtor_nogc(i32* %269)
  store i32 1, i32* %6, align 4
  br label %349

271:                                              ; preds = %43
  %272 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %273 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %272, i32 0, i32 2
  %274 = load i32, i32* %273, align 8
  %275 = sub nsw i32 %274, 1
  %276 = sext i32 %275 to i64
  %277 = inttoptr i64 %276 to %struct.TYPE_18__*
  store %struct.TYPE_18__* %277, %struct.TYPE_18__** %17, align 8
  %278 = load %struct.TYPE_18__*, %struct.TYPE_18__** %17, align 8
  %279 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %278, i32 0, i32 0
  %280 = load i32, i32* %279, align 4
  %281 = load i32*, i32** %11, align 8
  %282 = call i32 @Z_TYPE_P(i32* %281)
  %283 = call i32 @ZEND_TYPE_CONTAINS_CODE(i32 %280, i32 %282)
  %284 = icmp ne i32 %283, 0
  br i1 %284, label %285, label %292

285:                                              ; preds = %271
  %286 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %287 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %286, i32 0, i32 1
  %288 = load i32, i32* %287, align 4
  %289 = load i32, i32* @ZEND_ACC_RETURN_REFERENCE, align 4
  %290 = and i32 %288, %289
  %291 = icmp ne i32 %290, 0
  br i1 %291, label %292, label %293

292:                                              ; preds = %285, %271
  store i32 0, i32* %6, align 4
  br label %349

293:                                              ; preds = %285
  %294 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %295 = call i32 @MAKE_NOP(%struct.TYPE_17__* %294)
  br label %296

296:                                              ; preds = %310, %293
  %297 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %298 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %297, i32 1
  store %struct.TYPE_17__* %298, %struct.TYPE_17__** %8, align 8
  br label %299

299:                                              ; preds = %296
  %300 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %301 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %300, i32 0, i32 1
  %302 = load i32, i32* %301, align 8
  %303 = load i32, i32* @ZEND_RETURN, align 4
  %304 = icmp ne i32 %302, %303
  br i1 %304, label %305, label %310

305:                                              ; preds = %299
  %306 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %307 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %306, i32 0, i32 1
  %308 = load i32, i32* %307, align 8
  %309 = icmp ne i32 %308, 138
  br label %310

310:                                              ; preds = %305, %299
  %311 = phi i1 [ false, %299 ], [ %309, %305 ]
  br i1 %311, label %296, label %312

312:                                              ; preds = %310
  %313 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %314 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %313, i32 0, i32 4
  %315 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %314, i32 0, i32 0
  %316 = load i64, i64* %315, align 8
  %317 = load i64, i64* %10, align 8
  %318 = icmp eq i64 %316, %317
  %319 = zext i1 %318 to i32
  %320 = call i32 @ZEND_ASSERT(i32 %319)
  br label %322

321:                                              ; preds = %43
  br label %322

322:                                              ; preds = %321, %312, %68, %63, %55, %48
  %323 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %324 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %325 = load i32*, i32** %11, align 8
  %326 = call i32 @zend_optimizer_update_op1_const(%struct.TYPE_16__* %323, %struct.TYPE_17__* %324, i32* %325)
  store i32 %326, i32* %6, align 4
  br label %349

327:                                              ; preds = %36, %30
  %328 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %329 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %328, i32 0, i32 2
  %330 = load i64, i64* %329, align 8
  %331 = load i64, i64* %9, align 8
  %332 = icmp eq i64 %330, %331
  br i1 %332, label %333, label %345

333:                                              ; preds = %327
  %334 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %335 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %334, i32 0, i32 3
  %336 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %335, i32 0, i32 0
  %337 = load i64, i64* %336, align 8
  %338 = load i64, i64* %10, align 8
  %339 = icmp eq i64 %337, %338
  br i1 %339, label %340, label %345

340:                                              ; preds = %333
  %341 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %342 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %343 = load i32*, i32** %11, align 8
  %344 = call i32 @zend_optimizer_update_op2_const(%struct.TYPE_16__* %341, %struct.TYPE_17__* %342, i32* %343)
  store i32 %344, i32* %6, align 4
  br label %349

345:                                              ; preds = %333, %327
  %346 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %347 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %346, i32 1
  store %struct.TYPE_17__* %347, %struct.TYPE_17__** %8, align 8
  br label %26

348:                                              ; preds = %26
  store i32 1, i32* %6, align 4
  br label %349

349:                                              ; preds = %348, %340, %322, %292, %268, %157, %62, %47
  %350 = load i32, i32* %6, align 4
  ret i32 %350
}

declare dso_local i32 @ZVAL_COPY(i32*, i32*) #1

declare dso_local i32 @Z_TYPE(i32) #1

declare dso_local i32 @zend_string_hash_val(i32) #1

declare dso_local i32 @Z_STR(i32) #1

declare dso_local i8* @zend_optimizer_add_literal(%struct.TYPE_16__*, i32*) #1

declare dso_local i32 @ZEND_ASSERT(i32) #1

declare dso_local i32 @MAKE_NOP(%struct.TYPE_17__*) #1

declare dso_local i32 @zval_ptr_dtor_nogc(i32*) #1

declare dso_local i32 @ZEND_TYPE_CONTAINS_CODE(i32, i32) #1

declare dso_local i32 @Z_TYPE_P(i32*) #1

declare dso_local i32 @zend_optimizer_update_op1_const(%struct.TYPE_16__*, %struct.TYPE_17__*, i32*) #1

declare dso_local i32 @zend_optimizer_update_op2_const(%struct.TYPE_16__*, %struct.TYPE_17__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
