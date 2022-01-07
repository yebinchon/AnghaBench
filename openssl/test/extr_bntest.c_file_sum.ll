; ModuleID = '/home/carl/AnghaBench/openssl/test/extr_bntest.c_file_sum.c'
source_filename = "/home/carl/AnghaBench/openssl/test/extr_bntest.c_file_sum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"A\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"B\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"Sum\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"A + B\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"Sum - A\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"Sum - B\00", align 1
@.str.6 = private unnamed_addr constant [15 x i8] c"A + B (r is a)\00", align 1
@.str.7 = private unnamed_addr constant [15 x i8] c"A + B (r is b)\00", align 1
@.str.8 = private unnamed_addr constant [17 x i8] c"Sum - A (r is a)\00", align 1
@.str.9 = private unnamed_addr constant [17 x i8] c"Sum - A (r is b)\00", align 1
@.str.10 = private unnamed_addr constant [17 x i8] c"Sum - B (r is a)\00", align 1
@.str.11 = private unnamed_addr constant [17 x i8] c"Sum - B (r is b)\00", align 1
@.str.12 = private unnamed_addr constant [7 x i8] c"A +u B\00", align 1
@.str.13 = private unnamed_addr constant [9 x i8] c"Sum -u A\00", align 1
@.str.14 = private unnamed_addr constant [9 x i8] c"Sum -u B\00", align 1
@.str.15 = private unnamed_addr constant [16 x i8] c"A +u B (r is a)\00", align 1
@.str.16 = private unnamed_addr constant [16 x i8] c"A +u B (r is b)\00", align 1
@.str.17 = private unnamed_addr constant [18 x i8] c"Sum -u A (r is a)\00", align 1
@.str.18 = private unnamed_addr constant [18 x i8] c"Sum -u A (r is b)\00", align 1
@.str.19 = private unnamed_addr constant [18 x i8] c"Sum -u B (r is a)\00", align 1
@.str.20 = private unnamed_addr constant [18 x i8] c"Sum -u B (r is b)\00", align 1
@.str.21 = private unnamed_addr constant [13 x i8] c"A + B (word)\00", align 1
@.str.22 = private unnamed_addr constant [15 x i8] c"Sum - B (word)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @file_sum to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @file_sum(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  store i32* null, i32** %3, align 8
  store i32* null, i32** %4, align 8
  store i32* null, i32** %5, align 8
  store i32* null, i32** %6, align 8
  store i32 0, i32* %8, align 4
  %9 = load i32*, i32** %2, align 8
  %10 = call i32* @getBN(i32* %9, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32* %10, i32** %3, align 8
  %11 = call i32 @TEST_ptr(i32* %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %27

13:                                               ; preds = %1
  %14 = load i32*, i32** %2, align 8
  %15 = call i32* @getBN(i32* %14, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i32* %15, i32** %4, align 8
  %16 = call i32 @TEST_ptr(i32* %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %27

18:                                               ; preds = %13
  %19 = load i32*, i32** %2, align 8
  %20 = call i32* @getBN(i32* %19, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  store i32* %20, i32** %5, align 8
  %21 = call i32 @TEST_ptr(i32* %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %18
  %24 = call i32* (...) @BN_new()
  store i32* %24, i32** %6, align 8
  %25 = call i32 @TEST_ptr(i32* %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %23, %18, %13, %1
  br label %380

28:                                               ; preds = %23
  %29 = load i32*, i32** %6, align 8
  %30 = load i32*, i32** %3, align 8
  %31 = load i32*, i32** %4, align 8
  %32 = call i32 @BN_add(i32* %29, i32* %30, i32* %31)
  %33 = call i32 @TEST_true(i32 %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %64

35:                                               ; preds = %28
  %36 = load i32*, i32** %5, align 8
  %37 = load i32*, i32** %6, align 8
  %38 = call i32 @equalBN(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i32* %36, i32* %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %64

40:                                               ; preds = %35
  %41 = load i32*, i32** %6, align 8
  %42 = load i32*, i32** %5, align 8
  %43 = load i32*, i32** %3, align 8
  %44 = call i32 @BN_sub(i32* %41, i32* %42, i32* %43)
  %45 = call i32 @TEST_true(i32 %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %64

47:                                               ; preds = %40
  %48 = load i32*, i32** %4, align 8
  %49 = load i32*, i32** %6, align 8
  %50 = call i32 @equalBN(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i32* %48, i32* %49)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %64

52:                                               ; preds = %47
  %53 = load i32*, i32** %6, align 8
  %54 = load i32*, i32** %5, align 8
  %55 = load i32*, i32** %4, align 8
  %56 = call i32 @BN_sub(i32* %53, i32* %54, i32* %55)
  %57 = call i32 @TEST_true(i32 %56)
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %64

59:                                               ; preds = %52
  %60 = load i32*, i32** %3, align 8
  %61 = load i32*, i32** %6, align 8
  %62 = call i32 @equalBN(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i32* %60, i32* %61)
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %65, label %64

64:                                               ; preds = %59, %52, %47, %40, %35, %28
  br label %380

65:                                               ; preds = %59
  %66 = load i32*, i32** %6, align 8
  %67 = load i32*, i32** %3, align 8
  %68 = call i32 @BN_copy(i32* %66, i32* %67)
  %69 = call i32 @TEST_true(i32 %68)
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %173

71:                                               ; preds = %65
  %72 = load i32*, i32** %6, align 8
  %73 = load i32*, i32** %6, align 8
  %74 = load i32*, i32** %4, align 8
  %75 = call i32 @BN_add(i32* %72, i32* %73, i32* %74)
  %76 = call i32 @TEST_true(i32 %75)
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %173

78:                                               ; preds = %71
  %79 = load i32*, i32** %5, align 8
  %80 = load i32*, i32** %6, align 8
  %81 = call i32 @equalBN(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0), i32* %79, i32* %80)
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %173

83:                                               ; preds = %78
  %84 = load i32*, i32** %6, align 8
  %85 = load i32*, i32** %4, align 8
  %86 = call i32 @BN_copy(i32* %84, i32* %85)
  %87 = call i32 @TEST_true(i32 %86)
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %173

89:                                               ; preds = %83
  %90 = load i32*, i32** %6, align 8
  %91 = load i32*, i32** %3, align 8
  %92 = load i32*, i32** %6, align 8
  %93 = call i32 @BN_add(i32* %90, i32* %91, i32* %92)
  %94 = call i32 @TEST_true(i32 %93)
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %173

96:                                               ; preds = %89
  %97 = load i32*, i32** %5, align 8
  %98 = load i32*, i32** %6, align 8
  %99 = call i32 @equalBN(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i64 0, i64 0), i32* %97, i32* %98)
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %173

101:                                              ; preds = %96
  %102 = load i32*, i32** %6, align 8
  %103 = load i32*, i32** %5, align 8
  %104 = call i32 @BN_copy(i32* %102, i32* %103)
  %105 = call i32 @TEST_true(i32 %104)
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %173

107:                                              ; preds = %101
  %108 = load i32*, i32** %6, align 8
  %109 = load i32*, i32** %6, align 8
  %110 = load i32*, i32** %3, align 8
  %111 = call i32 @BN_sub(i32* %108, i32* %109, i32* %110)
  %112 = call i32 @TEST_true(i32 %111)
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %173

114:                                              ; preds = %107
  %115 = load i32*, i32** %4, align 8
  %116 = load i32*, i32** %6, align 8
  %117 = call i32 @equalBN(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.8, i64 0, i64 0), i32* %115, i32* %116)
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %173

119:                                              ; preds = %114
  %120 = load i32*, i32** %6, align 8
  %121 = load i32*, i32** %3, align 8
  %122 = call i32 @BN_copy(i32* %120, i32* %121)
  %123 = call i32 @TEST_true(i32 %122)
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %173

125:                                              ; preds = %119
  %126 = load i32*, i32** %6, align 8
  %127 = load i32*, i32** %5, align 8
  %128 = load i32*, i32** %6, align 8
  %129 = call i32 @BN_sub(i32* %126, i32* %127, i32* %128)
  %130 = call i32 @TEST_true(i32 %129)
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %173

132:                                              ; preds = %125
  %133 = load i32*, i32** %4, align 8
  %134 = load i32*, i32** %6, align 8
  %135 = call i32 @equalBN(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.9, i64 0, i64 0), i32* %133, i32* %134)
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %173

137:                                              ; preds = %132
  %138 = load i32*, i32** %6, align 8
  %139 = load i32*, i32** %5, align 8
  %140 = call i32 @BN_copy(i32* %138, i32* %139)
  %141 = call i32 @TEST_true(i32 %140)
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %173

143:                                              ; preds = %137
  %144 = load i32*, i32** %6, align 8
  %145 = load i32*, i32** %6, align 8
  %146 = load i32*, i32** %4, align 8
  %147 = call i32 @BN_sub(i32* %144, i32* %145, i32* %146)
  %148 = call i32 @TEST_true(i32 %147)
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %173

150:                                              ; preds = %143
  %151 = load i32*, i32** %3, align 8
  %152 = load i32*, i32** %6, align 8
  %153 = call i32 @equalBN(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.10, i64 0, i64 0), i32* %151, i32* %152)
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %173

155:                                              ; preds = %150
  %156 = load i32*, i32** %6, align 8
  %157 = load i32*, i32** %4, align 8
  %158 = call i32 @BN_copy(i32* %156, i32* %157)
  %159 = call i32 @TEST_true(i32 %158)
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %173

161:                                              ; preds = %155
  %162 = load i32*, i32** %6, align 8
  %163 = load i32*, i32** %5, align 8
  %164 = load i32*, i32** %6, align 8
  %165 = call i32 @BN_sub(i32* %162, i32* %163, i32* %164)
  %166 = call i32 @TEST_true(i32 %165)
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %173

168:                                              ; preds = %161
  %169 = load i32*, i32** %3, align 8
  %170 = load i32*, i32** %6, align 8
  %171 = call i32 @equalBN(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.11, i64 0, i64 0), i32* %169, i32* %170)
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %174, label %173

173:                                              ; preds = %168, %161, %155, %150, %143, %137, %132, %125, %119, %114, %107, %101, %96, %89, %83, %78, %71, %65
  br label %380

174:                                              ; preds = %168
  %175 = load i32*, i32** %3, align 8
  %176 = call i32 @BN_is_negative(i32* %175)
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %334, label %178

178:                                              ; preds = %174
  %179 = load i32*, i32** %4, align 8
  %180 = call i32 @BN_is_negative(i32* %179)
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %334, label %182

182:                                              ; preds = %178
  %183 = load i32*, i32** %3, align 8
  %184 = load i32*, i32** %4, align 8
  %185 = call i64 @BN_cmp(i32* %183, i32* %184)
  %186 = icmp sge i64 %185, 0
  br i1 %186, label %187, label %334

187:                                              ; preds = %182
  %188 = load i32*, i32** %6, align 8
  %189 = load i32*, i32** %3, align 8
  %190 = load i32*, i32** %4, align 8
  %191 = call i32 @BN_uadd(i32* %188, i32* %189, i32* %190)
  %192 = call i32 @TEST_true(i32 %191)
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %194, label %223

194:                                              ; preds = %187
  %195 = load i32*, i32** %5, align 8
  %196 = load i32*, i32** %6, align 8
  %197 = call i32 @equalBN(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.12, i64 0, i64 0), i32* %195, i32* %196)
  %198 = icmp ne i32 %197, 0
  br i1 %198, label %199, label %223

199:                                              ; preds = %194
  %200 = load i32*, i32** %6, align 8
  %201 = load i32*, i32** %5, align 8
  %202 = load i32*, i32** %3, align 8
  %203 = call i32 @BN_usub(i32* %200, i32* %201, i32* %202)
  %204 = call i32 @TEST_true(i32 %203)
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %206, label %223

206:                                              ; preds = %199
  %207 = load i32*, i32** %4, align 8
  %208 = load i32*, i32** %6, align 8
  %209 = call i32 @equalBN(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.13, i64 0, i64 0), i32* %207, i32* %208)
  %210 = icmp ne i32 %209, 0
  br i1 %210, label %211, label %223

211:                                              ; preds = %206
  %212 = load i32*, i32** %6, align 8
  %213 = load i32*, i32** %5, align 8
  %214 = load i32*, i32** %4, align 8
  %215 = call i32 @BN_usub(i32* %212, i32* %213, i32* %214)
  %216 = call i32 @TEST_true(i32 %215)
  %217 = icmp ne i32 %216, 0
  br i1 %217, label %218, label %223

218:                                              ; preds = %211
  %219 = load i32*, i32** %3, align 8
  %220 = load i32*, i32** %6, align 8
  %221 = call i32 @equalBN(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.14, i64 0, i64 0), i32* %219, i32* %220)
  %222 = icmp ne i32 %221, 0
  br i1 %222, label %224, label %223

223:                                              ; preds = %218, %211, %206, %199, %194, %187
  br label %380

224:                                              ; preds = %218
  %225 = load i32*, i32** %6, align 8
  %226 = load i32*, i32** %3, align 8
  %227 = call i32 @BN_copy(i32* %225, i32* %226)
  %228 = call i32 @TEST_true(i32 %227)
  %229 = icmp ne i32 %228, 0
  br i1 %229, label %230, label %332

230:                                              ; preds = %224
  %231 = load i32*, i32** %6, align 8
  %232 = load i32*, i32** %6, align 8
  %233 = load i32*, i32** %4, align 8
  %234 = call i32 @BN_uadd(i32* %231, i32* %232, i32* %233)
  %235 = call i32 @TEST_true(i32 %234)
  %236 = icmp ne i32 %235, 0
  br i1 %236, label %237, label %332

237:                                              ; preds = %230
  %238 = load i32*, i32** %5, align 8
  %239 = load i32*, i32** %6, align 8
  %240 = call i32 @equalBN(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.15, i64 0, i64 0), i32* %238, i32* %239)
  %241 = icmp ne i32 %240, 0
  br i1 %241, label %242, label %332

242:                                              ; preds = %237
  %243 = load i32*, i32** %6, align 8
  %244 = load i32*, i32** %4, align 8
  %245 = call i32 @BN_copy(i32* %243, i32* %244)
  %246 = call i32 @TEST_true(i32 %245)
  %247 = icmp ne i32 %246, 0
  br i1 %247, label %248, label %332

248:                                              ; preds = %242
  %249 = load i32*, i32** %6, align 8
  %250 = load i32*, i32** %3, align 8
  %251 = load i32*, i32** %6, align 8
  %252 = call i32 @BN_uadd(i32* %249, i32* %250, i32* %251)
  %253 = call i32 @TEST_true(i32 %252)
  %254 = icmp ne i32 %253, 0
  br i1 %254, label %255, label %332

255:                                              ; preds = %248
  %256 = load i32*, i32** %5, align 8
  %257 = load i32*, i32** %6, align 8
  %258 = call i32 @equalBN(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.16, i64 0, i64 0), i32* %256, i32* %257)
  %259 = icmp ne i32 %258, 0
  br i1 %259, label %260, label %332

260:                                              ; preds = %255
  %261 = load i32*, i32** %6, align 8
  %262 = load i32*, i32** %5, align 8
  %263 = call i32 @BN_copy(i32* %261, i32* %262)
  %264 = call i32 @TEST_true(i32 %263)
  %265 = icmp ne i32 %264, 0
  br i1 %265, label %266, label %332

266:                                              ; preds = %260
  %267 = load i32*, i32** %6, align 8
  %268 = load i32*, i32** %6, align 8
  %269 = load i32*, i32** %3, align 8
  %270 = call i32 @BN_usub(i32* %267, i32* %268, i32* %269)
  %271 = call i32 @TEST_true(i32 %270)
  %272 = icmp ne i32 %271, 0
  br i1 %272, label %273, label %332

273:                                              ; preds = %266
  %274 = load i32*, i32** %4, align 8
  %275 = load i32*, i32** %6, align 8
  %276 = call i32 @equalBN(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.17, i64 0, i64 0), i32* %274, i32* %275)
  %277 = icmp ne i32 %276, 0
  br i1 %277, label %278, label %332

278:                                              ; preds = %273
  %279 = load i32*, i32** %6, align 8
  %280 = load i32*, i32** %3, align 8
  %281 = call i32 @BN_copy(i32* %279, i32* %280)
  %282 = call i32 @TEST_true(i32 %281)
  %283 = icmp ne i32 %282, 0
  br i1 %283, label %284, label %332

284:                                              ; preds = %278
  %285 = load i32*, i32** %6, align 8
  %286 = load i32*, i32** %5, align 8
  %287 = load i32*, i32** %6, align 8
  %288 = call i32 @BN_usub(i32* %285, i32* %286, i32* %287)
  %289 = call i32 @TEST_true(i32 %288)
  %290 = icmp ne i32 %289, 0
  br i1 %290, label %291, label %332

291:                                              ; preds = %284
  %292 = load i32*, i32** %4, align 8
  %293 = load i32*, i32** %6, align 8
  %294 = call i32 @equalBN(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.18, i64 0, i64 0), i32* %292, i32* %293)
  %295 = icmp ne i32 %294, 0
  br i1 %295, label %296, label %332

296:                                              ; preds = %291
  %297 = load i32*, i32** %6, align 8
  %298 = load i32*, i32** %5, align 8
  %299 = call i32 @BN_copy(i32* %297, i32* %298)
  %300 = call i32 @TEST_true(i32 %299)
  %301 = icmp ne i32 %300, 0
  br i1 %301, label %302, label %332

302:                                              ; preds = %296
  %303 = load i32*, i32** %6, align 8
  %304 = load i32*, i32** %6, align 8
  %305 = load i32*, i32** %4, align 8
  %306 = call i32 @BN_usub(i32* %303, i32* %304, i32* %305)
  %307 = call i32 @TEST_true(i32 %306)
  %308 = icmp ne i32 %307, 0
  br i1 %308, label %309, label %332

309:                                              ; preds = %302
  %310 = load i32*, i32** %3, align 8
  %311 = load i32*, i32** %6, align 8
  %312 = call i32 @equalBN(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.19, i64 0, i64 0), i32* %310, i32* %311)
  %313 = icmp ne i32 %312, 0
  br i1 %313, label %314, label %332

314:                                              ; preds = %309
  %315 = load i32*, i32** %6, align 8
  %316 = load i32*, i32** %4, align 8
  %317 = call i32 @BN_copy(i32* %315, i32* %316)
  %318 = call i32 @TEST_true(i32 %317)
  %319 = icmp ne i32 %318, 0
  br i1 %319, label %320, label %332

320:                                              ; preds = %314
  %321 = load i32*, i32** %6, align 8
  %322 = load i32*, i32** %5, align 8
  %323 = load i32*, i32** %6, align 8
  %324 = call i32 @BN_usub(i32* %321, i32* %322, i32* %323)
  %325 = call i32 @TEST_true(i32 %324)
  %326 = icmp ne i32 %325, 0
  br i1 %326, label %327, label %332

327:                                              ; preds = %320
  %328 = load i32*, i32** %3, align 8
  %329 = load i32*, i32** %6, align 8
  %330 = call i32 @equalBN(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.20, i64 0, i64 0), i32* %328, i32* %329)
  %331 = icmp ne i32 %330, 0
  br i1 %331, label %333, label %332

332:                                              ; preds = %327, %320, %314, %309, %302, %296, %291, %284, %278, %273, %266, %260, %255, %248, %242, %237, %230, %224
  br label %380

333:                                              ; preds = %327
  br label %334

334:                                              ; preds = %333, %182, %178, %174
  %335 = load i32*, i32** %4, align 8
  %336 = call i64 @BN_get_word(i32* %335)
  store i64 %336, i64* %7, align 8
  %337 = load i32*, i32** %4, align 8
  %338 = call i32 @BN_is_negative(i32* %337)
  %339 = icmp ne i32 %338, 0
  br i1 %339, label %379, label %340

340:                                              ; preds = %334
  %341 = load i64, i64* %7, align 8
  %342 = icmp ne i64 %341, -1
  br i1 %342, label %343, label %379

343:                                              ; preds = %340
  %344 = load i32*, i32** %6, align 8
  %345 = load i32*, i32** %3, align 8
  %346 = call i32 @BN_copy(i32* %344, i32* %345)
  %347 = call i32 @TEST_true(i32 %346)
  %348 = icmp ne i32 %347, 0
  br i1 %348, label %349, label %377

349:                                              ; preds = %343
  %350 = load i32*, i32** %6, align 8
  %351 = load i64, i64* %7, align 8
  %352 = call i32 @BN_add_word(i32* %350, i64 %351)
  %353 = call i32 @TEST_true(i32 %352)
  %354 = icmp ne i32 %353, 0
  br i1 %354, label %355, label %377

355:                                              ; preds = %349
  %356 = load i32*, i32** %5, align 8
  %357 = load i32*, i32** %6, align 8
  %358 = call i32 @equalBN(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.21, i64 0, i64 0), i32* %356, i32* %357)
  %359 = icmp ne i32 %358, 0
  br i1 %359, label %360, label %377

360:                                              ; preds = %355
  %361 = load i32*, i32** %6, align 8
  %362 = load i32*, i32** %5, align 8
  %363 = call i32 @BN_copy(i32* %361, i32* %362)
  %364 = call i32 @TEST_true(i32 %363)
  %365 = icmp ne i32 %364, 0
  br i1 %365, label %366, label %377

366:                                              ; preds = %360
  %367 = load i32*, i32** %6, align 8
  %368 = load i64, i64* %7, align 8
  %369 = call i32 @BN_sub_word(i32* %367, i64 %368)
  %370 = call i32 @TEST_true(i32 %369)
  %371 = icmp ne i32 %370, 0
  br i1 %371, label %372, label %377

372:                                              ; preds = %366
  %373 = load i32*, i32** %3, align 8
  %374 = load i32*, i32** %6, align 8
  %375 = call i32 @equalBN(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.22, i64 0, i64 0), i32* %373, i32* %374)
  %376 = icmp ne i32 %375, 0
  br i1 %376, label %378, label %377

377:                                              ; preds = %372, %366, %360, %355, %349, %343
  br label %380

378:                                              ; preds = %372
  br label %379

379:                                              ; preds = %378, %340, %334
  store i32 1, i32* %8, align 4
  br label %380

380:                                              ; preds = %379, %377, %332, %223, %173, %64, %27
  %381 = load i32*, i32** %3, align 8
  %382 = call i32 @BN_free(i32* %381)
  %383 = load i32*, i32** %4, align 8
  %384 = call i32 @BN_free(i32* %383)
  %385 = load i32*, i32** %5, align 8
  %386 = call i32 @BN_free(i32* %385)
  %387 = load i32*, i32** %6, align 8
  %388 = call i32 @BN_free(i32* %387)
  %389 = load i32, i32* %8, align 4
  ret i32 %389
}

declare dso_local i32 @TEST_ptr(i32*) #1

declare dso_local i32* @getBN(i32*, i8*) #1

declare dso_local i32* @BN_new(...) #1

declare dso_local i32 @TEST_true(i32) #1

declare dso_local i32 @BN_add(i32*, i32*, i32*) #1

declare dso_local i32 @equalBN(i8*, i32*, i32*) #1

declare dso_local i32 @BN_sub(i32*, i32*, i32*) #1

declare dso_local i32 @BN_copy(i32*, i32*) #1

declare dso_local i32 @BN_is_negative(i32*) #1

declare dso_local i64 @BN_cmp(i32*, i32*) #1

declare dso_local i32 @BN_uadd(i32*, i32*, i32*) #1

declare dso_local i32 @BN_usub(i32*, i32*, i32*) #1

declare dso_local i64 @BN_get_word(i32*) #1

declare dso_local i32 @BN_add_word(i32*, i64) #1

declare dso_local i32 @BN_sub_word(i32*, i64) #1

declare dso_local i32 @BN_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
