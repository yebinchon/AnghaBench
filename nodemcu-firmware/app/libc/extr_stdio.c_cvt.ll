; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/libc/extr_stdio.c_cvt.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/libc/extr_stdio.c_cvt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ALTERNATE_FORM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (double, i32, i8*, i32, i8*, i8*)* @cvt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cvt(double %0, i32 %1, i8* %2, i32 %3, i8* %4, i8* %5) #0 {
  %7 = alloca double, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca double, align 8
  %16 = alloca double, align 8
  %17 = alloca double, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store double %0, double* %7, align 8
  store i32 %1, i32* %8, align 4
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store i8* %4, i8** %11, align 8
  store i8* %5, i8** %12, align 8
  store i32 0, i32* %20, align 4
  store i32 0, i32* %19, align 4
  store i32 0, i32* %18, align 4
  %21 = load double, double* %7, align 8
  %22 = fcmp olt double %21, 0.000000e+00
  br i1 %22, label %23, label %27

23:                                               ; preds = %6
  %24 = load double, double* %7, align 8
  %25 = fneg double %24
  store double %25, double* %7, align 8
  %26 = load i8*, i8** %9, align 8
  store i8 45, i8* %26, align 1
  br label %29

27:                                               ; preds = %6
  %28 = load i8*, i8** %9, align 8
  store i8 0, i8* %28, align 1
  br label %29

29:                                               ; preds = %27, %23
  %30 = load double, double* %7, align 8
  %31 = call double @modf(double %30, double* %16) #3
  store double %31, double* %15, align 8
  %32 = load i8*, i8** %11, align 8
  %33 = getelementptr inbounds i8, i8* %32, i32 1
  store i8* %33, i8** %11, align 8
  store i8* %33, i8** %14, align 8
  %34 = load i8*, i8** %12, align 8
  %35 = getelementptr inbounds i8, i8* %34, i64 -1
  store i8* %35, i8** %13, align 8
  br label %36

36:                                               ; preds = %51, %29
  %37 = load double, double* %16, align 8
  %38 = fcmp une double %37, 0.000000e+00
  br i1 %38, label %39, label %54

39:                                               ; preds = %36
  %40 = load double, double* %16, align 8
  %41 = fdiv double %40, 1.000000e+01
  %42 = call double @modf(double %41, double* %16) #3
  store double %42, double* %17, align 8
  %43 = load double, double* %17, align 8
  %44 = fadd double %43, 1.000000e-02
  %45 = fmul double %44, 1.000000e+01
  %46 = fptosi double %45 to i32
  %47 = call i8* @to_char(i32 %46)
  %48 = ptrtoint i8* %47 to i8
  %49 = load i8*, i8** %13, align 8
  %50 = getelementptr inbounds i8, i8* %49, i32 -1
  store i8* %50, i8** %13, align 8
  store i8 %48, i8* %49, align 1
  br label %51

51:                                               ; preds = %39
  %52 = load i32, i32* %19, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %19, align 4
  br label %36

54:                                               ; preds = %36
  %55 = load i32, i32* %10, align 4
  switch i32 %55, label %476 [
    i32 102, label %56
    i32 101, label %133
    i32 69, label %133
    i32 103, label %320
    i32 71, label %320
  ]

56:                                               ; preds = %54
  %57 = load i32, i32* %19, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %72

59:                                               ; preds = %56
  br label %60

60:                                               ; preds = %66, %59
  %61 = load i8*, i8** %13, align 8
  %62 = getelementptr inbounds i8, i8* %61, i32 1
  store i8* %62, i8** %13, align 8
  %63 = load i8*, i8** %12, align 8
  %64 = icmp ult i8* %62, %63
  br i1 %64, label %65, label %71

65:                                               ; preds = %60
  br label %66

66:                                               ; preds = %65
  %67 = load i8*, i8** %13, align 8
  %68 = load i8, i8* %67, align 1
  %69 = load i8*, i8** %14, align 8
  %70 = getelementptr inbounds i8, i8* %69, i32 1
  store i8* %70, i8** %14, align 8
  store i8 %68, i8* %69, align 1
  br label %60

71:                                               ; preds = %60
  br label %75

72:                                               ; preds = %56
  %73 = load i8*, i8** %14, align 8
  %74 = getelementptr inbounds i8, i8* %73, i32 1
  store i8* %74, i8** %14, align 8
  store i8 48, i8* %73, align 1
  br label %75

75:                                               ; preds = %72, %71
  %76 = load i32, i32* %8, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %82, label %78

78:                                               ; preds = %75
  %79 = load i32, i32* @ALTERNATE_FORM, align 4
  %80 = call i32 @TESTFLAG(i32 %79)
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %85

82:                                               ; preds = %78, %75
  %83 = load i8*, i8** %14, align 8
  %84 = getelementptr inbounds i8, i8* %83, i32 1
  store i8* %84, i8** %14, align 8
  store i8 46, i8* %83, align 1
  br label %85

85:                                               ; preds = %82, %78
  %86 = load double, double* %15, align 8
  %87 = fcmp une double %86, 0.000000e+00
  br i1 %87, label %88, label %123

88:                                               ; preds = %85
  %89 = load i32, i32* %8, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %112

91:                                               ; preds = %88
  br label %92

92:                                               ; preds = %109, %91
  %93 = load double, double* %15, align 8
  %94 = fmul double %93, 1.000000e+01
  %95 = call double @modf(double %94, double* %17) #3
  store double %95, double* %15, align 8
  %96 = load double, double* %17, align 8
  %97 = fptosi double %96 to i32
  %98 = call i8* @to_char(i32 %97)
  %99 = ptrtoint i8* %98 to i8
  %100 = load i8*, i8** %14, align 8
  %101 = getelementptr inbounds i8, i8* %100, i32 1
  store i8* %101, i8** %14, align 8
  store i8 %99, i8* %100, align 1
  br label %102

102:                                              ; preds = %92
  %103 = load i32, i32* %8, align 4
  %104 = add nsw i32 %103, -1
  store i32 %104, i32* %8, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %109

106:                                              ; preds = %102
  %107 = load double, double* %15, align 8
  %108 = fcmp une double %107, 0.000000e+00
  br label %109

109:                                              ; preds = %106, %102
  %110 = phi i1 [ false, %102 ], [ %108, %106 ]
  br i1 %110, label %92, label %111

111:                                              ; preds = %109
  br label %112

112:                                              ; preds = %111, %88
  %113 = load double, double* %15, align 8
  %114 = fcmp une double %113, 0.000000e+00
  br i1 %114, label %115, label %122

115:                                              ; preds = %112
  %116 = load double, double* %15, align 8
  %117 = load i8*, i8** %11, align 8
  %118 = load i8*, i8** %14, align 8
  %119 = getelementptr inbounds i8, i8* %118, i64 -1
  %120 = load i8*, i8** %9, align 8
  %121 = call i8* @c_round(double %116, i32* null, i8* %117, i8* %119, i8 signext 0, i8* %120)
  store i8* %121, i8** %11, align 8
  br label %122

122:                                              ; preds = %115, %112
  br label %123

123:                                              ; preds = %122, %85
  br label %124

124:                                              ; preds = %129, %123
  %125 = load i32, i32* %8, align 4
  %126 = add nsw i32 %125, -1
  store i32 %126, i32* %8, align 4
  %127 = icmp ne i32 %125, 0
  br i1 %127, label %128, label %132

128:                                              ; preds = %124
  br label %129

129:                                              ; preds = %128
  %130 = load i8*, i8** %14, align 8
  %131 = getelementptr inbounds i8, i8* %130, i32 1
  store i8* %131, i8** %14, align 8
  store i8 48, i8* %130, align 1
  br label %124

132:                                              ; preds = %124
  br label %476

133:                                              ; preds = %54, %54
  br label %134

134:                                              ; preds = %339, %133
  %135 = load i32, i32* %19, align 4
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %190

137:                                              ; preds = %134
  %138 = load i8*, i8** %13, align 8
  %139 = getelementptr inbounds i8, i8* %138, i32 1
  store i8* %139, i8** %13, align 8
  %140 = load i8, i8* %139, align 1
  %141 = load i8*, i8** %14, align 8
  %142 = getelementptr inbounds i8, i8* %141, i32 1
  store i8* %142, i8** %14, align 8
  store i8 %140, i8* %141, align 1
  %143 = load i32, i32* %8, align 4
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %149, label %145

145:                                              ; preds = %137
  %146 = load i32, i32* @ALTERNATE_FORM, align 4
  %147 = call i32 @TESTFLAG(i32 %146)
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %152

149:                                              ; preds = %145, %137
  %150 = load i8*, i8** %14, align 8
  %151 = getelementptr inbounds i8, i8* %150, i32 1
  store i8* %151, i8** %14, align 8
  store i8 46, i8* %150, align 1
  br label %152

152:                                              ; preds = %149, %145
  br label %153

153:                                              ; preds = %168, %152
  %154 = load i32, i32* %8, align 4
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %161

156:                                              ; preds = %153
  %157 = load i8*, i8** %13, align 8
  %158 = getelementptr inbounds i8, i8* %157, i32 1
  store i8* %158, i8** %13, align 8
  %159 = load i8*, i8** %12, align 8
  %160 = icmp ult i8* %158, %159
  br label %161

161:                                              ; preds = %156, %153
  %162 = phi i1 [ false, %153 ], [ %160, %156 ]
  br i1 %162, label %163, label %171

163:                                              ; preds = %161
  %164 = load i8*, i8** %13, align 8
  %165 = load i8, i8* %164, align 1
  %166 = load i8*, i8** %14, align 8
  %167 = getelementptr inbounds i8, i8* %166, i32 1
  store i8* %167, i8** %14, align 8
  store i8 %165, i8* %166, align 1
  br label %168

168:                                              ; preds = %163
  %169 = load i32, i32* %8, align 4
  %170 = add nsw i32 %169, -1
  store i32 %170, i32* %8, align 4
  br label %153

171:                                              ; preds = %161
  %172 = load i32, i32* %8, align 4
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %187, label %174

174:                                              ; preds = %171
  %175 = load i8*, i8** %13, align 8
  %176 = getelementptr inbounds i8, i8* %175, i32 1
  store i8* %176, i8** %13, align 8
  %177 = load i8*, i8** %12, align 8
  %178 = icmp ult i8* %176, %177
  br i1 %178, label %179, label %187

179:                                              ; preds = %174
  store double 0.000000e+00, double* %15, align 8
  %180 = load i8*, i8** %11, align 8
  %181 = load i8*, i8** %14, align 8
  %182 = getelementptr inbounds i8, i8* %181, i64 -1
  %183 = load i8*, i8** %13, align 8
  %184 = load i8, i8* %183, align 1
  %185 = load i8*, i8** %9, align 8
  %186 = call i8* @c_round(double 0.000000e+00, i32* %19, i8* %180, i8* %182, i8 signext %184, i8* %185)
  store i8* %186, i8** %11, align 8
  br label %187

187:                                              ; preds = %179, %174, %171
  %188 = load i32, i32* %19, align 4
  %189 = add nsw i32 %188, -1
  store i32 %189, i32* %19, align 4
  br label %236

190:                                              ; preds = %134
  %191 = load double, double* %15, align 8
  %192 = fcmp une double %191, 0.000000e+00
  br i1 %192, label %193, label %222

193:                                              ; preds = %190
  store i32 -1, i32* %19, align 4
  br label %194

194:                                              ; preds = %202, %193
  %195 = load double, double* %15, align 8
  %196 = fmul double %195, 1.000000e+01
  %197 = call double @modf(double %196, double* %17) #3
  store double %197, double* %15, align 8
  %198 = load double, double* %17, align 8
  %199 = fcmp une double %198, 0.000000e+00
  br i1 %199, label %200, label %201

200:                                              ; preds = %194
  br label %205

201:                                              ; preds = %194
  br label %202

202:                                              ; preds = %201
  %203 = load i32, i32* %19, align 4
  %204 = add nsw i32 %203, -1
  store i32 %204, i32* %19, align 4
  br label %194

205:                                              ; preds = %200
  %206 = load double, double* %17, align 8
  %207 = fptosi double %206 to i32
  %208 = call i8* @to_char(i32 %207)
  %209 = ptrtoint i8* %208 to i8
  %210 = load i8*, i8** %14, align 8
  %211 = getelementptr inbounds i8, i8* %210, i32 1
  store i8* %211, i8** %14, align 8
  store i8 %209, i8* %210, align 1
  %212 = load i32, i32* %8, align 4
  %213 = icmp ne i32 %212, 0
  br i1 %213, label %218, label %214

214:                                              ; preds = %205
  %215 = load i32, i32* @ALTERNATE_FORM, align 4
  %216 = call i32 @TESTFLAG(i32 %215)
  %217 = icmp ne i32 %216, 0
  br i1 %217, label %218, label %221

218:                                              ; preds = %214, %205
  %219 = load i8*, i8** %14, align 8
  %220 = getelementptr inbounds i8, i8* %219, i32 1
  store i8* %220, i8** %14, align 8
  store i8 46, i8* %219, align 1
  br label %221

221:                                              ; preds = %218, %214
  br label %235

222:                                              ; preds = %190
  %223 = load i8*, i8** %14, align 8
  %224 = getelementptr inbounds i8, i8* %223, i32 1
  store i8* %224, i8** %14, align 8
  store i8 48, i8* %223, align 1
  %225 = load i32, i32* %8, align 4
  %226 = icmp ne i32 %225, 0
  br i1 %226, label %231, label %227

227:                                              ; preds = %222
  %228 = load i32, i32* @ALTERNATE_FORM, align 4
  %229 = call i32 @TESTFLAG(i32 %228)
  %230 = icmp ne i32 %229, 0
  br i1 %230, label %231, label %234

231:                                              ; preds = %227, %222
  %232 = load i8*, i8** %14, align 8
  %233 = getelementptr inbounds i8, i8* %232, i32 1
  store i8* %233, i8** %14, align 8
  store i8 46, i8* %232, align 1
  br label %234

234:                                              ; preds = %231, %227
  br label %235

235:                                              ; preds = %234, %221
  br label %236

236:                                              ; preds = %235, %187
  %237 = load double, double* %15, align 8
  %238 = fcmp une double %237, 0.000000e+00
  br i1 %238, label %239, label %274

239:                                              ; preds = %236
  %240 = load i32, i32* %8, align 4
  %241 = icmp ne i32 %240, 0
  br i1 %241, label %242, label %263

242:                                              ; preds = %239
  br label %243

243:                                              ; preds = %260, %242
  %244 = load double, double* %15, align 8
  %245 = fmul double %244, 1.000000e+01
  %246 = call double @modf(double %245, double* %17) #3
  store double %246, double* %15, align 8
  %247 = load double, double* %17, align 8
  %248 = fptosi double %247 to i32
  %249 = call i8* @to_char(i32 %248)
  %250 = ptrtoint i8* %249 to i8
  %251 = load i8*, i8** %14, align 8
  %252 = getelementptr inbounds i8, i8* %251, i32 1
  store i8* %252, i8** %14, align 8
  store i8 %250, i8* %251, align 1
  br label %253

253:                                              ; preds = %243
  %254 = load i32, i32* %8, align 4
  %255 = add nsw i32 %254, -1
  store i32 %255, i32* %8, align 4
  %256 = icmp ne i32 %255, 0
  br i1 %256, label %257, label %260

257:                                              ; preds = %253
  %258 = load double, double* %15, align 8
  %259 = fcmp une double %258, 0.000000e+00
  br label %260

260:                                              ; preds = %257, %253
  %261 = phi i1 [ false, %253 ], [ %259, %257 ]
  br i1 %261, label %243, label %262

262:                                              ; preds = %260
  br label %263

263:                                              ; preds = %262, %239
  %264 = load double, double* %15, align 8
  %265 = fcmp une double %264, 0.000000e+00
  br i1 %265, label %266, label %273

266:                                              ; preds = %263
  %267 = load double, double* %15, align 8
  %268 = load i8*, i8** %11, align 8
  %269 = load i8*, i8** %14, align 8
  %270 = getelementptr inbounds i8, i8* %269, i64 -1
  %271 = load i8*, i8** %9, align 8
  %272 = call i8* @c_round(double %267, i32* %19, i8* %268, i8* %270, i8 signext 0, i8* %271)
  store i8* %272, i8** %11, align 8
  br label %273

273:                                              ; preds = %266, %263
  br label %274

274:                                              ; preds = %273, %236
  br label %275

275:                                              ; preds = %280, %274
  %276 = load i32, i32* %8, align 4
  %277 = add nsw i32 %276, -1
  store i32 %277, i32* %8, align 4
  %278 = icmp ne i32 %276, 0
  br i1 %278, label %279, label %283

279:                                              ; preds = %275
  br label %280

280:                                              ; preds = %279
  %281 = load i8*, i8** %14, align 8
  %282 = getelementptr inbounds i8, i8* %281, i32 1
  store i8* %282, i8** %14, align 8
  store i8 48, i8* %281, align 1
  br label %275

283:                                              ; preds = %275
  %284 = load i32, i32* %20, align 4
  %285 = icmp ne i32 %284, 0
  br i1 %285, label %286, label %315

286:                                              ; preds = %283
  %287 = load i32, i32* @ALTERNATE_FORM, align 4
  %288 = call i32 @TESTFLAG(i32 %287)
  %289 = icmp ne i32 %288, 0
  br i1 %289, label %315, label %290

290:                                              ; preds = %286
  br label %291

291:                                              ; preds = %303, %290
  %292 = load i8*, i8** %14, align 8
  %293 = load i8*, i8** %11, align 8
  %294 = icmp ugt i8* %292, %293
  br i1 %294, label %295, label %301

295:                                              ; preds = %291
  %296 = load i8*, i8** %14, align 8
  %297 = getelementptr inbounds i8, i8* %296, i32 -1
  store i8* %297, i8** %14, align 8
  %298 = load i8, i8* %297, align 1
  %299 = sext i8 %298 to i32
  %300 = icmp eq i32 %299, 48
  br label %301

301:                                              ; preds = %295, %291
  %302 = phi i1 [ false, %291 ], [ %300, %295 ]
  br i1 %302, label %303, label %304

303:                                              ; preds = %301
  br label %291

304:                                              ; preds = %301
  %305 = load i8*, i8** %14, align 8
  %306 = load i8, i8* %305, align 1
  %307 = sext i8 %306 to i32
  %308 = icmp eq i32 %307, 46
  br i1 %308, label %309, label %312

309:                                              ; preds = %304
  %310 = load i8*, i8** %14, align 8
  %311 = getelementptr inbounds i8, i8* %310, i32 -1
  store i8* %311, i8** %14, align 8
  br label %312

312:                                              ; preds = %309, %304
  %313 = load i8*, i8** %14, align 8
  %314 = getelementptr inbounds i8, i8* %313, i32 1
  store i8* %314, i8** %14, align 8
  br label %315

315:                                              ; preds = %312, %286, %283
  %316 = load i8*, i8** %14, align 8
  %317 = load i32, i32* %19, align 4
  %318 = load i32, i32* %10, align 4
  %319 = call i8* @exponent(i8* %316, i32 %317, i32 %318)
  store i8* %319, i8** %14, align 8
  br label %476

320:                                              ; preds = %54, %54
  %321 = load i32, i32* %8, align 4
  %322 = icmp ne i32 %321, 0
  br i1 %322, label %326, label %323

323:                                              ; preds = %320
  %324 = load i32, i32* %8, align 4
  %325 = add nsw i32 %324, 1
  store i32 %325, i32* %8, align 4
  br label %326

326:                                              ; preds = %323, %320
  %327 = load i32, i32* %19, align 4
  %328 = load i32, i32* %8, align 4
  %329 = icmp sgt i32 %327, %328
  br i1 %329, label %339, label %330

330:                                              ; preds = %326
  %331 = load i32, i32* %19, align 4
  %332 = icmp ne i32 %331, 0
  br i1 %332, label %344, label %333

333:                                              ; preds = %330
  %334 = load double, double* %15, align 8
  %335 = fcmp une double %334, 0.000000e+00
  br i1 %335, label %336, label %344

336:                                              ; preds = %333
  %337 = load double, double* %15, align 8
  %338 = fcmp olt double %337, 1.000000e-04
  br i1 %338, label %339, label %344

339:                                              ; preds = %336, %326
  %340 = load i32, i32* %8, align 4
  %341 = add nsw i32 %340, -1
  store i32 %341, i32* %8, align 4
  %342 = load i32, i32* %10, align 4
  %343 = sub nsw i32 %342, 2
  store i32 %343, i32* %10, align 4
  store i32 1, i32* %20, align 4
  br label %134

344:                                              ; preds = %336, %333, %330
  %345 = load i32, i32* %19, align 4
  %346 = icmp ne i32 %345, 0
  br i1 %346, label %347, label %362

347:                                              ; preds = %344
  br label %348

348:                                              ; preds = %354, %347
  %349 = load i8*, i8** %13, align 8
  %350 = getelementptr inbounds i8, i8* %349, i32 1
  store i8* %350, i8** %13, align 8
  %351 = load i8*, i8** %12, align 8
  %352 = icmp ult i8* %350, %351
  br i1 %352, label %353, label %361

353:                                              ; preds = %348
  br label %354

354:                                              ; preds = %353
  %355 = load i8*, i8** %13, align 8
  %356 = load i8, i8* %355, align 1
  %357 = load i8*, i8** %14, align 8
  %358 = getelementptr inbounds i8, i8* %357, i32 1
  store i8* %358, i8** %14, align 8
  store i8 %356, i8* %357, align 1
  %359 = load i32, i32* %8, align 4
  %360 = add nsw i32 %359, -1
  store i32 %360, i32* %8, align 4
  br label %348

361:                                              ; preds = %348
  br label %365

362:                                              ; preds = %344
  %363 = load i8*, i8** %14, align 8
  %364 = getelementptr inbounds i8, i8* %363, i32 1
  store i8* %364, i8** %14, align 8
  store i8 48, i8* %363, align 1
  br label %365

365:                                              ; preds = %362, %361
  %366 = load i32, i32* %8, align 4
  %367 = icmp ne i32 %366, 0
  br i1 %367, label %372, label %368

368:                                              ; preds = %365
  %369 = load i32, i32* @ALTERNATE_FORM, align 4
  %370 = call i32 @TESTFLAG(i32 %369)
  %371 = icmp ne i32 %370, 0
  br i1 %371, label %372, label %375

372:                                              ; preds = %368, %365
  store i32 1, i32* %18, align 4
  %373 = load i8*, i8** %14, align 8
  %374 = getelementptr inbounds i8, i8* %373, i32 1
  store i8* %374, i8** %14, align 8
  store i8 46, i8* %373, align 1
  br label %376

375:                                              ; preds = %368
  store i32 0, i32* %18, align 4
  br label %376

376:                                              ; preds = %375, %372
  %377 = load double, double* %15, align 8
  %378 = fcmp une double %377, 0.000000e+00
  br i1 %378, label %379, label %434

379:                                              ; preds = %376
  %380 = load i32, i32* %8, align 4
  %381 = icmp ne i32 %380, 0
  br i1 %381, label %382, label %423

382:                                              ; preds = %379
  br label %383

383:                                              ; preds = %400, %382
  %384 = load double, double* %15, align 8
  %385 = fmul double %384, 1.000000e+01
  %386 = call double @modf(double %385, double* %17) #3
  store double %386, double* %15, align 8
  %387 = load double, double* %17, align 8
  %388 = fptosi double %387 to i32
  %389 = call i8* @to_char(i32 %388)
  %390 = ptrtoint i8* %389 to i8
  %391 = load i8*, i8** %14, align 8
  %392 = getelementptr inbounds i8, i8* %391, i32 1
  store i8* %392, i8** %14, align 8
  store i8 %390, i8* %391, align 1
  br label %393

393:                                              ; preds = %383
  %394 = load double, double* %17, align 8
  %395 = fcmp une double %394, 0.000000e+00
  br i1 %395, label %400, label %396

396:                                              ; preds = %393
  %397 = load i32, i32* %19, align 4
  %398 = icmp ne i32 %397, 0
  %399 = xor i1 %398, true
  br label %400

400:                                              ; preds = %396, %393
  %401 = phi i1 [ false, %393 ], [ %399, %396 ]
  br i1 %401, label %383, label %402

402:                                              ; preds = %400
  br label %403

403:                                              ; preds = %412, %402
  %404 = load i32, i32* %8, align 4
  %405 = add nsw i32 %404, -1
  store i32 %405, i32* %8, align 4
  %406 = icmp ne i32 %405, 0
  br i1 %406, label %407, label %410

407:                                              ; preds = %403
  %408 = load double, double* %15, align 8
  %409 = fcmp une double %408, 0.000000e+00
  br label %410

410:                                              ; preds = %407, %403
  %411 = phi i1 [ false, %403 ], [ %409, %407 ]
  br i1 %411, label %412, label %422

412:                                              ; preds = %410
  %413 = load double, double* %15, align 8
  %414 = fmul double %413, 1.000000e+01
  %415 = call double @modf(double %414, double* %17) #3
  store double %415, double* %15, align 8
  %416 = load double, double* %17, align 8
  %417 = fptosi double %416 to i32
  %418 = call i8* @to_char(i32 %417)
  %419 = ptrtoint i8* %418 to i8
  %420 = load i8*, i8** %14, align 8
  %421 = getelementptr inbounds i8, i8* %420, i32 1
  store i8* %421, i8** %14, align 8
  store i8 %419, i8* %420, align 1
  br label %403

422:                                              ; preds = %410
  br label %423

423:                                              ; preds = %422, %379
  %424 = load double, double* %15, align 8
  %425 = fcmp une double %424, 0.000000e+00
  br i1 %425, label %426, label %433

426:                                              ; preds = %423
  %427 = load double, double* %15, align 8
  %428 = load i8*, i8** %11, align 8
  %429 = load i8*, i8** %14, align 8
  %430 = getelementptr inbounds i8, i8* %429, i64 -1
  %431 = load i8*, i8** %9, align 8
  %432 = call i8* @c_round(double %427, i32* null, i8* %428, i8* %430, i8 signext 0, i8* %431)
  store i8* %432, i8** %11, align 8
  br label %433

433:                                              ; preds = %426, %423
  br label %434

434:                                              ; preds = %433, %376
  %435 = load i32, i32* @ALTERNATE_FORM, align 4
  %436 = call i32 @TESTFLAG(i32 %435)
  %437 = icmp ne i32 %436, 0
  br i1 %437, label %438, label %448

438:                                              ; preds = %434
  br label %439

439:                                              ; preds = %444, %438
  %440 = load i32, i32* %8, align 4
  %441 = add nsw i32 %440, -1
  store i32 %441, i32* %8, align 4
  %442 = icmp ne i32 %440, 0
  br i1 %442, label %443, label %447

443:                                              ; preds = %439
  br label %444

444:                                              ; preds = %443
  %445 = load i8*, i8** %14, align 8
  %446 = getelementptr inbounds i8, i8* %445, i32 1
  store i8* %446, i8** %14, align 8
  store i8 48, i8* %445, align 1
  br label %439

447:                                              ; preds = %439
  br label %475

448:                                              ; preds = %434
  %449 = load i32, i32* %18, align 4
  %450 = icmp ne i32 %449, 0
  br i1 %450, label %451, label %474

451:                                              ; preds = %448
  br label %452

452:                                              ; preds = %464, %451
  %453 = load i8*, i8** %14, align 8
  %454 = load i8*, i8** %11, align 8
  %455 = icmp ugt i8* %453, %454
  br i1 %455, label %456, label %462

456:                                              ; preds = %452
  %457 = load i8*, i8** %14, align 8
  %458 = getelementptr inbounds i8, i8* %457, i32 -1
  store i8* %458, i8** %14, align 8
  %459 = load i8, i8* %458, align 1
  %460 = sext i8 %459 to i32
  %461 = icmp eq i32 %460, 48
  br label %462

462:                                              ; preds = %456, %452
  %463 = phi i1 [ false, %452 ], [ %461, %456 ]
  br i1 %463, label %464, label %465

464:                                              ; preds = %462
  br label %452

465:                                              ; preds = %462
  %466 = load i8*, i8** %14, align 8
  %467 = load i8, i8* %466, align 1
  %468 = sext i8 %467 to i32
  %469 = icmp ne i32 %468, 46
  br i1 %469, label %470, label %473

470:                                              ; preds = %465
  %471 = load i8*, i8** %14, align 8
  %472 = getelementptr inbounds i8, i8* %471, i32 1
  store i8* %472, i8** %14, align 8
  br label %473

473:                                              ; preds = %470, %465
  br label %474

474:                                              ; preds = %473, %448
  br label %475

475:                                              ; preds = %474, %447
  br label %476

476:                                              ; preds = %475, %54, %315, %132
  %477 = load i8*, i8** %14, align 8
  %478 = load i8*, i8** %11, align 8
  %479 = ptrtoint i8* %477 to i64
  %480 = ptrtoint i8* %478 to i64
  %481 = sub i64 %479, %480
  %482 = trunc i64 %481 to i32
  ret i32 %482
}

; Function Attrs: nounwind
declare dso_local double @modf(double, double*) #1

declare dso_local i8* @to_char(i32) #2

declare dso_local i32 @TESTFLAG(i32) #2

declare dso_local i8* @c_round(double, i32*, i8*, i8*, i8 signext, i8*) #2

declare dso_local i8* @exponent(i8*, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
