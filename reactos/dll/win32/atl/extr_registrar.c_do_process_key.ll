; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/atl/extr_registrar.c_do_process_key.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/atl/extr_registrar.c_do_process_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i8*, i32 }

@do_process_key.wstrNoRemove = internal constant [9 x i8] c"NoRemove\00", align 1
@do_process_key.wstrForceRemove = internal constant [12 x i8] c"ForceRemove\00", align 1
@do_process_key.wstrDelete = internal constant [7 x i8] c"Delete\00", align 1
@do_process_key.wstrval = internal constant [4 x i8] c"val\00", align 1
@.str = private unnamed_addr constant [11 x i8] c"name = %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"Deleting %s\0A\00", align 1
@ERROR_SUCCESS = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [34 x i8] c"Could not create(open) key: %08x\0A\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"Could not open key %s: %08x\0A\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"Wrong registry type: %s\0A\00", align 1
@DISP_E_EXCEPTION = common dso_local global i32 0, align 4
@REG_SZ = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [30 x i8] c"Could set value of key: %08x\0A\00", align 1
@REG_DWORD = common dso_local global i32 0, align 4
@E_OUTOFMEMORY = common dso_local global i32 0, align 4
@E_FAIL = common dso_local global i32 0, align 4
@REG_BINARY = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [36 x i8] c"Could not set value of key: 0x%08x\0A\00", align 1
@.str.7 = private unnamed_addr constant [25 x i8] c"Wrong resource type: %s\0A\00", align 1
@.str.8 = private unnamed_addr constant [16 x i8] c"value not set!\0A\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"%x %x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8**, i64, %struct.TYPE_6__*, i32)* @do_process_key to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_process_key(i8** %0, i64 %1, %struct.TYPE_6__* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8**, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_6__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.TYPE_6__, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca [3 x i8], align 1
  store i8** %0, i8*** %6, align 8
  store i64 %1, i64* %7, align 8
  store %struct.TYPE_6__* %2, %struct.TYPE_6__** %8, align 8
  store i32 %3, i32* %9, align 4
  store i64 0, i64* %13, align 8
  store i32 0, i32* %15, align 4
  %21 = load i8**, i8*** %6, align 8
  %22 = load i8*, i8** %21, align 8
  store i8* %22, i8** %10, align 8
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %24 = call i32 @get_word(i8** %10, %struct.TYPE_6__* %23)
  store i32 %24, i32* %11, align 4
  %25 = load i32, i32* %11, align 4
  %26 = call i64 @FAILED(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %4
  %29 = load i32, i32* %11, align 4
  store i32 %29, i32* %5, align 4
  br label %543

30:                                               ; preds = %4
  %31 = call i32 @strbuf_init(%struct.TYPE_6__* %14)
  br label %32

32:                                               ; preds = %525, %30
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  %35 = load i8*, i8** %34, align 8
  %36 = getelementptr inbounds i8, i8* %35, i64 1
  %37 = load i8, i8* %36, align 1
  %38 = sext i8 %37 to i32
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %48, label %40

40:                                               ; preds = %32
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 0
  %43 = load i8*, i8** %42, align 8
  %44 = getelementptr inbounds i8, i8* %43, i64 0
  %45 = load i8, i8* %44, align 1
  %46 = sext i8 %45 to i32
  %47 = icmp ne i32 %46, 125
  br label %48

48:                                               ; preds = %40, %32
  %49 = phi i1 [ true, %32 ], [ %47, %40 ]
  br i1 %49, label %50, label %526

50:                                               ; preds = %48
  store i32 0, i32* %15, align 4
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 0
  %53 = load i8*, i8** %52, align 8
  %54 = call i32 @lstrcmpiW(i8* %53, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @do_process_key.wstrNoRemove, i64 0, i64 0))
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %57, label %56

56:                                               ; preds = %50
  store i32 1, i32* %15, align 4
  br label %81

57:                                               ; preds = %50
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 0
  %60 = load i8*, i8** %59, align 8
  %61 = call i32 @lstrcmpiW(i8* %60, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @do_process_key.wstrForceRemove, i64 0, i64 0))
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %64, label %63

63:                                               ; preds = %57
  store i32 3, i32* %15, align 4
  br label %80

64:                                               ; preds = %57
  %65 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 0
  %67 = load i8*, i8** %66, align 8
  %68 = call i32 @lstrcmpiW(i8* %67, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @do_process_key.wstrval, i64 0, i64 0))
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %71, label %70

70:                                               ; preds = %64
  store i32 2, i32* %15, align 4
  br label %79

71:                                               ; preds = %64
  %72 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 0
  %74 = load i8*, i8** %73, align 8
  %75 = call i32 @lstrcmpiW(i8* %74, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @do_process_key.wstrDelete, i64 0, i64 0))
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %78, label %77

77:                                               ; preds = %71
  store i32 4, i32* %15, align 4
  br label %78

78:                                               ; preds = %77, %71
  br label %79

79:                                               ; preds = %78, %70
  br label %80

80:                                               ; preds = %79, %63
  br label %81

81:                                               ; preds = %80, %56
  %82 = load i32, i32* %15, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %92

84:                                               ; preds = %81
  %85 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %86 = call i32 @get_word(i8** %10, %struct.TYPE_6__* %85)
  store i32 %86, i32* %11, align 4
  %87 = load i32, i32* %11, align 4
  %88 = call i64 @FAILED(i32 %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %84
  br label %526

91:                                               ; preds = %84
  br label %92

92:                                               ; preds = %91, %81
  %93 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %93, i32 0, i32 0
  %95 = load i8*, i8** %94, align 8
  %96 = call i32 @debugstr_w(i8* %95)
  %97 = call i32 (i8*, i32, ...) @TRACE(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %96)
  %98 = load i32, i32* %9, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %149

100:                                              ; preds = %92
  %101 = load i32, i32* %15, align 4
  %102 = icmp eq i32 %101, 2
  br i1 %102, label %103, label %109

103:                                              ; preds = %100
  %104 = load i64, i64* %7, align 8
  store i64 %104, i64* %13, align 8
  %105 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %106 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %105, i32 0, i32 0
  %107 = load i8*, i8** %106, align 8
  %108 = call i32 @strbuf_write(i8* %107, %struct.TYPE_6__* %14, i32 -1)
  br label %148

109:                                              ; preds = %100
  %110 = load i32, i32* %15, align 4
  %111 = icmp eq i32 %110, 4
  br i1 %111, label %112, label %123

112:                                              ; preds = %109
  %113 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %114 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %113, i32 0, i32 0
  %115 = load i8*, i8** %114, align 8
  %116 = call i32 @debugstr_w(i8* %115)
  %117 = call i32 (i8*, i32, ...) @TRACE(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 %116)
  %118 = load i64, i64* %7, align 8
  %119 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %120 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %119, i32 0, i32 0
  %121 = load i8*, i8** %120, align 8
  %122 = call i32 @RegDeleteTreeW(i64 %118, i8* %121)
  br label %147

123:                                              ; preds = %109
  %124 = load i32, i32* %15, align 4
  %125 = icmp eq i32 %124, 3
  br i1 %125, label %126, label %132

126:                                              ; preds = %123
  %127 = load i64, i64* %7, align 8
  %128 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %129 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %128, i32 0, i32 0
  %130 = load i8*, i8** %129, align 8
  %131 = call i32 @RegDeleteTreeW(i64 %127, i8* %130)
  br label %132

132:                                              ; preds = %126, %123
  %133 = load i64, i64* %7, align 8
  %134 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %135 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %134, i32 0, i32 0
  %136 = load i8*, i8** %135, align 8
  %137 = call i64 @RegCreateKeyW(i64 %133, i8* %136, i64* %13)
  store i64 %137, i64* %12, align 8
  %138 = load i64, i64* %12, align 8
  %139 = load i64, i64* @ERROR_SUCCESS, align 8
  %140 = icmp ne i64 %138, %139
  br i1 %140, label %141, label %146

141:                                              ; preds = %132
  %142 = load i64, i64* %12, align 8
  %143 = call i32 (i8*, ...) @WARN(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i64 %142)
  %144 = load i64, i64* %12, align 8
  %145 = call i32 @HRESULT_FROM_WIN32(i64 %144)
  store i32 %145, i32* %11, align 4
  br label %526

146:                                              ; preds = %132
  br label %147

147:                                              ; preds = %146, %112
  br label %148

148:                                              ; preds = %147, %103
  br label %176

149:                                              ; preds = %92
  %150 = load i32, i32* %15, align 4
  %151 = icmp ne i32 %150, 2
  br i1 %151, label %152, label %175

152:                                              ; preds = %149
  %153 = load i32, i32* %15, align 4
  %154 = icmp ne i32 %153, 4
  br i1 %154, label %155, label %175

155:                                              ; preds = %152
  %156 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %157 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %156, i32 0, i32 0
  %158 = load i8*, i8** %157, align 8
  %159 = call i32 @strbuf_write(i8* %158, %struct.TYPE_6__* %14, i32 -1)
  %160 = load i64, i64* %7, align 8
  %161 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %162 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %161, i32 0, i32 0
  %163 = load i8*, i8** %162, align 8
  %164 = call i64 @RegOpenKeyW(i64 %160, i8* %163, i64* %13)
  store i64 %164, i64* %12, align 8
  %165 = load i64, i64* %12, align 8
  %166 = load i64, i64* @ERROR_SUCCESS, align 8
  %167 = icmp ne i64 %165, %166
  br i1 %167, label %168, label %174

168:                                              ; preds = %155
  %169 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %170 = load i8*, i8** %169, align 8
  %171 = call i32 @debugstr_w(i8* %170)
  %172 = load i64, i64* %12, align 8
  %173 = call i32 (i8*, ...) @WARN(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0), i32 %171, i64 %172)
  br label %174

174:                                              ; preds = %168, %155
  br label %175

175:                                              ; preds = %174, %152, %149
  br label %176

176:                                              ; preds = %175, %148
  %177 = load i32, i32* %15, align 4
  %178 = icmp ne i32 %177, 4
  br i1 %178, label %179, label %446

179:                                              ; preds = %176
  %180 = load i8*, i8** %10, align 8
  %181 = load i8, i8* %180, align 1
  %182 = sext i8 %181 to i32
  %183 = icmp eq i32 %182, 61
  br i1 %183, label %184, label %446

184:                                              ; preds = %179
  %185 = load i8*, i8** %10, align 8
  %186 = getelementptr inbounds i8, i8* %185, i32 1
  store i8* %186, i8** %10, align 8
  %187 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %188 = call i32 @get_word(i8** %10, %struct.TYPE_6__* %187)
  store i32 %188, i32* %11, align 4
  %189 = load i32, i32* %11, align 4
  %190 = call i64 @FAILED(i32 %189)
  %191 = icmp ne i64 %190, 0
  br i1 %191, label %192, label %193

192:                                              ; preds = %184
  br label %526

193:                                              ; preds = %184
  %194 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %195 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %194, i32 0, i32 1
  %196 = load i32, i32* %195, align 8
  %197 = icmp ne i32 %196, 1
  br i1 %197, label %198, label %205

198:                                              ; preds = %193
  %199 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %200 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %199, i32 0, i32 0
  %201 = load i8*, i8** %200, align 8
  %202 = call i32 @debugstr_w(i8* %201)
  %203 = call i32 (i8*, ...) @WARN(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0), i32 %202)
  %204 = load i32, i32* @DISP_E_EXCEPTION, align 4
  store i32 %204, i32* %11, align 4
  br label %526

205:                                              ; preds = %193
  %206 = load i32, i32* %9, align 4
  %207 = icmp ne i32 %206, 0
  br i1 %207, label %208, label %429

208:                                              ; preds = %205
  %209 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %210 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %209, i32 0, i32 0
  %211 = load i8*, i8** %210, align 8
  %212 = getelementptr inbounds i8, i8* %211, i64 0
  %213 = load i8, i8* %212, align 1
  %214 = sext i8 %213 to i32
  switch i32 %214, label %416 [
    i32 115, label %215
    i32 100, label %255
    i32 98, label %289
  ]

215:                                              ; preds = %208
  %216 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %217 = call i32 @get_word(i8** %10, %struct.TYPE_6__* %216)
  store i32 %217, i32* %11, align 4
  %218 = load i32, i32* %11, align 4
  %219 = call i64 @FAILED(i32 %218)
  %220 = icmp ne i64 %219, 0
  br i1 %220, label %221, label %222

221:                                              ; preds = %215
  br label %423

222:                                              ; preds = %215
  %223 = load i64, i64* %13, align 8
  %224 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 1
  %225 = load i32, i32* %224, align 8
  %226 = icmp ne i32 %225, 0
  br i1 %226, label %227, label %230

227:                                              ; preds = %222
  %228 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %229 = load i8*, i8** %228, align 8
  br label %231

230:                                              ; preds = %222
  br label %231

231:                                              ; preds = %230, %227
  %232 = phi i8* [ %229, %227 ], [ null, %230 ]
  %233 = load i32, i32* @REG_SZ, align 4
  %234 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %235 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %234, i32 0, i32 0
  %236 = load i8*, i8** %235, align 8
  %237 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %238 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %237, i32 0, i32 0
  %239 = load i8*, i8** %238, align 8
  %240 = call i32 @lstrlenW(i8* %239)
  %241 = add nsw i32 %240, 1
  %242 = sext i32 %241 to i64
  %243 = mul i64 %242, 1
  %244 = trunc i64 %243 to i32
  %245 = call i64 @RegSetValueExW(i64 %223, i8* %232, i32 0, i32 %233, i8* %236, i32 %244)
  store i64 %245, i64* %12, align 8
  %246 = load i64, i64* %12, align 8
  %247 = load i64, i64* @ERROR_SUCCESS, align 8
  %248 = icmp ne i64 %246, %247
  br i1 %248, label %249, label %254

249:                                              ; preds = %231
  %250 = load i64, i64* %12, align 8
  %251 = call i32 (i8*, ...) @WARN(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i64 0, i64 0), i64 %250)
  %252 = load i64, i64* %12, align 8
  %253 = call i32 @HRESULT_FROM_WIN32(i64 %252)
  store i32 %253, i32* %11, align 4
  br label %423

254:                                              ; preds = %231
  br label %423

255:                                              ; preds = %208
  %256 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %257 = call i32 @get_word(i8** %10, %struct.TYPE_6__* %256)
  store i32 %257, i32* %11, align 4
  %258 = load i32, i32* %11, align 4
  %259 = call i64 @FAILED(i32 %258)
  %260 = icmp ne i64 %259, 0
  br i1 %260, label %261, label %262

261:                                              ; preds = %255
  br label %423

262:                                              ; preds = %255
  %263 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %264 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %263, i32 0, i32 0
  %265 = load i8*, i8** %264, align 8
  %266 = call i32 @wcstol(i8* %265, i32* null, i32 10)
  store i32 %266, i32* %16, align 4
  %267 = load i64, i64* %13, align 8
  %268 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 1
  %269 = load i32, i32* %268, align 8
  %270 = icmp ne i32 %269, 0
  br i1 %270, label %271, label %274

271:                                              ; preds = %262
  %272 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %273 = load i8*, i8** %272, align 8
  br label %275

274:                                              ; preds = %262
  br label %275

275:                                              ; preds = %274, %271
  %276 = phi i8* [ %273, %271 ], [ null, %274 ]
  %277 = load i32, i32* @REG_DWORD, align 4
  %278 = bitcast i32* %16 to i8*
  %279 = call i64 @RegSetValueExW(i64 %267, i8* %276, i32 0, i32 %277, i8* %278, i32 4)
  store i64 %279, i64* %12, align 8
  %280 = load i64, i64* %12, align 8
  %281 = load i64, i64* @ERROR_SUCCESS, align 8
  %282 = icmp ne i64 %280, %281
  br i1 %282, label %283, label %288

283:                                              ; preds = %275
  %284 = load i64, i64* %12, align 8
  %285 = call i32 (i8*, ...) @WARN(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i64 0, i64 0), i64 %284)
  %286 = load i64, i64* %12, align 8
  %287 = call i32 @HRESULT_FROM_WIN32(i64 %286)
  store i32 %287, i32* %11, align 4
  br label %423

288:                                              ; preds = %275
  br label %423

289:                                              ; preds = %208
  %290 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %291 = call i32 @get_word(i8** %10, %struct.TYPE_6__* %290)
  store i32 %291, i32* %11, align 4
  %292 = load i32, i32* %11, align 4
  %293 = call i64 @FAILED(i32 %292)
  %294 = icmp ne i64 %293, 0
  br i1 %294, label %295, label %296

295:                                              ; preds = %289
  br label %423

296:                                              ; preds = %289
  %297 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %298 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %297, i32 0, i32 0
  %299 = load i8*, i8** %298, align 8
  %300 = call i32 @lstrlenW(i8* %299)
  %301 = add nsw i32 %300, 1
  %302 = sdiv i32 %301, 2
  store i32 %302, i32* %18, align 4
  %303 = call i32 (...) @GetProcessHeap()
  %304 = load i32, i32* %18, align 4
  %305 = call i8* @HeapAlloc(i32 %303, i32 0, i32 %304)
  store i8* %305, i8** %17, align 8
  %306 = load i8*, i8** %17, align 8
  %307 = icmp eq i8* %306, null
  br i1 %307, label %308, label %310

308:                                              ; preds = %296
  %309 = load i32, i32* @E_OUTOFMEMORY, align 4
  store i32 %309, i32* %11, align 4
  br label %423

310:                                              ; preds = %296
  store i32 0, i32* %19, align 4
  br label %311

311:                                              ; preds = %381, %310
  %312 = load i32, i32* %19, align 4
  %313 = load i32, i32* %18, align 4
  %314 = icmp slt i32 %312, %313
  br i1 %314, label %315, label %326

315:                                              ; preds = %311
  %316 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %317 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %316, i32 0, i32 0
  %318 = load i8*, i8** %317, align 8
  %319 = load i32, i32* %19, align 4
  %320 = mul nsw i32 2, %319
  %321 = sext i32 %320 to i64
  %322 = getelementptr inbounds i8, i8* %318, i64 %321
  %323 = load i8, i8* %322, align 1
  %324 = sext i8 %323 to i32
  %325 = icmp ne i32 %324, 0
  br label %326

326:                                              ; preds = %315, %311
  %327 = phi i1 [ false, %311 ], [ %325, %315 ]
  br i1 %327, label %328, label %384

328:                                              ; preds = %326
  %329 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %330 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %329, i32 0, i32 0
  %331 = load i8*, i8** %330, align 8
  %332 = load i32, i32* %19, align 4
  %333 = mul nsw i32 2, %332
  %334 = sext i32 %333 to i64
  %335 = getelementptr inbounds i8, i8* %331, i64 %334
  %336 = load i8, i8* %335, align 1
  %337 = call i32 @iswxdigit(i8 signext %336)
  %338 = icmp ne i32 %337, 0
  br i1 %338, label %339, label %351

339:                                              ; preds = %328
  %340 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %341 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %340, i32 0, i32 0
  %342 = load i8*, i8** %341, align 8
  %343 = load i32, i32* %19, align 4
  %344 = mul nsw i32 2, %343
  %345 = add nsw i32 %344, 1
  %346 = sext i32 %345 to i64
  %347 = getelementptr inbounds i8, i8* %342, i64 %346
  %348 = load i8, i8* %347, align 1
  %349 = call i32 @iswxdigit(i8 signext %348)
  %350 = icmp ne i32 %349, 0
  br i1 %350, label %353, label %351

351:                                              ; preds = %339, %328
  %352 = load i32, i32* @E_FAIL, align 4
  store i32 %352, i32* %11, align 4
  br label %384

353:                                              ; preds = %339
  %354 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %355 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %354, i32 0, i32 0
  %356 = load i8*, i8** %355, align 8
  %357 = load i32, i32* %19, align 4
  %358 = mul nsw i32 2, %357
  %359 = sext i32 %358 to i64
  %360 = getelementptr inbounds i8, i8* %356, i64 %359
  %361 = load i8, i8* %360, align 1
  %362 = getelementptr inbounds [3 x i8], [3 x i8]* %20, i64 0, i64 0
  store i8 %361, i8* %362, align 1
  %363 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %364 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %363, i32 0, i32 0
  %365 = load i8*, i8** %364, align 8
  %366 = load i32, i32* %19, align 4
  %367 = mul nsw i32 2, %366
  %368 = add nsw i32 %367, 1
  %369 = sext i32 %368 to i64
  %370 = getelementptr inbounds i8, i8* %365, i64 %369
  %371 = load i8, i8* %370, align 1
  %372 = getelementptr inbounds [3 x i8], [3 x i8]* %20, i64 0, i64 1
  store i8 %371, i8* %372, align 1
  %373 = getelementptr inbounds [3 x i8], [3 x i8]* %20, i64 0, i64 2
  store i8 0, i8* %373, align 1
  %374 = getelementptr inbounds [3 x i8], [3 x i8]* %20, i64 0, i64 0
  %375 = call i32 @wcstoul(i8* %374, i32* null, i32 16)
  %376 = trunc i32 %375 to i8
  %377 = load i8*, i8** %17, align 8
  %378 = load i32, i32* %19, align 4
  %379 = sext i32 %378 to i64
  %380 = getelementptr inbounds i8, i8* %377, i64 %379
  store i8 %376, i8* %380, align 1
  br label %381

381:                                              ; preds = %353
  %382 = load i32, i32* %19, align 4
  %383 = add nsw i32 %382, 1
  store i32 %383, i32* %19, align 4
  br label %311

384:                                              ; preds = %351, %326
  %385 = load i32, i32* %11, align 4
  %386 = call i32 @SUCCEEDED(i32 %385)
  %387 = icmp ne i32 %386, 0
  br i1 %387, label %388, label %412

388:                                              ; preds = %384
  %389 = load i64, i64* %13, align 8
  %390 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 1
  %391 = load i32, i32* %390, align 8
  %392 = icmp ne i32 %391, 0
  br i1 %392, label %393, label %396

393:                                              ; preds = %388
  %394 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %395 = load i8*, i8** %394, align 8
  br label %397

396:                                              ; preds = %388
  br label %397

397:                                              ; preds = %396, %393
  %398 = phi i8* [ %395, %393 ], [ null, %396 ]
  %399 = load i32, i32* @REG_BINARY, align 4
  %400 = load i8*, i8** %17, align 8
  %401 = load i32, i32* %18, align 4
  %402 = call i64 @RegSetValueExW(i64 %389, i8* %398, i32 0, i32 %399, i8* %400, i32 %401)
  store i64 %402, i64* %12, align 8
  %403 = load i64, i64* %12, align 8
  %404 = load i64, i64* @ERROR_SUCCESS, align 8
  %405 = icmp ne i64 %403, %404
  br i1 %405, label %406, label %411

406:                                              ; preds = %397
  %407 = load i64, i64* %12, align 8
  %408 = call i32 (i8*, ...) @WARN(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.6, i64 0, i64 0), i64 %407)
  %409 = load i64, i64* %12, align 8
  %410 = call i32 @HRESULT_FROM_WIN32(i64 %409)
  store i32 %410, i32* %11, align 4
  br label %411

411:                                              ; preds = %406, %397
  br label %412

412:                                              ; preds = %411, %384
  %413 = call i32 (...) @GetProcessHeap()
  %414 = load i8*, i8** %17, align 8
  %415 = call i32 @HeapFree(i32 %413, i32 0, i8* %414)
  br label %423

416:                                              ; preds = %208
  %417 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %418 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %417, i32 0, i32 0
  %419 = load i8*, i8** %418, align 8
  %420 = call i32 @debugstr_w(i8* %419)
  %421 = call i32 (i8*, ...) @WARN(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.7, i64 0, i64 0), i32 %420)
  %422 = load i32, i32* @DISP_E_EXCEPTION, align 4
  store i32 %422, i32* %11, align 4
  br label %423

423:                                              ; preds = %416, %412, %308, %295, %288, %283, %261, %254, %249, %221
  %424 = load i32, i32* %11, align 4
  %425 = call i64 @FAILED(i32 %424)
  %426 = icmp ne i64 %425, 0
  br i1 %426, label %427, label %428

427:                                              ; preds = %423
  br label %526

428:                                              ; preds = %423
  br label %445

429:                                              ; preds = %205
  %430 = load i8*, i8** %10, align 8
  %431 = load i8, i8* %430, align 1
  %432 = sext i8 %431 to i32
  %433 = icmp eq i32 %432, 45
  br i1 %433, label %434, label %437

434:                                              ; preds = %429
  %435 = load i8*, i8** %10, align 8
  %436 = getelementptr inbounds i8, i8* %435, i32 1
  store i8* %436, i8** %10, align 8
  br label %437

437:                                              ; preds = %434, %429
  %438 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %439 = call i32 @get_word(i8** %10, %struct.TYPE_6__* %438)
  store i32 %439, i32* %11, align 4
  %440 = load i32, i32* %11, align 4
  %441 = call i64 @FAILED(i32 %440)
  %442 = icmp ne i64 %441, 0
  br i1 %442, label %443, label %444

443:                                              ; preds = %437
  br label %526

444:                                              ; preds = %437
  br label %445

445:                                              ; preds = %444, %428
  br label %453

446:                                              ; preds = %179, %176
  %447 = load i32, i32* %15, align 4
  %448 = icmp eq i32 %447, 2
  br i1 %448, label %449, label %452

449:                                              ; preds = %446
  %450 = call i32 (i8*, ...) @WARN(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.8, i64 0, i64 0))
  %451 = load i32, i32* @DISP_E_EXCEPTION, align 4
  store i32 %451, i32* %11, align 4
  br label %526

452:                                              ; preds = %446
  br label %453

453:                                              ; preds = %452, %445
  %454 = load i32, i32* %15, align 4
  %455 = icmp ne i32 %454, 2
  br i1 %455, label %456, label %487

456:                                              ; preds = %453
  %457 = load i32, i32* %15, align 4
  %458 = icmp ne i32 %457, 4
  br i1 %458, label %459, label %487

459:                                              ; preds = %456
  %460 = load i8*, i8** %10, align 8
  %461 = load i8, i8* %460, align 1
  %462 = sext i8 %461 to i32
  %463 = icmp eq i32 %462, 123
  br i1 %463, label %464, label %487

464:                                              ; preds = %459
  %465 = load i8*, i8** %10, align 8
  %466 = getelementptr inbounds i8, i8* %465, i64 1
  %467 = load i8, i8* %466, align 1
  %468 = call i64 @iswspace(i8 signext %467)
  %469 = icmp ne i64 %468, 0
  br i1 %469, label %470, label %487

470:                                              ; preds = %464
  %471 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %472 = call i32 @get_word(i8** %10, %struct.TYPE_6__* %471)
  store i32 %472, i32* %11, align 4
  %473 = load i32, i32* %11, align 4
  %474 = call i64 @FAILED(i32 %473)
  %475 = icmp ne i64 %474, 0
  br i1 %475, label %476, label %477

476:                                              ; preds = %470
  br label %526

477:                                              ; preds = %470
  %478 = load i64, i64* %13, align 8
  %479 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %480 = load i32, i32* %9, align 4
  %481 = call i32 @do_process_key(i8** %10, i64 %478, %struct.TYPE_6__* %479, i32 %480)
  store i32 %481, i32* %11, align 4
  %482 = load i32, i32* %11, align 4
  %483 = call i64 @FAILED(i32 %482)
  %484 = icmp ne i64 %483, 0
  br i1 %484, label %485, label %486

485:                                              ; preds = %477
  br label %526

486:                                              ; preds = %477
  br label %487

487:                                              ; preds = %486, %464, %459, %456, %453
  %488 = load i32, i32* %9, align 4
  %489 = load i32, i32* %15, align 4
  %490 = call i32 (i8*, i32, ...) @TRACE(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0), i32 %488, i32 %489)
  %491 = load i32, i32* %9, align 4
  %492 = icmp ne i32 %491, 0
  br i1 %492, label %508, label %493

493:                                              ; preds = %487
  %494 = load i32, i32* %15, align 4
  %495 = icmp eq i32 %494, 0
  br i1 %495, label %499, label %496

496:                                              ; preds = %493
  %497 = load i32, i32* %15, align 4
  %498 = icmp eq i32 %497, 3
  br i1 %498, label %499, label %508

499:                                              ; preds = %496, %493
  %500 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %501 = load i8*, i8** %500, align 8
  %502 = call i32 @debugstr_w(i8* %501)
  %503 = call i32 (i8*, i32, ...) @TRACE(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 %502)
  %504 = load i64, i64* %7, align 8
  %505 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %506 = load i8*, i8** %505, align 8
  %507 = call i32 @RegDeleteKeyW(i64 %504, i8* %506)
  br label %508

508:                                              ; preds = %499, %496, %487
  %509 = load i64, i64* %13, align 8
  %510 = icmp ne i64 %509, 0
  br i1 %510, label %511, label %517

511:                                              ; preds = %508
  %512 = load i32, i32* %15, align 4
  %513 = icmp ne i32 %512, 2
  br i1 %513, label %514, label %517

514:                                              ; preds = %511
  %515 = load i64, i64* %13, align 8
  %516 = call i32 @RegCloseKey(i64 %515)
  br label %517

517:                                              ; preds = %514, %511, %508
  store i64 0, i64* %13, align 8
  %518 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 1
  store i32 0, i32* %518, align 8
  %519 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %520 = call i32 @get_word(i8** %10, %struct.TYPE_6__* %519)
  store i32 %520, i32* %11, align 4
  %521 = load i32, i32* %11, align 4
  %522 = call i64 @FAILED(i32 %521)
  %523 = icmp ne i64 %522, 0
  br i1 %523, label %524, label %525

524:                                              ; preds = %517
  br label %526

525:                                              ; preds = %517
  br label %32

526:                                              ; preds = %524, %485, %476, %449, %443, %427, %198, %192, %141, %90, %48
  %527 = call i32 (...) @GetProcessHeap()
  %528 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %529 = load i8*, i8** %528, align 8
  %530 = call i32 @HeapFree(i32 %527, i32 0, i8* %529)
  %531 = load i64, i64* %13, align 8
  %532 = icmp ne i64 %531, 0
  br i1 %532, label %533, label %539

533:                                              ; preds = %526
  %534 = load i32, i32* %15, align 4
  %535 = icmp ne i32 %534, 2
  br i1 %535, label %536, label %539

536:                                              ; preds = %533
  %537 = load i64, i64* %13, align 8
  %538 = call i32 @RegCloseKey(i64 %537)
  br label %539

539:                                              ; preds = %536, %533, %526
  %540 = load i8*, i8** %10, align 8
  %541 = load i8**, i8*** %6, align 8
  store i8* %540, i8** %541, align 8
  %542 = load i32, i32* %11, align 4
  store i32 %542, i32* %5, align 4
  br label %543

543:                                              ; preds = %539, %28
  %544 = load i32, i32* %5, align 4
  ret i32 %544
}

declare dso_local i32 @get_word(i8**, %struct.TYPE_6__*) #1

declare dso_local i64 @FAILED(i32) #1

declare dso_local i32 @strbuf_init(%struct.TYPE_6__*) #1

declare dso_local i32 @lstrcmpiW(i8*, i8*) #1

declare dso_local i32 @TRACE(i8*, i32, ...) #1

declare dso_local i32 @debugstr_w(i8*) #1

declare dso_local i32 @strbuf_write(i8*, %struct.TYPE_6__*, i32) #1

declare dso_local i32 @RegDeleteTreeW(i64, i8*) #1

declare dso_local i64 @RegCreateKeyW(i64, i8*, i64*) #1

declare dso_local i32 @WARN(i8*, ...) #1

declare dso_local i32 @HRESULT_FROM_WIN32(i64) #1

declare dso_local i64 @RegOpenKeyW(i64, i8*, i64*) #1

declare dso_local i64 @RegSetValueExW(i64, i8*, i32, i32, i8*, i32) #1

declare dso_local i32 @lstrlenW(i8*) #1

declare dso_local i32 @wcstol(i8*, i32*, i32) #1

declare dso_local i8* @HeapAlloc(i32, i32, i32) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i32 @iswxdigit(i8 signext) #1

declare dso_local i32 @wcstoul(i8*, i32*, i32) #1

declare dso_local i32 @SUCCEEDED(i32) #1

declare dso_local i32 @HeapFree(i32, i32, i8*) #1

declare dso_local i64 @iswspace(i8 signext) #1

declare dso_local i32 @RegDeleteKeyW(i64, i8*) #1

declare dso_local i32 @RegCloseKey(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
