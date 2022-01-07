; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/jscript/extr_string.c_String_replace.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/jscript/extr_string.c_String_replace.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i32, i32, i32* }
%struct.TYPE_19__ = type { i32*, i32, i32, %struct.TYPE_16__*, i32 }
%struct.TYPE_16__ = type { i32, i32 }
%struct.TYPE_17__ = type { %struct.TYPE_19__*, i32, i32, i32, i32* }

@REM_NO_CTX_UPDATE = common dso_local global i32 0, align 4
@REM_ALLOC_RESULT = common dso_local global i32 0, align 4
@S_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@JSCLASS_REGEXP = common dso_local global i32 0, align 4
@JSCLASS_FUNCTION = common dso_local global i32 0, align 4
@REM_CHECK_GLOBAL = common dso_local global i32 0, align 4
@S_FALSE = common dso_local global i64 0, align 8
@String_replace.undefinedW = internal constant [9 x i32] [i32 117, i32 110, i32 100, i32 101, i32 102, i32 105, i32 110, i32 101, i32 100], align 16
@E_OUTOFMEMORY = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [6 x i8] c"= %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_18__*, i32*, i32, i32, i32*, i32*)* @String_replace to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @String_replace(%struct.TYPE_18__* %0, i32* %1, i32 %2, i32 %3, i32* %4, i32* %5) #0 {
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_18__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca %struct.TYPE_19__*, align 8
  %23 = alloca %struct.TYPE_19__, align 8
  %24 = alloca %struct.TYPE_17__, align 8
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i64, align 8
  %28 = alloca i32*, align 8
  %29 = alloca i32*, align 8
  %30 = alloca i32*, align 8
  %31 = alloca i32*, align 8
  %32 = alloca i32, align 4
  %33 = alloca i32*, align 8
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %8, align 8
  store i32* %1, i32** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  store i32* null, i32** %15, align 8
  store i32* null, i32** %16, align 8
  store i32* null, i32** %20, align 8
  store i32* null, i32** %21, align 8
  store %struct.TYPE_19__* null, %struct.TYPE_19__** %22, align 8
  %34 = bitcast %struct.TYPE_19__* %23 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %34, i8 0, i64 32, i1 false)
  %35 = bitcast %struct.TYPE_17__* %24 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %35, i8 0, i64 32, i1 false)
  %36 = load i32, i32* @REM_NO_CTX_UPDATE, align 4
  %37 = load i32, i32* @REM_ALLOC_RESULT, align 4
  %38 = or i32 %36, %37
  store i32 %38, i32* %25, align 4
  store i32 0, i32* %26, align 4
  %39 = load i64, i64* @S_OK, align 8
  store i64 %39, i64* %27, align 8
  %40 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %41 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %42 = load i32*, i32** %9, align 8
  %43 = call i64 @get_string_flat_val(%struct.TYPE_18__* %41, i32* %42, i32** %19, i32** %14)
  store i64 %43, i64* %27, align 8
  %44 = load i64, i64* %27, align 8
  %45 = call i64 @FAILED(i64 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %6
  %48 = load i64, i64* %27, align 8
  store i64 %48, i64* %7, align 8
  br label %635

49:                                               ; preds = %6
  %50 = load i32, i32* %11, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %64, label %52

52:                                               ; preds = %49
  %53 = load i32*, i32** %13, align 8
  %54 = icmp ne i32* %53, null
  br i1 %54, label %55, label %59

55:                                               ; preds = %52
  %56 = load i32*, i32** %19, align 8
  %57 = call i32 @jsval_string(i32* %56)
  %58 = load i32*, i32** %13, align 8
  store i32 %57, i32* %58, align 4
  br label %62

59:                                               ; preds = %52
  %60 = load i32*, i32** %19, align 8
  %61 = call i32 @jsstr_release(i32* %60)
  br label %62

62:                                               ; preds = %59, %55
  %63 = load i64, i64* @S_OK, align 8
  store i64 %63, i64* %7, align 8
  br label %635

64:                                               ; preds = %49
  %65 = load i32*, i32** %12, align 8
  %66 = getelementptr inbounds i32, i32* %65, i64 0
  %67 = load i32, i32* %66, align 4
  %68 = call i64 @is_object_instance(i32 %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %87

70:                                               ; preds = %64
  %71 = load i32*, i32** %12, align 8
  %72 = getelementptr inbounds i32, i32* %71, i64 0
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @get_object(i32 %73)
  %75 = call i32* @iface_to_jsdisp(i32 %74)
  store i32* %75, i32** %21, align 8
  %76 = load i32*, i32** %21, align 8
  %77 = icmp ne i32* %76, null
  br i1 %77, label %78, label %86

78:                                               ; preds = %70
  %79 = load i32*, i32** %21, align 8
  %80 = load i32, i32* @JSCLASS_REGEXP, align 4
  %81 = call i32 @is_class(i32* %79, i32 %80)
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %86, label %83

83:                                               ; preds = %78
  %84 = load i32*, i32** %21, align 8
  %85 = call i32 @jsdisp_release(i32* %84)
  store i32* null, i32** %21, align 8
  br label %86

86:                                               ; preds = %83, %78, %70
  br label %87

87:                                               ; preds = %86, %64
  %88 = load i32*, i32** %21, align 8
  %89 = icmp ne i32* %88, null
  br i1 %89, label %104, label %90

90:                                               ; preds = %87
  %91 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %92 = load i32*, i32** %12, align 8
  %93 = getelementptr inbounds i32, i32* %92, i64 0
  %94 = load i32, i32* %93, align 4
  %95 = call i64 @to_flat_string(%struct.TYPE_18__* %91, i32 %94, i32** %18, i32** %15)
  store i64 %95, i64* %27, align 8
  %96 = load i64, i64* %27, align 8
  %97 = call i64 @FAILED(i64 %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %103

99:                                               ; preds = %90
  %100 = load i32*, i32** %19, align 8
  %101 = call i32 @jsstr_release(i32* %100)
  %102 = load i64, i64* %27, align 8
  store i64 %102, i64* %7, align 8
  br label %635

103:                                              ; preds = %90
  br label %104

104:                                              ; preds = %103, %87
  %105 = load i32, i32* %11, align 4
  %106 = icmp uge i32 %105, 2
  br i1 %106, label %107, label %147

107:                                              ; preds = %104
  %108 = load i32*, i32** %12, align 8
  %109 = getelementptr inbounds i32, i32* %108, i64 1
  %110 = load i32, i32* %109, align 4
  %111 = call i64 @is_object_instance(i32 %110)
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %130

113:                                              ; preds = %107
  %114 = load i32*, i32** %12, align 8
  %115 = getelementptr inbounds i32, i32* %114, i64 1
  %116 = load i32, i32* %115, align 4
  %117 = call i32 @get_object(i32 %116)
  %118 = call i32* @iface_to_jsdisp(i32 %117)
  store i32* %118, i32** %20, align 8
  %119 = load i32*, i32** %20, align 8
  %120 = icmp ne i32* %119, null
  br i1 %120, label %121, label %129

121:                                              ; preds = %113
  %122 = load i32*, i32** %20, align 8
  %123 = load i32, i32* @JSCLASS_FUNCTION, align 4
  %124 = call i32 @is_class(i32* %122, i32 %123)
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %129, label %126

126:                                              ; preds = %121
  %127 = load i32*, i32** %20, align 8
  %128 = call i32 @jsdisp_release(i32* %127)
  store i32* null, i32** %20, align 8
  br label %129

129:                                              ; preds = %126, %121, %113
  br label %130

130:                                              ; preds = %129, %107
  %131 = load i32*, i32** %20, align 8
  %132 = icmp ne i32* %131, null
  br i1 %132, label %146, label %133

133:                                              ; preds = %130
  %134 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %135 = load i32*, i32** %12, align 8
  %136 = getelementptr inbounds i32, i32* %135, i64 1
  %137 = load i32, i32* %136, align 4
  %138 = call i64 @to_flat_string(%struct.TYPE_18__* %134, i32 %137, i32** %17, i32** %16)
  store i64 %138, i64* %27, align 8
  %139 = load i64, i64* %27, align 8
  %140 = call i64 @SUCCEEDED(i64 %139)
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %142, label %145

142:                                              ; preds = %133
  %143 = load i32*, i32** %17, align 8
  %144 = call i32 @jsstr_length(i32* %143)
  store i32 %144, i32* %26, align 4
  br label %145

145:                                              ; preds = %142, %133
  br label %146

146:                                              ; preds = %145, %130
  br label %147

147:                                              ; preds = %146, %104
  %148 = load i64, i64* %27, align 8
  %149 = call i64 @SUCCEEDED(i64 %148)
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %151, label %536

151:                                              ; preds = %147
  %152 = load i32*, i32** %14, align 8
  store i32* %152, i32** %28, align 8
  br label %153

153:                                              ; preds = %151, %517
  %154 = load i32*, i32** %21, align 8
  %155 = icmp ne i32* %154, null
  br i1 %155, label %156, label %187

156:                                              ; preds = %153
  %157 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %158 = load i32*, i32** %21, align 8
  %159 = load i32, i32* %25, align 4
  %160 = load i32*, i32** %19, align 8
  %161 = call i64 @regexp_match_next(%struct.TYPE_18__* %157, i32* %158, i32 %159, i32* %160, %struct.TYPE_19__** %22)
  store i64 %161, i64* %27, align 8
  %162 = load i32, i32* %25, align 4
  %163 = load i32, i32* @REM_CHECK_GLOBAL, align 4
  %164 = or i32 %162, %163
  %165 = load i32, i32* @REM_ALLOC_RESULT, align 4
  %166 = xor i32 %165, -1
  %167 = and i32 %164, %166
  store i32 %167, i32* %25, align 4
  %168 = load i64, i64* %27, align 8
  %169 = load i64, i64* @S_FALSE, align 8
  %170 = icmp eq i64 %168, %169
  br i1 %170, label %171, label %173

171:                                              ; preds = %156
  %172 = load i64, i64* @S_OK, align 8
  store i64 %172, i64* %27, align 8
  br label %518

173:                                              ; preds = %156
  %174 = load i64, i64* %27, align 8
  %175 = call i64 @FAILED(i64 %174)
  %176 = icmp ne i64 %175, 0
  br i1 %176, label %177, label %178

177:                                              ; preds = %173
  br label %518

178:                                              ; preds = %173
  %179 = load %struct.TYPE_19__*, %struct.TYPE_19__** %22, align 8
  %180 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %179, i32 0, i32 0
  %181 = load i32*, i32** %180, align 8
  %182 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %23, i32 0, i32 0
  store i32* %181, i32** %182, align 8
  %183 = load %struct.TYPE_19__*, %struct.TYPE_19__** %22, align 8
  %184 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %183, i32 0, i32 1
  %185 = load i32, i32* %184, align 8
  %186 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %23, i32 0, i32 1
  store i32 %185, i32* %186, align 8
  br label %226

187:                                              ; preds = %153
  %188 = load i32, i32* %25, align 4
  %189 = load i32, i32* @REM_ALLOC_RESULT, align 4
  %190 = and i32 %188, %189
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %192, label %200

192:                                              ; preds = %187
  %193 = load i32, i32* @REM_ALLOC_RESULT, align 4
  %194 = xor i32 %193, -1
  %195 = load i32, i32* %25, align 4
  %196 = and i32 %195, %194
  store i32 %196, i32* %25, align 4
  store %struct.TYPE_19__* %23, %struct.TYPE_19__** %22, align 8
  %197 = load i32*, i32** %14, align 8
  %198 = load %struct.TYPE_19__*, %struct.TYPE_19__** %22, align 8
  %199 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %198, i32 0, i32 0
  store i32* %197, i32** %199, align 8
  br label %200

200:                                              ; preds = %192, %187
  %201 = load %struct.TYPE_19__*, %struct.TYPE_19__** %22, align 8
  %202 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %201, i32 0, i32 0
  %203 = load i32*, i32** %202, align 8
  %204 = load i32*, i32** %15, align 8
  %205 = call i32* @wcsstr(i32* %203, i32* %204)
  %206 = load %struct.TYPE_19__*, %struct.TYPE_19__** %22, align 8
  %207 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %206, i32 0, i32 0
  store i32* %205, i32** %207, align 8
  %208 = load %struct.TYPE_19__*, %struct.TYPE_19__** %22, align 8
  %209 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %208, i32 0, i32 0
  %210 = load i32*, i32** %209, align 8
  %211 = icmp ne i32* %210, null
  br i1 %211, label %213, label %212

212:                                              ; preds = %200
  br label %518

213:                                              ; preds = %200
  %214 = load i32*, i32** %18, align 8
  %215 = call i32 @jsstr_length(i32* %214)
  %216 = load %struct.TYPE_19__*, %struct.TYPE_19__** %22, align 8
  %217 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %216, i32 0, i32 1
  store i32 %215, i32* %217, align 8
  %218 = load %struct.TYPE_19__*, %struct.TYPE_19__** %22, align 8
  %219 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %218, i32 0, i32 1
  %220 = load i32, i32* %219, align 8
  %221 = load %struct.TYPE_19__*, %struct.TYPE_19__** %22, align 8
  %222 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %221, i32 0, i32 0
  %223 = load i32*, i32** %222, align 8
  %224 = sext i32 %220 to i64
  %225 = getelementptr inbounds i32, i32* %223, i64 %224
  store i32* %225, i32** %222, align 8
  br label %226

226:                                              ; preds = %213, %178
  %227 = load i32*, i32** %28, align 8
  %228 = load %struct.TYPE_19__*, %struct.TYPE_19__** %22, align 8
  %229 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %228, i32 0, i32 0
  %230 = load i32*, i32** %229, align 8
  %231 = load i32*, i32** %28, align 8
  %232 = ptrtoint i32* %230 to i64
  %233 = ptrtoint i32* %231 to i64
  %234 = sub i64 %232, %233
  %235 = sdiv exact i64 %234, 4
  %236 = load %struct.TYPE_19__*, %struct.TYPE_19__** %22, align 8
  %237 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %236, i32 0, i32 1
  %238 = load i32, i32* %237, align 8
  %239 = sext i32 %238 to i64
  %240 = sub nsw i64 %235, %239
  %241 = call i64 (%struct.TYPE_17__*, i32*, ...) @strbuf_append(%struct.TYPE_17__* %24, i32* %227, i64 %240)
  store i64 %241, i64* %27, align 8
  %242 = load %struct.TYPE_19__*, %struct.TYPE_19__** %22, align 8
  %243 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %242, i32 0, i32 0
  %244 = load i32*, i32** %243, align 8
  store i32* %244, i32** %28, align 8
  %245 = load i64, i64* %27, align 8
  %246 = call i64 @FAILED(i64 %245)
  %247 = icmp ne i64 %246, 0
  br i1 %247, label %248, label %249

248:                                              ; preds = %226
  br label %518

249:                                              ; preds = %226
  %250 = load i32*, i32** %20, align 8
  %251 = icmp ne i32* %250, null
  br i1 %251, label %252, label %273

252:                                              ; preds = %249
  %253 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %254 = load i32*, i32** %20, align 8
  %255 = load i32*, i32** %19, align 8
  %256 = load i32*, i32** %14, align 8
  %257 = load %struct.TYPE_19__*, %struct.TYPE_19__** %22, align 8
  %258 = call i64 @rep_call(%struct.TYPE_18__* %253, i32* %254, i32* %255, i32* %256, %struct.TYPE_19__* %257, i32** %29)
  store i64 %258, i64* %27, align 8
  %259 = load i64, i64* %27, align 8
  %260 = call i64 @FAILED(i64 %259)
  %261 = icmp ne i64 %260, 0
  br i1 %261, label %262, label %263

262:                                              ; preds = %252
  br label %518

263:                                              ; preds = %252
  %264 = load i32*, i32** %29, align 8
  %265 = call i64 @strbuf_append_jsstr(%struct.TYPE_17__* %24, i32* %264)
  store i64 %265, i64* %27, align 8
  %266 = load i32*, i32** %29, align 8
  %267 = call i32 @jsstr_release(i32* %266)
  %268 = load i64, i64* %27, align 8
  %269 = call i64 @FAILED(i64 %268)
  %270 = icmp ne i64 %269, 0
  br i1 %270, label %271, label %272

271:                                              ; preds = %263
  br label %518

272:                                              ; preds = %263
  br label %502

273:                                              ; preds = %249
  %274 = load i32*, i32** %16, align 8
  %275 = icmp ne i32* %274, null
  br i1 %275, label %276, label %480

276:                                              ; preds = %273
  %277 = load i32*, i32** %21, align 8
  %278 = icmp ne i32* %277, null
  br i1 %278, label %279, label %480

279:                                              ; preds = %276
  %280 = load i32*, i32** %16, align 8
  store i32* %280, i32** %30, align 8
  br label %281

281:                                              ; preds = %457, %279
  %282 = load i32*, i32** %30, align 8
  %283 = call i32* @wcschr(i32* %282, i8 signext 36)
  store i32* %283, i32** %31, align 8
  %284 = icmp ne i32* %283, null
  br i1 %284, label %285, label %458

285:                                              ; preds = %281
  %286 = load i32*, i32** %30, align 8
  %287 = load i32*, i32** %31, align 8
  %288 = load i32*, i32** %30, align 8
  %289 = ptrtoint i32* %287 to i64
  %290 = ptrtoint i32* %288 to i64
  %291 = sub i64 %289, %290
  %292 = sdiv exact i64 %291, 4
  %293 = call i64 (%struct.TYPE_17__*, i32*, ...) @strbuf_append(%struct.TYPE_17__* %24, i32* %286, i64 %292)
  store i64 %293, i64* %27, align 8
  %294 = load i64, i64* %27, align 8
  %295 = call i64 @FAILED(i64 %294)
  %296 = icmp ne i64 %295, 0
  br i1 %296, label %297, label %298

297:                                              ; preds = %285
  br label %458

298:                                              ; preds = %285
  %299 = load i32*, i32** %31, align 8
  %300 = getelementptr inbounds i32, i32* %299, i64 1
  %301 = load i32, i32* %300, align 4
  switch i32 %301, label %356 [
    i32 36, label %302
    i32 38, label %307
    i32 96, label %323
    i32 39, label %341
  ]

302:                                              ; preds = %298
  %303 = load i32*, i32** %31, align 8
  %304 = call i64 (%struct.TYPE_17__*, i32*, ...) @strbuf_append(%struct.TYPE_17__* %24, i32* %303, i32 1)
  store i64 %304, i64* %27, align 8
  %305 = load i32*, i32** %31, align 8
  %306 = getelementptr inbounds i32, i32* %305, i64 2
  store i32* %306, i32** %30, align 8
  br label %452

307:                                              ; preds = %298
  %308 = load %struct.TYPE_19__*, %struct.TYPE_19__** %22, align 8
  %309 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %308, i32 0, i32 0
  %310 = load i32*, i32** %309, align 8
  %311 = load %struct.TYPE_19__*, %struct.TYPE_19__** %22, align 8
  %312 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %311, i32 0, i32 1
  %313 = load i32, i32* %312, align 8
  %314 = sext i32 %313 to i64
  %315 = sub i64 0, %314
  %316 = getelementptr inbounds i32, i32* %310, i64 %315
  %317 = load %struct.TYPE_19__*, %struct.TYPE_19__** %22, align 8
  %318 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %317, i32 0, i32 1
  %319 = load i32, i32* %318, align 8
  %320 = call i64 (%struct.TYPE_17__*, i32*, ...) @strbuf_append(%struct.TYPE_17__* %24, i32* %316, i32 %319)
  store i64 %320, i64* %27, align 8
  %321 = load i32*, i32** %31, align 8
  %322 = getelementptr inbounds i32, i32* %321, i64 2
  store i32* %322, i32** %30, align 8
  br label %452

323:                                              ; preds = %298
  %324 = load i32*, i32** %14, align 8
  %325 = load %struct.TYPE_19__*, %struct.TYPE_19__** %22, align 8
  %326 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %325, i32 0, i32 0
  %327 = load i32*, i32** %326, align 8
  %328 = load i32*, i32** %14, align 8
  %329 = ptrtoint i32* %327 to i64
  %330 = ptrtoint i32* %328 to i64
  %331 = sub i64 %329, %330
  %332 = sdiv exact i64 %331, 4
  %333 = load %struct.TYPE_19__*, %struct.TYPE_19__** %22, align 8
  %334 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %333, i32 0, i32 1
  %335 = load i32, i32* %334, align 8
  %336 = sext i32 %335 to i64
  %337 = sub nsw i64 %332, %336
  %338 = call i64 (%struct.TYPE_17__*, i32*, ...) @strbuf_append(%struct.TYPE_17__* %24, i32* %324, i64 %337)
  store i64 %338, i64* %27, align 8
  %339 = load i32*, i32** %31, align 8
  %340 = getelementptr inbounds i32, i32* %339, i64 2
  store i32* %340, i32** %30, align 8
  br label %452

341:                                              ; preds = %298
  %342 = load i32*, i32** %28, align 8
  %343 = load i32*, i32** %14, align 8
  %344 = load i32*, i32** %19, align 8
  %345 = call i32 @jsstr_length(i32* %344)
  %346 = sext i32 %345 to i64
  %347 = getelementptr inbounds i32, i32* %343, i64 %346
  %348 = load i32*, i32** %28, align 8
  %349 = ptrtoint i32* %347 to i64
  %350 = ptrtoint i32* %348 to i64
  %351 = sub i64 %349, %350
  %352 = sdiv exact i64 %351, 4
  %353 = call i64 (%struct.TYPE_17__*, i32*, ...) @strbuf_append(%struct.TYPE_17__* %24, i32* %342, i64 %352)
  store i64 %353, i64* %27, align 8
  %354 = load i32*, i32** %31, align 8
  %355 = getelementptr inbounds i32, i32* %354, i64 2
  store i32* %355, i32** %30, align 8
  br label %452

356:                                              ; preds = %298
  %357 = load i32*, i32** %31, align 8
  %358 = getelementptr inbounds i32, i32* %357, i64 1
  %359 = load i32, i32* %358, align 4
  %360 = call i32 @iswdigit(i32 %359)
  %361 = icmp ne i32 %360, 0
  br i1 %361, label %367, label %362

362:                                              ; preds = %356
  %363 = load i32*, i32** %31, align 8
  %364 = call i64 (%struct.TYPE_17__*, i32*, ...) @strbuf_append(%struct.TYPE_17__* %24, i32* %363, i32 1)
  store i64 %364, i64* %27, align 8
  %365 = load i32*, i32** %31, align 8
  %366 = getelementptr inbounds i32, i32* %365, i64 1
  store i32* %366, i32** %30, align 8
  br label %452

367:                                              ; preds = %356
  %368 = load i32*, i32** %31, align 8
  %369 = getelementptr inbounds i32, i32* %368, i64 1
  %370 = load i32, i32* %369, align 4
  %371 = sub nsw i32 %370, 48
  store i32 %371, i32* %32, align 4
  %372 = load i32*, i32** %31, align 8
  %373 = getelementptr inbounds i32, i32* %372, i64 2
  %374 = load i32, i32* %373, align 4
  %375 = call i32 @iswdigit(i32 %374)
  %376 = icmp ne i32 %375, 0
  br i1 %376, label %377, label %399

377:                                              ; preds = %367
  %378 = load i32, i32* %32, align 4
  %379 = mul nsw i32 %378, 10
  %380 = load i32*, i32** %31, align 8
  %381 = getelementptr inbounds i32, i32* %380, i64 2
  %382 = load i32, i32* %381, align 4
  %383 = sub nsw i32 %382, 48
  %384 = add nsw i32 %379, %383
  %385 = load %struct.TYPE_19__*, %struct.TYPE_19__** %22, align 8
  %386 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %385, i32 0, i32 2
  %387 = load i32, i32* %386, align 4
  %388 = icmp sle i32 %384, %387
  br i1 %388, label %389, label %399

389:                                              ; preds = %377
  %390 = load i32, i32* %32, align 4
  %391 = mul nsw i32 %390, 10
  %392 = load i32*, i32** %30, align 8
  %393 = getelementptr inbounds i32, i32* %392, i64 2
  %394 = load i32, i32* %393, align 4
  %395 = sub nsw i32 %394, 48
  %396 = add nsw i32 %391, %395
  store i32 %396, i32* %32, align 4
  %397 = load i32*, i32** %31, align 8
  %398 = getelementptr inbounds i32, i32* %397, i64 3
  store i32* %398, i32** %30, align 8
  br label %417

399:                                              ; preds = %377, %367
  %400 = load i32, i32* %32, align 4
  %401 = icmp ne i32 %400, 0
  br i1 %401, label %402, label %411

402:                                              ; preds = %399
  %403 = load i32, i32* %32, align 4
  %404 = load %struct.TYPE_19__*, %struct.TYPE_19__** %22, align 8
  %405 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %404, i32 0, i32 2
  %406 = load i32, i32* %405, align 4
  %407 = icmp sle i32 %403, %406
  br i1 %407, label %408, label %411

408:                                              ; preds = %402
  %409 = load i32*, i32** %31, align 8
  %410 = getelementptr inbounds i32, i32* %409, i64 2
  store i32* %410, i32** %30, align 8
  br label %416

411:                                              ; preds = %402, %399
  %412 = load i32*, i32** %31, align 8
  %413 = call i64 (%struct.TYPE_17__*, i32*, ...) @strbuf_append(%struct.TYPE_17__* %24, i32* %412, i32 1)
  store i64 %413, i64* %27, align 8
  %414 = load i32*, i32** %31, align 8
  %415 = getelementptr inbounds i32, i32* %414, i64 1
  store i32* %415, i32** %30, align 8
  br label %452

416:                                              ; preds = %408
  br label %417

417:                                              ; preds = %416, %389
  %418 = load %struct.TYPE_19__*, %struct.TYPE_19__** %22, align 8
  %419 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %418, i32 0, i32 3
  %420 = load %struct.TYPE_16__*, %struct.TYPE_16__** %419, align 8
  %421 = load i32, i32* %32, align 4
  %422 = sub nsw i32 %421, 1
  %423 = sext i32 %422 to i64
  %424 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %420, i64 %423
  %425 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %424, i32 0, i32 0
  %426 = load i32, i32* %425, align 4
  %427 = icmp ne i32 %426, -1
  br i1 %427, label %428, label %451

428:                                              ; preds = %417
  %429 = load i32*, i32** %14, align 8
  %430 = load %struct.TYPE_19__*, %struct.TYPE_19__** %22, align 8
  %431 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %430, i32 0, i32 3
  %432 = load %struct.TYPE_16__*, %struct.TYPE_16__** %431, align 8
  %433 = load i32, i32* %32, align 4
  %434 = sub nsw i32 %433, 1
  %435 = sext i32 %434 to i64
  %436 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %432, i64 %435
  %437 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %436, i32 0, i32 0
  %438 = load i32, i32* %437, align 4
  %439 = sext i32 %438 to i64
  %440 = getelementptr inbounds i32, i32* %429, i64 %439
  %441 = load %struct.TYPE_19__*, %struct.TYPE_19__** %22, align 8
  %442 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %441, i32 0, i32 3
  %443 = load %struct.TYPE_16__*, %struct.TYPE_16__** %442, align 8
  %444 = load i32, i32* %32, align 4
  %445 = sub nsw i32 %444, 1
  %446 = sext i32 %445 to i64
  %447 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %443, i64 %446
  %448 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %447, i32 0, i32 1
  %449 = load i32, i32* %448, align 4
  %450 = call i64 (%struct.TYPE_17__*, i32*, ...) @strbuf_append(%struct.TYPE_17__* %24, i32* %440, i32 %449)
  store i64 %450, i64* %27, align 8
  br label %451

451:                                              ; preds = %428, %417
  br label %452

452:                                              ; preds = %451, %411, %362, %341, %323, %307, %302
  %453 = load i64, i64* %27, align 8
  %454 = call i64 @FAILED(i64 %453)
  %455 = icmp ne i64 %454, 0
  br i1 %455, label %456, label %457

456:                                              ; preds = %452
  br label %458

457:                                              ; preds = %452
  br label %281

458:                                              ; preds = %456, %297, %281
  %459 = load i64, i64* %27, align 8
  %460 = call i64 @SUCCEEDED(i64 %459)
  %461 = icmp ne i64 %460, 0
  br i1 %461, label %462, label %474

462:                                              ; preds = %458
  %463 = load i32*, i32** %30, align 8
  %464 = load i32*, i32** %16, align 8
  %465 = load i32, i32* %26, align 4
  %466 = sext i32 %465 to i64
  %467 = getelementptr inbounds i32, i32* %464, i64 %466
  %468 = load i32*, i32** %30, align 8
  %469 = ptrtoint i32* %467 to i64
  %470 = ptrtoint i32* %468 to i64
  %471 = sub i64 %469, %470
  %472 = sdiv exact i64 %471, 4
  %473 = call i64 (%struct.TYPE_17__*, i32*, ...) @strbuf_append(%struct.TYPE_17__* %24, i32* %463, i64 %472)
  store i64 %473, i64* %27, align 8
  br label %474

474:                                              ; preds = %462, %458
  %475 = load i64, i64* %27, align 8
  %476 = call i64 @FAILED(i64 %475)
  %477 = icmp ne i64 %476, 0
  br i1 %477, label %478, label %479

478:                                              ; preds = %474
  br label %518

479:                                              ; preds = %474
  br label %501

480:                                              ; preds = %276, %273
  %481 = load i32*, i32** %16, align 8
  %482 = icmp ne i32* %481, null
  br i1 %482, label %483, label %492

483:                                              ; preds = %480
  %484 = load i32*, i32** %16, align 8
  %485 = load i32, i32* %26, align 4
  %486 = call i64 (%struct.TYPE_17__*, i32*, ...) @strbuf_append(%struct.TYPE_17__* %24, i32* %484, i32 %485)
  store i64 %486, i64* %27, align 8
  %487 = load i64, i64* %27, align 8
  %488 = call i64 @FAILED(i64 %487)
  %489 = icmp ne i64 %488, 0
  br i1 %489, label %490, label %491

490:                                              ; preds = %483
  br label %518

491:                                              ; preds = %483
  br label %500

492:                                              ; preds = %480
  %493 = call i32 @ARRAY_SIZE(i32* getelementptr inbounds ([9 x i32], [9 x i32]* @String_replace.undefinedW, i64 0, i64 0))
  %494 = call i64 (%struct.TYPE_17__*, i32*, ...) @strbuf_append(%struct.TYPE_17__* %24, i32* getelementptr inbounds ([9 x i32], [9 x i32]* @String_replace.undefinedW, i64 0, i64 0), i32 %493)
  store i64 %494, i64* %27, align 8
  %495 = load i64, i64* %27, align 8
  %496 = call i64 @FAILED(i64 %495)
  %497 = icmp ne i64 %496, 0
  br i1 %497, label %498, label %499

498:                                              ; preds = %492
  br label %518

499:                                              ; preds = %492
  br label %500

500:                                              ; preds = %499, %491
  br label %501

501:                                              ; preds = %500, %479
  br label %502

502:                                              ; preds = %501, %272
  %503 = load i32*, i32** %21, align 8
  %504 = icmp ne i32* %503, null
  br i1 %504, label %506, label %505

505:                                              ; preds = %502
  br label %518

506:                                              ; preds = %502
  %507 = load %struct.TYPE_19__*, %struct.TYPE_19__** %22, align 8
  %508 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %507, i32 0, i32 1
  %509 = load i32, i32* %508, align 8
  %510 = icmp ne i32 %509, 0
  br i1 %510, label %516, label %511

511:                                              ; preds = %506
  %512 = load %struct.TYPE_19__*, %struct.TYPE_19__** %22, align 8
  %513 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %512, i32 0, i32 0
  %514 = load i32*, i32** %513, align 8
  %515 = getelementptr inbounds i32, i32* %514, i32 1
  store i32* %515, i32** %513, align 8
  br label %516

516:                                              ; preds = %511, %506
  br label %517

517:                                              ; preds = %516
  br label %153

518:                                              ; preds = %505, %498, %490, %478, %271, %262, %248, %212, %177, %171
  %519 = load i64, i64* %27, align 8
  %520 = call i64 @SUCCEEDED(i64 %519)
  %521 = icmp ne i64 %520, 0
  br i1 %521, label %522, label %535

522:                                              ; preds = %518
  %523 = load i32*, i32** %28, align 8
  %524 = load i32*, i32** %14, align 8
  %525 = load i32*, i32** %19, align 8
  %526 = call i32 @jsstr_length(i32* %525)
  %527 = sext i32 %526 to i64
  %528 = getelementptr inbounds i32, i32* %524, i64 %527
  %529 = load i32*, i32** %28, align 8
  %530 = ptrtoint i32* %528 to i64
  %531 = ptrtoint i32* %529 to i64
  %532 = sub i64 %530, %531
  %533 = sdiv exact i64 %532, 4
  %534 = call i64 (%struct.TYPE_17__*, i32*, ...) @strbuf_append(%struct.TYPE_17__* %24, i32* %523, i64 %533)
  store i64 %534, i64* %27, align 8
  br label %535

535:                                              ; preds = %522, %518
  br label %536

536:                                              ; preds = %535, %147
  %537 = load i32*, i32** %20, align 8
  %538 = icmp ne i32* %537, null
  br i1 %538, label %539, label %542

539:                                              ; preds = %536
  %540 = load i32*, i32** %20, align 8
  %541 = call i32 @jsdisp_release(i32* %540)
  br label %542

542:                                              ; preds = %539, %536
  %543 = load i32*, i32** %16, align 8
  %544 = icmp ne i32* %543, null
  br i1 %544, label %545, label %548

545:                                              ; preds = %542
  %546 = load i32*, i32** %17, align 8
  %547 = call i32 @jsstr_release(i32* %546)
  br label %548

548:                                              ; preds = %545, %542
  %549 = load i32*, i32** %15, align 8
  %550 = icmp ne i32* %549, null
  br i1 %550, label %551, label %554

551:                                              ; preds = %548
  %552 = load i32*, i32** %18, align 8
  %553 = call i32 @jsstr_release(i32* %552)
  br label %554

554:                                              ; preds = %551, %548
  %555 = load i32*, i32** %21, align 8
  %556 = icmp ne i32* %555, null
  br i1 %556, label %557, label %560

557:                                              ; preds = %554
  %558 = load %struct.TYPE_19__*, %struct.TYPE_19__** %22, align 8
  %559 = call i32 @heap_free(%struct.TYPE_19__* %558)
  br label %560

560:                                              ; preds = %557, %554
  %561 = load i64, i64* %27, align 8
  %562 = call i64 @SUCCEEDED(i64 %561)
  %563 = icmp ne i64 %562, 0
  br i1 %563, label %564, label %598

564:                                              ; preds = %560
  %565 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %23, i32 0, i32 0
  %566 = load i32*, i32** %565, align 8
  %567 = icmp ne i32* %566, null
  br i1 %567, label %568, label %598

568:                                              ; preds = %564
  %569 = load i32*, i32** %21, align 8
  %570 = icmp ne i32* %569, null
  br i1 %570, label %571, label %598

571:                                              ; preds = %568
  %572 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %573 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %572, i32 0, i32 2
  %574 = load i32*, i32** %573, align 8
  %575 = call i32 @jsstr_release(i32* %574)
  %576 = load i32*, i32** %19, align 8
  %577 = call i32* @jsstr_addref(i32* %576)
  %578 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %579 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %578, i32 0, i32 2
  store i32* %577, i32** %579, align 8
  %580 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %23, i32 0, i32 0
  %581 = load i32*, i32** %580, align 8
  %582 = load i32*, i32** %14, align 8
  %583 = ptrtoint i32* %581 to i64
  %584 = ptrtoint i32* %582 to i64
  %585 = sub i64 %583, %584
  %586 = sdiv exact i64 %585, 4
  %587 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %23, i32 0, i32 1
  %588 = load i32, i32* %587, align 8
  %589 = sext i32 %588 to i64
  %590 = sub nsw i64 %586, %589
  %591 = trunc i64 %590 to i32
  %592 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %593 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %592, i32 0, i32 0
  store i32 %591, i32* %593, align 8
  %594 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %23, i32 0, i32 1
  %595 = load i32, i32* %594, align 8
  %596 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %597 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %596, i32 0, i32 1
  store i32 %595, i32* %597, align 4
  br label %598

598:                                              ; preds = %571, %568, %564, %560
  %599 = load i32*, i32** %21, align 8
  %600 = icmp ne i32* %599, null
  br i1 %600, label %601, label %604

601:                                              ; preds = %598
  %602 = load i32*, i32** %21, align 8
  %603 = call i32 @jsdisp_release(i32* %602)
  br label %604

604:                                              ; preds = %601, %598
  %605 = load i32*, i32** %19, align 8
  %606 = call i32 @jsstr_release(i32* %605)
  %607 = load i64, i64* %27, align 8
  %608 = call i64 @SUCCEEDED(i64 %607)
  %609 = icmp ne i64 %608, 0
  br i1 %609, label %610, label %630

610:                                              ; preds = %604
  %611 = load i32*, i32** %13, align 8
  %612 = icmp ne i32* %611, null
  br i1 %612, label %613, label %630

613:                                              ; preds = %610
  %614 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %24, i32 0, i32 0
  %615 = load %struct.TYPE_19__*, %struct.TYPE_19__** %614, align 8
  %616 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %24, i32 0, i32 1
  %617 = load i32, i32* %616, align 8
  %618 = call i32* @jsstr_alloc_len(%struct.TYPE_19__* %615, i32 %617)
  store i32* %618, i32** %33, align 8
  %619 = load i32*, i32** %33, align 8
  %620 = icmp ne i32* %619, null
  br i1 %620, label %623, label %621

621:                                              ; preds = %613
  %622 = load i64, i64* @E_OUTOFMEMORY, align 8
  store i64 %622, i64* %7, align 8
  br label %635

623:                                              ; preds = %613
  %624 = load i32*, i32** %33, align 8
  %625 = call i32 @debugstr_jsstr(i32* %624)
  %626 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %625)
  %627 = load i32*, i32** %33, align 8
  %628 = call i32 @jsval_string(i32* %627)
  %629 = load i32*, i32** %13, align 8
  store i32 %628, i32* %629, align 4
  br label %630

630:                                              ; preds = %623, %610, %604
  %631 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %24, i32 0, i32 0
  %632 = load %struct.TYPE_19__*, %struct.TYPE_19__** %631, align 8
  %633 = call i32 @heap_free(%struct.TYPE_19__* %632)
  %634 = load i64, i64* %27, align 8
  store i64 %634, i64* %7, align 8
  br label %635

635:                                              ; preds = %630, %621, %99, %62, %47
  %636 = load i64, i64* %7, align 8
  ret i64 %636
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @TRACE(i8*, ...) #2

declare dso_local i64 @get_string_flat_val(%struct.TYPE_18__*, i32*, i32**, i32**) #2

declare dso_local i64 @FAILED(i64) #2

declare dso_local i32 @jsval_string(i32*) #2

declare dso_local i32 @jsstr_release(i32*) #2

declare dso_local i64 @is_object_instance(i32) #2

declare dso_local i32* @iface_to_jsdisp(i32) #2

declare dso_local i32 @get_object(i32) #2

declare dso_local i32 @is_class(i32*, i32) #2

declare dso_local i32 @jsdisp_release(i32*) #2

declare dso_local i64 @to_flat_string(%struct.TYPE_18__*, i32, i32**, i32**) #2

declare dso_local i64 @SUCCEEDED(i64) #2

declare dso_local i32 @jsstr_length(i32*) #2

declare dso_local i64 @regexp_match_next(%struct.TYPE_18__*, i32*, i32, i32*, %struct.TYPE_19__**) #2

declare dso_local i32* @wcsstr(i32*, i32*) #2

declare dso_local i64 @strbuf_append(%struct.TYPE_17__*, i32*, ...) #2

declare dso_local i64 @rep_call(%struct.TYPE_18__*, i32*, i32*, i32*, %struct.TYPE_19__*, i32**) #2

declare dso_local i64 @strbuf_append_jsstr(%struct.TYPE_17__*, i32*) #2

declare dso_local i32* @wcschr(i32*, i8 signext) #2

declare dso_local i32 @iswdigit(i32) #2

declare dso_local i32 @ARRAY_SIZE(i32*) #2

declare dso_local i32 @heap_free(%struct.TYPE_19__*) #2

declare dso_local i32* @jsstr_addref(i32*) #2

declare dso_local i32* @jsstr_alloc_len(%struct.TYPE_19__*, i32) #2

declare dso_local i32 @debugstr_jsstr(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
