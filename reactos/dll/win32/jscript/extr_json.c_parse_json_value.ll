; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/jscript/extr_json.c_parse_json_value.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/jscript/extr_json.c_parse_json_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i8*, i32, i32 }

@nullW = common dso_local global i32 0, align 4
@S_OK = common dso_local global i32 0, align 4
@trueW = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@falseW = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"missing ':'\0A\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"expected ','\0A\00", align 1
@E_OUTOFMEMORY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [20 x i8] c"Syntax error at %s\0A\00", align 1
@E_FAIL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, i32*)* @parse_json_value to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_json_value(%struct.TYPE_6__* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca double, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %4, align 8
  store i32* %1, i32** %5, align 8
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %18 = call signext i8 @skip_spaces(%struct.TYPE_6__* %17)
  %19 = sext i8 %18 to i32
  switch i32 %19, label %261 [
    i32 110, label %20
    i32 116, label %30
    i32 102, label %41
    i32 123, label %52
    i32 34, label %159
    i32 91, label %181
  ]

20:                                               ; preds = %2
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %22 = load i32, i32* @nullW, align 4
  %23 = call i32 @is_keyword(%struct.TYPE_6__* %21, i32 %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %20
  br label %322

26:                                               ; preds = %20
  %27 = call i32 (...) @jsval_null()
  %28 = load i32*, i32** %5, align 8
  store i32 %27, i32* %28, align 4
  %29 = load i32, i32* @S_OK, align 4
  store i32 %29, i32* %3, align 4
  br label %329

30:                                               ; preds = %2
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %32 = load i32, i32* @trueW, align 4
  %33 = call i32 @is_keyword(%struct.TYPE_6__* %31, i32 %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %30
  br label %322

36:                                               ; preds = %30
  %37 = load i32, i32* @TRUE, align 4
  %38 = call i32 @jsval_bool(i32 %37)
  %39 = load i32*, i32** %5, align 8
  store i32 %38, i32* %39, align 4
  %40 = load i32, i32* @S_OK, align 4
  store i32 %40, i32* %3, align 4
  br label %329

41:                                               ; preds = %2
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %43 = load i32, i32* @falseW, align 4
  %44 = call i32 @is_keyword(%struct.TYPE_6__* %42, i32 %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %47, label %46

46:                                               ; preds = %41
  br label %322

47:                                               ; preds = %41
  %48 = load i32, i32* @FALSE, align 4
  %49 = call i32 @jsval_bool(i32 %48)
  %50 = load i32*, i32** %5, align 8
  store i32 %49, i32* %50, align 4
  %51 = load i32, i32* @S_OK, align 4
  store i32 %51, i32* %3, align 4
  br label %329

52:                                               ; preds = %2
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @create_object(i32 %55, i32* null, i32** %8)
  store i32 %56, i32* %6, align 4
  %57 = load i32, i32* %6, align 4
  %58 = call i32 @FAILED(i32 %57)
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %52
  %61 = load i32, i32* %6, align 4
  store i32 %61, i32* %3, align 4
  br label %329

62:                                               ; preds = %52
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 0
  %65 = load i8*, i8** %64, align 8
  %66 = getelementptr inbounds i8, i8* %65, i32 1
  store i8* %66, i8** %64, align 8
  %67 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %68 = call signext i8 @skip_spaces(%struct.TYPE_6__* %67)
  %69 = sext i8 %68 to i32
  %70 = icmp eq i32 %69, 125
  br i1 %70, label %71, label %80

71:                                               ; preds = %62
  %72 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 0
  %74 = load i8*, i8** %73, align 8
  %75 = getelementptr inbounds i8, i8* %74, i32 1
  store i8* %75, i8** %73, align 8
  %76 = load i32*, i32** %8, align 8
  %77 = call i32 @jsval_obj(i32* %76)
  %78 = load i32*, i32** %5, align 8
  store i32 %77, i32* %78, align 4
  %79 = load i32, i32* @S_OK, align 4
  store i32 %79, i32* %3, align 4
  br label %329

80:                                               ; preds = %62
  br label %81

81:                                               ; preds = %80, %153
  %82 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 0
  %84 = load i8*, i8** %83, align 8
  %85 = load i8, i8* %84, align 1
  %86 = sext i8 %85 to i32
  %87 = icmp ne i32 %86, 34
  br i1 %87, label %88, label %89

88:                                               ; preds = %81
  br label %156

89:                                               ; preds = %81
  %90 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %91 = call i32 @parse_json_string(%struct.TYPE_6__* %90, i32** %7)
  store i32 %91, i32* %6, align 4
  %92 = load i32, i32* %6, align 4
  %93 = call i32 @FAILED(i32 %92)
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %96

95:                                               ; preds = %89
  br label %156

96:                                               ; preds = %89
  %97 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %98 = call signext i8 @skip_spaces(%struct.TYPE_6__* %97)
  %99 = sext i8 %98 to i32
  %100 = icmp ne i32 %99, 58
  br i1 %100, label %101, label %105

101:                                              ; preds = %96
  %102 = call i32 (i8*, ...) @FIXME(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %103 = load i32*, i32** %7, align 8
  %104 = call i32 @heap_free(i32* %103)
  br label %156

105:                                              ; preds = %96
  %106 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %107 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %106, i32 0, i32 0
  %108 = load i8*, i8** %107, align 8
  %109 = getelementptr inbounds i8, i8* %108, i32 1
  store i8* %109, i8** %107, align 8
  %110 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %111 = call i32 @parse_json_value(%struct.TYPE_6__* %110, i32* %9)
  store i32 %111, i32* %6, align 4
  %112 = load i32, i32* %6, align 4
  %113 = call i32 @SUCCEEDED(i32 %112)
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %122

115:                                              ; preds = %105
  %116 = load i32*, i32** %8, align 8
  %117 = load i32*, i32** %7, align 8
  %118 = load i32, i32* %9, align 4
  %119 = call i32 @jsdisp_propput_name(i32* %116, i32* %117, i32 %118)
  store i32 %119, i32* %6, align 4
  %120 = load i32, i32* %9, align 4
  %121 = call i32 @jsval_release(i32 %120)
  br label %122

122:                                              ; preds = %115, %105
  %123 = load i32*, i32** %7, align 8
  %124 = call i32 @heap_free(i32* %123)
  %125 = load i32, i32* %6, align 4
  %126 = call i32 @FAILED(i32 %125)
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %129

128:                                              ; preds = %122
  br label %156

129:                                              ; preds = %122
  %130 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %131 = call signext i8 @skip_spaces(%struct.TYPE_6__* %130)
  %132 = sext i8 %131 to i32
  %133 = icmp eq i32 %132, 125
  br i1 %133, label %134, label %143

134:                                              ; preds = %129
  %135 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %136 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %135, i32 0, i32 0
  %137 = load i8*, i8** %136, align 8
  %138 = getelementptr inbounds i8, i8* %137, i32 1
  store i8* %138, i8** %136, align 8
  %139 = load i32*, i32** %8, align 8
  %140 = call i32 @jsval_obj(i32* %139)
  %141 = load i32*, i32** %5, align 8
  store i32 %140, i32* %141, align 4
  %142 = load i32, i32* @S_OK, align 4
  store i32 %142, i32* %3, align 4
  br label %329

143:                                              ; preds = %129
  %144 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %145 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %144, i32 0, i32 0
  %146 = load i8*, i8** %145, align 8
  %147 = getelementptr inbounds i8, i8* %146, i32 1
  store i8* %147, i8** %145, align 8
  %148 = load i8, i8* %146, align 1
  %149 = sext i8 %148 to i32
  %150 = icmp ne i32 %149, 44
  br i1 %150, label %151, label %153

151:                                              ; preds = %143
  %152 = call i32 (i8*, ...) @FIXME(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  br label %156

153:                                              ; preds = %143
  %154 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %155 = call signext i8 @skip_spaces(%struct.TYPE_6__* %154)
  br label %81

156:                                              ; preds = %151, %128, %101, %95, %88
  %157 = load i32*, i32** %8, align 8
  %158 = call i32 @jsdisp_release(i32* %157)
  br label %322

159:                                              ; preds = %2
  %160 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %161 = call i32 @parse_json_string(%struct.TYPE_6__* %160, i32** %10)
  store i32 %161, i32* %6, align 4
  %162 = load i32, i32* %6, align 4
  %163 = call i32 @FAILED(i32 %162)
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %167

165:                                              ; preds = %159
  %166 = load i32, i32* %6, align 4
  store i32 %166, i32* %3, align 4
  br label %329

167:                                              ; preds = %159
  %168 = load i32*, i32** %10, align 8
  %169 = call i32* @jsstr_alloc(i32* %168)
  store i32* %169, i32** %11, align 8
  %170 = load i32*, i32** %10, align 8
  %171 = call i32 @heap_free(i32* %170)
  %172 = load i32*, i32** %11, align 8
  %173 = icmp ne i32* %172, null
  br i1 %173, label %176, label %174

174:                                              ; preds = %167
  %175 = load i32, i32* @E_OUTOFMEMORY, align 4
  store i32 %175, i32* %3, align 4
  br label %329

176:                                              ; preds = %167
  %177 = load i32*, i32** %11, align 8
  %178 = call i32 @jsval_string(i32* %177)
  %179 = load i32*, i32** %5, align 8
  store i32 %178, i32* %179, align 4
  %180 = load i32, i32* @S_OK, align 4
  store i32 %180, i32* %3, align 4
  br label %329

181:                                              ; preds = %2
  store i32 0, i32* %13, align 4
  %182 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %183 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %182, i32 0, i32 2
  %184 = load i32, i32* %183, align 4
  %185 = call i32 @create_array(i32 %184, i32 0, i32** %12)
  store i32 %185, i32* %6, align 4
  %186 = load i32, i32* %6, align 4
  %187 = call i32 @FAILED(i32 %186)
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %189, label %191

189:                                              ; preds = %181
  %190 = load i32, i32* %6, align 4
  store i32 %190, i32* %3, align 4
  br label %329

191:                                              ; preds = %181
  %192 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %193 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %192, i32 0, i32 0
  %194 = load i8*, i8** %193, align 8
  %195 = getelementptr inbounds i8, i8* %194, i32 1
  store i8* %195, i8** %193, align 8
  %196 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %197 = call signext i8 @skip_spaces(%struct.TYPE_6__* %196)
  %198 = sext i8 %197 to i32
  %199 = icmp eq i32 %198, 93
  br i1 %199, label %200, label %209

200:                                              ; preds = %191
  %201 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %202 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %201, i32 0, i32 0
  %203 = load i8*, i8** %202, align 8
  %204 = getelementptr inbounds i8, i8* %203, i32 1
  store i8* %204, i8** %202, align 8
  %205 = load i32*, i32** %12, align 8
  %206 = call i32 @jsval_obj(i32* %205)
  %207 = load i32*, i32** %5, align 8
  store i32 %206, i32* %207, align 4
  %208 = load i32, i32* @S_OK, align 4
  store i32 %208, i32* %3, align 4
  br label %329

209:                                              ; preds = %191
  br label %210

210:                                              ; preds = %209, %251
  %211 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %212 = call i32 @parse_json_value(%struct.TYPE_6__* %211, i32* %14)
  store i32 %212, i32* %6, align 4
  %213 = load i32, i32* %6, align 4
  %214 = call i32 @FAILED(i32 %213)
  %215 = icmp ne i32 %214, 0
  br i1 %215, label %216, label %217

216:                                              ; preds = %210
  br label %258

217:                                              ; preds = %210
  %218 = load i32*, i32** %12, align 8
  %219 = load i32, i32* %13, align 4
  %220 = load i32, i32* %14, align 4
  %221 = call i32 @jsdisp_propput_idx(i32* %218, i32 %219, i32 %220)
  store i32 %221, i32* %6, align 4
  %222 = load i32, i32* %14, align 4
  %223 = call i32 @jsval_release(i32 %222)
  %224 = load i32, i32* %6, align 4
  %225 = call i32 @FAILED(i32 %224)
  %226 = icmp ne i32 %225, 0
  br i1 %226, label %227, label %228

227:                                              ; preds = %217
  br label %258

228:                                              ; preds = %217
  %229 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %230 = call signext i8 @skip_spaces(%struct.TYPE_6__* %229)
  %231 = sext i8 %230 to i32
  %232 = icmp eq i32 %231, 93
  br i1 %232, label %233, label %242

233:                                              ; preds = %228
  %234 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %235 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %234, i32 0, i32 0
  %236 = load i8*, i8** %235, align 8
  %237 = getelementptr inbounds i8, i8* %236, i32 1
  store i8* %237, i8** %235, align 8
  %238 = load i32*, i32** %12, align 8
  %239 = call i32 @jsval_obj(i32* %238)
  %240 = load i32*, i32** %5, align 8
  store i32 %239, i32* %240, align 4
  %241 = load i32, i32* @S_OK, align 4
  store i32 %241, i32* %3, align 4
  br label %329

242:                                              ; preds = %228
  %243 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %244 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %243, i32 0, i32 0
  %245 = load i8*, i8** %244, align 8
  %246 = load i8, i8* %245, align 1
  %247 = sext i8 %246 to i32
  %248 = icmp ne i32 %247, 44
  br i1 %248, label %249, label %251

249:                                              ; preds = %242
  %250 = call i32 (i8*, ...) @FIXME(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  br label %258

251:                                              ; preds = %242
  %252 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %253 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %252, i32 0, i32 0
  %254 = load i8*, i8** %253, align 8
  %255 = getelementptr inbounds i8, i8* %254, i32 1
  store i8* %255, i8** %253, align 8
  %256 = load i32, i32* %13, align 4
  %257 = add i32 %256, 1
  store i32 %257, i32* %13, align 4
  br label %210

258:                                              ; preds = %249, %227, %216
  %259 = load i32*, i32** %12, align 8
  %260 = call i32 @jsdisp_release(i32* %259)
  br label %322

261:                                              ; preds = %2
  store i32 1, i32* %15, align 4
  %262 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %263 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %262, i32 0, i32 0
  %264 = load i8*, i8** %263, align 8
  %265 = load i8, i8* %264, align 1
  %266 = sext i8 %265 to i32
  %267 = icmp eq i32 %266, 45
  br i1 %267, label %268, label %275

268:                                              ; preds = %261
  store i32 -1, i32* %15, align 4
  %269 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %270 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %269, i32 0, i32 0
  %271 = load i8*, i8** %270, align 8
  %272 = getelementptr inbounds i8, i8* %271, i32 1
  store i8* %272, i8** %270, align 8
  %273 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %274 = call signext i8 @skip_spaces(%struct.TYPE_6__* %273)
  br label %275

275:                                              ; preds = %268, %261
  %276 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %277 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %276, i32 0, i32 0
  %278 = load i8*, i8** %277, align 8
  %279 = load i8, i8* %278, align 1
  %280 = sext i8 %279 to i32
  %281 = icmp eq i32 %280, 48
  br i1 %281, label %282, label %302

282:                                              ; preds = %275
  %283 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %284 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %283, i32 0, i32 0
  %285 = load i8*, i8** %284, align 8
  %286 = getelementptr inbounds i8, i8* %285, i64 1
  %287 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %288 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %287, i32 0, i32 1
  %289 = load i32, i32* %288, align 8
  %290 = sext i32 %289 to i64
  %291 = inttoptr i64 %290 to i8*
  %292 = icmp ult i8* %286, %291
  br i1 %292, label %293, label %302

293:                                              ; preds = %282
  %294 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %295 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %294, i32 0, i32 0
  %296 = load i8*, i8** %295, align 8
  %297 = getelementptr inbounds i8, i8* %296, i64 1
  %298 = load i8, i8* %297, align 1
  %299 = call i32 @iswdigit(i8 signext %298)
  %300 = icmp ne i32 %299, 0
  br i1 %300, label %301, label %302

301:                                              ; preds = %293
  br label %322

302:                                              ; preds = %293, %282, %275
  %303 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %304 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %303, i32 0, i32 0
  %305 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %306 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %305, i32 0, i32 1
  %307 = load i32, i32* %306, align 8
  %308 = call i32 @parse_decimal(i8** %304, i32 %307, double* %16)
  store i32 %308, i32* %6, align 4
  %309 = load i32, i32* %6, align 4
  %310 = call i32 @FAILED(i32 %309)
  %311 = icmp ne i32 %310, 0
  br i1 %311, label %312, label %313

312:                                              ; preds = %302
  br label %322

313:                                              ; preds = %302
  %314 = load i32, i32* %15, align 4
  %315 = sitofp i32 %314 to double
  %316 = load double, double* %16, align 8
  %317 = fmul double %315, %316
  %318 = fptosi double %317 to i32
  %319 = call i32 @jsval_number(i32 %318)
  %320 = load i32*, i32** %5, align 8
  store i32 %319, i32* %320, align 4
  %321 = load i32, i32* @S_OK, align 4
  store i32 %321, i32* %3, align 4
  br label %329

322:                                              ; preds = %312, %301, %258, %156, %46, %35, %25
  %323 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %324 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %323, i32 0, i32 0
  %325 = load i8*, i8** %324, align 8
  %326 = call i32 @debugstr_w(i8* %325)
  %327 = call i32 (i8*, ...) @FIXME(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i32 %326)
  %328 = load i32, i32* @E_FAIL, align 4
  store i32 %328, i32* %3, align 4
  br label %329

329:                                              ; preds = %322, %313, %233, %200, %189, %176, %174, %165, %134, %71, %60, %47, %36, %26
  %330 = load i32, i32* %3, align 4
  ret i32 %330
}

declare dso_local signext i8 @skip_spaces(%struct.TYPE_6__*) #1

declare dso_local i32 @is_keyword(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @jsval_null(...) #1

declare dso_local i32 @jsval_bool(i32) #1

declare dso_local i32 @create_object(i32, i32*, i32**) #1

declare dso_local i32 @FAILED(i32) #1

declare dso_local i32 @jsval_obj(i32*) #1

declare dso_local i32 @parse_json_string(%struct.TYPE_6__*, i32**) #1

declare dso_local i32 @FIXME(i8*, ...) #1

declare dso_local i32 @heap_free(i32*) #1

declare dso_local i32 @SUCCEEDED(i32) #1

declare dso_local i32 @jsdisp_propput_name(i32*, i32*, i32) #1

declare dso_local i32 @jsval_release(i32) #1

declare dso_local i32 @jsdisp_release(i32*) #1

declare dso_local i32* @jsstr_alloc(i32*) #1

declare dso_local i32 @jsval_string(i32*) #1

declare dso_local i32 @create_array(i32, i32, i32**) #1

declare dso_local i32 @jsdisp_propput_idx(i32*, i32, i32) #1

declare dso_local i32 @iswdigit(i8 signext) #1

declare dso_local i32 @parse_decimal(i8**, i32, double*) #1

declare dso_local i32 @jsval_number(i32) #1

declare dso_local i32 @debugstr_w(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
