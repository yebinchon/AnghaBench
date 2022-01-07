; ModuleID = '/home/carl/AnghaBench/php-src/ext/phar/extr_dirstream.c_phar_make_dirstream.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/phar/extr_dirstream.c_phar_make_dirstream.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i64 }

@.str = private unnamed_addr constant [6 x i8] c".phar\00", align 1
@phar_dir_ops = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@FAILURE = common dso_local global i64 0, align 8
@HASH_KEY_NON_EXISTENT = common dso_local global i64 0, align 8
@SUCCESS = common dso_local global i64 0, align 8
@phar_compare_dir_name = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8*, %struct.TYPE_12__*)* @phar_make_dirstream to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @phar_make_dirstream(i8* %0, %struct.TYPE_12__* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca %struct.TYPE_12__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store %struct.TYPE_12__* %1, %struct.TYPE_12__** %5, align 8
  %14 = load i8*, i8** %4, align 8
  %15 = call i64 @strlen(i8* %14)
  store i64 %15, i64* %7, align 8
  %16 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %17 = call i32 @ALLOC_HASHTABLE(%struct.TYPE_12__* %16)
  %18 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %19 = call i32 @zend_hash_init(%struct.TYPE_12__* %18, i32 64, i32* null, i32* null, i32 0)
  %20 = load i8*, i8** %4, align 8
  %21 = load i8, i8* %20, align 1
  %22 = sext i8 %21 to i32
  %23 = icmp eq i32 %22, 47
  br i1 %23, label %24, label %32

24:                                               ; preds = %2
  %25 = load i64, i64* %7, align 8
  %26 = icmp eq i64 %25, 1
  br i1 %26, label %27, label %32

27:                                               ; preds = %24
  %28 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %39, label %32

32:                                               ; preds = %27, %24, %2
  %33 = load i64, i64* %7, align 8
  %34 = icmp uge i64 %33, 5
  br i1 %34, label %35, label %44

35:                                               ; preds = %32
  %36 = load i8*, i8** %4, align 8
  %37 = call i64 @memcmp(i8* %36, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i64 5)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %44, label %39

39:                                               ; preds = %35, %27
  %40 = load i8*, i8** %4, align 8
  %41 = call i32 @efree(i8* %40)
  %42 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %43 = call i32* @php_stream_alloc(i32* @phar_dir_ops, %struct.TYPE_12__* %42, i32* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i32* %43, i32** %3, align 8
  br label %307

44:                                               ; preds = %35, %32
  %45 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %46 = call i32 @zend_hash_internal_pointer_reset(%struct.TYPE_12__* %45)
  br label %47

47:                                               ; preds = %288, %182, %167, %105, %84, %44
  %48 = load i64, i64* @FAILURE, align 8
  %49 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %50 = call i64 @zend_hash_has_more_elements(%struct.TYPE_12__* %49)
  %51 = icmp ne i64 %48, %50
  br i1 %51, label %52, label %289

52:                                               ; preds = %47
  %53 = load i64, i64* @HASH_KEY_NON_EXISTENT, align 8
  %54 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %55 = call i64 @zend_hash_get_current_key(%struct.TYPE_12__* %54, i32** %11, i32* %13)
  %56 = icmp eq i64 %53, %55
  br i1 %56, label %57, label %58

57:                                               ; preds = %52
  br label %289

58:                                               ; preds = %52
  %59 = load i32*, i32** %11, align 8
  %60 = call i64 @ZSTR_LEN(i32* %59)
  store i64 %60, i64* %12, align 8
  %61 = load i64, i64* %12, align 8
  %62 = load i64, i64* %7, align 8
  %63 = icmp ule i64 %61, %62
  br i1 %63, label %64, label %86

64:                                               ; preds = %58
  %65 = load i64, i64* %12, align 8
  %66 = icmp eq i64 %65, 0
  br i1 %66, label %78, label %67

67:                                               ; preds = %64
  %68 = load i64, i64* %12, align 8
  %69 = load i64, i64* %7, align 8
  %70 = icmp ult i64 %68, %69
  br i1 %70, label %78, label %71

71:                                               ; preds = %67
  %72 = load i32*, i32** %11, align 8
  %73 = call i8* @ZSTR_VAL(i32* %72)
  %74 = load i8*, i8** %4, align 8
  %75 = load i64, i64* %7, align 8
  %76 = call i32 @strncmp(i8* %73, i8* %74, i64 %75)
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %85, label %78

78:                                               ; preds = %71, %67, %64
  %79 = load i64, i64* @SUCCESS, align 8
  %80 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %81 = call i64 @zend_hash_move_forward(%struct.TYPE_12__* %80)
  %82 = icmp ne i64 %79, %81
  br i1 %82, label %83, label %84

83:                                               ; preds = %78
  br label %289

84:                                               ; preds = %78
  br label %47

85:                                               ; preds = %71
  br label %86

86:                                               ; preds = %85, %58
  %87 = load i8*, i8** %4, align 8
  %88 = load i8, i8* %87, align 1
  %89 = sext i8 %88 to i32
  %90 = icmp eq i32 %89, 47
  br i1 %90, label %91, label %154

91:                                               ; preds = %86
  %92 = load i64, i64* %12, align 8
  %93 = icmp uge i64 %92, 5
  br i1 %93, label %94, label %106

94:                                               ; preds = %91
  %95 = load i32*, i32** %11, align 8
  %96 = call i8* @ZSTR_VAL(i32* %95)
  %97 = call i64 @memcmp(i8* %96, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i64 5)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %106, label %99

99:                                               ; preds = %94
  %100 = load i64, i64* @SUCCESS, align 8
  %101 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %102 = call i64 @zend_hash_move_forward(%struct.TYPE_12__* %101)
  %103 = icmp ne i64 %100, %102
  br i1 %103, label %104, label %105

104:                                              ; preds = %99
  br label %289

105:                                              ; preds = %99
  br label %47

106:                                              ; preds = %94, %91
  %107 = load i32*, i32** %11, align 8
  %108 = call i8* @ZSTR_VAL(i32* %107)
  %109 = load i64, i64* %12, align 8
  %110 = call i64 @memchr(i8* %108, i8 signext 47, i64 %109)
  %111 = inttoptr i64 %110 to i8*
  store i8* %111, i8** %9, align 8
  %112 = icmp ne i8* null, %111
  br i1 %112, label %113, label %141

113:                                              ; preds = %106
  %114 = load i8*, i8** %9, align 8
  %115 = load i32*, i32** %11, align 8
  %116 = call i8* @ZSTR_VAL(i32* %115)
  %117 = ptrtoint i8* %114 to i64
  %118 = ptrtoint i8* %116 to i64
  %119 = sub i64 %117, %118
  %120 = call i64 @safe_emalloc(i64 %119, i32 1, i32 1)
  %121 = inttoptr i64 %120 to i8*
  store i8* %121, i8** %8, align 8
  %122 = load i8*, i8** %8, align 8
  %123 = load i32*, i32** %11, align 8
  %124 = call i8* @ZSTR_VAL(i32* %123)
  %125 = load i8*, i8** %9, align 8
  %126 = load i32*, i32** %11, align 8
  %127 = call i8* @ZSTR_VAL(i32* %126)
  %128 = ptrtoint i8* %125 to i64
  %129 = ptrtoint i8* %127 to i64
  %130 = sub i64 %128, %129
  %131 = call i32 @memcpy(i8* %122, i8* %124, i64 %130)
  %132 = load i8*, i8** %9, align 8
  %133 = load i32*, i32** %11, align 8
  %134 = call i8* @ZSTR_VAL(i32* %133)
  %135 = ptrtoint i8* %132 to i64
  %136 = ptrtoint i8* %134 to i64
  %137 = sub i64 %135, %136
  store i64 %137, i64* %12, align 8
  %138 = load i8*, i8** %8, align 8
  %139 = load i64, i64* %12, align 8
  %140 = getelementptr inbounds i8, i8* %138, i64 %139
  store i8 0, i8* %140, align 1
  br label %153

141:                                              ; preds = %106
  %142 = load i64, i64* %12, align 8
  %143 = call i64 @safe_emalloc(i64 %142, i32 1, i32 1)
  %144 = inttoptr i64 %143 to i8*
  store i8* %144, i8** %8, align 8
  %145 = load i8*, i8** %8, align 8
  %146 = load i32*, i32** %11, align 8
  %147 = call i8* @ZSTR_VAL(i32* %146)
  %148 = load i64, i64* %12, align 8
  %149 = call i32 @memcpy(i8* %145, i8* %147, i64 %148)
  %150 = load i8*, i8** %8, align 8
  %151 = load i64, i64* %12, align 8
  %152 = getelementptr inbounds i8, i8* %150, i64 %151
  store i8 0, i8* %152, align 1
  br label %153

153:                                              ; preds = %141, %113
  br label %272

154:                                              ; preds = %86
  %155 = load i32*, i32** %11, align 8
  %156 = call i8* @ZSTR_VAL(i32* %155)
  %157 = load i8*, i8** %4, align 8
  %158 = load i64, i64* %7, align 8
  %159 = call i64 @memcmp(i8* %156, i8* %157, i64 %158)
  %160 = icmp ne i64 0, %159
  br i1 %160, label %161, label %168

161:                                              ; preds = %154
  %162 = load i64, i64* @SUCCESS, align 8
  %163 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %164 = call i64 @zend_hash_move_forward(%struct.TYPE_12__* %163)
  %165 = icmp ne i64 %162, %164
  br i1 %165, label %166, label %167

166:                                              ; preds = %161
  br label %289

167:                                              ; preds = %161
  br label %47

168:                                              ; preds = %154
  %169 = load i32*, i32** %11, align 8
  %170 = call i8* @ZSTR_VAL(i32* %169)
  %171 = load i64, i64* %7, align 8
  %172 = getelementptr inbounds i8, i8* %170, i64 %171
  %173 = load i8, i8* %172, align 1
  %174 = sext i8 %173 to i32
  %175 = icmp ne i32 %174, 47
  br i1 %175, label %176, label %183

176:                                              ; preds = %168
  %177 = load i64, i64* @SUCCESS, align 8
  %178 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %179 = call i64 @zend_hash_move_forward(%struct.TYPE_12__* %178)
  %180 = icmp ne i64 %177, %179
  br i1 %180, label %181, label %182

181:                                              ; preds = %176
  br label %289

182:                                              ; preds = %176
  br label %47

183:                                              ; preds = %168
  br label %184

184:                                              ; preds = %183
  br label %185

185:                                              ; preds = %184
  %186 = load i32*, i32** %11, align 8
  %187 = call i8* @ZSTR_VAL(i32* %186)
  store i8* %187, i8** %10, align 8
  %188 = load i64, i64* %7, align 8
  %189 = add i64 %188, 1
  %190 = load i8*, i8** %10, align 8
  %191 = getelementptr inbounds i8, i8* %190, i64 %189
  store i8* %191, i8** %10, align 8
  %192 = load i8*, i8** %10, align 8
  %193 = load i64, i64* %12, align 8
  %194 = load i64, i64* %7, align 8
  %195 = sub i64 %193, %194
  %196 = sub i64 %195, 1
  %197 = call i64 @memchr(i8* %192, i8 signext 47, i64 %196)
  %198 = inttoptr i64 %197 to i8*
  store i8* %198, i8** %9, align 8
  %199 = icmp ne i8* null, %198
  br i1 %199, label %200, label %240

200:                                              ; preds = %185
  %201 = load i64, i64* %7, align 8
  %202 = add i64 %201, 1
  %203 = load i8*, i8** %10, align 8
  %204 = sub i64 0, %202
  %205 = getelementptr inbounds i8, i8* %203, i64 %204
  store i8* %205, i8** %10, align 8
  %206 = load i8*, i8** %9, align 8
  %207 = load i8*, i8** %10, align 8
  %208 = ptrtoint i8* %206 to i64
  %209 = ptrtoint i8* %207 to i64
  %210 = sub i64 %208, %209
  %211 = load i64, i64* %7, align 8
  %212 = add i64 %210, %211
  %213 = call i64 @safe_emalloc(i64 %212, i32 1, i32 1)
  %214 = inttoptr i64 %213 to i8*
  store i8* %214, i8** %8, align 8
  %215 = load i8*, i8** %8, align 8
  %216 = load i8*, i8** %10, align 8
  %217 = load i64, i64* %7, align 8
  %218 = getelementptr inbounds i8, i8* %216, i64 %217
  %219 = getelementptr inbounds i8, i8* %218, i64 1
  %220 = load i8*, i8** %9, align 8
  %221 = load i8*, i8** %10, align 8
  %222 = ptrtoint i8* %220 to i64
  %223 = ptrtoint i8* %221 to i64
  %224 = sub i64 %222, %223
  %225 = load i64, i64* %7, align 8
  %226 = sub i64 %224, %225
  %227 = sub i64 %226, 1
  %228 = call i32 @memcpy(i8* %215, i8* %219, i64 %227)
  %229 = load i8*, i8** %9, align 8
  %230 = load i8*, i8** %10, align 8
  %231 = ptrtoint i8* %229 to i64
  %232 = ptrtoint i8* %230 to i64
  %233 = sub i64 %231, %232
  %234 = load i64, i64* %7, align 8
  %235 = sub i64 %233, %234
  %236 = sub i64 %235, 1
  store i64 %236, i64* %12, align 8
  %237 = load i8*, i8** %8, align 8
  %238 = load i64, i64* %12, align 8
  %239 = getelementptr inbounds i8, i8* %237, i64 %238
  store i8 0, i8* %239, align 1
  br label %271

240:                                              ; preds = %185
  %241 = load i64, i64* %7, align 8
  %242 = add i64 %241, 1
  %243 = load i8*, i8** %10, align 8
  %244 = sub i64 0, %242
  %245 = getelementptr inbounds i8, i8* %243, i64 %244
  store i8* %245, i8** %10, align 8
  %246 = load i64, i64* %12, align 8
  %247 = load i64, i64* %7, align 8
  %248 = sub i64 %246, %247
  %249 = call i64 @safe_emalloc(i64 %248, i32 1, i32 1)
  %250 = inttoptr i64 %249 to i8*
  store i8* %250, i8** %8, align 8
  %251 = load i8*, i8** %8, align 8
  %252 = load i8*, i8** %10, align 8
  %253 = load i64, i64* %7, align 8
  %254 = getelementptr inbounds i8, i8* %252, i64 %253
  %255 = getelementptr inbounds i8, i8* %254, i64 1
  %256 = load i64, i64* %12, align 8
  %257 = load i64, i64* %7, align 8
  %258 = sub i64 %256, %257
  %259 = sub i64 %258, 1
  %260 = call i32 @memcpy(i8* %251, i8* %255, i64 %259)
  %261 = load i8*, i8** %8, align 8
  %262 = load i64, i64* %12, align 8
  %263 = load i64, i64* %7, align 8
  %264 = sub i64 %262, %263
  %265 = sub i64 %264, 1
  %266 = getelementptr inbounds i8, i8* %261, i64 %265
  store i8 0, i8* %266, align 1
  %267 = load i64, i64* %12, align 8
  %268 = load i64, i64* %7, align 8
  %269 = sub i64 %267, %268
  %270 = sub i64 %269, 1
  store i64 %270, i64* %12, align 8
  br label %271

271:                                              ; preds = %240, %200
  br label %272

272:                                              ; preds = %271, %153
  %273 = load i64, i64* %12, align 8
  %274 = icmp ne i64 %273, 0
  br i1 %274, label %275, label %280

275:                                              ; preds = %272
  %276 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %277 = load i8*, i8** %8, align 8
  %278 = load i64, i64* %12, align 8
  %279 = call i32 @phar_add_empty(%struct.TYPE_12__* %276, i8* %277, i64 %278)
  br label %280

280:                                              ; preds = %275, %272
  %281 = load i8*, i8** %8, align 8
  %282 = call i32 @efree(i8* %281)
  %283 = load i64, i64* @SUCCESS, align 8
  %284 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %285 = call i64 @zend_hash_move_forward(%struct.TYPE_12__* %284)
  %286 = icmp ne i64 %283, %285
  br i1 %286, label %287, label %288

287:                                              ; preds = %280
  br label %289

288:                                              ; preds = %280
  br label %47

289:                                              ; preds = %287, %181, %166, %104, %83, %57, %47
  %290 = load i64, i64* @FAILURE, align 8
  %291 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %292 = call i64 @zend_hash_has_more_elements(%struct.TYPE_12__* %291)
  %293 = icmp ne i64 %290, %292
  br i1 %293, label %294, label %302

294:                                              ; preds = %289
  %295 = load i8*, i8** %4, align 8
  %296 = call i32 @efree(i8* %295)
  %297 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %298 = load i32, i32* @phar_compare_dir_name, align 4
  %299 = call i32 @zend_hash_sort(%struct.TYPE_12__* %297, i32 %298, i32 0)
  %300 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %301 = call i32* @php_stream_alloc(i32* @phar_dir_ops, %struct.TYPE_12__* %300, i32* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i32* %301, i32** %3, align 8
  br label %307

302:                                              ; preds = %289
  %303 = load i8*, i8** %4, align 8
  %304 = call i32 @efree(i8* %303)
  %305 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %306 = call i32* @php_stream_alloc(i32* @phar_dir_ops, %struct.TYPE_12__* %305, i32* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i32* %306, i32** %3, align 8
  br label %307

307:                                              ; preds = %302, %294, %39
  %308 = load i32*, i32** %3, align 8
  ret i32* %308
}

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @ALLOC_HASHTABLE(%struct.TYPE_12__*) #1

declare dso_local i32 @zend_hash_init(%struct.TYPE_12__*, i32, i32*, i32*, i32) #1

declare dso_local i64 @memcmp(i8*, i8*, i64) #1

declare dso_local i32 @efree(i8*) #1

declare dso_local i32* @php_stream_alloc(i32*, %struct.TYPE_12__*, i32*, i8*) #1

declare dso_local i32 @zend_hash_internal_pointer_reset(%struct.TYPE_12__*) #1

declare dso_local i64 @zend_hash_has_more_elements(%struct.TYPE_12__*) #1

declare dso_local i64 @zend_hash_get_current_key(%struct.TYPE_12__*, i32**, i32*) #1

declare dso_local i64 @ZSTR_LEN(i32*) #1

declare dso_local i32 @strncmp(i8*, i8*, i64) #1

declare dso_local i8* @ZSTR_VAL(i32*) #1

declare dso_local i64 @zend_hash_move_forward(%struct.TYPE_12__*) #1

declare dso_local i64 @memchr(i8*, i8 signext, i64) #1

declare dso_local i64 @safe_emalloc(i64, i32, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i32 @phar_add_empty(%struct.TYPE_12__*, i8*, i64) #1

declare dso_local i32 @zend_hash_sort(%struct.TYPE_12__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
