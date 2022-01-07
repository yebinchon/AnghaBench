; ModuleID = '/home/carl/AnghaBench/radare2/libr/parse/p/extr_parse_dalvik_pseudo.c_parse.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/parse/p/extr_parse_dalvik_pseudo.c_parse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [8 x i8] c"invalid\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"nop\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"DEPRECATED\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"+ -\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"- \00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"%s = %s +\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"%s +=\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"%s = %s -\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"%s -=\00", align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"%s = %s &\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"%s &=\00", align 1
@.str.11 = private unnamed_addr constant [10 x i8] c"%s = %s |\00", align 1
@.str.12 = private unnamed_addr constant [6 x i8] c"%s |=\00", align 1
@.str.13 = private unnamed_addr constant [10 x i8] c"%s = %s ^\00", align 1
@.str.14 = private unnamed_addr constant [6 x i8] c"%s ^=\00", align 1
@.str.15 = private unnamed_addr constant [11 x i8] c"%s = %s >>\00", align 1
@.str.16 = private unnamed_addr constant [7 x i8] c"%s >>=\00", align 1
@.str.17 = private unnamed_addr constant [11 x i8] c"%s = %s <<\00", align 1
@.str.18 = private unnamed_addr constant [7 x i8] c"%s <<=\00", align 1
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
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca [64 x i8], align 16
  %15 = alloca [64 x i8], align 16
  %16 = alloca [64 x i8], align 16
  %17 = alloca [64 x i8], align 16
  %18 = alloca [64 x i8], align 16
  %19 = alloca [5 x i8*], align 16
  %20 = alloca i32, align 4
  %21 = alloca i8*, align 8
  %22 = alloca [32 x i8], align 16
  %23 = alloca [32 x i8], align 16
  %24 = alloca i32, align 4
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
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %38 = load i8*, i8** %6, align 8
  %39 = call i32 @strlen(i8* %38)
  store i32 %39, i32* %9, align 4
  %40 = load i8*, i8** %6, align 8
  %41 = call i32 @strcmp(i8* %40, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %51

43:                                               ; preds = %3
  %44 = load i8*, i8** %6, align 8
  %45 = call i32 @strcmp(i8* %44, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %43
  %48 = load i8*, i8** %6, align 8
  %49 = call i32 @strcmp(i8* %48, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %54, label %51

51:                                               ; preds = %47, %43, %3
  %52 = load i8*, i8** %7, align 8
  %53 = getelementptr inbounds i8, i8* %52, i64 0
  store i8 0, i8* %53, align 1
  store i32 1, i32* %4, align 4
  br label %394

54:                                               ; preds = %47
  %55 = load i32, i32* %9, align 4
  %56 = add nsw i32 %55, 1
  %57 = call i8* @malloc(i32 %56)
  store i8* %57, i8** %10, align 8
  %58 = icmp ne i8* %57, null
  br i1 %58, label %60, label %59

59:                                               ; preds = %54
  store i32 0, i32* %4, align 4
  br label %394

60:                                               ; preds = %54
  %61 = load i8*, i8** %10, align 8
  %62 = load i8*, i8** %6, align 8
  %63 = load i32, i32* %9, align 4
  %64 = add nsw i32 %63, 1
  %65 = call i32 @memcpy(i8* %61, i8* %62, i32 %64)
  %66 = load i8*, i8** %10, align 8
  %67 = call i32 @r_str_trim(i8* %66)
  %68 = load i8*, i8** %10, align 8
  %69 = load i8, i8* %68, align 1
  %70 = icmp ne i8 %69, 0
  br i1 %70, label %71, label %391

71:                                               ; preds = %60
  %72 = getelementptr inbounds [64 x i8], [64 x i8]* %14, i64 0, i64 0
  store i8 0, i8* %72, align 16
  %73 = getelementptr inbounds [64 x i8], [64 x i8]* %15, i64 0, i64 0
  store i8 0, i8* %73, align 16
  %74 = getelementptr inbounds [64 x i8], [64 x i8]* %16, i64 0, i64 0
  store i8 0, i8* %74, align 16
  %75 = getelementptr inbounds [64 x i8], [64 x i8]* %17, i64 0, i64 0
  store i8 0, i8* %75, align 16
  %76 = getelementptr inbounds [64 x i8], [64 x i8]* %18, i64 0, i64 0
  store i8 0, i8* %76, align 16
  %77 = load i8*, i8** %10, align 8
  %78 = call i8* @strchr(i8* %77, i8 signext 32)
  store i8* %78, i8** %11, align 8
  %79 = load i8*, i8** %11, align 8
  %80 = icmp ne i8* %79, null
  br i1 %80, label %84, label %81

81:                                               ; preds = %71
  %82 = load i8*, i8** %10, align 8
  %83 = call i8* @strchr(i8* %82, i8 signext 9)
  store i8* %83, i8** %11, align 8
  br label %84

84:                                               ; preds = %81, %71
  %85 = load i8*, i8** %11, align 8
  %86 = icmp ne i8* %85, null
  br i1 %86, label %87, label %201

87:                                               ; preds = %84
  %88 = load i8*, i8** %11, align 8
  store i8 0, i8* %88, align 1
  %89 = load i8*, i8** %11, align 8
  %90 = getelementptr inbounds i8, i8* %89, i32 1
  store i8* %90, i8** %11, align 8
  br label %91

91:                                               ; preds = %97, %87
  %92 = load i8*, i8** %11, align 8
  %93 = load i8, i8* %92, align 1
  %94 = sext i8 %93 to i32
  %95 = icmp eq i32 %94, 32
  br i1 %95, label %96, label %100

96:                                               ; preds = %91
  br label %97

97:                                               ; preds = %96
  %98 = load i8*, i8** %11, align 8
  %99 = getelementptr inbounds i8, i8* %98, i32 1
  store i8* %99, i8** %11, align 8
  br label %91

100:                                              ; preds = %91
  %101 = getelementptr inbounds [64 x i8], [64 x i8]* %14, i64 0, i64 0
  %102 = load i8*, i8** %10, align 8
  %103 = call i32 @strncpy(i8* %101, i8* %102, i32 63)
  %104 = getelementptr inbounds [64 x i8], [64 x i8]* %14, i64 0, i64 63
  store i8 0, i8* %104, align 1
  %105 = getelementptr inbounds [64 x i8], [64 x i8]* %15, i64 0, i64 0
  %106 = load i8*, i8** %11, align 8
  %107 = call i32 @strncpy(i8* %105, i8* %106, i32 63)
  %108 = getelementptr inbounds [64 x i8], [64 x i8]* %15, i64 0, i64 63
  store i8 0, i8* %108, align 1
  %109 = load i8*, i8** %11, align 8
  store i8* %109, i8** %12, align 8
  %110 = load i8*, i8** %11, align 8
  %111 = call i8* @strchr(i8* %110, i8 signext 125)
  store i8* %111, i8** %13, align 8
  %112 = load i8*, i8** %13, align 8
  %113 = icmp ne i8* %112, null
  br i1 %113, label %114, label %117

114:                                              ; preds = %100
  %115 = load i8*, i8** %13, align 8
  %116 = getelementptr inbounds i8, i8* %115, i64 1
  store i8* %116, i8** %11, align 8
  br label %117

117:                                              ; preds = %114, %100
  %118 = load i8*, i8** %11, align 8
  %119 = call i8* @strchr(i8* %118, i8 signext 44)
  store i8* %119, i8** %11, align 8
  %120 = load i8*, i8** %11, align 8
  %121 = icmp ne i8* %120, null
  br i1 %121, label %122, label %200

122:                                              ; preds = %117
  %123 = load i8*, i8** %11, align 8
  store i8 0, i8* %123, align 1
  %124 = load i8*, i8** %11, align 8
  %125 = getelementptr inbounds i8, i8* %124, i32 1
  store i8* %125, i8** %11, align 8
  br label %126

126:                                              ; preds = %132, %122
  %127 = load i8*, i8** %11, align 8
  %128 = load i8, i8* %127, align 1
  %129 = sext i8 %128 to i32
  %130 = icmp eq i32 %129, 32
  br i1 %130, label %131, label %135

131:                                              ; preds = %126
  br label %132

132:                                              ; preds = %131
  %133 = load i8*, i8** %11, align 8
  %134 = getelementptr inbounds i8, i8* %133, i32 1
  store i8* %134, i8** %11, align 8
  br label %126

135:                                              ; preds = %126
  %136 = getelementptr inbounds [64 x i8], [64 x i8]* %15, i64 0, i64 0
  %137 = load i8*, i8** %12, align 8
  %138 = call i32 @strncpy(i8* %136, i8* %137, i32 63)
  %139 = getelementptr inbounds [64 x i8], [64 x i8]* %15, i64 0, i64 63
  store i8 0, i8* %139, align 1
  %140 = getelementptr inbounds [64 x i8], [64 x i8]* %16, i64 0, i64 0
  %141 = load i8*, i8** %11, align 8
  %142 = call i32 @strncpy(i8* %140, i8* %141, i32 63)
  %143 = getelementptr inbounds [64 x i8], [64 x i8]* %16, i64 0, i64 63
  store i8 0, i8* %143, align 1
  %144 = load i8*, i8** %11, align 8
  store i8* %144, i8** %12, align 8
  %145 = load i8*, i8** %11, align 8
  %146 = call i8* @strchr(i8* %145, i8 signext 44)
  store i8* %146, i8** %11, align 8
  %147 = load i8*, i8** %11, align 8
  %148 = icmp ne i8* %147, null
  br i1 %148, label %149, label %199

149:                                              ; preds = %135
  %150 = load i8*, i8** %11, align 8
  store i8 0, i8* %150, align 1
  %151 = load i8*, i8** %11, align 8
  %152 = getelementptr inbounds i8, i8* %151, i32 1
  store i8* %152, i8** %11, align 8
  br label %153

153:                                              ; preds = %159, %149
  %154 = load i8*, i8** %11, align 8
  %155 = load i8, i8* %154, align 1
  %156 = sext i8 %155 to i32
  %157 = icmp eq i32 %156, 32
  br i1 %157, label %158, label %162

158:                                              ; preds = %153
  br label %159

159:                                              ; preds = %158
  %160 = load i8*, i8** %11, align 8
  %161 = getelementptr inbounds i8, i8* %160, i32 1
  store i8* %161, i8** %11, align 8
  br label %153

162:                                              ; preds = %153
  %163 = getelementptr inbounds [64 x i8], [64 x i8]* %16, i64 0, i64 0
  %164 = load i8*, i8** %12, align 8
  %165 = call i32 @strncpy(i8* %163, i8* %164, i32 63)
  %166 = getelementptr inbounds [64 x i8], [64 x i8]* %16, i64 0, i64 63
  store i8 0, i8* %166, align 1
  %167 = getelementptr inbounds [64 x i8], [64 x i8]* %17, i64 0, i64 0
  %168 = load i8*, i8** %11, align 8
  %169 = call i32 @strncpy(i8* %167, i8* %168, i32 63)
  %170 = getelementptr inbounds [64 x i8], [64 x i8]* %17, i64 0, i64 63
  store i8 0, i8* %170, align 1
  %171 = load i8*, i8** %11, align 8
  store i8* %171, i8** %12, align 8
  %172 = load i8*, i8** %11, align 8
  %173 = call i8* @strchr(i8* %172, i8 signext 44)
  store i8* %173, i8** %11, align 8
  %174 = load i8*, i8** %11, align 8
  %175 = icmp ne i8* %174, null
  br i1 %175, label %176, label %198

176:                                              ; preds = %162
  %177 = load i8*, i8** %11, align 8
  store i8 0, i8* %177, align 1
  %178 = load i8*, i8** %11, align 8
  %179 = getelementptr inbounds i8, i8* %178, i32 1
  store i8* %179, i8** %11, align 8
  br label %180

180:                                              ; preds = %186, %176
  %181 = load i8*, i8** %11, align 8
  %182 = load i8, i8* %181, align 1
  %183 = sext i8 %182 to i32
  %184 = icmp eq i32 %183, 32
  br i1 %184, label %185, label %189

185:                                              ; preds = %180
  br label %186

186:                                              ; preds = %185
  %187 = load i8*, i8** %11, align 8
  %188 = getelementptr inbounds i8, i8* %187, i32 1
  store i8* %188, i8** %11, align 8
  br label %180

189:                                              ; preds = %180
  %190 = getelementptr inbounds [64 x i8], [64 x i8]* %17, i64 0, i64 0
  %191 = load i8*, i8** %12, align 8
  %192 = call i32 @strncpy(i8* %190, i8* %191, i32 63)
  %193 = getelementptr inbounds [64 x i8], [64 x i8]* %17, i64 0, i64 63
  store i8 0, i8* %193, align 1
  %194 = getelementptr inbounds [64 x i8], [64 x i8]* %18, i64 0, i64 0
  %195 = load i8*, i8** %11, align 8
  %196 = call i32 @strncpy(i8* %194, i8* %195, i32 63)
  %197 = getelementptr inbounds [64 x i8], [64 x i8]* %18, i64 0, i64 63
  store i8 0, i8* %197, align 1
  br label %198

198:                                              ; preds = %189, %162
  br label %199

199:                                              ; preds = %198, %135
  br label %200

200:                                              ; preds = %199, %117
  br label %201

201:                                              ; preds = %200, %84
  %202 = getelementptr inbounds [5 x i8*], [5 x i8*]* %19, i64 0, i64 0
  %203 = getelementptr inbounds [64 x i8], [64 x i8]* %14, i64 0, i64 0
  store i8* %203, i8** %202, align 8
  %204 = getelementptr inbounds i8*, i8** %202, i64 1
  %205 = getelementptr inbounds [64 x i8], [64 x i8]* %15, i64 0, i64 0
  store i8* %205, i8** %204, align 8
  %206 = getelementptr inbounds i8*, i8** %204, i64 1
  %207 = getelementptr inbounds [64 x i8], [64 x i8]* %16, i64 0, i64 0
  store i8* %207, i8** %206, align 8
  %208 = getelementptr inbounds i8*, i8** %206, i64 1
  %209 = getelementptr inbounds [64 x i8], [64 x i8]* %17, i64 0, i64 0
  store i8* %209, i8** %208, align 8
  %210 = getelementptr inbounds i8*, i8** %208, i64 1
  %211 = getelementptr inbounds [64 x i8], [64 x i8]* %18, i64 0, i64 0
  store i8* %211, i8** %210, align 8
  store i32 0, i32* %20, align 4
  store i32 0, i32* %8, align 4
  br label %212

212:                                              ; preds = %228, %201
  %213 = load i32, i32* %8, align 4
  %214 = icmp slt i32 %213, 4
  br i1 %214, label %215, label %231

215:                                              ; preds = %212
  %216 = load i32, i32* %8, align 4
  %217 = sext i32 %216 to i64
  %218 = getelementptr inbounds [5 x i8*], [5 x i8*]* %19, i64 0, i64 %217
  %219 = load i8*, i8** %218, align 8
  %220 = getelementptr inbounds i8, i8* %219, i64 0
  %221 = load i8, i8* %220, align 1
  %222 = sext i8 %221 to i32
  %223 = icmp ne i32 %222, 0
  br i1 %223, label %224, label %227

224:                                              ; preds = %215
  %225 = load i32, i32* %20, align 4
  %226 = add nsw i32 %225, 1
  store i32 %226, i32* %20, align 4
  br label %227

227:                                              ; preds = %224, %215
  br label %228

228:                                              ; preds = %227
  %229 = load i32, i32* %8, align 4
  %230 = add nsw i32 %229, 1
  store i32 %230, i32* %8, align 4
  br label %212

231:                                              ; preds = %212
  %232 = load i32, i32* %20, align 4
  %233 = getelementptr inbounds [5 x i8*], [5 x i8*]* %19, i64 0, i64 0
  %234 = load i8*, i8** %7, align 8
  %235 = call i32 @replace(i32 %232, i8** %233, i8* %234)
  %236 = load i8*, i8** %7, align 8
  %237 = call i8* @strdup(i8* %236)
  store i8* %237, i8** %21, align 8
  %238 = load i8*, i8** %21, align 8
  %239 = call i8* @r_str_replace(i8* %238, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i32 0)
  store i8* %239, i8** %21, align 8
  %240 = getelementptr inbounds [64 x i8], [64 x i8]* %15, i64 0, i64 0
  %241 = getelementptr inbounds [64 x i8], [64 x i8]* %16, i64 0, i64 0
  %242 = call i32 @strcmp(i8* %240, i8* %241)
  %243 = icmp ne i32 %242, 0
  br i1 %243, label %385, label %244

244:                                              ; preds = %231
  br label %245

245:                                              ; preds = %244
  %246 = getelementptr inbounds [32 x i8], [32 x i8]* %22, i64 0, i64 0
  %247 = getelementptr inbounds [64 x i8], [64 x i8]* %15, i64 0, i64 0
  %248 = getelementptr inbounds [64 x i8], [64 x i8]* %15, i64 0, i64 0
  %249 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %246, i64 32, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0), i8* %247, i8* %248)
  store i32 %249, i32* %24, align 4
  %250 = getelementptr inbounds [32 x i8], [32 x i8]* %23, i64 0, i64 0
  %251 = getelementptr inbounds [64 x i8], [64 x i8]* %15, i64 0, i64 0
  %252 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %250, i64 32, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i8* %251)
  store i32 %252, i32* %25, align 4
  %253 = load i32, i32* %24, align 4
  %254 = icmp slt i32 %253, 32
  br i1 %254, label %255, label %263

255:                                              ; preds = %245
  %256 = load i32, i32* %25, align 4
  %257 = icmp slt i32 %256, 32
  br i1 %257, label %258, label %263

258:                                              ; preds = %255
  %259 = load i8*, i8** %21, align 8
  %260 = getelementptr inbounds [32 x i8], [32 x i8]* %22, i64 0, i64 0
  %261 = getelementptr inbounds [32 x i8], [32 x i8]* %23, i64 0, i64 0
  %262 = call i8* @r_str_replace(i8* %259, i8* %260, i8* %261, i32 0)
  store i8* %262, i8** %21, align 8
  br label %263

263:                                              ; preds = %258, %255, %245
  br label %264

264:                                              ; preds = %263
  br label %265

265:                                              ; preds = %264
  %266 = getelementptr inbounds [32 x i8], [32 x i8]* %22, i64 0, i64 0
  %267 = getelementptr inbounds [64 x i8], [64 x i8]* %15, i64 0, i64 0
  %268 = getelementptr inbounds [64 x i8], [64 x i8]* %15, i64 0, i64 0
  %269 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %266, i64 32, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0), i8* %267, i8* %268)
  store i32 %269, i32* %26, align 4
  %270 = getelementptr inbounds [32 x i8], [32 x i8]* %23, i64 0, i64 0
  %271 = getelementptr inbounds [64 x i8], [64 x i8]* %15, i64 0, i64 0
  %272 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %270, i64 32, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0), i8* %271)
  store i32 %272, i32* %27, align 4
  %273 = load i32, i32* %26, align 4
  %274 = icmp slt i32 %273, 32
  br i1 %274, label %275, label %283

275:                                              ; preds = %265
  %276 = load i32, i32* %27, align 4
  %277 = icmp slt i32 %276, 32
  br i1 %277, label %278, label %283

278:                                              ; preds = %275
  %279 = load i8*, i8** %21, align 8
  %280 = getelementptr inbounds [32 x i8], [32 x i8]* %22, i64 0, i64 0
  %281 = getelementptr inbounds [32 x i8], [32 x i8]* %23, i64 0, i64 0
  %282 = call i8* @r_str_replace(i8* %279, i8* %280, i8* %281, i32 0)
  store i8* %282, i8** %21, align 8
  br label %283

283:                                              ; preds = %278, %275, %265
  br label %284

284:                                              ; preds = %283
  br label %285

285:                                              ; preds = %284
  %286 = getelementptr inbounds [32 x i8], [32 x i8]* %22, i64 0, i64 0
  %287 = getelementptr inbounds [64 x i8], [64 x i8]* %15, i64 0, i64 0
  %288 = getelementptr inbounds [64 x i8], [64 x i8]* %15, i64 0, i64 0
  %289 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %286, i64 32, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0), i8* %287, i8* %288)
  store i32 %289, i32* %28, align 4
  %290 = getelementptr inbounds [32 x i8], [32 x i8]* %23, i64 0, i64 0
  %291 = getelementptr inbounds [64 x i8], [64 x i8]* %15, i64 0, i64 0
  %292 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %290, i64 32, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0), i8* %291)
  store i32 %292, i32* %29, align 4
  %293 = load i32, i32* %28, align 4
  %294 = icmp slt i32 %293, 32
  br i1 %294, label %295, label %303

295:                                              ; preds = %285
  %296 = load i32, i32* %29, align 4
  %297 = icmp slt i32 %296, 32
  br i1 %297, label %298, label %303

298:                                              ; preds = %295
  %299 = load i8*, i8** %21, align 8
  %300 = getelementptr inbounds [32 x i8], [32 x i8]* %22, i64 0, i64 0
  %301 = getelementptr inbounds [32 x i8], [32 x i8]* %23, i64 0, i64 0
  %302 = call i8* @r_str_replace(i8* %299, i8* %300, i8* %301, i32 0)
  store i8* %302, i8** %21, align 8
  br label %303

303:                                              ; preds = %298, %295, %285
  br label %304

304:                                              ; preds = %303
  br label %305

305:                                              ; preds = %304
  %306 = getelementptr inbounds [32 x i8], [32 x i8]* %22, i64 0, i64 0
  %307 = getelementptr inbounds [64 x i8], [64 x i8]* %15, i64 0, i64 0
  %308 = getelementptr inbounds [64 x i8], [64 x i8]* %15, i64 0, i64 0
  %309 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %306, i64 32, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11, i64 0, i64 0), i8* %307, i8* %308)
  store i32 %309, i32* %30, align 4
  %310 = getelementptr inbounds [32 x i8], [32 x i8]* %23, i64 0, i64 0
  %311 = getelementptr inbounds [64 x i8], [64 x i8]* %15, i64 0, i64 0
  %312 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %310, i64 32, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i64 0, i64 0), i8* %311)
  store i32 %312, i32* %31, align 4
  %313 = load i32, i32* %30, align 4
  %314 = icmp slt i32 %313, 32
  br i1 %314, label %315, label %323

315:                                              ; preds = %305
  %316 = load i32, i32* %31, align 4
  %317 = icmp slt i32 %316, 32
  br i1 %317, label %318, label %323

318:                                              ; preds = %315
  %319 = load i8*, i8** %21, align 8
  %320 = getelementptr inbounds [32 x i8], [32 x i8]* %22, i64 0, i64 0
  %321 = getelementptr inbounds [32 x i8], [32 x i8]* %23, i64 0, i64 0
  %322 = call i8* @r_str_replace(i8* %319, i8* %320, i8* %321, i32 0)
  store i8* %322, i8** %21, align 8
  br label %323

323:                                              ; preds = %318, %315, %305
  br label %324

324:                                              ; preds = %323
  br label %325

325:                                              ; preds = %324
  %326 = getelementptr inbounds [32 x i8], [32 x i8]* %22, i64 0, i64 0
  %327 = getelementptr inbounds [64 x i8], [64 x i8]* %15, i64 0, i64 0
  %328 = getelementptr inbounds [64 x i8], [64 x i8]* %15, i64 0, i64 0
  %329 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %326, i64 32, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i64 0, i64 0), i8* %327, i8* %328)
  store i32 %329, i32* %32, align 4
  %330 = getelementptr inbounds [32 x i8], [32 x i8]* %23, i64 0, i64 0
  %331 = getelementptr inbounds [64 x i8], [64 x i8]* %15, i64 0, i64 0
  %332 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %330, i64 32, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.14, i64 0, i64 0), i8* %331)
  store i32 %332, i32* %33, align 4
  %333 = load i32, i32* %32, align 4
  %334 = icmp slt i32 %333, 32
  br i1 %334, label %335, label %343

335:                                              ; preds = %325
  %336 = load i32, i32* %33, align 4
  %337 = icmp slt i32 %336, 32
  br i1 %337, label %338, label %343

338:                                              ; preds = %335
  %339 = load i8*, i8** %21, align 8
  %340 = getelementptr inbounds [32 x i8], [32 x i8]* %22, i64 0, i64 0
  %341 = getelementptr inbounds [32 x i8], [32 x i8]* %23, i64 0, i64 0
  %342 = call i8* @r_str_replace(i8* %339, i8* %340, i8* %341, i32 0)
  store i8* %342, i8** %21, align 8
  br label %343

343:                                              ; preds = %338, %335, %325
  br label %344

344:                                              ; preds = %343
  br label %345

345:                                              ; preds = %344
  %346 = getelementptr inbounds [32 x i8], [32 x i8]* %22, i64 0, i64 0
  %347 = getelementptr inbounds [64 x i8], [64 x i8]* %15, i64 0, i64 0
  %348 = getelementptr inbounds [64 x i8], [64 x i8]* %15, i64 0, i64 0
  %349 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %346, i64 32, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.15, i64 0, i64 0), i8* %347, i8* %348)
  store i32 %349, i32* %34, align 4
  %350 = getelementptr inbounds [32 x i8], [32 x i8]* %23, i64 0, i64 0
  %351 = getelementptr inbounds [64 x i8], [64 x i8]* %15, i64 0, i64 0
  %352 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %350, i64 32, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.16, i64 0, i64 0), i8* %351)
  store i32 %352, i32* %35, align 4
  %353 = load i32, i32* %34, align 4
  %354 = icmp slt i32 %353, 32
  br i1 %354, label %355, label %363

355:                                              ; preds = %345
  %356 = load i32, i32* %35, align 4
  %357 = icmp slt i32 %356, 32
  br i1 %357, label %358, label %363

358:                                              ; preds = %355
  %359 = load i8*, i8** %21, align 8
  %360 = getelementptr inbounds [32 x i8], [32 x i8]* %22, i64 0, i64 0
  %361 = getelementptr inbounds [32 x i8], [32 x i8]* %23, i64 0, i64 0
  %362 = call i8* @r_str_replace(i8* %359, i8* %360, i8* %361, i32 0)
  store i8* %362, i8** %21, align 8
  br label %363

363:                                              ; preds = %358, %355, %345
  br label %364

364:                                              ; preds = %363
  br label %365

365:                                              ; preds = %364
  %366 = getelementptr inbounds [32 x i8], [32 x i8]* %22, i64 0, i64 0
  %367 = getelementptr inbounds [64 x i8], [64 x i8]* %15, i64 0, i64 0
  %368 = getelementptr inbounds [64 x i8], [64 x i8]* %15, i64 0, i64 0
  %369 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %366, i64 32, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.17, i64 0, i64 0), i8* %367, i8* %368)
  store i32 %369, i32* %36, align 4
  %370 = getelementptr inbounds [32 x i8], [32 x i8]* %23, i64 0, i64 0
  %371 = getelementptr inbounds [64 x i8], [64 x i8]* %15, i64 0, i64 0
  %372 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %370, i64 32, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.18, i64 0, i64 0), i8* %371)
  store i32 %372, i32* %37, align 4
  %373 = load i32, i32* %36, align 4
  %374 = icmp slt i32 %373, 32
  br i1 %374, label %375, label %383

375:                                              ; preds = %365
  %376 = load i32, i32* %37, align 4
  %377 = icmp slt i32 %376, 32
  br i1 %377, label %378, label %383

378:                                              ; preds = %375
  %379 = load i8*, i8** %21, align 8
  %380 = getelementptr inbounds [32 x i8], [32 x i8]* %22, i64 0, i64 0
  %381 = getelementptr inbounds [32 x i8], [32 x i8]* %23, i64 0, i64 0
  %382 = call i8* @r_str_replace(i8* %379, i8* %380, i8* %381, i32 0)
  store i8* %382, i8** %21, align 8
  br label %383

383:                                              ; preds = %378, %375, %365
  br label %384

384:                                              ; preds = %383
  br label %385

385:                                              ; preds = %384, %231
  %386 = load i8*, i8** %7, align 8
  %387 = load i8*, i8** %21, align 8
  %388 = call i32 @strcpy(i8* %386, i8* %387)
  %389 = load i8*, i8** %21, align 8
  %390 = call i32 @free(i8* %389)
  br label %391

391:                                              ; preds = %385, %60
  %392 = load i8*, i8** %10, align 8
  %393 = call i32 @free(i8* %392)
  store i32 1, i32* %4, align 4
  br label %394

394:                                              ; preds = %391, %59, %51
  %395 = load i32, i32* %4, align 4
  ret i32 %395
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i8* @malloc(i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @r_str_trim(i8*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @strncpy(i8*, i8*, i32) #1

declare dso_local i32 @replace(i32, i8**, i8*) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local i8* @r_str_replace(i8*, i8*, i8*, i32) #1

declare dso_local i32 @snprintf(i8*, i64, i8*, ...) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
