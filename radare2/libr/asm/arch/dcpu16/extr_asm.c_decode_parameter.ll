; ModuleID = '/home/carl/AnghaBench/radare2/libr/asm/arch/dcpu16/extr_asm.c_decode_parameter.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/asm/arch/dcpu16/extr_asm.c_decode_parameter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Missing last square bracket\0A\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"Missing first square bracket\0A\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"invalid literal\0A\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"POP\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"PEEK\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"PUSH\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"SP\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"PC\00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c"O\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32*, i32*)* @decode_parameter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @decode_parameter(i8* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8, align 1
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i8, align 1
  %23 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %24 = load i8*, i8** %5, align 8
  %25 = getelementptr inbounds i8, i8* %24, i64 0
  %26 = load i8, i8* %25, align 1
  %27 = sext i8 %26 to i32
  %28 = icmp eq i32 %27, 91
  br i1 %28, label %29, label %32

29:                                               ; preds = %3
  store i32 1, i32* %9, align 4
  %30 = load i8*, i8** %5, align 8
  %31 = getelementptr inbounds i8, i8* %30, i32 1
  store i8* %31, i8** %5, align 8
  br label %32

32:                                               ; preds = %29, %3
  %33 = load i8*, i8** %5, align 8
  %34 = load i8*, i8** %5, align 8
  %35 = call i32 @strlen(i8* %34)
  %36 = sub nsw i32 %35, 1
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i8, i8* %33, i64 %37
  %39 = load i8, i8* %38, align 1
  %40 = sext i8 %39 to i32
  %41 = icmp eq i32 %40, 93
  br i1 %41, label %42, label %49

42:                                               ; preds = %32
  store i32 1, i32* %10, align 4
  %43 = load i8*, i8** %5, align 8
  %44 = load i8*, i8** %5, align 8
  %45 = call i32 @strlen(i8* %44)
  %46 = sub nsw i32 %45, 1
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i8, i8* %43, i64 %47
  store i8 0, i8* %48, align 1
  br label %49

49:                                               ; preds = %42, %32
  %50 = load i32, i32* %9, align 4
  %51 = icmp eq i32 %50, 1
  br i1 %51, label %52, label %59

52:                                               ; preds = %49
  store i32 1, i32* %8, align 4
  %53 = load i32, i32* %10, align 4
  %54 = icmp ne i32 %53, 1
  br i1 %54, label %55, label %58

55:                                               ; preds = %52
  %56 = load i32, i32* @stderr, align 4
  %57 = call i32 @fprintf(i32 %56, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %314

58:                                               ; preds = %52
  br label %66

59:                                               ; preds = %49
  %60 = load i32, i32* %10, align 4
  %61 = icmp eq i32 %60, 1
  br i1 %61, label %62, label %65

62:                                               ; preds = %59
  %63 = load i32, i32* @stderr, align 4
  %64 = call i32 @fprintf(i32 %63, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %314

65:                                               ; preds = %59
  br label %66

66:                                               ; preds = %65, %58
  %67 = load i8*, i8** %5, align 8
  %68 = getelementptr inbounds i8, i8* %67, i64 0
  %69 = load i8, i8* %68, align 1
  %70 = sext i8 %69 to i32
  %71 = icmp eq i32 %70, 48
  br i1 %71, label %72, label %172

72:                                               ; preds = %66
  %73 = load i8*, i8** %5, align 8
  %74 = getelementptr inbounds i8, i8* %73, i64 1
  %75 = load i8, i8* %74, align 1
  %76 = sext i8 %75 to i32
  %77 = icmp eq i32 %76, 88
  br i1 %77, label %78, label %172

78:                                               ; preds = %72
  store i32 0, i32* %11, align 4
  %79 = load i8*, i8** %5, align 8
  %80 = getelementptr inbounds i8, i8* %79, i64 2
  store i8* %80, i8** %5, align 8
  %81 = load i8*, i8** %5, align 8
  %82 = call i32 @strlen(i8* %81)
  store i32 %82, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store i32 -1, i32* %14, align 4
  store i32 0, i32* %13, align 4
  br label %83

83:                                               ; preds = %146, %78
  %84 = load i32, i32* %13, align 4
  %85 = load i32, i32* %12, align 4
  %86 = icmp slt i32 %84, %85
  br i1 %86, label %87, label %149

87:                                               ; preds = %83
  store i32 -1, i32* %15, align 4
  %88 = load i8*, i8** %5, align 8
  %89 = load i32, i32* %13, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i8, i8* %88, i64 %90
  %92 = load i8, i8* %91, align 1
  store i8 %92, i8* %16, align 1
  %93 = load i8, i8* %16, align 1
  %94 = sext i8 %93 to i32
  %95 = icmp sge i32 %94, 48
  br i1 %95, label %96, label %104

96:                                               ; preds = %87
  %97 = load i8, i8* %16, align 1
  %98 = sext i8 %97 to i32
  %99 = icmp sle i32 %98, 57
  br i1 %99, label %100, label %104

100:                                              ; preds = %96
  %101 = load i8, i8* %16, align 1
  %102 = sext i8 %101 to i32
  %103 = sub nsw i32 %102, 48
  store i32 %103, i32* %15, align 4
  br label %104

104:                                              ; preds = %100, %96, %87
  %105 = load i8, i8* %16, align 1
  %106 = sext i8 %105 to i32
  %107 = icmp sge i32 %106, 65
  br i1 %107, label %108, label %117

108:                                              ; preds = %104
  %109 = load i8, i8* %16, align 1
  %110 = sext i8 %109 to i32
  %111 = icmp sle i32 %110, 70
  br i1 %111, label %112, label %117

112:                                              ; preds = %108
  %113 = load i8, i8* %16, align 1
  %114 = sext i8 %113 to i32
  %115 = sub nsw i32 %114, 65
  %116 = add nsw i32 %115, 10
  store i32 %116, i32* %15, align 4
  br label %117

117:                                              ; preds = %112, %108, %104
  %118 = load i8, i8* %16, align 1
  %119 = sext i8 %118 to i32
  %120 = icmp eq i32 %119, 43
  br i1 %120, label %121, label %134

121:                                              ; preds = %117
  %122 = load i32, i32* %8, align 4
  %123 = icmp eq i32 %122, 1
  br i1 %123, label %124, label %134

124:                                              ; preds = %121
  %125 = load i8*, i8** %5, align 8
  %126 = load i32, i32* %13, align 4
  %127 = add nsw i32 %126, 1
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds i8, i8* %125, i64 %128
  %130 = load i8, i8* %129, align 1
  %131 = call i32 @get_register_id(i8 signext %130)
  store i32 %131, i32* %14, align 4
  %132 = load i32, i32* %13, align 4
  %133 = add nsw i32 %132, 1
  store i32 %133, i32* %13, align 4
  br label %145

134:                                              ; preds = %121, %117
  %135 = load i32, i32* %15, align 4
  %136 = icmp eq i32 %135, -1
  br i1 %136, label %137, label %140

137:                                              ; preds = %134
  %138 = load i32, i32* @stderr, align 4
  %139 = call i32 @fprintf(i32 %138, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %314

140:                                              ; preds = %134
  %141 = load i32, i32* %11, align 4
  %142 = shl i32 %141, 4
  %143 = load i32, i32* %15, align 4
  %144 = add nsw i32 %142, %143
  store i32 %144, i32* %11, align 4
  br label %145

145:                                              ; preds = %140, %124
  br label %146

146:                                              ; preds = %145
  %147 = load i32, i32* %13, align 4
  %148 = add nsw i32 %147, 1
  store i32 %148, i32* %13, align 4
  br label %83

149:                                              ; preds = %83
  %150 = load i32, i32* %11, align 4
  %151 = icmp sle i32 %150, 31
  br i1 %151, label %152, label %158

152:                                              ; preds = %149
  %153 = load i32, i32* %8, align 4
  %154 = icmp eq i32 %153, 0
  br i1 %154, label %155, label %158

155:                                              ; preds = %152
  %156 = load i32, i32* %11, align 4
  %157 = add nsw i32 %156, 32
  store i32 %157, i32* %4, align 4
  br label %314

158:                                              ; preds = %152, %149
  %159 = load i32*, i32** %6, align 8
  store i32 1, i32* %159, align 4
  %160 = load i32, i32* %11, align 4
  %161 = load i32*, i32** %7, align 8
  store i32 %160, i32* %161, align 4
  %162 = load i32, i32* %8, align 4
  %163 = icmp eq i32 %162, 1
  br i1 %163, label %164, label %171

164:                                              ; preds = %158
  %165 = load i32, i32* %14, align 4
  %166 = icmp ne i32 %165, -1
  br i1 %166, label %167, label %170

167:                                              ; preds = %164
  %168 = load i32, i32* %14, align 4
  %169 = add nsw i32 16, %168
  store i32 %169, i32* %4, align 4
  br label %314

170:                                              ; preds = %164
  store i32 30, i32* %4, align 4
  br label %314

171:                                              ; preds = %158
  store i32 31, i32* %4, align 4
  br label %314

172:                                              ; preds = %72, %66
  %173 = load i8*, i8** %5, align 8
  %174 = getelementptr inbounds i8, i8* %173, i64 0
  %175 = load i8, i8* %174, align 1
  %176 = sext i8 %175 to i32
  %177 = icmp sge i32 %176, 48
  br i1 %177, label %178, label %263

178:                                              ; preds = %172
  %179 = load i8*, i8** %5, align 8
  %180 = getelementptr inbounds i8, i8* %179, i64 0
  %181 = load i8, i8* %180, align 1
  %182 = sext i8 %181 to i32
  %183 = icmp sle i32 %182, 57
  br i1 %183, label %184, label %263

184:                                              ; preds = %178
  store i32 0, i32* %17, align 4
  %185 = load i8*, i8** %5, align 8
  %186 = call i32 @strlen(i8* %185)
  store i32 %186, i32* %18, align 4
  store i32 0, i32* %19, align 4
  store i32 -1, i32* %20, align 4
  store i32 0, i32* %19, align 4
  br label %187

187:                                              ; preds = %237, %184
  %188 = load i32, i32* %19, align 4
  %189 = load i32, i32* %18, align 4
  %190 = icmp slt i32 %188, %189
  br i1 %190, label %191, label %240

191:                                              ; preds = %187
  store i32 -1, i32* %21, align 4
  %192 = load i8*, i8** %5, align 8
  %193 = load i32, i32* %19, align 4
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds i8, i8* %192, i64 %194
  %196 = load i8, i8* %195, align 1
  store i8 %196, i8* %22, align 1
  %197 = load i8, i8* %22, align 1
  %198 = sext i8 %197 to i32
  %199 = icmp sge i32 %198, 48
  br i1 %199, label %200, label %208

200:                                              ; preds = %191
  %201 = load i8, i8* %22, align 1
  %202 = sext i8 %201 to i32
  %203 = icmp sle i32 %202, 57
  br i1 %203, label %204, label %208

204:                                              ; preds = %200
  %205 = load i8, i8* %22, align 1
  %206 = sext i8 %205 to i32
  %207 = sub nsw i32 %206, 48
  store i32 %207, i32* %21, align 4
  br label %208

208:                                              ; preds = %204, %200, %191
  %209 = load i8, i8* %22, align 1
  %210 = sext i8 %209 to i32
  %211 = icmp eq i32 %210, 43
  br i1 %211, label %212, label %225

212:                                              ; preds = %208
  %213 = load i32, i32* %8, align 4
  %214 = icmp eq i32 %213, 1
  br i1 %214, label %215, label %225

215:                                              ; preds = %212
  %216 = load i8*, i8** %5, align 8
  %217 = load i32, i32* %19, align 4
  %218 = add nsw i32 %217, 1
  %219 = sext i32 %218 to i64
  %220 = getelementptr inbounds i8, i8* %216, i64 %219
  %221 = load i8, i8* %220, align 1
  %222 = call i32 @get_register_id(i8 signext %221)
  store i32 %222, i32* %20, align 4
  %223 = load i32, i32* %19, align 4
  %224 = add nsw i32 %223, 1
  store i32 %224, i32* %19, align 4
  br label %236

225:                                              ; preds = %212, %208
  %226 = load i32, i32* %21, align 4
  %227 = icmp eq i32 %226, -1
  br i1 %227, label %228, label %231

228:                                              ; preds = %225
  %229 = load i32, i32* @stderr, align 4
  %230 = call i32 @fprintf(i32 %229, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %314

231:                                              ; preds = %225
  %232 = load i32, i32* %17, align 4
  %233 = mul nsw i32 %232, 10
  %234 = load i32, i32* %21, align 4
  %235 = add nsw i32 %233, %234
  store i32 %235, i32* %17, align 4
  br label %236

236:                                              ; preds = %231, %215
  br label %237

237:                                              ; preds = %236
  %238 = load i32, i32* %19, align 4
  %239 = add nsw i32 %238, 1
  store i32 %239, i32* %19, align 4
  br label %187

240:                                              ; preds = %187
  %241 = load i32, i32* %17, align 4
  %242 = icmp sle i32 %241, 31
  br i1 %242, label %243, label %249

243:                                              ; preds = %240
  %244 = load i32, i32* %8, align 4
  %245 = icmp eq i32 %244, 0
  br i1 %245, label %246, label %249

246:                                              ; preds = %243
  %247 = load i32, i32* %17, align 4
  %248 = add nsw i32 %247, 32
  store i32 %248, i32* %4, align 4
  br label %314

249:                                              ; preds = %243, %240
  %250 = load i32*, i32** %6, align 8
  store i32 1, i32* %250, align 4
  %251 = load i32, i32* %17, align 4
  %252 = load i32*, i32** %7, align 8
  store i32 %251, i32* %252, align 4
  %253 = load i32, i32* %8, align 4
  %254 = icmp eq i32 %253, 1
  br i1 %254, label %255, label %262

255:                                              ; preds = %249
  %256 = load i32, i32* %20, align 4
  %257 = icmp ne i32 %256, -1
  br i1 %257, label %258, label %261

258:                                              ; preds = %255
  %259 = load i32, i32* %20, align 4
  %260 = add nsw i32 16, %259
  store i32 %260, i32* %4, align 4
  br label %314

261:                                              ; preds = %255
  store i32 30, i32* %4, align 4
  br label %314

262:                                              ; preds = %249
  store i32 31, i32* %4, align 4
  br label %314

263:                                              ; preds = %178, %172
  %264 = load i8*, i8** %5, align 8
  %265 = getelementptr inbounds i8, i8* %264, i64 1
  %266 = load i8, i8* %265, align 1
  %267 = sext i8 %266 to i32
  %268 = icmp eq i32 %267, 0
  br i1 %268, label %269, label %281

269:                                              ; preds = %263
  %270 = load i8*, i8** %5, align 8
  %271 = getelementptr inbounds i8, i8* %270, i64 0
  %272 = load i8, i8* %271, align 1
  %273 = call i32 @get_register_id(i8 signext %272)
  store i32 %273, i32* %23, align 4
  %274 = load i32, i32* %8, align 4
  %275 = icmp eq i32 %274, 1
  br i1 %275, label %276, label %279

276:                                              ; preds = %269
  %277 = load i32, i32* %23, align 4
  %278 = add nsw i32 %277, 8
  store i32 %278, i32* %23, align 4
  br label %279

279:                                              ; preds = %276, %269
  %280 = load i32, i32* %23, align 4
  store i32 %280, i32* %4, align 4
  br label %314

281:                                              ; preds = %263
  %282 = load i8*, i8** %5, align 8
  %283 = call i32 @strncmp(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* %282, i32 3)
  %284 = icmp ne i32 %283, 0
  br i1 %284, label %286, label %285

285:                                              ; preds = %281
  store i32 24, i32* %4, align 4
  br label %314

286:                                              ; preds = %281
  %287 = load i8*, i8** %5, align 8
  %288 = call i32 @strncmp(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8* %287, i32 4)
  %289 = icmp ne i32 %288, 0
  br i1 %289, label %291, label %290

290:                                              ; preds = %286
  store i32 25, i32* %4, align 4
  br label %314

291:                                              ; preds = %286
  %292 = load i8*, i8** %5, align 8
  %293 = call i32 @strncmp(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i8* %292, i32 4)
  %294 = icmp ne i32 %293, 0
  br i1 %294, label %296, label %295

295:                                              ; preds = %291
  store i32 26, i32* %4, align 4
  br label %314

296:                                              ; preds = %291
  %297 = load i8*, i8** %5, align 8
  %298 = call i32 @strncmp(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i8* %297, i32 2)
  %299 = icmp ne i32 %298, 0
  br i1 %299, label %301, label %300

300:                                              ; preds = %296
  store i32 27, i32* %4, align 4
  br label %314

301:                                              ; preds = %296
  %302 = load i8*, i8** %5, align 8
  %303 = call i32 @strncmp(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0), i8* %302, i32 2)
  %304 = icmp ne i32 %303, 0
  br i1 %304, label %306, label %305

305:                                              ; preds = %301
  store i32 28, i32* %4, align 4
  br label %314

306:                                              ; preds = %301
  %307 = load i8*, i8** %5, align 8
  %308 = call i32 @strncmp(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0), i8* %307, i32 1)
  %309 = icmp ne i32 %308, 0
  br i1 %309, label %311, label %310

310:                                              ; preds = %306
  store i32 29, i32* %4, align 4
  br label %314

311:                                              ; preds = %306
  %312 = load i32*, i32** %6, align 8
  store i32 1, i32* %312, align 4
  %313 = load i32*, i32** %7, align 8
  store i32 0, i32* %313, align 4
  store i32 31, i32* %4, align 4
  br label %314

314:                                              ; preds = %311, %310, %305, %300, %295, %290, %285, %279, %262, %261, %258, %246, %228, %171, %170, %167, %155, %137, %62, %55
  %315 = load i32, i32* %4, align 4
  ret i32 %315
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @fprintf(i32, i8*) #1

declare dso_local i32 @get_register_id(i8 signext) #1

declare dso_local i32 @strncmp(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
