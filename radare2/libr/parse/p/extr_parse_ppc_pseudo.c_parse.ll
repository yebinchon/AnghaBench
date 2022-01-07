; ModuleID = '/home/carl/AnghaBench/radare2/libr/parse/p/extr_parse_ppc_pseudo.c_parse.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/parse/p/extr_parse_ppc_pseudo.c_parse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@WSZ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"jr ra\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"return\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"+ -\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"- \00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c" + ]\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"]  \00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"%s = %s +\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"%s +=\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"%s = %s -\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"%s -=\00", align 1
@.str.10 = private unnamed_addr constant [10 x i8] c"%s = %s &\00", align 1
@.str.11 = private unnamed_addr constant [6 x i8] c"%s &=\00", align 1
@.str.12 = private unnamed_addr constant [10 x i8] c"%s = %s |\00", align 1
@.str.13 = private unnamed_addr constant [6 x i8] c"%s |=\00", align 1
@.str.14 = private unnamed_addr constant [10 x i8] c"%s = %s ^\00", align 1
@.str.15 = private unnamed_addr constant [6 x i8] c"%s ^=\00", align 1
@.str.16 = private unnamed_addr constant [11 x i8] c"%s = %s >>\00", align 1
@.str.17 = private unnamed_addr constant [7 x i8] c"%s >>=\00", align 1
@.str.18 = private unnamed_addr constant [11 x i8] c"%s = %s <<\00", align 1
@.str.19 = private unnamed_addr constant [7 x i8] c"%s <<=\00", align 1
@.str.20 = private unnamed_addr constant [2 x i8] c":\00", align 1
@.str.21 = private unnamed_addr constant [5 x i8] c"0000\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, i8*)* @parse to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse(i32* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i32, align 4
  %21 = alloca [6 x i8*], align 16
  %22 = alloca i32, align 4
  %23 = alloca i8*, align 8
  %24 = alloca [64 x i8], align 16
  %25 = alloca [64 x i8], align 16
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  %35 = alloca i32, align 4
  %36 = alloca i32, align 4
  %37 = alloca i32, align 4
  %38 = alloca i32, align 4
  %39 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %40 = load i8*, i8** %6, align 8
  %41 = call i32 @strlen(i8* %40)
  store i32 %41, i32* %9, align 4
  %42 = load i32, i32* @WSZ, align 4
  %43 = zext i32 %42 to i64
  %44 = call i8* @llvm.stacksave()
  store i8* %44, i8** %10, align 8
  %45 = alloca i8, i64 %43, align 16
  store i64 %43, i64* %11, align 8
  %46 = load i32, i32* @WSZ, align 4
  %47 = zext i32 %46 to i64
  %48 = alloca i8, i64 %47, align 16
  store i64 %47, i64* %12, align 8
  %49 = load i32, i32* @WSZ, align 4
  %50 = zext i32 %49 to i64
  %51 = alloca i8, i64 %50, align 16
  store i64 %50, i64* %13, align 8
  %52 = load i32, i32* @WSZ, align 4
  %53 = zext i32 %52 to i64
  %54 = alloca i8, i64 %53, align 16
  store i64 %53, i64* %14, align 8
  %55 = load i32, i32* @WSZ, align 4
  %56 = zext i32 %55 to i64
  %57 = alloca i8, i64 %56, align 16
  store i64 %56, i64* %15, align 8
  %58 = load i32, i32* @WSZ, align 4
  %59 = zext i32 %58 to i64
  %60 = alloca i8, i64 %59, align 16
  store i64 %59, i64* %16, align 8
  %61 = load i8*, i8** %6, align 8
  %62 = call i32 @strcmp(i8* %61, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %67, label %64

64:                                               ; preds = %3
  %65 = load i8*, i8** %7, align 8
  %66 = call i32 @strcpy(i8* %65, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  store i32 1, i32* %4, align 4
  store i32 1, i32* %20, align 4
  br label %420

67:                                               ; preds = %3
  %68 = load i32, i32* %9, align 4
  %69 = add nsw i32 %68, 1
  %70 = call i8* @malloc(i32 %69)
  store i8* %70, i8** %17, align 8
  %71 = icmp ne i8* %70, null
  br i1 %71, label %73, label %72

72:                                               ; preds = %67
  store i32 0, i32* %4, align 4
  store i32 1, i32* %20, align 4
  br label %420

73:                                               ; preds = %67
  %74 = load i8*, i8** %17, align 8
  %75 = load i8*, i8** %6, align 8
  %76 = load i32, i32* %9, align 4
  %77 = add nsw i32 %76, 1
  %78 = call i32 @memcpy(i8* %74, i8* %75, i32 %77)
  %79 = load i8*, i8** %17, align 8
  %80 = call i32 @r_str_replace_char(i8* %79, i8 signext 40, i8 signext 44)
  %81 = load i8*, i8** %17, align 8
  %82 = call i32 @r_str_replace_char(i8* %81, i8 signext 41, i8 signext 32)
  %83 = load i8*, i8** %17, align 8
  %84 = call i32 @r_str_trim(i8* %83)
  %85 = load i8*, i8** %17, align 8
  %86 = load i8, i8* %85, align 1
  %87 = icmp ne i8 %86, 0
  br i1 %87, label %88, label %417

88:                                               ; preds = %73
  %89 = getelementptr inbounds i8, i8* %45, i64 0
  store i8 0, i8* %89, align 16
  %90 = getelementptr inbounds i8, i8* %48, i64 0
  store i8 0, i8* %90, align 16
  %91 = getelementptr inbounds i8, i8* %51, i64 0
  store i8 0, i8* %91, align 16
  %92 = getelementptr inbounds i8, i8* %54, i64 0
  store i8 0, i8* %92, align 16
  %93 = getelementptr inbounds i8, i8* %57, i64 0
  store i8 0, i8* %93, align 16
  %94 = load i8*, i8** %17, align 8
  %95 = call i8* @strchr(i8* %94, i8 signext 32)
  store i8* %95, i8** %18, align 8
  %96 = load i8*, i8** %18, align 8
  %97 = icmp ne i8* %96, null
  br i1 %97, label %101, label %98

98:                                               ; preds = %88
  %99 = load i8*, i8** %17, align 8
  %100 = call i8* @strchr(i8* %99, i8 signext 9)
  store i8* %100, i8** %18, align 8
  br label %101

101:                                              ; preds = %98, %88
  %102 = load i8*, i8** %18, align 8
  %103 = icmp ne i8* %102, null
  br i1 %103, label %104, label %238

104:                                              ; preds = %101
  %105 = load i8*, i8** %18, align 8
  store i8 0, i8* %105, align 1
  %106 = load i8*, i8** %18, align 8
  %107 = getelementptr inbounds i8, i8* %106, i32 1
  store i8* %107, i8** %18, align 8
  br label %108

108:                                              ; preds = %114, %104
  %109 = load i8*, i8** %18, align 8
  %110 = load i8, i8* %109, align 1
  %111 = sext i8 %110 to i32
  %112 = icmp eq i32 %111, 32
  br i1 %112, label %113, label %117

113:                                              ; preds = %108
  br label %114

114:                                              ; preds = %113
  %115 = load i8*, i8** %18, align 8
  %116 = getelementptr inbounds i8, i8* %115, i32 1
  store i8* %116, i8** %18, align 8
  br label %108

117:                                              ; preds = %108
  %118 = load i8*, i8** %17, align 8
  %119 = load i32, i32* @WSZ, align 4
  %120 = sub nsw i32 %119, 1
  %121 = call i32 @strncpy(i8* %45, i8* %118, i32 %120)
  %122 = load i8*, i8** %18, align 8
  %123 = load i32, i32* @WSZ, align 4
  %124 = sub nsw i32 %123, 1
  %125 = call i32 @strncpy(i8* %48, i8* %122, i32 %124)
  %126 = load i8*, i8** %18, align 8
  store i8* %126, i8** %19, align 8
  %127 = load i8*, i8** %18, align 8
  %128 = call i8* @strchr(i8* %127, i8 signext 44)
  store i8* %128, i8** %18, align 8
  %129 = load i8*, i8** %18, align 8
  %130 = icmp ne i8* %129, null
  br i1 %130, label %131, label %237

131:                                              ; preds = %117
  %132 = load i8*, i8** %18, align 8
  store i8 0, i8* %132, align 1
  %133 = load i8*, i8** %18, align 8
  %134 = getelementptr inbounds i8, i8* %133, i32 1
  store i8* %134, i8** %18, align 8
  br label %135

135:                                              ; preds = %141, %131
  %136 = load i8*, i8** %18, align 8
  %137 = load i8, i8* %136, align 1
  %138 = sext i8 %137 to i32
  %139 = icmp eq i32 %138, 32
  br i1 %139, label %140, label %144

140:                                              ; preds = %135
  br label %141

141:                                              ; preds = %140
  %142 = load i8*, i8** %18, align 8
  %143 = getelementptr inbounds i8, i8* %142, i32 1
  store i8* %143, i8** %18, align 8
  br label %135

144:                                              ; preds = %135
  %145 = load i8*, i8** %19, align 8
  %146 = load i32, i32* @WSZ, align 4
  %147 = sub nsw i32 %146, 1
  %148 = call i32 @strncpy(i8* %48, i8* %145, i32 %147)
  %149 = load i8*, i8** %18, align 8
  %150 = load i32, i32* @WSZ, align 4
  %151 = sub nsw i32 %150, 1
  %152 = call i32 @strncpy(i8* %51, i8* %149, i32 %151)
  %153 = load i8*, i8** %18, align 8
  store i8* %153, i8** %19, align 8
  %154 = load i8*, i8** %18, align 8
  %155 = call i8* @strchr(i8* %154, i8 signext 44)
  store i8* %155, i8** %18, align 8
  %156 = load i8*, i8** %18, align 8
  %157 = icmp ne i8* %156, null
  br i1 %157, label %158, label %236

158:                                              ; preds = %144
  %159 = load i8*, i8** %18, align 8
  store i8 0, i8* %159, align 1
  %160 = load i8*, i8** %18, align 8
  %161 = getelementptr inbounds i8, i8* %160, i32 1
  store i8* %161, i8** %18, align 8
  br label %162

162:                                              ; preds = %168, %158
  %163 = load i8*, i8** %18, align 8
  %164 = load i8, i8* %163, align 1
  %165 = sext i8 %164 to i32
  %166 = icmp eq i32 %165, 32
  br i1 %166, label %167, label %171

167:                                              ; preds = %162
  br label %168

168:                                              ; preds = %167
  %169 = load i8*, i8** %18, align 8
  %170 = getelementptr inbounds i8, i8* %169, i32 1
  store i8* %170, i8** %18, align 8
  br label %162

171:                                              ; preds = %162
  %172 = load i8*, i8** %19, align 8
  %173 = load i32, i32* @WSZ, align 4
  %174 = sub nsw i32 %173, 1
  %175 = call i32 @strncpy(i8* %51, i8* %172, i32 %174)
  %176 = load i8*, i8** %18, align 8
  %177 = load i32, i32* @WSZ, align 4
  %178 = sub nsw i32 %177, 1
  %179 = call i32 @strncpy(i8* %54, i8* %176, i32 %178)
  %180 = load i8*, i8** %18, align 8
  store i8* %180, i8** %19, align 8
  %181 = load i8*, i8** %18, align 8
  %182 = call i8* @strchr(i8* %181, i8 signext 44)
  store i8* %182, i8** %18, align 8
  %183 = load i8*, i8** %18, align 8
  %184 = icmp ne i8* %183, null
  br i1 %184, label %185, label %235

185:                                              ; preds = %171
  %186 = load i8*, i8** %18, align 8
  store i8 0, i8* %186, align 1
  %187 = load i8*, i8** %18, align 8
  %188 = getelementptr inbounds i8, i8* %187, i32 1
  store i8* %188, i8** %18, align 8
  br label %189

189:                                              ; preds = %195, %185
  %190 = load i8*, i8** %18, align 8
  %191 = load i8, i8* %190, align 1
  %192 = sext i8 %191 to i32
  %193 = icmp eq i32 %192, 32
  br i1 %193, label %194, label %198

194:                                              ; preds = %189
  br label %195

195:                                              ; preds = %194
  %196 = load i8*, i8** %18, align 8
  %197 = getelementptr inbounds i8, i8* %196, i32 1
  store i8* %197, i8** %18, align 8
  br label %189

198:                                              ; preds = %189
  %199 = load i8*, i8** %19, align 8
  %200 = load i32, i32* @WSZ, align 4
  %201 = sub nsw i32 %200, 1
  %202 = call i32 @strncpy(i8* %54, i8* %199, i32 %201)
  %203 = load i8*, i8** %18, align 8
  %204 = load i32, i32* @WSZ, align 4
  %205 = sub nsw i32 %204, 1
  %206 = call i32 @strncpy(i8* %57, i8* %203, i32 %205)
  %207 = load i8*, i8** %18, align 8
  store i8* %207, i8** %19, align 8
  %208 = load i8*, i8** %18, align 8
  %209 = call i8* @strchr(i8* %208, i8 signext 44)
  store i8* %209, i8** %18, align 8
  %210 = load i8*, i8** %18, align 8
  %211 = icmp ne i8* %210, null
  br i1 %211, label %212, label %234

212:                                              ; preds = %198
  %213 = load i8*, i8** %18, align 8
  store i8 0, i8* %213, align 1
  %214 = load i8*, i8** %18, align 8
  %215 = getelementptr inbounds i8, i8* %214, i32 1
  store i8* %215, i8** %18, align 8
  br label %216

216:                                              ; preds = %222, %212
  %217 = load i8*, i8** %18, align 8
  %218 = load i8, i8* %217, align 1
  %219 = sext i8 %218 to i32
  %220 = icmp eq i32 %219, 32
  br i1 %220, label %221, label %225

221:                                              ; preds = %216
  br label %222

222:                                              ; preds = %221
  %223 = load i8*, i8** %18, align 8
  %224 = getelementptr inbounds i8, i8* %223, i32 1
  store i8* %224, i8** %18, align 8
  br label %216

225:                                              ; preds = %216
  %226 = load i8*, i8** %19, align 8
  %227 = load i32, i32* @WSZ, align 4
  %228 = sub nsw i32 %227, 1
  %229 = call i32 @strncpy(i8* %57, i8* %226, i32 %228)
  %230 = load i8*, i8** %18, align 8
  %231 = load i32, i32* @WSZ, align 4
  %232 = sub nsw i32 %231, 1
  %233 = call i32 @strncpy(i8* %60, i8* %230, i32 %232)
  br label %234

234:                                              ; preds = %225, %198
  br label %235

235:                                              ; preds = %234, %171
  br label %236

236:                                              ; preds = %235, %144
  br label %237

237:                                              ; preds = %236, %117
  br label %243

238:                                              ; preds = %101
  %239 = load i8*, i8** %17, align 8
  %240 = load i32, i32* @WSZ, align 4
  %241 = sub nsw i32 %240, 1
  %242 = call i32 @strncpy(i8* %45, i8* %239, i32 %241)
  br label %243

243:                                              ; preds = %238, %237
  %244 = getelementptr inbounds [6 x i8*], [6 x i8*]* %21, i64 0, i64 0
  store i8* %45, i8** %244, align 8
  %245 = getelementptr inbounds i8*, i8** %244, i64 1
  store i8* %48, i8** %245, align 8
  %246 = getelementptr inbounds i8*, i8** %245, i64 1
  store i8* %51, i8** %246, align 8
  %247 = getelementptr inbounds i8*, i8** %246, i64 1
  store i8* %54, i8** %247, align 8
  %248 = getelementptr inbounds i8*, i8** %247, i64 1
  store i8* %57, i8** %248, align 8
  %249 = getelementptr inbounds i8*, i8** %248, i64 1
  store i8* %60, i8** %249, align 8
  store i32 0, i32* %22, align 4
  store i32 0, i32* %8, align 4
  br label %250

250:                                              ; preds = %266, %243
  %251 = load i32, i32* %8, align 4
  %252 = icmp slt i32 %251, 4
  br i1 %252, label %253, label %269

253:                                              ; preds = %250
  %254 = load i32, i32* %8, align 4
  %255 = sext i32 %254 to i64
  %256 = getelementptr inbounds [6 x i8*], [6 x i8*]* %21, i64 0, i64 %255
  %257 = load i8*, i8** %256, align 8
  %258 = getelementptr inbounds i8, i8* %257, i64 0
  %259 = load i8, i8* %258, align 1
  %260 = sext i8 %259 to i32
  %261 = icmp ne i32 %260, 0
  br i1 %261, label %262, label %265

262:                                              ; preds = %253
  %263 = load i32, i32* %22, align 4
  %264 = add nsw i32 %263, 1
  store i32 %264, i32* %22, align 4
  br label %265

265:                                              ; preds = %262, %253
  br label %266

266:                                              ; preds = %265
  %267 = load i32, i32* %8, align 4
  %268 = add nsw i32 %267, 1
  store i32 %268, i32* %8, align 4
  br label %250

269:                                              ; preds = %250
  %270 = load i32, i32* %22, align 4
  %271 = getelementptr inbounds [6 x i8*], [6 x i8*]* %21, i64 0, i64 0
  %272 = load i8*, i8** %7, align 8
  %273 = call i32 @replace(i32 %270, i8** %271, i8* %272)
  %274 = load i8*, i8** %7, align 8
  %275 = call i8* @strdup(i8* %274)
  store i8* %275, i8** %23, align 8
  %276 = load i8*, i8** %23, align 8
  %277 = call i8* @r_str_replace(i8* %276, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32 0)
  store i8* %277, i8** %23, align 8
  %278 = load i8*, i8** %23, align 8
  %279 = call i8* @r_str_replace(i8* %278, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i32 0)
  store i8* %279, i8** %23, align 8
  %280 = call i32 @strcmp(i8* %48, i8* %51)
  %281 = icmp ne i32 %280, 0
  br i1 %281, label %409, label %282

282:                                              ; preds = %269
  br label %283

283:                                              ; preds = %282
  %284 = getelementptr inbounds [64 x i8], [64 x i8]* %24, i64 0, i64 0
  %285 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %284, i64 64, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0), i8* %48, i8* %48)
  store i32 %285, i32* %26, align 4
  %286 = getelementptr inbounds [64 x i8], [64 x i8]* %25, i64 0, i64 0
  %287 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %286, i64 64, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i8* %48)
  store i32 %287, i32* %27, align 4
  %288 = load i32, i32* %26, align 4
  %289 = icmp slt i32 %288, 64
  br i1 %289, label %290, label %298

290:                                              ; preds = %283
  %291 = load i32, i32* %27, align 4
  %292 = icmp slt i32 %291, 64
  br i1 %292, label %293, label %298

293:                                              ; preds = %290
  %294 = load i8*, i8** %23, align 8
  %295 = getelementptr inbounds [64 x i8], [64 x i8]* %24, i64 0, i64 0
  %296 = getelementptr inbounds [64 x i8], [64 x i8]* %25, i64 0, i64 0
  %297 = call i8* @r_str_replace(i8* %294, i8* %295, i8* %296, i32 0)
  store i8* %297, i8** %23, align 8
  br label %298

298:                                              ; preds = %293, %290, %283
  br label %299

299:                                              ; preds = %298
  br label %300

300:                                              ; preds = %299
  br label %301

301:                                              ; preds = %300
  %302 = getelementptr inbounds [64 x i8], [64 x i8]* %24, i64 0, i64 0
  %303 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %302, i64 64, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0), i8* %48, i8* %48)
  store i32 %303, i32* %28, align 4
  %304 = getelementptr inbounds [64 x i8], [64 x i8]* %25, i64 0, i64 0
  %305 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %304, i64 64, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i8* %48)
  store i32 %305, i32* %29, align 4
  %306 = load i32, i32* %28, align 4
  %307 = icmp slt i32 %306, 64
  br i1 %307, label %308, label %316

308:                                              ; preds = %301
  %309 = load i32, i32* %29, align 4
  %310 = icmp slt i32 %309, 64
  br i1 %310, label %311, label %316

311:                                              ; preds = %308
  %312 = load i8*, i8** %23, align 8
  %313 = getelementptr inbounds [64 x i8], [64 x i8]* %24, i64 0, i64 0
  %314 = getelementptr inbounds [64 x i8], [64 x i8]* %25, i64 0, i64 0
  %315 = call i8* @r_str_replace(i8* %312, i8* %313, i8* %314, i32 0)
  store i8* %315, i8** %23, align 8
  br label %316

316:                                              ; preds = %311, %308, %301
  br label %317

317:                                              ; preds = %316
  br label %318

318:                                              ; preds = %317
  br label %319

319:                                              ; preds = %318
  %320 = getelementptr inbounds [64 x i8], [64 x i8]* %24, i64 0, i64 0
  %321 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %320, i64 64, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i64 0, i64 0), i8* %48, i8* %48)
  store i32 %321, i32* %30, align 4
  %322 = getelementptr inbounds [64 x i8], [64 x i8]* %25, i64 0, i64 0
  %323 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %322, i64 64, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i64 0, i64 0), i8* %48)
  store i32 %323, i32* %31, align 4
  %324 = load i32, i32* %30, align 4
  %325 = icmp slt i32 %324, 64
  br i1 %325, label %326, label %334

326:                                              ; preds = %319
  %327 = load i32, i32* %31, align 4
  %328 = icmp slt i32 %327, 64
  br i1 %328, label %329, label %334

329:                                              ; preds = %326
  %330 = load i8*, i8** %23, align 8
  %331 = getelementptr inbounds [64 x i8], [64 x i8]* %24, i64 0, i64 0
  %332 = getelementptr inbounds [64 x i8], [64 x i8]* %25, i64 0, i64 0
  %333 = call i8* @r_str_replace(i8* %330, i8* %331, i8* %332, i32 0)
  store i8* %333, i8** %23, align 8
  br label %334

334:                                              ; preds = %329, %326, %319
  br label %335

335:                                              ; preds = %334
  br label %336

336:                                              ; preds = %335
  br label %337

337:                                              ; preds = %336
  %338 = getelementptr inbounds [64 x i8], [64 x i8]* %24, i64 0, i64 0
  %339 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %338, i64 64, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i64 0, i64 0), i8* %48, i8* %48)
  store i32 %339, i32* %32, align 4
  %340 = getelementptr inbounds [64 x i8], [64 x i8]* %25, i64 0, i64 0
  %341 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %340, i64 64, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.13, i64 0, i64 0), i8* %48)
  store i32 %341, i32* %33, align 4
  %342 = load i32, i32* %32, align 4
  %343 = icmp slt i32 %342, 64
  br i1 %343, label %344, label %352

344:                                              ; preds = %337
  %345 = load i32, i32* %33, align 4
  %346 = icmp slt i32 %345, 64
  br i1 %346, label %347, label %352

347:                                              ; preds = %344
  %348 = load i8*, i8** %23, align 8
  %349 = getelementptr inbounds [64 x i8], [64 x i8]* %24, i64 0, i64 0
  %350 = getelementptr inbounds [64 x i8], [64 x i8]* %25, i64 0, i64 0
  %351 = call i8* @r_str_replace(i8* %348, i8* %349, i8* %350, i32 0)
  store i8* %351, i8** %23, align 8
  br label %352

352:                                              ; preds = %347, %344, %337
  br label %353

353:                                              ; preds = %352
  br label %354

354:                                              ; preds = %353
  br label %355

355:                                              ; preds = %354
  %356 = getelementptr inbounds [64 x i8], [64 x i8]* %24, i64 0, i64 0
  %357 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %356, i64 64, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.14, i64 0, i64 0), i8* %48, i8* %48)
  store i32 %357, i32* %34, align 4
  %358 = getelementptr inbounds [64 x i8], [64 x i8]* %25, i64 0, i64 0
  %359 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %358, i64 64, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i64 0, i64 0), i8* %48)
  store i32 %359, i32* %35, align 4
  %360 = load i32, i32* %34, align 4
  %361 = icmp slt i32 %360, 64
  br i1 %361, label %362, label %370

362:                                              ; preds = %355
  %363 = load i32, i32* %35, align 4
  %364 = icmp slt i32 %363, 64
  br i1 %364, label %365, label %370

365:                                              ; preds = %362
  %366 = load i8*, i8** %23, align 8
  %367 = getelementptr inbounds [64 x i8], [64 x i8]* %24, i64 0, i64 0
  %368 = getelementptr inbounds [64 x i8], [64 x i8]* %25, i64 0, i64 0
  %369 = call i8* @r_str_replace(i8* %366, i8* %367, i8* %368, i32 0)
  store i8* %369, i8** %23, align 8
  br label %370

370:                                              ; preds = %365, %362, %355
  br label %371

371:                                              ; preds = %370
  br label %372

372:                                              ; preds = %371
  br label %373

373:                                              ; preds = %372
  %374 = getelementptr inbounds [64 x i8], [64 x i8]* %24, i64 0, i64 0
  %375 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %374, i64 64, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.16, i64 0, i64 0), i8* %48, i8* %48)
  store i32 %375, i32* %36, align 4
  %376 = getelementptr inbounds [64 x i8], [64 x i8]* %25, i64 0, i64 0
  %377 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %376, i64 64, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.17, i64 0, i64 0), i8* %48)
  store i32 %377, i32* %37, align 4
  %378 = load i32, i32* %36, align 4
  %379 = icmp slt i32 %378, 64
  br i1 %379, label %380, label %388

380:                                              ; preds = %373
  %381 = load i32, i32* %37, align 4
  %382 = icmp slt i32 %381, 64
  br i1 %382, label %383, label %388

383:                                              ; preds = %380
  %384 = load i8*, i8** %23, align 8
  %385 = getelementptr inbounds [64 x i8], [64 x i8]* %24, i64 0, i64 0
  %386 = getelementptr inbounds [64 x i8], [64 x i8]* %25, i64 0, i64 0
  %387 = call i8* @r_str_replace(i8* %384, i8* %385, i8* %386, i32 0)
  store i8* %387, i8** %23, align 8
  br label %388

388:                                              ; preds = %383, %380, %373
  br label %389

389:                                              ; preds = %388
  br label %390

390:                                              ; preds = %389
  br label %391

391:                                              ; preds = %390
  %392 = getelementptr inbounds [64 x i8], [64 x i8]* %24, i64 0, i64 0
  %393 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %392, i64 64, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.18, i64 0, i64 0), i8* %48, i8* %48)
  store i32 %393, i32* %38, align 4
  %394 = getelementptr inbounds [64 x i8], [64 x i8]* %25, i64 0, i64 0
  %395 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %394, i64 64, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.19, i64 0, i64 0), i8* %48)
  store i32 %395, i32* %39, align 4
  %396 = load i32, i32* %38, align 4
  %397 = icmp slt i32 %396, 64
  br i1 %397, label %398, label %406

398:                                              ; preds = %391
  %399 = load i32, i32* %39, align 4
  %400 = icmp slt i32 %399, 64
  br i1 %400, label %401, label %406

401:                                              ; preds = %398
  %402 = load i8*, i8** %23, align 8
  %403 = getelementptr inbounds [64 x i8], [64 x i8]* %24, i64 0, i64 0
  %404 = getelementptr inbounds [64 x i8], [64 x i8]* %25, i64 0, i64 0
  %405 = call i8* @r_str_replace(i8* %402, i8* %403, i8* %404, i32 0)
  store i8* %405, i8** %23, align 8
  br label %406

406:                                              ; preds = %401, %398, %391
  br label %407

407:                                              ; preds = %406
  br label %408

408:                                              ; preds = %407
  br label %409

409:                                              ; preds = %408, %269
  %410 = load i8*, i8** %23, align 8
  %411 = call i8* @r_str_replace(i8* %410, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.20, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.21, i64 0, i64 0), i32 0)
  store i8* %411, i8** %23, align 8
  %412 = load i8*, i8** %7, align 8
  %413 = load i8*, i8** %23, align 8
  %414 = call i32 @strcpy(i8* %412, i8* %413)
  %415 = load i8*, i8** %23, align 8
  %416 = call i32 @free(i8* %415)
  br label %417

417:                                              ; preds = %409, %73
  %418 = load i8*, i8** %17, align 8
  %419 = call i32 @free(i8* %418)
  store i32 1, i32* %4, align 4
  store i32 1, i32* %20, align 4
  br label %420

420:                                              ; preds = %417, %72, %64
  %421 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %421)
  %422 = load i32, i32* %4, align 4
  ret i32 %422
}

declare dso_local i32 @strlen(i8*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i8* @malloc(i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @r_str_replace_char(i8*, i8 signext, i8 signext) #1

declare dso_local i32 @r_str_trim(i8*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @strncpy(i8*, i8*, i32) #1

declare dso_local i32 @replace(i32, i8**, i8*) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local i8* @r_str_replace(i8*, i8*, i8*, i32) #1

declare dso_local i32 @snprintf(i8*, i64, i8*, ...) #1

declare dso_local i32 @free(i8*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
