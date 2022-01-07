; ModuleID = '/home/carl/AnghaBench/radare2/libr/parse/p/extr_parse_mips_pseudo.c_parse.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/parse/p/extr_parse_mips_pseudo.c_parse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@WSZ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"jr ra\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"ret\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"+ -\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"- \00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c" + ]\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c" + 0]\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"zero\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"0 = \00", align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"%s = %s +\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"%s +=\00", align 1
@.str.11 = private unnamed_addr constant [10 x i8] c"%s = %s -\00", align 1
@.str.12 = private unnamed_addr constant [6 x i8] c"%s -=\00", align 1
@.str.13 = private unnamed_addr constant [10 x i8] c"%s = %s &\00", align 1
@.str.14 = private unnamed_addr constant [6 x i8] c"%s &=\00", align 1
@.str.15 = private unnamed_addr constant [10 x i8] c"%s = %s |\00", align 1
@.str.16 = private unnamed_addr constant [6 x i8] c"%s |=\00", align 1
@.str.17 = private unnamed_addr constant [10 x i8] c"%s = %s ^\00", align 1
@.str.18 = private unnamed_addr constant [6 x i8] c"%s ^=\00", align 1
@.str.19 = private unnamed_addr constant [11 x i8] c"%s = %s >>\00", align 1
@.str.20 = private unnamed_addr constant [7 x i8] c"%s >>=\00", align 1
@.str.21 = private unnamed_addr constant [11 x i8] c"%s = %s <<\00", align 1
@.str.22 = private unnamed_addr constant [7 x i8] c"%s <<=\00", align 1
@.str.23 = private unnamed_addr constant [2 x i8] c":\00", align 1
@.str.24 = private unnamed_addr constant [5 x i8] c"0000\00", align 1
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
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i32, align 4
  %20 = alloca [5 x i8*], align 16
  %21 = alloca i32, align 4
  %22 = alloca i8*, align 8
  %23 = alloca [32 x i8], align 16
  %24 = alloca [32 x i8], align 16
  %25 = alloca i32, align 4
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
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %39 = load i8*, i8** %6, align 8
  %40 = call i32 @strlen(i8* %39)
  store i32 %40, i32* %9, align 4
  %41 = load i32, i32* @WSZ, align 4
  %42 = zext i32 %41 to i64
  %43 = call i8* @llvm.stacksave()
  store i8* %43, i8** %10, align 8
  %44 = alloca i8, i64 %42, align 16
  store i64 %42, i64* %11, align 8
  %45 = load i32, i32* @WSZ, align 4
  %46 = zext i32 %45 to i64
  %47 = alloca i8, i64 %46, align 16
  store i64 %46, i64* %12, align 8
  %48 = load i32, i32* @WSZ, align 4
  %49 = zext i32 %48 to i64
  %50 = alloca i8, i64 %49, align 16
  store i64 %49, i64* %13, align 8
  %51 = load i32, i32* @WSZ, align 4
  %52 = zext i32 %51 to i64
  %53 = alloca i8, i64 %52, align 16
  store i64 %52, i64* %14, align 8
  %54 = load i32, i32* @WSZ, align 4
  %55 = zext i32 %54 to i64
  %56 = alloca i8, i64 %55, align 16
  store i64 %55, i64* %15, align 8
  %57 = load i8*, i8** %6, align 8
  %58 = call i32 @strcmp(i8* %57, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %63, label %60

60:                                               ; preds = %3
  %61 = load i8*, i8** %7, align 8
  %62 = call i32 @strcpy(i8* %61, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  store i32 1, i32* %4, align 4
  store i32 1, i32* %19, align 4
  br label %395

63:                                               ; preds = %3
  %64 = load i32, i32* %9, align 4
  %65 = add nsw i32 %64, 1
  %66 = call i8* @malloc(i32 %65)
  store i8* %66, i8** %16, align 8
  %67 = icmp ne i8* %66, null
  br i1 %67, label %69, label %68

68:                                               ; preds = %63
  store i32 0, i32* %4, align 4
  store i32 1, i32* %19, align 4
  br label %395

69:                                               ; preds = %63
  %70 = load i8*, i8** %16, align 8
  %71 = load i8*, i8** %6, align 8
  %72 = load i32, i32* %9, align 4
  %73 = add nsw i32 %72, 1
  %74 = call i32 @memcpy(i8* %70, i8* %71, i32 %73)
  %75 = load i8*, i8** %16, align 8
  %76 = call i32 @r_str_replace_char(i8* %75, i8 signext 40, i8 signext 44)
  %77 = load i8*, i8** %16, align 8
  %78 = call i32 @r_str_replace_char(i8* %77, i8 signext 41, i8 signext 32)
  %79 = load i8*, i8** %16, align 8
  %80 = call i32 @r_str_trim(i8* %79)
  %81 = load i8*, i8** %16, align 8
  %82 = load i8, i8* %81, align 1
  %83 = icmp ne i8 %82, 0
  br i1 %83, label %84, label %392

84:                                               ; preds = %69
  %85 = getelementptr inbounds i8, i8* %44, i64 0
  store i8 0, i8* %85, align 16
  %86 = getelementptr inbounds i8, i8* %47, i64 0
  store i8 0, i8* %86, align 16
  %87 = getelementptr inbounds i8, i8* %50, i64 0
  store i8 0, i8* %87, align 16
  %88 = getelementptr inbounds i8, i8* %53, i64 0
  store i8 0, i8* %88, align 16
  %89 = getelementptr inbounds i8, i8* %56, i64 0
  store i8 0, i8* %89, align 16
  %90 = load i8*, i8** %16, align 8
  %91 = call i8* @strchr(i8* %90, i8 signext 32)
  store i8* %91, i8** %17, align 8
  %92 = load i8*, i8** %17, align 8
  %93 = icmp ne i8* %92, null
  br i1 %93, label %97, label %94

94:                                               ; preds = %84
  %95 = load i8*, i8** %16, align 8
  %96 = call i8* @strchr(i8* %95, i8 signext 9)
  store i8* %96, i8** %17, align 8
  br label %97

97:                                               ; preds = %94, %84
  %98 = load i8*, i8** %17, align 8
  %99 = icmp ne i8* %98, null
  br i1 %99, label %100, label %206

100:                                              ; preds = %97
  %101 = load i8*, i8** %17, align 8
  store i8 0, i8* %101, align 1
  %102 = load i8*, i8** %17, align 8
  %103 = getelementptr inbounds i8, i8* %102, i32 1
  store i8* %103, i8** %17, align 8
  br label %104

104:                                              ; preds = %110, %100
  %105 = load i8*, i8** %17, align 8
  %106 = load i8, i8* %105, align 1
  %107 = sext i8 %106 to i32
  %108 = icmp eq i32 %107, 32
  br i1 %108, label %109, label %113

109:                                              ; preds = %104
  br label %110

110:                                              ; preds = %109
  %111 = load i8*, i8** %17, align 8
  %112 = getelementptr inbounds i8, i8* %111, i32 1
  store i8* %112, i8** %17, align 8
  br label %104

113:                                              ; preds = %104
  %114 = load i8*, i8** %16, align 8
  %115 = load i32, i32* @WSZ, align 4
  %116 = sub nsw i32 %115, 1
  %117 = call i32 @strncpy(i8* %44, i8* %114, i32 %116)
  %118 = load i8*, i8** %17, align 8
  %119 = load i32, i32* @WSZ, align 4
  %120 = sub nsw i32 %119, 1
  %121 = call i32 @strncpy(i8* %47, i8* %118, i32 %120)
  %122 = load i8*, i8** %17, align 8
  store i8* %122, i8** %18, align 8
  %123 = load i8*, i8** %17, align 8
  %124 = call i8* @strchr(i8* %123, i8 signext 44)
  store i8* %124, i8** %17, align 8
  %125 = load i8*, i8** %17, align 8
  %126 = icmp ne i8* %125, null
  br i1 %126, label %127, label %205

127:                                              ; preds = %113
  %128 = load i8*, i8** %17, align 8
  store i8 0, i8* %128, align 1
  %129 = load i8*, i8** %17, align 8
  %130 = getelementptr inbounds i8, i8* %129, i32 1
  store i8* %130, i8** %17, align 8
  br label %131

131:                                              ; preds = %137, %127
  %132 = load i8*, i8** %17, align 8
  %133 = load i8, i8* %132, align 1
  %134 = sext i8 %133 to i32
  %135 = icmp eq i32 %134, 32
  br i1 %135, label %136, label %140

136:                                              ; preds = %131
  br label %137

137:                                              ; preds = %136
  %138 = load i8*, i8** %17, align 8
  %139 = getelementptr inbounds i8, i8* %138, i32 1
  store i8* %139, i8** %17, align 8
  br label %131

140:                                              ; preds = %131
  %141 = load i8*, i8** %18, align 8
  %142 = load i32, i32* @WSZ, align 4
  %143 = sub nsw i32 %142, 1
  %144 = call i32 @strncpy(i8* %47, i8* %141, i32 %143)
  %145 = load i8*, i8** %17, align 8
  %146 = load i32, i32* @WSZ, align 4
  %147 = sub nsw i32 %146, 1
  %148 = call i32 @strncpy(i8* %50, i8* %145, i32 %147)
  %149 = load i8*, i8** %17, align 8
  store i8* %149, i8** %18, align 8
  %150 = load i8*, i8** %17, align 8
  %151 = call i8* @strchr(i8* %150, i8 signext 44)
  store i8* %151, i8** %17, align 8
  %152 = load i8*, i8** %17, align 8
  %153 = icmp ne i8* %152, null
  br i1 %153, label %154, label %204

154:                                              ; preds = %140
  %155 = load i8*, i8** %17, align 8
  store i8 0, i8* %155, align 1
  %156 = load i8*, i8** %17, align 8
  %157 = getelementptr inbounds i8, i8* %156, i32 1
  store i8* %157, i8** %17, align 8
  br label %158

158:                                              ; preds = %164, %154
  %159 = load i8*, i8** %17, align 8
  %160 = load i8, i8* %159, align 1
  %161 = sext i8 %160 to i32
  %162 = icmp eq i32 %161, 32
  br i1 %162, label %163, label %167

163:                                              ; preds = %158
  br label %164

164:                                              ; preds = %163
  %165 = load i8*, i8** %17, align 8
  %166 = getelementptr inbounds i8, i8* %165, i32 1
  store i8* %166, i8** %17, align 8
  br label %158

167:                                              ; preds = %158
  %168 = load i8*, i8** %18, align 8
  %169 = load i32, i32* @WSZ, align 4
  %170 = sub nsw i32 %169, 1
  %171 = call i32 @strncpy(i8* %50, i8* %168, i32 %170)
  %172 = load i8*, i8** %17, align 8
  %173 = load i32, i32* @WSZ, align 4
  %174 = sub nsw i32 %173, 1
  %175 = call i32 @strncpy(i8* %53, i8* %172, i32 %174)
  %176 = load i8*, i8** %17, align 8
  store i8* %176, i8** %18, align 8
  %177 = load i8*, i8** %17, align 8
  %178 = call i8* @strchr(i8* %177, i8 signext 44)
  store i8* %178, i8** %17, align 8
  %179 = load i8*, i8** %17, align 8
  %180 = icmp ne i8* %179, null
  br i1 %180, label %181, label %203

181:                                              ; preds = %167
  %182 = load i8*, i8** %17, align 8
  store i8 0, i8* %182, align 1
  %183 = load i8*, i8** %17, align 8
  %184 = getelementptr inbounds i8, i8* %183, i32 1
  store i8* %184, i8** %17, align 8
  br label %185

185:                                              ; preds = %191, %181
  %186 = load i8*, i8** %17, align 8
  %187 = load i8, i8* %186, align 1
  %188 = sext i8 %187 to i32
  %189 = icmp eq i32 %188, 32
  br i1 %189, label %190, label %194

190:                                              ; preds = %185
  br label %191

191:                                              ; preds = %190
  %192 = load i8*, i8** %17, align 8
  %193 = getelementptr inbounds i8, i8* %192, i32 1
  store i8* %193, i8** %17, align 8
  br label %185

194:                                              ; preds = %185
  %195 = load i8*, i8** %18, align 8
  %196 = load i32, i32* @WSZ, align 4
  %197 = sub nsw i32 %196, 1
  %198 = call i32 @strncpy(i8* %53, i8* %195, i32 %197)
  %199 = load i8*, i8** %17, align 8
  %200 = load i32, i32* @WSZ, align 4
  %201 = sub nsw i32 %200, 1
  %202 = call i32 @strncpy(i8* %56, i8* %199, i32 %201)
  br label %203

203:                                              ; preds = %194, %167
  br label %204

204:                                              ; preds = %203, %140
  br label %205

205:                                              ; preds = %204, %113
  br label %211

206:                                              ; preds = %97
  %207 = load i8*, i8** %16, align 8
  %208 = load i32, i32* @WSZ, align 4
  %209 = sub nsw i32 %208, 1
  %210 = call i32 @strncpy(i8* %44, i8* %207, i32 %209)
  br label %211

211:                                              ; preds = %206, %205
  %212 = getelementptr inbounds [5 x i8*], [5 x i8*]* %20, i64 0, i64 0
  store i8* %44, i8** %212, align 8
  %213 = getelementptr inbounds i8*, i8** %212, i64 1
  store i8* %47, i8** %213, align 8
  %214 = getelementptr inbounds i8*, i8** %213, i64 1
  store i8* %50, i8** %214, align 8
  %215 = getelementptr inbounds i8*, i8** %214, i64 1
  store i8* %53, i8** %215, align 8
  %216 = getelementptr inbounds i8*, i8** %215, i64 1
  store i8* %56, i8** %216, align 8
  store i32 0, i32* %21, align 4
  store i32 0, i32* %8, align 4
  br label %217

217:                                              ; preds = %233, %211
  %218 = load i32, i32* %8, align 4
  %219 = icmp slt i32 %218, 4
  br i1 %219, label %220, label %236

220:                                              ; preds = %217
  %221 = load i32, i32* %8, align 4
  %222 = sext i32 %221 to i64
  %223 = getelementptr inbounds [5 x i8*], [5 x i8*]* %20, i64 0, i64 %222
  %224 = load i8*, i8** %223, align 8
  %225 = getelementptr inbounds i8, i8* %224, i64 0
  %226 = load i8, i8* %225, align 1
  %227 = sext i8 %226 to i32
  %228 = icmp ne i32 %227, 0
  br i1 %228, label %229, label %232

229:                                              ; preds = %220
  %230 = load i32, i32* %21, align 4
  %231 = add nsw i32 %230, 1
  store i32 %231, i32* %21, align 4
  br label %232

232:                                              ; preds = %229, %220
  br label %233

233:                                              ; preds = %232
  %234 = load i32, i32* %8, align 4
  %235 = add nsw i32 %234, 1
  store i32 %235, i32* %8, align 4
  br label %217

236:                                              ; preds = %217
  %237 = load i32, i32* %21, align 4
  %238 = getelementptr inbounds [5 x i8*], [5 x i8*]* %20, i64 0, i64 0
  %239 = load i8*, i8** %7, align 8
  %240 = call i32 @replace(i32 %237, i8** %238, i8* %239)
  %241 = load i8*, i8** %7, align 8
  %242 = call i8* @strdup(i8* %241)
  store i8* %242, i8** %22, align 8
  %243 = load i8*, i8** %22, align 8
  %244 = call i8* @r_str_replace(i8* %243, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32 0)
  store i8* %244, i8** %22, align 8
  %245 = load i8*, i8** %22, align 8
  %246 = call i8* @r_str_replace(i8* %245, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i32 0)
  store i8* %246, i8** %22, align 8
  %247 = load i8*, i8** %22, align 8
  %248 = call i8* @r_str_replace(i8* %247, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0), i32 1)
  store i8* %248, i8** %22, align 8
  %249 = load i8*, i8** %22, align 8
  %250 = call i32 @strncmp(i8* %249, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i32 4)
  %251 = icmp ne i32 %250, 0
  br i1 %251, label %254, label %252

252:                                              ; preds = %236
  %253 = load i8*, i8** %22, align 8
  store i8 0, i8* %253, align 1
  br label %254

254:                                              ; preds = %252, %236
  %255 = call i32 @strcmp(i8* %47, i8* %50)
  %256 = icmp ne i32 %255, 0
  br i1 %256, label %384, label %257

257:                                              ; preds = %254
  br label %258

258:                                              ; preds = %257
  %259 = getelementptr inbounds [32 x i8], [32 x i8]* %23, i64 0, i64 0
  %260 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %259, i64 32, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0), i8* %47, i8* %47)
  store i32 %260, i32* %25, align 4
  %261 = getelementptr inbounds [32 x i8], [32 x i8]* %24, i64 0, i64 0
  %262 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %261, i64 32, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0), i8* %47)
  store i32 %262, i32* %26, align 4
  %263 = load i32, i32* %25, align 4
  %264 = icmp slt i32 %263, 32
  br i1 %264, label %265, label %273

265:                                              ; preds = %258
  %266 = load i32, i32* %26, align 4
  %267 = icmp slt i32 %266, 32
  br i1 %267, label %268, label %273

268:                                              ; preds = %265
  %269 = load i8*, i8** %22, align 8
  %270 = getelementptr inbounds [32 x i8], [32 x i8]* %23, i64 0, i64 0
  %271 = getelementptr inbounds [32 x i8], [32 x i8]* %24, i64 0, i64 0
  %272 = call i8* @r_str_replace(i8* %269, i8* %270, i8* %271, i32 0)
  store i8* %272, i8** %22, align 8
  br label %273

273:                                              ; preds = %268, %265, %258
  br label %274

274:                                              ; preds = %273
  br label %275

275:                                              ; preds = %274
  br label %276

276:                                              ; preds = %275
  %277 = getelementptr inbounds [32 x i8], [32 x i8]* %23, i64 0, i64 0
  %278 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %277, i64 32, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11, i64 0, i64 0), i8* %47, i8* %47)
  store i32 %278, i32* %27, align 4
  %279 = getelementptr inbounds [32 x i8], [32 x i8]* %24, i64 0, i64 0
  %280 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %279, i64 32, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i64 0, i64 0), i8* %47)
  store i32 %280, i32* %28, align 4
  %281 = load i32, i32* %27, align 4
  %282 = icmp slt i32 %281, 32
  br i1 %282, label %283, label %291

283:                                              ; preds = %276
  %284 = load i32, i32* %28, align 4
  %285 = icmp slt i32 %284, 32
  br i1 %285, label %286, label %291

286:                                              ; preds = %283
  %287 = load i8*, i8** %22, align 8
  %288 = getelementptr inbounds [32 x i8], [32 x i8]* %23, i64 0, i64 0
  %289 = getelementptr inbounds [32 x i8], [32 x i8]* %24, i64 0, i64 0
  %290 = call i8* @r_str_replace(i8* %287, i8* %288, i8* %289, i32 0)
  store i8* %290, i8** %22, align 8
  br label %291

291:                                              ; preds = %286, %283, %276
  br label %292

292:                                              ; preds = %291
  br label %293

293:                                              ; preds = %292
  br label %294

294:                                              ; preds = %293
  %295 = getelementptr inbounds [32 x i8], [32 x i8]* %23, i64 0, i64 0
  %296 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %295, i64 32, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i64 0, i64 0), i8* %47, i8* %47)
  store i32 %296, i32* %29, align 4
  %297 = getelementptr inbounds [32 x i8], [32 x i8]* %24, i64 0, i64 0
  %298 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %297, i64 32, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.14, i64 0, i64 0), i8* %47)
  store i32 %298, i32* %30, align 4
  %299 = load i32, i32* %29, align 4
  %300 = icmp slt i32 %299, 32
  br i1 %300, label %301, label %309

301:                                              ; preds = %294
  %302 = load i32, i32* %30, align 4
  %303 = icmp slt i32 %302, 32
  br i1 %303, label %304, label %309

304:                                              ; preds = %301
  %305 = load i8*, i8** %22, align 8
  %306 = getelementptr inbounds [32 x i8], [32 x i8]* %23, i64 0, i64 0
  %307 = getelementptr inbounds [32 x i8], [32 x i8]* %24, i64 0, i64 0
  %308 = call i8* @r_str_replace(i8* %305, i8* %306, i8* %307, i32 0)
  store i8* %308, i8** %22, align 8
  br label %309

309:                                              ; preds = %304, %301, %294
  br label %310

310:                                              ; preds = %309
  br label %311

311:                                              ; preds = %310
  br label %312

312:                                              ; preds = %311
  %313 = getelementptr inbounds [32 x i8], [32 x i8]* %23, i64 0, i64 0
  %314 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %313, i64 32, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.15, i64 0, i64 0), i8* %47, i8* %47)
  store i32 %314, i32* %31, align 4
  %315 = getelementptr inbounds [32 x i8], [32 x i8]* %24, i64 0, i64 0
  %316 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %315, i64 32, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i64 0, i64 0), i8* %47)
  store i32 %316, i32* %32, align 4
  %317 = load i32, i32* %31, align 4
  %318 = icmp slt i32 %317, 32
  br i1 %318, label %319, label %327

319:                                              ; preds = %312
  %320 = load i32, i32* %32, align 4
  %321 = icmp slt i32 %320, 32
  br i1 %321, label %322, label %327

322:                                              ; preds = %319
  %323 = load i8*, i8** %22, align 8
  %324 = getelementptr inbounds [32 x i8], [32 x i8]* %23, i64 0, i64 0
  %325 = getelementptr inbounds [32 x i8], [32 x i8]* %24, i64 0, i64 0
  %326 = call i8* @r_str_replace(i8* %323, i8* %324, i8* %325, i32 0)
  store i8* %326, i8** %22, align 8
  br label %327

327:                                              ; preds = %322, %319, %312
  br label %328

328:                                              ; preds = %327
  br label %329

329:                                              ; preds = %328
  br label %330

330:                                              ; preds = %329
  %331 = getelementptr inbounds [32 x i8], [32 x i8]* %23, i64 0, i64 0
  %332 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %331, i64 32, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.17, i64 0, i64 0), i8* %47, i8* %47)
  store i32 %332, i32* %33, align 4
  %333 = getelementptr inbounds [32 x i8], [32 x i8]* %24, i64 0, i64 0
  %334 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %333, i64 32, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.18, i64 0, i64 0), i8* %47)
  store i32 %334, i32* %34, align 4
  %335 = load i32, i32* %33, align 4
  %336 = icmp slt i32 %335, 32
  br i1 %336, label %337, label %345

337:                                              ; preds = %330
  %338 = load i32, i32* %34, align 4
  %339 = icmp slt i32 %338, 32
  br i1 %339, label %340, label %345

340:                                              ; preds = %337
  %341 = load i8*, i8** %22, align 8
  %342 = getelementptr inbounds [32 x i8], [32 x i8]* %23, i64 0, i64 0
  %343 = getelementptr inbounds [32 x i8], [32 x i8]* %24, i64 0, i64 0
  %344 = call i8* @r_str_replace(i8* %341, i8* %342, i8* %343, i32 0)
  store i8* %344, i8** %22, align 8
  br label %345

345:                                              ; preds = %340, %337, %330
  br label %346

346:                                              ; preds = %345
  br label %347

347:                                              ; preds = %346
  br label %348

348:                                              ; preds = %347
  %349 = getelementptr inbounds [32 x i8], [32 x i8]* %23, i64 0, i64 0
  %350 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %349, i64 32, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.19, i64 0, i64 0), i8* %47, i8* %47)
  store i32 %350, i32* %35, align 4
  %351 = getelementptr inbounds [32 x i8], [32 x i8]* %24, i64 0, i64 0
  %352 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %351, i64 32, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.20, i64 0, i64 0), i8* %47)
  store i32 %352, i32* %36, align 4
  %353 = load i32, i32* %35, align 4
  %354 = icmp slt i32 %353, 32
  br i1 %354, label %355, label %363

355:                                              ; preds = %348
  %356 = load i32, i32* %36, align 4
  %357 = icmp slt i32 %356, 32
  br i1 %357, label %358, label %363

358:                                              ; preds = %355
  %359 = load i8*, i8** %22, align 8
  %360 = getelementptr inbounds [32 x i8], [32 x i8]* %23, i64 0, i64 0
  %361 = getelementptr inbounds [32 x i8], [32 x i8]* %24, i64 0, i64 0
  %362 = call i8* @r_str_replace(i8* %359, i8* %360, i8* %361, i32 0)
  store i8* %362, i8** %22, align 8
  br label %363

363:                                              ; preds = %358, %355, %348
  br label %364

364:                                              ; preds = %363
  br label %365

365:                                              ; preds = %364
  br label %366

366:                                              ; preds = %365
  %367 = getelementptr inbounds [32 x i8], [32 x i8]* %23, i64 0, i64 0
  %368 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %367, i64 32, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.21, i64 0, i64 0), i8* %47, i8* %47)
  store i32 %368, i32* %37, align 4
  %369 = getelementptr inbounds [32 x i8], [32 x i8]* %24, i64 0, i64 0
  %370 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %369, i64 32, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.22, i64 0, i64 0), i8* %47)
  store i32 %370, i32* %38, align 4
  %371 = load i32, i32* %37, align 4
  %372 = icmp slt i32 %371, 32
  br i1 %372, label %373, label %381

373:                                              ; preds = %366
  %374 = load i32, i32* %38, align 4
  %375 = icmp slt i32 %374, 32
  br i1 %375, label %376, label %381

376:                                              ; preds = %373
  %377 = load i8*, i8** %22, align 8
  %378 = getelementptr inbounds [32 x i8], [32 x i8]* %23, i64 0, i64 0
  %379 = getelementptr inbounds [32 x i8], [32 x i8]* %24, i64 0, i64 0
  %380 = call i8* @r_str_replace(i8* %377, i8* %378, i8* %379, i32 0)
  store i8* %380, i8** %22, align 8
  br label %381

381:                                              ; preds = %376, %373, %366
  br label %382

382:                                              ; preds = %381
  br label %383

383:                                              ; preds = %382
  br label %384

384:                                              ; preds = %383, %254
  %385 = load i8*, i8** %22, align 8
  %386 = call i8* @r_str_replace(i8* %385, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.23, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.24, i64 0, i64 0), i32 0)
  store i8* %386, i8** %22, align 8
  %387 = load i8*, i8** %7, align 8
  %388 = load i8*, i8** %22, align 8
  %389 = call i32 @strcpy(i8* %387, i8* %388)
  %390 = load i8*, i8** %22, align 8
  %391 = call i32 @free(i8* %390)
  br label %392

392:                                              ; preds = %384, %69
  %393 = load i8*, i8** %16, align 8
  %394 = call i32 @free(i8* %393)
  store i32 1, i32* %4, align 4
  store i32 1, i32* %19, align 4
  br label %395

395:                                              ; preds = %392, %68, %60
  %396 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %396)
  %397 = load i32, i32* %4, align 4
  ret i32 %397
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

declare dso_local i32 @strncmp(i8*, i8*, i32) #1

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
