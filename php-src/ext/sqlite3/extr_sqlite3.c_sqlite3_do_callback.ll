; ModuleID = '/home/carl/AnghaBench/php-src/ext/sqlite3/extr_sqlite3.c_sqlite3_do_callback.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/sqlite3/extr_sqlite3.c_sqlite3_do_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.php_sqlite3_fci = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32*, i32*, i32*, i32 }
%struct.TYPE_3__ = type { i32, i32 }

@FAILURE = common dso_local global i32 0, align 4
@E_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"An error occurred while invoking the callback\00", align 1
@SQLITE_TRANSIENT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"failed to invoke callback\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.php_sqlite3_fci*, i32*, i32, i32**, i32*, i32)* @sqlite3_do_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sqlite3_do_callback(%struct.php_sqlite3_fci* %0, i32* %1, i32 %2, i32** %3, i32* %4, i32 %5) #0 {
  %7 = alloca %struct.php_sqlite3_fci*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32**, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.TYPE_3__*, align 8
  %19 = alloca i32*, align 8
  store %struct.php_sqlite3_fci* %0, %struct.php_sqlite3_fci** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32** %3, i32*** %10, align 8
  store i32* %4, i32** %11, align 8
  store i32 %5, i32* %12, align 4
  store i32* null, i32** %13, align 8
  store %struct.TYPE_3__* null, %struct.TYPE_3__** %18, align 8
  %20 = load i32, i32* %12, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %6
  store i32 2, i32* %12, align 4
  br label %23

23:                                               ; preds = %22, %6
  %24 = load i32, i32* %9, align 4
  %25 = load i32, i32* %12, align 4
  %26 = add nsw i32 %24, %25
  store i32 %26, i32* %17, align 4
  %27 = load %struct.php_sqlite3_fci*, %struct.php_sqlite3_fci** %7, align 8
  %28 = getelementptr inbounds %struct.php_sqlite3_fci, %struct.php_sqlite3_fci* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  store i32 40, i32* %29, align 8
  %30 = load %struct.php_sqlite3_fci*, %struct.php_sqlite3_fci** %7, align 8
  %31 = getelementptr inbounds %struct.php_sqlite3_fci, %struct.php_sqlite3_fci* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 5
  %33 = load i32*, i32** %8, align 8
  %34 = call i32 @ZVAL_COPY_VALUE(i32* %32, i32* %33)
  %35 = load %struct.php_sqlite3_fci*, %struct.php_sqlite3_fci** %7, align 8
  %36 = getelementptr inbounds %struct.php_sqlite3_fci, %struct.php_sqlite3_fci* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 4
  store i32* null, i32** %37, align 8
  %38 = load %struct.php_sqlite3_fci*, %struct.php_sqlite3_fci** %7, align 8
  %39 = getelementptr inbounds %struct.php_sqlite3_fci, %struct.php_sqlite3_fci* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 3
  store i32* %14, i32** %40, align 8
  %41 = load i32, i32* %17, align 4
  %42 = load %struct.php_sqlite3_fci*, %struct.php_sqlite3_fci** %7, align 8
  %43 = getelementptr inbounds %struct.php_sqlite3_fci, %struct.php_sqlite3_fci* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 1
  store i32 %41, i32* %44, align 4
  %45 = load i32, i32* %17, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %23
  %48 = load i32, i32* %17, align 4
  %49 = call i64 @safe_emalloc(i32 %48, i32 4, i32 0)
  %50 = inttoptr i64 %49 to i32*
  store i32* %50, i32** %13, align 8
  br label %51

51:                                               ; preds = %47, %23
  %52 = load i32, i32* %12, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %79

54:                                               ; preds = %51
  %55 = load i32*, i32** %11, align 8
  %56 = call i64 @sqlite3_aggregate_context(i32* %55, i32 8)
  %57 = inttoptr i64 %56 to %struct.TYPE_3__*
  store %struct.TYPE_3__* %57, %struct.TYPE_3__** %18, align 8
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i64 @Z_ISUNDEF(i32 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %67

63:                                               ; preds = %54
  %64 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 0
  %66 = call i32 @ZVAL_NULL(i32* %65)
  br label %67

67:                                               ; preds = %63, %54
  %68 = load i32*, i32** %13, align 8
  %69 = getelementptr inbounds i32, i32* %68, i64 0
  %70 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 0
  %72 = call i32 @ZVAL_COPY(i32* %69, i32* %71)
  %73 = load i32*, i32** %13, align 8
  %74 = getelementptr inbounds i32, i32* %73, i64 1
  %75 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @ZVAL_LONG(i32* %74, i32 %77)
  br label %79

79:                                               ; preds = %67, %51
  store i32 0, i32* %15, align 4
  br label %80

80:                                               ; preds = %150, %79
  %81 = load i32, i32* %15, align 4
  %82 = load i32, i32* %9, align 4
  %83 = icmp slt i32 %81, %82
  br i1 %83, label %84, label %153

84:                                               ; preds = %80
  %85 = load i32**, i32*** %10, align 8
  %86 = load i32, i32* %15, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i32*, i32** %85, i64 %87
  %89 = load i32*, i32** %88, align 8
  %90 = call i32 @sqlite3_value_type(i32* %89)
  switch i32 %90, label %128 [
    i32 129, label %91
    i32 130, label %105
    i32 128, label %119
    i32 131, label %127
    i32 132, label %127
  ]

91:                                               ; preds = %84
  %92 = load i32*, i32** %13, align 8
  %93 = load i32, i32* %15, align 4
  %94 = load i32, i32* %12, align 4
  %95 = add nsw i32 %93, %94
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i32, i32* %92, i64 %96
  %98 = load i32**, i32*** %10, align 8
  %99 = load i32, i32* %15, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i32*, i32** %98, i64 %100
  %102 = load i32*, i32** %101, align 8
  %103 = call i32 @sqlite3_value_int(i32* %102)
  %104 = call i32 @ZVAL_LONG(i32* %97, i32 %103)
  br label %149

105:                                              ; preds = %84
  %106 = load i32*, i32** %13, align 8
  %107 = load i32, i32* %15, align 4
  %108 = load i32, i32* %12, align 4
  %109 = add nsw i32 %107, %108
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i32, i32* %106, i64 %110
  %112 = load i32**, i32*** %10, align 8
  %113 = load i32, i32* %15, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i32*, i32** %112, i64 %114
  %116 = load i32*, i32** %115, align 8
  %117 = call i32 @sqlite3_value_double(i32* %116)
  %118 = call i32 @ZVAL_DOUBLE(i32* %111, i32 %117)
  br label %149

119:                                              ; preds = %84
  %120 = load i32*, i32** %13, align 8
  %121 = load i32, i32* %15, align 4
  %122 = load i32, i32* %12, align 4
  %123 = add nsw i32 %121, %122
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds i32, i32* %120, i64 %124
  %126 = call i32 @ZVAL_NULL(i32* %125)
  br label %149

127:                                              ; preds = %84, %84
  br label %128

128:                                              ; preds = %84, %127
  %129 = load i32*, i32** %13, align 8
  %130 = load i32, i32* %15, align 4
  %131 = load i32, i32* %12, align 4
  %132 = add nsw i32 %130, %131
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds i32, i32* %129, i64 %133
  %135 = load i32**, i32*** %10, align 8
  %136 = load i32, i32* %15, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds i32*, i32** %135, i64 %137
  %139 = load i32*, i32** %138, align 8
  %140 = call i64 @sqlite3_value_text(i32* %139)
  %141 = inttoptr i64 %140 to i8*
  %142 = load i32**, i32*** %10, align 8
  %143 = load i32, i32* %15, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds i32*, i32** %142, i64 %144
  %146 = load i32*, i32** %145, align 8
  %147 = call i32 @sqlite3_value_bytes(i32* %146)
  %148 = call i32 @ZVAL_STRINGL(i32* %134, i8* %141, i32 %147)
  br label %149

149:                                              ; preds = %128, %119, %105, %91
  br label %150

150:                                              ; preds = %149
  %151 = load i32, i32* %15, align 4
  %152 = add nsw i32 %151, 1
  store i32 %152, i32* %15, align 4
  br label %80

153:                                              ; preds = %80
  %154 = load i32*, i32** %13, align 8
  %155 = load %struct.php_sqlite3_fci*, %struct.php_sqlite3_fci** %7, align 8
  %156 = getelementptr inbounds %struct.php_sqlite3_fci, %struct.php_sqlite3_fci* %155, i32 0, i32 1
  %157 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %156, i32 0, i32 2
  store i32* %154, i32** %157, align 8
  %158 = load %struct.php_sqlite3_fci*, %struct.php_sqlite3_fci** %7, align 8
  %159 = getelementptr inbounds %struct.php_sqlite3_fci, %struct.php_sqlite3_fci* %158, i32 0, i32 1
  %160 = load %struct.php_sqlite3_fci*, %struct.php_sqlite3_fci** %7, align 8
  %161 = getelementptr inbounds %struct.php_sqlite3_fci, %struct.php_sqlite3_fci* %160, i32 0, i32 0
  %162 = call i32 @zend_call_function(%struct.TYPE_4__* %159, i32* %161)
  store i32 %162, i32* %16, align 4
  %163 = load i32, i32* @FAILURE, align 4
  %164 = icmp eq i32 %162, %163
  br i1 %164, label %165, label %168

165:                                              ; preds = %153
  %166 = load i32, i32* @E_WARNING, align 4
  %167 = call i32 @php_error_docref(i32* null, i32 %166, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0))
  br label %168

168:                                              ; preds = %165, %153
  %169 = load i32, i32* %12, align 4
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %171, label %175

171:                                              ; preds = %168
  %172 = load i32*, i32** %13, align 8
  %173 = getelementptr inbounds i32, i32* %172, i64 0
  %174 = call i32 @zval_ptr_dtor(i32* %173)
  br label %175

175:                                              ; preds = %171, %168
  %176 = load i32, i32* %17, align 4
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %178, label %205

178:                                              ; preds = %175
  %179 = load i32, i32* %12, align 4
  store i32 %179, i32* %15, align 4
  br label %180

180:                                              ; preds = %192, %178
  %181 = load i32, i32* %15, align 4
  %182 = load i32, i32* %9, align 4
  %183 = load i32, i32* %12, align 4
  %184 = add nsw i32 %182, %183
  %185 = icmp slt i32 %181, %184
  br i1 %185, label %186, label %195

186:                                              ; preds = %180
  %187 = load i32*, i32** %13, align 8
  %188 = load i32, i32* %15, align 4
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds i32, i32* %187, i64 %189
  %191 = call i32 @zval_ptr_dtor(i32* %190)
  br label %192

192:                                              ; preds = %186
  %193 = load i32, i32* %15, align 4
  %194 = add nsw i32 %193, 1
  store i32 %194, i32* %15, align 4
  br label %180

195:                                              ; preds = %180
  %196 = load i32, i32* %12, align 4
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %198, label %202

198:                                              ; preds = %195
  %199 = load i32*, i32** %13, align 8
  %200 = getelementptr inbounds i32, i32* %199, i64 1
  %201 = call i32 @zval_ptr_dtor(i32* %200)
  br label %202

202:                                              ; preds = %198, %195
  %203 = load i32*, i32** %13, align 8
  %204 = call i32 @efree(i32* %203)
  br label %205

205:                                              ; preds = %202, %175
  %206 = load i32, i32* %12, align 4
  %207 = icmp ne i32 %206, 0
  br i1 %207, label %208, label %211

208:                                              ; preds = %205
  %209 = load i32**, i32*** %10, align 8
  %210 = icmp ne i32** %209, null
  br i1 %210, label %269, label %211

211:                                              ; preds = %208, %205
  %212 = load i32, i32* %14, align 4
  %213 = call i64 @Z_ISUNDEF(i32 %212)
  %214 = icmp ne i64 %213, 0
  br i1 %214, label %252, label %215

215:                                              ; preds = %211
  %216 = load i32, i32* %14, align 4
  %217 = call i32 @Z_TYPE(i32 %216)
  switch i32 %217, label %231 [
    i32 134, label %218
    i32 133, label %223
    i32 135, label %226
  ]

218:                                              ; preds = %215
  %219 = load i32*, i32** %11, align 8
  %220 = load i32, i32* %14, align 4
  %221 = call i32 @Z_LVAL(i32 %220)
  %222 = call i32 @sqlite3_result_int(i32* %219, i32 %221)
  br label %251

223:                                              ; preds = %215
  %224 = load i32*, i32** %11, align 8
  %225 = call i32 @sqlite3_result_null(i32* %224)
  br label %251

226:                                              ; preds = %215
  %227 = load i32*, i32** %11, align 8
  %228 = load i32, i32* %14, align 4
  %229 = call i32 @Z_DVAL(i32 %228)
  %230 = call i32 @sqlite3_result_double(i32* %227, i32 %229)
  br label %251

231:                                              ; preds = %215
  %232 = call i32* @zval_try_get_string(i32* %14)
  store i32* %232, i32** %19, align 8
  %233 = load i32*, i32** %19, align 8
  %234 = icmp ne i32* %233, null
  %235 = xor i1 %234, true
  %236 = zext i1 %235 to i32
  %237 = call i32 @UNEXPECTED(i32 %236)
  %238 = icmp ne i32 %237, 0
  br i1 %238, label %239, label %241

239:                                              ; preds = %231
  %240 = load i32, i32* @FAILURE, align 4
  store i32 %240, i32* %16, align 4
  br label %251

241:                                              ; preds = %231
  %242 = load i32*, i32** %11, align 8
  %243 = load i32*, i32** %19, align 8
  %244 = call i32 @ZSTR_VAL(i32* %243)
  %245 = load i32*, i32** %19, align 8
  %246 = call i32 @ZSTR_LEN(i32* %245)
  %247 = load i32, i32* @SQLITE_TRANSIENT, align 4
  %248 = call i32 @sqlite3_result_text(i32* %242, i32 %244, i32 %246, i32 %247)
  %249 = load i32*, i32** %19, align 8
  %250 = call i32 @zend_string_release(i32* %249)
  br label %251

251:                                              ; preds = %241, %239, %226, %223, %218
  br label %255

252:                                              ; preds = %211
  %253 = load i32*, i32** %11, align 8
  %254 = call i32 @sqlite3_result_error(i32* %253, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 0)
  br label %255

255:                                              ; preds = %252, %251
  %256 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %257 = icmp ne %struct.TYPE_3__* %256, null
  br i1 %257, label %258, label %268

258:                                              ; preds = %255
  %259 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %260 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %259, i32 0, i32 0
  %261 = load i32, i32* %260, align 4
  %262 = call i64 @Z_ISUNDEF(i32 %261)
  %263 = icmp ne i64 %262, 0
  br i1 %263, label %268, label %264

264:                                              ; preds = %258
  %265 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %266 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %265, i32 0, i32 0
  %267 = call i32 @zval_ptr_dtor(i32* %266)
  br label %268

268:                                              ; preds = %264, %258, %255
  br label %287

269:                                              ; preds = %208
  %270 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %271 = icmp ne %struct.TYPE_3__* %270, null
  br i1 %271, label %272, label %282

272:                                              ; preds = %269
  %273 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %274 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %273, i32 0, i32 0
  %275 = load i32, i32* %274, align 4
  %276 = call i64 @Z_ISUNDEF(i32 %275)
  %277 = icmp ne i64 %276, 0
  br i1 %277, label %282, label %278

278:                                              ; preds = %272
  %279 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %280 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %279, i32 0, i32 0
  %281 = call i32 @zval_ptr_dtor(i32* %280)
  br label %282

282:                                              ; preds = %278, %272, %269
  %283 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %284 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %283, i32 0, i32 0
  %285 = call i32 @ZVAL_COPY_VALUE(i32* %284, i32* %14)
  %286 = call i32 @ZVAL_UNDEF(i32* %14)
  br label %287

287:                                              ; preds = %282, %268
  %288 = load i32, i32* %14, align 4
  %289 = call i64 @Z_ISUNDEF(i32 %288)
  %290 = icmp ne i64 %289, 0
  br i1 %290, label %293, label %291

291:                                              ; preds = %287
  %292 = call i32 @zval_ptr_dtor(i32* %14)
  br label %293

293:                                              ; preds = %291, %287
  %294 = load i32, i32* %16, align 4
  ret i32 %294
}

declare dso_local i32 @ZVAL_COPY_VALUE(i32*, i32*) #1

declare dso_local i64 @safe_emalloc(i32, i32, i32) #1

declare dso_local i64 @sqlite3_aggregate_context(i32*, i32) #1

declare dso_local i64 @Z_ISUNDEF(i32) #1

declare dso_local i32 @ZVAL_NULL(i32*) #1

declare dso_local i32 @ZVAL_COPY(i32*, i32*) #1

declare dso_local i32 @ZVAL_LONG(i32*, i32) #1

declare dso_local i32 @sqlite3_value_type(i32*) #1

declare dso_local i32 @sqlite3_value_int(i32*) #1

declare dso_local i32 @ZVAL_DOUBLE(i32*, i32) #1

declare dso_local i32 @sqlite3_value_double(i32*) #1

declare dso_local i32 @ZVAL_STRINGL(i32*, i8*, i32) #1

declare dso_local i64 @sqlite3_value_text(i32*) #1

declare dso_local i32 @sqlite3_value_bytes(i32*) #1

declare dso_local i32 @zend_call_function(%struct.TYPE_4__*, i32*) #1

declare dso_local i32 @php_error_docref(i32*, i32, i8*) #1

declare dso_local i32 @zval_ptr_dtor(i32*) #1

declare dso_local i32 @efree(i32*) #1

declare dso_local i32 @Z_TYPE(i32) #1

declare dso_local i32 @sqlite3_result_int(i32*, i32) #1

declare dso_local i32 @Z_LVAL(i32) #1

declare dso_local i32 @sqlite3_result_null(i32*) #1

declare dso_local i32 @sqlite3_result_double(i32*, i32) #1

declare dso_local i32 @Z_DVAL(i32) #1

declare dso_local i32* @zval_try_get_string(i32*) #1

declare dso_local i32 @UNEXPECTED(i32) #1

declare dso_local i32 @sqlite3_result_text(i32*, i32, i32, i32) #1

declare dso_local i32 @ZSTR_VAL(i32*) #1

declare dso_local i32 @ZSTR_LEN(i32*) #1

declare dso_local i32 @zend_string_release(i32*) #1

declare dso_local i32 @sqlite3_result_error(i32*, i8*, i32) #1

declare dso_local i32 @ZVAL_UNDEF(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
