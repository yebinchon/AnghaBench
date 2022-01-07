; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/jscript/extr_object.c_to_property_descriptor.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/jscript/extr_object.c_to_property_descriptor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i8*, i8*, i8*, i8*, i8*, i32 }

@enumerableW = common dso_local global i32 0, align 4
@PROPF_ENUMERABLE = common dso_local global i32 0, align 4
@DISP_E_UNKNOWNNAME = common dso_local global i64 0, align 8
@configurableW = common dso_local global i32 0, align 4
@PROPF_CONFIGURABLE = common dso_local global i32 0, align 4
@valueW = common dso_local global i32 0, align 4
@TRUE = common dso_local global i8* null, align 8
@writableW = common dso_local global i32 0, align 4
@PROPF_WRITABLE = common dso_local global i32 0, align 4
@S_OK = common dso_local global i64 0, align 8
@getW = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"getter is not an object\0A\00", align 1
@E_FAIL = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [25 x i8] c"getter is not JS object\0A\00", align 1
@setW = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [25 x i8] c"setter is not an object\0A\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"setter is not JS object\0A\00", align 1
@JS_E_PROP_DESC_MISMATCH = common dso_local global i32 0, align 4
@JS_E_INVALID_WRITABLE_PROP_DESC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*, i32*, %struct.TYPE_5__*)* @to_property_descriptor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @to_property_descriptor(i32* %0, i32* %1, %struct.TYPE_5__* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_5__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store %struct.TYPE_5__* %2, %struct.TYPE_5__** %7, align 8
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %13 = call i32 @memset(%struct.TYPE_5__* %12, i32 0, i32 56)
  %14 = call i32 (...) @jsval_undefined()
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 7
  store i32 %14, i32* %16, align 8
  %17 = load i32*, i32** %6, align 8
  %18 = load i32, i32* @enumerableW, align 4
  %19 = call i64 @jsdisp_get_id(i32* %17, i32 %18, i32 0, i32* %8)
  store i64 %19, i64* %11, align 8
  %20 = load i64, i64* %11, align 8
  %21 = call i64 @SUCCEEDED(i64 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %57

23:                                               ; preds = %3
  %24 = load i32, i32* @PROPF_ENUMERABLE, align 4
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = or i32 %27, %24
  store i32 %28, i32* %26, align 8
  %29 = load i32*, i32** %6, align 8
  %30 = load i32, i32* %8, align 4
  %31 = call i64 @jsdisp_propget(i32* %29, i32 %30, i32* %9)
  store i64 %31, i64* %11, align 8
  %32 = load i64, i64* %11, align 8
  %33 = call i64 @FAILED(i64 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %23
  %36 = load i64, i64* %11, align 8
  store i64 %36, i64* %4, align 8
  br label %355

37:                                               ; preds = %23
  %38 = load i32, i32* %9, align 4
  %39 = call i64 @to_boolean(i32 %38, i32* %10)
  store i64 %39, i64* %11, align 8
  %40 = load i32, i32* %9, align 4
  %41 = call i32 @jsval_release(i32 %40)
  %42 = load i64, i64* %11, align 8
  %43 = call i64 @FAILED(i64 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %37
  %46 = load i64, i64* %11, align 8
  store i64 %46, i64* %4, align 8
  br label %355

47:                                               ; preds = %37
  %48 = load i32, i32* %10, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %56

50:                                               ; preds = %47
  %51 = load i32, i32* @PROPF_ENUMERABLE, align 4
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = or i32 %54, %51
  store i32 %55, i32* %53, align 4
  br label %56

56:                                               ; preds = %50, %47
  br label %64

57:                                               ; preds = %3
  %58 = load i64, i64* %11, align 8
  %59 = load i64, i64* @DISP_E_UNKNOWNNAME, align 8
  %60 = icmp ne i64 %58, %59
  br i1 %60, label %61, label %63

61:                                               ; preds = %57
  %62 = load i64, i64* %11, align 8
  store i64 %62, i64* %4, align 8
  br label %355

63:                                               ; preds = %57
  br label %64

64:                                               ; preds = %63, %56
  %65 = load i32*, i32** %6, align 8
  %66 = load i32, i32* @configurableW, align 4
  %67 = call i64 @jsdisp_get_id(i32* %65, i32 %66, i32 0, i32* %8)
  store i64 %67, i64* %11, align 8
  %68 = load i64, i64* %11, align 8
  %69 = call i64 @SUCCEEDED(i64 %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %105

71:                                               ; preds = %64
  %72 = load i32, i32* @PROPF_CONFIGURABLE, align 4
  %73 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = or i32 %75, %72
  store i32 %76, i32* %74, align 8
  %77 = load i32*, i32** %6, align 8
  %78 = load i32, i32* %8, align 4
  %79 = call i64 @jsdisp_propget(i32* %77, i32 %78, i32* %9)
  store i64 %79, i64* %11, align 8
  %80 = load i64, i64* %11, align 8
  %81 = call i64 @FAILED(i64 %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %85

83:                                               ; preds = %71
  %84 = load i64, i64* %11, align 8
  store i64 %84, i64* %4, align 8
  br label %355

85:                                               ; preds = %71
  %86 = load i32, i32* %9, align 4
  %87 = call i64 @to_boolean(i32 %86, i32* %10)
  store i64 %87, i64* %11, align 8
  %88 = load i32, i32* %9, align 4
  %89 = call i32 @jsval_release(i32 %88)
  %90 = load i64, i64* %11, align 8
  %91 = call i64 @FAILED(i64 %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %95

93:                                               ; preds = %85
  %94 = load i64, i64* %11, align 8
  store i64 %94, i64* %4, align 8
  br label %355

95:                                               ; preds = %85
  %96 = load i32, i32* %10, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %104

98:                                               ; preds = %95
  %99 = load i32, i32* @PROPF_CONFIGURABLE, align 4
  %100 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %101 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = or i32 %102, %99
  store i32 %103, i32* %101, align 4
  br label %104

104:                                              ; preds = %98, %95
  br label %112

105:                                              ; preds = %64
  %106 = load i64, i64* %11, align 8
  %107 = load i64, i64* @DISP_E_UNKNOWNNAME, align 8
  %108 = icmp ne i64 %106, %107
  br i1 %108, label %109, label %111

109:                                              ; preds = %105
  %110 = load i64, i64* %11, align 8
  store i64 %110, i64* %4, align 8
  br label %355

111:                                              ; preds = %105
  br label %112

112:                                              ; preds = %111, %104
  %113 = load i32*, i32** %6, align 8
  %114 = load i32, i32* @valueW, align 4
  %115 = call i64 @jsdisp_get_id(i32* %113, i32 %114, i32 0, i32* %8)
  store i64 %115, i64* %11, align 8
  %116 = load i64, i64* %11, align 8
  %117 = call i64 @SUCCEEDED(i64 %116)
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %134

119:                                              ; preds = %112
  %120 = load i32*, i32** %6, align 8
  %121 = load i32, i32* %8, align 4
  %122 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %123 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %122, i32 0, i32 7
  %124 = call i64 @jsdisp_propget(i32* %120, i32 %121, i32* %123)
  store i64 %124, i64* %11, align 8
  %125 = load i64, i64* %11, align 8
  %126 = call i64 @FAILED(i64 %125)
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %130

128:                                              ; preds = %119
  %129 = load i64, i64* %11, align 8
  store i64 %129, i64* %4, align 8
  br label %355

130:                                              ; preds = %119
  %131 = load i8*, i8** @TRUE, align 8
  %132 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %133 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %132, i32 0, i32 2
  store i8* %131, i8** %133, align 8
  br label %141

134:                                              ; preds = %112
  %135 = load i64, i64* %11, align 8
  %136 = load i64, i64* @DISP_E_UNKNOWNNAME, align 8
  %137 = icmp ne i64 %135, %136
  br i1 %137, label %138, label %140

138:                                              ; preds = %134
  %139 = load i64, i64* %11, align 8
  store i64 %139, i64* %4, align 8
  br label %355

140:                                              ; preds = %134
  br label %141

141:                                              ; preds = %140, %130
  %142 = load i32*, i32** %6, align 8
  %143 = load i32, i32* @writableW, align 4
  %144 = call i64 @jsdisp_get_id(i32* %142, i32 %143, i32 0, i32* %8)
  store i64 %144, i64* %11, align 8
  %145 = load i64, i64* %11, align 8
  %146 = call i64 @SUCCEEDED(i64 %145)
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %148, label %179

148:                                              ; preds = %141
  %149 = load i32, i32* @PROPF_WRITABLE, align 4
  %150 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %151 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 8
  %153 = or i32 %152, %149
  store i32 %153, i32* %151, align 8
  %154 = load i32*, i32** %6, align 8
  %155 = load i32, i32* %8, align 4
  %156 = call i64 @jsdisp_propget(i32* %154, i32 %155, i32* %9)
  store i64 %156, i64* %11, align 8
  %157 = load i64, i64* %11, align 8
  %158 = call i64 @SUCCEEDED(i64 %157)
  %159 = icmp ne i64 %158, 0
  br i1 %159, label %160, label %178

160:                                              ; preds = %148
  %161 = load i32, i32* %9, align 4
  %162 = call i64 @to_boolean(i32 %161, i32* %10)
  store i64 %162, i64* %11, align 8
  %163 = load i32, i32* %9, align 4
  %164 = call i32 @jsval_release(i32 %163)
  %165 = load i64, i64* %11, align 8
  %166 = call i64 @SUCCEEDED(i64 %165)
  %167 = icmp ne i64 %166, 0
  br i1 %167, label %168, label %177

168:                                              ; preds = %160
  %169 = load i32, i32* %10, align 4
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %171, label %177

171:                                              ; preds = %168
  %172 = load i32, i32* @PROPF_WRITABLE, align 4
  %173 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %174 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %173, i32 0, i32 1
  %175 = load i32, i32* %174, align 4
  %176 = or i32 %175, %172
  store i32 %176, i32* %174, align 4
  br label %177

177:                                              ; preds = %171, %168, %160
  br label %178

178:                                              ; preds = %177, %148
  br label %186

179:                                              ; preds = %141
  %180 = load i64, i64* %11, align 8
  %181 = load i64, i64* @DISP_E_UNKNOWNNAME, align 8
  %182 = icmp eq i64 %180, %181
  br i1 %182, label %183, label %185

183:                                              ; preds = %179
  %184 = load i64, i64* @S_OK, align 8
  store i64 %184, i64* %11, align 8
  br label %185

185:                                              ; preds = %183, %179
  br label %186

186:                                              ; preds = %185, %178
  %187 = load i64, i64* %11, align 8
  %188 = call i64 @FAILED(i64 %187)
  %189 = icmp ne i64 %188, 0
  br i1 %189, label %190, label %194

190:                                              ; preds = %186
  %191 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %192 = call i32 @release_property_descriptor(%struct.TYPE_5__* %191)
  %193 = load i64, i64* %11, align 8
  store i64 %193, i64* %4, align 8
  br label %355

194:                                              ; preds = %186
  %195 = load i32*, i32** %6, align 8
  %196 = load i32, i32* @getW, align 4
  %197 = call i64 @jsdisp_get_id(i32* %195, i32 %196, i32 0, i32* %8)
  store i64 %197, i64* %11, align 8
  %198 = load i64, i64* %11, align 8
  %199 = call i64 @SUCCEEDED(i64 %198)
  %200 = icmp ne i64 %199, 0
  br i1 %200, label %201, label %239

201:                                              ; preds = %194
  %202 = load i8*, i8** @TRUE, align 8
  %203 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %204 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %203, i32 0, i32 4
  store i8* %202, i8** %204, align 8
  %205 = load i32*, i32** %6, align 8
  %206 = load i32, i32* %8, align 4
  %207 = call i64 @jsdisp_propget(i32* %205, i32 %206, i32* %9)
  store i64 %207, i64* %11, align 8
  %208 = load i64, i64* %11, align 8
  %209 = call i64 @SUCCEEDED(i64 %208)
  %210 = icmp ne i64 %209, 0
  br i1 %210, label %211, label %238

211:                                              ; preds = %201
  %212 = load i32, i32* %9, align 4
  %213 = call i32 @is_undefined(i32 %212)
  %214 = icmp ne i32 %213, 0
  br i1 %214, label %238, label %215

215:                                              ; preds = %211
  %216 = load i32, i32* %9, align 4
  %217 = call i32 @is_object_instance(i32 %216)
  %218 = icmp ne i32 %217, 0
  br i1 %218, label %224, label %219

219:                                              ; preds = %215
  %220 = call i32 @FIXME(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %221 = load i32, i32* %9, align 4
  %222 = call i32 @jsval_release(i32 %221)
  %223 = load i64, i64* @E_FAIL, align 8
  store i64 %223, i64* %11, align 8
  br label %237

224:                                              ; preds = %215
  %225 = load i32, i32* %9, align 4
  %226 = call i32 @get_object(i32 %225)
  %227 = call i8* @to_jsdisp(i32 %226)
  %228 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %229 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %228, i32 0, i32 6
  store i8* %227, i8** %229, align 8
  %230 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %231 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %230, i32 0, i32 6
  %232 = load i8*, i8** %231, align 8
  %233 = icmp ne i8* %232, null
  br i1 %233, label %236, label %234

234:                                              ; preds = %224
  %235 = call i32 @FIXME(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  br label %236

236:                                              ; preds = %234, %224
  br label %237

237:                                              ; preds = %236, %219
  br label %238

238:                                              ; preds = %237, %211, %201
  br label %246

239:                                              ; preds = %194
  %240 = load i64, i64* %11, align 8
  %241 = load i64, i64* @DISP_E_UNKNOWNNAME, align 8
  %242 = icmp eq i64 %240, %241
  br i1 %242, label %243, label %245

243:                                              ; preds = %239
  %244 = load i64, i64* @S_OK, align 8
  store i64 %244, i64* %11, align 8
  br label %245

245:                                              ; preds = %243, %239
  br label %246

246:                                              ; preds = %245, %238
  %247 = load i64, i64* %11, align 8
  %248 = call i64 @FAILED(i64 %247)
  %249 = icmp ne i64 %248, 0
  br i1 %249, label %250, label %254

250:                                              ; preds = %246
  %251 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %252 = call i32 @release_property_descriptor(%struct.TYPE_5__* %251)
  %253 = load i64, i64* %11, align 8
  store i64 %253, i64* %4, align 8
  br label %355

254:                                              ; preds = %246
  %255 = load i32*, i32** %6, align 8
  %256 = load i32, i32* @setW, align 4
  %257 = call i64 @jsdisp_get_id(i32* %255, i32 %256, i32 0, i32* %8)
  store i64 %257, i64* %11, align 8
  %258 = load i64, i64* %11, align 8
  %259 = call i64 @SUCCEEDED(i64 %258)
  %260 = icmp ne i64 %259, 0
  br i1 %260, label %261, label %299

261:                                              ; preds = %254
  %262 = load i8*, i8** @TRUE, align 8
  %263 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %264 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %263, i32 0, i32 3
  store i8* %262, i8** %264, align 8
  %265 = load i32*, i32** %6, align 8
  %266 = load i32, i32* %8, align 4
  %267 = call i64 @jsdisp_propget(i32* %265, i32 %266, i32* %9)
  store i64 %267, i64* %11, align 8
  %268 = load i64, i64* %11, align 8
  %269 = call i64 @SUCCEEDED(i64 %268)
  %270 = icmp ne i64 %269, 0
  br i1 %270, label %271, label %298

271:                                              ; preds = %261
  %272 = load i32, i32* %9, align 4
  %273 = call i32 @is_undefined(i32 %272)
  %274 = icmp ne i32 %273, 0
  br i1 %274, label %298, label %275

275:                                              ; preds = %271
  %276 = load i32, i32* %9, align 4
  %277 = call i32 @is_object_instance(i32 %276)
  %278 = icmp ne i32 %277, 0
  br i1 %278, label %284, label %279

279:                                              ; preds = %275
  %280 = call i32 @FIXME(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  %281 = load i32, i32* %9, align 4
  %282 = call i32 @jsval_release(i32 %281)
  %283 = load i64, i64* @E_FAIL, align 8
  store i64 %283, i64* %11, align 8
  br label %297

284:                                              ; preds = %275
  %285 = load i32, i32* %9, align 4
  %286 = call i32 @get_object(i32 %285)
  %287 = call i8* @to_jsdisp(i32 %286)
  %288 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %289 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %288, i32 0, i32 5
  store i8* %287, i8** %289, align 8
  %290 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %291 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %290, i32 0, i32 5
  %292 = load i8*, i8** %291, align 8
  %293 = icmp ne i8* %292, null
  br i1 %293, label %296, label %294

294:                                              ; preds = %284
  %295 = call i32 @FIXME(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0))
  br label %296

296:                                              ; preds = %294, %284
  br label %297

297:                                              ; preds = %296, %279
  br label %298

298:                                              ; preds = %297, %271, %261
  br label %306

299:                                              ; preds = %254
  %300 = load i64, i64* %11, align 8
  %301 = load i64, i64* @DISP_E_UNKNOWNNAME, align 8
  %302 = icmp eq i64 %300, %301
  br i1 %302, label %303, label %305

303:                                              ; preds = %299
  %304 = load i64, i64* @S_OK, align 8
  store i64 %304, i64* %11, align 8
  br label %305

305:                                              ; preds = %303, %299
  br label %306

306:                                              ; preds = %305, %298
  %307 = load i64, i64* %11, align 8
  %308 = call i64 @FAILED(i64 %307)
  %309 = icmp ne i64 %308, 0
  br i1 %309, label %310, label %314

310:                                              ; preds = %306
  %311 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %312 = call i32 @release_property_descriptor(%struct.TYPE_5__* %311)
  %313 = load i64, i64* %11, align 8
  store i64 %313, i64* %4, align 8
  br label %355

314:                                              ; preds = %306
  %315 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %316 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %315, i32 0, i32 4
  %317 = load i8*, i8** %316, align 8
  %318 = icmp ne i8* %317, null
  br i1 %318, label %324, label %319

319:                                              ; preds = %314
  %320 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %321 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %320, i32 0, i32 3
  %322 = load i8*, i8** %321, align 8
  %323 = icmp ne i8* %322, null
  br i1 %323, label %324, label %346

324:                                              ; preds = %319, %314
  %325 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %326 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %325, i32 0, i32 2
  %327 = load i8*, i8** %326, align 8
  %328 = icmp ne i8* %327, null
  br i1 %328, label %329, label %333

329:                                              ; preds = %324
  %330 = load i32*, i32** %5, align 8
  %331 = load i32, i32* @JS_E_PROP_DESC_MISMATCH, align 4
  %332 = call i64 @throw_type_error(i32* %330, i32 %331, i32* null)
  store i64 %332, i64* %11, align 8
  br label %345

333:                                              ; preds = %324
  %334 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %335 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %334, i32 0, i32 0
  %336 = load i32, i32* %335, align 8
  %337 = load i32, i32* @PROPF_WRITABLE, align 4
  %338 = and i32 %336, %337
  %339 = icmp ne i32 %338, 0
  br i1 %339, label %340, label %344

340:                                              ; preds = %333
  %341 = load i32*, i32** %5, align 8
  %342 = load i32, i32* @JS_E_INVALID_WRITABLE_PROP_DESC, align 4
  %343 = call i64 @throw_type_error(i32* %341, i32 %342, i32* null)
  store i64 %343, i64* %11, align 8
  br label %344

344:                                              ; preds = %340, %333
  br label %345

345:                                              ; preds = %344, %329
  br label %346

346:                                              ; preds = %345, %319
  %347 = load i64, i64* %11, align 8
  %348 = call i64 @FAILED(i64 %347)
  %349 = icmp ne i64 %348, 0
  br i1 %349, label %350, label %353

350:                                              ; preds = %346
  %351 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %352 = call i32 @release_property_descriptor(%struct.TYPE_5__* %351)
  br label %353

353:                                              ; preds = %350, %346
  %354 = load i64, i64* %11, align 8
  store i64 %354, i64* %4, align 8
  br label %355

355:                                              ; preds = %353, %310, %250, %190, %138, %128, %109, %93, %83, %61, %45, %35
  %356 = load i64, i64* %4, align 8
  ret i64 %356
}

declare dso_local i32 @memset(%struct.TYPE_5__*, i32, i32) #1

declare dso_local i32 @jsval_undefined(...) #1

declare dso_local i64 @jsdisp_get_id(i32*, i32, i32, i32*) #1

declare dso_local i64 @SUCCEEDED(i64) #1

declare dso_local i64 @jsdisp_propget(i32*, i32, i32*) #1

declare dso_local i64 @FAILED(i64) #1

declare dso_local i64 @to_boolean(i32, i32*) #1

declare dso_local i32 @jsval_release(i32) #1

declare dso_local i32 @release_property_descriptor(%struct.TYPE_5__*) #1

declare dso_local i32 @is_undefined(i32) #1

declare dso_local i32 @is_object_instance(i32) #1

declare dso_local i32 @FIXME(i8*) #1

declare dso_local i8* @to_jsdisp(i32) #1

declare dso_local i32 @get_object(i32) #1

declare dso_local i64 @throw_type_error(i32*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
