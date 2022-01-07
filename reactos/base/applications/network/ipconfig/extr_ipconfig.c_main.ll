; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/network/ipconfig/extr_ipconfig.c_main.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/network/ipconfig/extr_ipconfig.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FALSE = common dso_local global i32 0, align 4
@hInstance = common dso_local global i32 0, align 4
@ProcessHeap = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"?\00", align 1
@TRUE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"ALL\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"RELEASE\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"RENEW\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"FLUSHDNS\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"FLUSHREGISTERDNS\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"DISPLAYDNS\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"SHOWCLASSID\00", align 1
@.str.8 = private unnamed_addr constant [11 x i8] c"SETCLASSID\00", align 1
@.str.9 = private unnamed_addr constant [44 x i8] c"\0ASorry /registerdns is not implemented yet\0A\00", align 1
@.str.10 = private unnamed_addr constant [50 x i8] c"\0ASorry /release [adapter] is not implemented yet\0A\00", align 1
@.str.11 = private unnamed_addr constant [48 x i8] c"\0ASorry /renew [adapter] is not implemented yet\0A\00", align 1
@.str.12 = private unnamed_addr constant [52 x i8] c"\0ASorry /showclassid adapter is not implemented yet\0A\00", align 1
@.str.13 = private unnamed_addr constant [51 x i8] c"\0ASorry /setclassid adapter is not implemented yet\0A\00", align 1
@.str.14 = private unnamed_addr constant [60 x i8] c"\0ASorry /setclassid adapter [classid]is not implemented yet\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %15 = load i32, i32* @FALSE, align 4
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* @FALSE, align 4
  store i32 %16, i32* %7, align 4
  %17 = load i32, i32* @FALSE, align 4
  store i32 %17, i32* %8, align 4
  %18 = load i32, i32* @FALSE, align 4
  store i32 %18, i32* %9, align 4
  %19 = load i32, i32* @FALSE, align 4
  store i32 %19, i32* %10, align 4
  %20 = load i32, i32* @FALSE, align 4
  store i32 %20, i32* %11, align 4
  %21 = load i32, i32* @FALSE, align 4
  store i32 %21, i32* %12, align 4
  %22 = load i32, i32* @FALSE, align 4
  store i32 %22, i32* %13, align 4
  %23 = load i32, i32* @FALSE, align 4
  store i32 %23, i32* %14, align 4
  %24 = call i32 @GetModuleHandle(i32* null)
  store i32 %24, i32* @hInstance, align 4
  %25 = call i32 (...) @GetProcessHeap()
  store i32 %25, i32* @ProcessHeap, align 4
  %26 = load i32, i32* %4, align 4
  %27 = icmp sgt i32 %26, 1
  br i1 %27, label %28, label %183

28:                                               ; preds = %2
  %29 = load i8**, i8*** %5, align 8
  %30 = getelementptr inbounds i8*, i8** %29, i64 1
  %31 = load i8*, i8** %30, align 8
  %32 = getelementptr inbounds i8, i8* %31, i64 0
  %33 = load i8, i8* %32, align 1
  %34 = sext i8 %33 to i32
  %35 = icmp eq i32 %34, 47
  br i1 %35, label %44, label %36

36:                                               ; preds = %28
  %37 = load i8**, i8*** %5, align 8
  %38 = getelementptr inbounds i8*, i8** %37, i64 1
  %39 = load i8*, i8** %38, align 8
  %40 = getelementptr inbounds i8, i8* %39, i64 0
  %41 = load i8, i8* %40, align 1
  %42 = sext i8 %41 to i32
  %43 = icmp eq i32 %42, 45
  br i1 %43, label %44, label %183

44:                                               ; preds = %36, %28
  %45 = load i8**, i8*** %5, align 8
  %46 = getelementptr inbounds i8*, i8** %45, i64 1
  %47 = load i8*, i8** %46, align 8
  %48 = getelementptr inbounds i8, i8* %47, i64 1
  %49 = call i32 @_T(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %50 = call i32 @_tcsicmp(i8* %48, i32 %49)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %54, label %52

52:                                               ; preds = %44
  %53 = load i32, i32* @TRUE, align 4
  store i32 %53, i32* %6, align 4
  br label %182

54:                                               ; preds = %44
  %55 = load i8**, i8*** %5, align 8
  %56 = getelementptr inbounds i8*, i8** %55, i64 1
  %57 = load i8*, i8** %56, align 8
  %58 = getelementptr inbounds i8, i8* %57, i64 1
  %59 = call i32 @_T(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %60 = load i8**, i8*** %5, align 8
  %61 = getelementptr inbounds i8*, i8** %60, i64 1
  %62 = load i8*, i8** %61, align 8
  %63 = getelementptr inbounds i8, i8* %62, i64 1
  %64 = call i32 @_tcslen(i8* %63)
  %65 = call i32 @_tcsnicmp(i8* %58, i32 %59, i32 %64)
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %69, label %67

67:                                               ; preds = %54
  %68 = load i32, i32* @TRUE, align 4
  store i32 %68, i32* %7, align 4
  br label %181

69:                                               ; preds = %54
  %70 = load i8**, i8*** %5, align 8
  %71 = getelementptr inbounds i8*, i8** %70, i64 1
  %72 = load i8*, i8** %71, align 8
  %73 = getelementptr inbounds i8, i8* %72, i64 1
  %74 = call i32 @_T(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  %75 = load i8**, i8*** %5, align 8
  %76 = getelementptr inbounds i8*, i8** %75, i64 1
  %77 = load i8*, i8** %76, align 8
  %78 = getelementptr inbounds i8, i8* %77, i64 1
  %79 = call i32 @_tcslen(i8* %78)
  %80 = call i32 @_tcsnicmp(i8* %73, i32 %74, i32 %79)
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %84, label %82

82:                                               ; preds = %69
  %83 = load i32, i32* @TRUE, align 4
  store i32 %83, i32* %8, align 4
  br label %180

84:                                               ; preds = %69
  %85 = load i8**, i8*** %5, align 8
  %86 = getelementptr inbounds i8*, i8** %85, i64 1
  %87 = load i8*, i8** %86, align 8
  %88 = getelementptr inbounds i8, i8* %87, i64 1
  %89 = call i32 @_T(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  %90 = load i8**, i8*** %5, align 8
  %91 = getelementptr inbounds i8*, i8** %90, i64 1
  %92 = load i8*, i8** %91, align 8
  %93 = getelementptr inbounds i8, i8* %92, i64 1
  %94 = call i32 @_tcslen(i8* %93)
  %95 = call i32 @_tcsnicmp(i8* %88, i32 %89, i32 %94)
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %99, label %97

97:                                               ; preds = %84
  %98 = load i32, i32* @TRUE, align 4
  store i32 %98, i32* %9, align 4
  br label %179

99:                                               ; preds = %84
  %100 = load i8**, i8*** %5, align 8
  %101 = getelementptr inbounds i8*, i8** %100, i64 1
  %102 = load i8*, i8** %101, align 8
  %103 = getelementptr inbounds i8, i8* %102, i64 1
  %104 = call i32 @_T(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0))
  %105 = load i8**, i8*** %5, align 8
  %106 = getelementptr inbounds i8*, i8** %105, i64 1
  %107 = load i8*, i8** %106, align 8
  %108 = getelementptr inbounds i8, i8* %107, i64 1
  %109 = call i32 @_tcslen(i8* %108)
  %110 = call i32 @_tcsnicmp(i8* %103, i32 %104, i32 %109)
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %114, label %112

112:                                              ; preds = %99
  %113 = load i32, i32* @TRUE, align 4
  store i32 %113, i32* %10, align 4
  br label %178

114:                                              ; preds = %99
  %115 = load i8**, i8*** %5, align 8
  %116 = getelementptr inbounds i8*, i8** %115, i64 1
  %117 = load i8*, i8** %116, align 8
  %118 = getelementptr inbounds i8, i8* %117, i64 1
  %119 = call i32 @_T(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0))
  %120 = load i8**, i8*** %5, align 8
  %121 = getelementptr inbounds i8*, i8** %120, i64 1
  %122 = load i8*, i8** %121, align 8
  %123 = getelementptr inbounds i8, i8* %122, i64 1
  %124 = call i32 @_tcslen(i8* %123)
  %125 = call i32 @_tcsnicmp(i8* %118, i32 %119, i32 %124)
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %129, label %127

127:                                              ; preds = %114
  %128 = load i32, i32* @TRUE, align 4
  store i32 %128, i32* %11, align 4
  br label %177

129:                                              ; preds = %114
  %130 = load i8**, i8*** %5, align 8
  %131 = getelementptr inbounds i8*, i8** %130, i64 1
  %132 = load i8*, i8** %131, align 8
  %133 = getelementptr inbounds i8, i8* %132, i64 1
  %134 = call i32 @_T(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0))
  %135 = load i8**, i8*** %5, align 8
  %136 = getelementptr inbounds i8*, i8** %135, i64 1
  %137 = load i8*, i8** %136, align 8
  %138 = getelementptr inbounds i8, i8* %137, i64 1
  %139 = call i32 @_tcslen(i8* %138)
  %140 = call i32 @_tcsnicmp(i8* %133, i32 %134, i32 %139)
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %144, label %142

142:                                              ; preds = %129
  %143 = load i32, i32* @TRUE, align 4
  store i32 %143, i32* %12, align 4
  br label %176

144:                                              ; preds = %129
  %145 = load i8**, i8*** %5, align 8
  %146 = getelementptr inbounds i8*, i8** %145, i64 1
  %147 = load i8*, i8** %146, align 8
  %148 = getelementptr inbounds i8, i8* %147, i64 1
  %149 = call i32 @_T(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 0))
  %150 = load i8**, i8*** %5, align 8
  %151 = getelementptr inbounds i8*, i8** %150, i64 1
  %152 = load i8*, i8** %151, align 8
  %153 = getelementptr inbounds i8, i8* %152, i64 1
  %154 = call i32 @_tcslen(i8* %153)
  %155 = call i32 @_tcsnicmp(i8* %148, i32 %149, i32 %154)
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %159, label %157

157:                                              ; preds = %144
  %158 = load i32, i32* @TRUE, align 4
  store i32 %158, i32* %13, align 4
  br label %175

159:                                              ; preds = %144
  %160 = load i8**, i8*** %5, align 8
  %161 = getelementptr inbounds i8*, i8** %160, i64 1
  %162 = load i8*, i8** %161, align 8
  %163 = getelementptr inbounds i8, i8* %162, i64 1
  %164 = call i32 @_T(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i64 0, i64 0))
  %165 = load i8**, i8*** %5, align 8
  %166 = getelementptr inbounds i8*, i8** %165, i64 1
  %167 = load i8*, i8** %166, align 8
  %168 = getelementptr inbounds i8, i8* %167, i64 1
  %169 = call i32 @_tcslen(i8* %168)
  %170 = call i32 @_tcsnicmp(i8* %163, i32 %164, i32 %169)
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %174, label %172

172:                                              ; preds = %159
  %173 = load i32, i32* @TRUE, align 4
  store i32 %173, i32* %14, align 4
  br label %174

174:                                              ; preds = %172, %159
  br label %175

175:                                              ; preds = %174, %157
  br label %176

176:                                              ; preds = %175, %142
  br label %177

177:                                              ; preds = %176, %127
  br label %178

178:                                              ; preds = %177, %112
  br label %179

179:                                              ; preds = %178, %97
  br label %180

180:                                              ; preds = %179, %82
  br label %181

181:                                              ; preds = %180, %67
  br label %182

182:                                              ; preds = %181, %52
  br label %183

183:                                              ; preds = %182, %36, %2
  %184 = load i32, i32* %4, align 4
  switch i32 %184, label %273 [
    i32 1, label %185
    i32 2, label %188
    i32 3, label %234
    i32 4, label %264
  ]

185:                                              ; preds = %183
  %186 = load i32, i32* @FALSE, align 4
  %187 = call i32 @ShowInfo(i32 %186)
  br label %275

188:                                              ; preds = %183
  %189 = load i32, i32* %6, align 4
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %191, label %193

191:                                              ; preds = %188
  %192 = call i32 (...) @Usage()
  br label %233

193:                                              ; preds = %188
  %194 = load i32, i32* %7, align 4
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %196, label %199

196:                                              ; preds = %193
  %197 = load i32, i32* @TRUE, align 4
  %198 = call i32 @ShowInfo(i32 %197)
  br label %232

199:                                              ; preds = %193
  %200 = load i32, i32* %8, align 4
  %201 = icmp ne i32 %200, 0
  br i1 %201, label %202, label %204

202:                                              ; preds = %199
  %203 = call i32 @Release(i32* null)
  br label %231

204:                                              ; preds = %199
  %205 = load i32, i32* %9, align 4
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %207, label %209

207:                                              ; preds = %204
  %208 = call i32 @Renew(i32* null)
  br label %230

209:                                              ; preds = %204
  %210 = load i32, i32* %10, align 4
  %211 = icmp ne i32 %210, 0
  br i1 %211, label %212, label %214

212:                                              ; preds = %209
  %213 = call i32 (...) @FlushDns()
  br label %229

214:                                              ; preds = %209
  %215 = load i32, i32* %11, align 4
  %216 = icmp ne i32 %215, 0
  br i1 %216, label %217, label %220

217:                                              ; preds = %214
  %218 = call i32 @_T(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.9, i64 0, i64 0))
  %219 = call i32 @_tprintf(i32 %218)
  br label %228

220:                                              ; preds = %214
  %221 = load i32, i32* %12, align 4
  %222 = icmp ne i32 %221, 0
  br i1 %222, label %223, label %225

223:                                              ; preds = %220
  %224 = call i32 (...) @DisplayDns()
  br label %227

225:                                              ; preds = %220
  %226 = call i32 (...) @Usage()
  br label %227

227:                                              ; preds = %225, %223
  br label %228

228:                                              ; preds = %227, %217
  br label %229

229:                                              ; preds = %228, %212
  br label %230

230:                                              ; preds = %229, %207
  br label %231

231:                                              ; preds = %230, %202
  br label %232

232:                                              ; preds = %231, %196
  br label %233

233:                                              ; preds = %232, %191
  br label %275

234:                                              ; preds = %183
  %235 = load i32, i32* %8, align 4
  %236 = icmp ne i32 %235, 0
  br i1 %236, label %237, label %240

237:                                              ; preds = %234
  %238 = call i32 @_T(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.10, i64 0, i64 0))
  %239 = call i32 @_tprintf(i32 %238)
  br label %263

240:                                              ; preds = %234
  %241 = load i32, i32* %9, align 4
  %242 = icmp ne i32 %241, 0
  br i1 %242, label %243, label %246

243:                                              ; preds = %240
  %244 = call i32 @_T(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.11, i64 0, i64 0))
  %245 = call i32 @_tprintf(i32 %244)
  br label %262

246:                                              ; preds = %240
  %247 = load i32, i32* %13, align 4
  %248 = icmp ne i32 %247, 0
  br i1 %248, label %249, label %252

249:                                              ; preds = %246
  %250 = call i32 @_T(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.12, i64 0, i64 0))
  %251 = call i32 @_tprintf(i32 %250)
  br label %261

252:                                              ; preds = %246
  %253 = load i32, i32* %14, align 4
  %254 = icmp ne i32 %253, 0
  br i1 %254, label %255, label %258

255:                                              ; preds = %252
  %256 = call i32 @_T(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.13, i64 0, i64 0))
  %257 = call i32 @_tprintf(i32 %256)
  br label %260

258:                                              ; preds = %252
  %259 = call i32 (...) @Usage()
  br label %260

260:                                              ; preds = %258, %255
  br label %261

261:                                              ; preds = %260, %249
  br label %262

262:                                              ; preds = %261, %243
  br label %263

263:                                              ; preds = %262, %237
  br label %275

264:                                              ; preds = %183
  %265 = load i32, i32* %14, align 4
  %266 = icmp ne i32 %265, 0
  br i1 %266, label %267, label %270

267:                                              ; preds = %264
  %268 = call i32 @_T(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.14, i64 0, i64 0))
  %269 = call i32 @_tprintf(i32 %268)
  br label %272

270:                                              ; preds = %264
  %271 = call i32 (...) @Usage()
  br label %272

272:                                              ; preds = %270, %267
  br label %275

273:                                              ; preds = %183
  %274 = call i32 (...) @Usage()
  br label %275

275:                                              ; preds = %273, %272, %263, %233, %185
  ret i32 0
}

declare dso_local i32 @GetModuleHandle(i32*) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i32 @_tcsicmp(i8*, i32) #1

declare dso_local i32 @_T(i8*) #1

declare dso_local i32 @_tcsnicmp(i8*, i32, i32) #1

declare dso_local i32 @_tcslen(i8*) #1

declare dso_local i32 @ShowInfo(i32) #1

declare dso_local i32 @Usage(...) #1

declare dso_local i32 @Release(i32*) #1

declare dso_local i32 @Renew(i32*) #1

declare dso_local i32 @FlushDns(...) #1

declare dso_local i32 @_tprintf(i32) #1

declare dso_local i32 @DisplayDns(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
