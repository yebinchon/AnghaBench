; ModuleID = '/home/carl/AnghaBench/postgres/src/interfaces/ecpg/test/expected/extr_pgtypeslib-num_test2.c_main.c'
source_filename = "/home/carl/AnghaBench/postgres/src/interfaces/ecpg/test/expected/extr_pgtypeslib-num_test2.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [7 x i8] c"error\0A\00", align 1
@stderr = common dso_local global i32 0, align 4
@nums = common dso_local global i64* null, align 8
@.str.1 = private unnamed_addr constant [26 x i8] c"endptr of %d is not NULL\0A\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"*endptr of %d is not \\0\0A\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"num[%d,1]: %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"num[%d,2]: %s\0A\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"num[%d,3]: %s\0A\00", align 1
@.str.6 = private unnamed_addr constant [15 x i8] c"num[%d,4]: %s\0A\00", align 1
@.str.7 = private unnamed_addr constant [15 x i8] c"num[%d,5]: %s\0A\00", align 1
@.str.8 = private unnamed_addr constant [24 x i8] c"num[%d,6]: %ld (r: %d)\0A\00", align 1
@.str.9 = private unnamed_addr constant [33 x i8] c"num[%d,7]: %s (r: %d - cmp: %d)\0A\00", align 1
@.str.10 = private unnamed_addr constant [23 x i8] c"num[%d,8]: %d (r: %d)\0A\00", align 1
@.str.11 = private unnamed_addr constant [33 x i8] c"num[%d,9]: %s (r: %d - cmp: %d)\0A\00", align 1
@.str.12 = private unnamed_addr constant [13 x i8] c"num[%d,10]: \00", align 1
@.str.13 = private unnamed_addr constant [10 x i8] c" (r: %d)\0A\00", align 1
@.str.14 = private unnamed_addr constant [23 x i8] c"num[%d,11]: - (r: %d)\0A\00", align 1
@.str.15 = private unnamed_addr constant [34 x i8] c"num[%d,12]: %s (r: %d - cmp: %d)\0A\00", align 1
@.str.16 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.17 = private unnamed_addr constant [7 x i8] c"r: %d\0A\00", align 1
@.str.18 = private unnamed_addr constant [18 x i8] c"num[a,%d,%d]: %s\0A\00", align 1
@.str.19 = private unnamed_addr constant [18 x i8] c"num[s,%d,%d]: %s\0A\00", align 1
@.str.20 = private unnamed_addr constant [18 x i8] c"num[m,%d,%d]: %s\0A\00", align 1
@.str.21 = private unnamed_addr constant [18 x i8] c"num[d,%d,%d]: %s\0A\00", align 1
@.str.22 = private unnamed_addr constant [8 x i8] c"%d: %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca double, align 8
  %15 = alloca i32**, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  store i32 0, i32* %1, align 4
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8** %2, align 8
  store i32 0, i32* %13, align 4
  %20 = call i64 @calloc(i32 1, i32 4)
  %21 = inttoptr i64 %20 to i32**
  store i32** %21, i32*** %15, align 8
  %22 = load i32, i32* @stderr, align 4
  %23 = call i32 @ECPGdebug(i32 1, i32 %22)
  store i32 0, i32* %8, align 4
  br label %24

24:                                               ; preds = %281, %0
  %25 = load i64*, i64** @nums, align 8
  %26 = load i32, i32* %8, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i64, i64* %25, i64 %27
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %284

31:                                               ; preds = %24
  %32 = load i64*, i64** @nums, align 8
  %33 = load i32, i32* %8, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i64, i64* %32, i64 %34
  %36 = load i64, i64* %35, align 8
  %37 = call i32* @PGTYPESnumeric_from_asc(i64 %36, i8** %3)
  store i32* %37, i32** %4, align 8
  %38 = load i32*, i32** %4, align 8
  %39 = icmp ne i32* %38, null
  br i1 %39, label %42, label %40

40:                                               ; preds = %31
  %41 = call i32 (...) @check_errno()
  br label %42

42:                                               ; preds = %40, %31
  %43 = load i8*, i8** %3, align 8
  %44 = icmp ne i8* %43, null
  br i1 %44, label %45, label %56

45:                                               ; preds = %42
  %46 = load i32, i32* %8, align 4
  %47 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %46)
  %48 = load i8*, i8** %3, align 8
  %49 = load i8, i8* %48, align 1
  %50 = sext i8 %49 to i32
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %45
  %53 = load i32, i32* %8, align 4
  %54 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 %53)
  br label %55

55:                                               ; preds = %52, %45
  br label %56

56:                                               ; preds = %55, %42
  %57 = load i32*, i32** %4, align 8
  %58 = icmp ne i32* %57, null
  br i1 %58, label %60, label %59

59:                                               ; preds = %56
  br label %281

60:                                               ; preds = %56
  %61 = load i32**, i32*** %15, align 8
  %62 = load i32, i32* %13, align 4
  %63 = add nsw i32 %62, 1
  %64 = sext i32 %63 to i64
  %65 = mul i64 8, %64
  %66 = trunc i64 %65 to i32
  %67 = call i32** @realloc(i32** %61, i32 %66)
  store i32** %67, i32*** %15, align 8
  %68 = load i32*, i32** %4, align 8
  %69 = load i32**, i32*** %15, align 8
  %70 = load i32, i32* %13, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %13, align 4
  %72 = sext i32 %70 to i64
  %73 = getelementptr inbounds i32*, i32** %69, i64 %72
  store i32* %68, i32** %73, align 8
  %74 = load i32*, i32** %4, align 8
  %75 = call i8* @PGTYPESnumeric_to_asc(i32* %74, i32 -1)
  store i8* %75, i8** %2, align 8
  %76 = load i8*, i8** %2, align 8
  %77 = icmp ne i8* %76, null
  br i1 %77, label %80, label %78

78:                                               ; preds = %60
  %79 = call i32 (...) @check_errno()
  br label %80

80:                                               ; preds = %78, %60
  %81 = load i32, i32* %8, align 4
  %82 = load i8*, i8** %2, align 8
  %83 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i32 %81, i8* %82)
  %84 = load i8*, i8** %2, align 8
  %85 = call i32 @PGTYPESchar_free(i8* %84)
  %86 = load i32*, i32** %4, align 8
  %87 = call i8* @PGTYPESnumeric_to_asc(i32* %86, i32 0)
  store i8* %87, i8** %2, align 8
  %88 = load i8*, i8** %2, align 8
  %89 = icmp ne i8* %88, null
  br i1 %89, label %92, label %90

90:                                               ; preds = %80
  %91 = call i32 (...) @check_errno()
  br label %92

92:                                               ; preds = %90, %80
  %93 = load i32, i32* %8, align 4
  %94 = load i8*, i8** %2, align 8
  %95 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0), i32 %93, i8* %94)
  %96 = load i8*, i8** %2, align 8
  %97 = call i32 @PGTYPESchar_free(i8* %96)
  %98 = load i32*, i32** %4, align 8
  %99 = call i8* @PGTYPESnumeric_to_asc(i32* %98, i32 1)
  store i8* %99, i8** %2, align 8
  %100 = load i8*, i8** %2, align 8
  %101 = icmp ne i8* %100, null
  br i1 %101, label %104, label %102

102:                                              ; preds = %92
  %103 = call i32 (...) @check_errno()
  br label %104

104:                                              ; preds = %102, %92
  %105 = load i32, i32* %8, align 4
  %106 = load i8*, i8** %2, align 8
  %107 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0), i32 %105, i8* %106)
  %108 = load i8*, i8** %2, align 8
  %109 = call i32 @PGTYPESchar_free(i8* %108)
  %110 = load i32*, i32** %4, align 8
  %111 = call i8* @PGTYPESnumeric_to_asc(i32* %110, i32 2)
  store i8* %111, i8** %2, align 8
  %112 = load i8*, i8** %2, align 8
  %113 = icmp ne i8* %112, null
  br i1 %113, label %116, label %114

114:                                              ; preds = %104
  %115 = call i32 (...) @check_errno()
  br label %116

116:                                              ; preds = %114, %104
  %117 = load i32, i32* %8, align 4
  %118 = load i8*, i8** %2, align 8
  %119 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0), i32 %117, i8* %118)
  %120 = load i8*, i8** %2, align 8
  %121 = call i32 @PGTYPESchar_free(i8* %120)
  %122 = call i32* (...) @PGTYPESnumeric_new()
  store i32* %122, i32** %5, align 8
  %123 = load i32*, i32** %5, align 8
  %124 = call i8* @PGTYPESnumeric_to_asc(i32* %123, i32 2)
  store i8* %124, i8** %2, align 8
  %125 = load i8*, i8** %2, align 8
  %126 = icmp ne i8* %125, null
  br i1 %126, label %129, label %127

127:                                              ; preds = %116
  %128 = call i32 (...) @check_errno()
  br label %129

129:                                              ; preds = %127, %116
  %130 = load i32, i32* %8, align 4
  %131 = load i8*, i8** %2, align 8
  %132 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i64 0, i64 0), i32 %130, i8* %131)
  %133 = load i8*, i8** %2, align 8
  %134 = call i32 @PGTYPESchar_free(i8* %133)
  %135 = load i32*, i32** %4, align 8
  %136 = call i32 @PGTYPESnumeric_to_long(i32* %135, i64* %7)
  store i32 %136, i32* %12, align 4
  %137 = load i32, i32* %12, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %141

139:                                              ; preds = %129
  %140 = call i32 (...) @check_errno()
  br label %141

141:                                              ; preds = %139, %129
  %142 = load i32, i32* %8, align 4
  %143 = load i32, i32* %12, align 4
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %146

145:                                              ; preds = %141
  br label %148

146:                                              ; preds = %141
  %147 = load i64, i64* %7, align 8
  br label %148

148:                                              ; preds = %146, %145
  %149 = phi i64 [ 0, %145 ], [ %147, %146 ]
  %150 = load i32, i32* %12, align 4
  %151 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.8, i64 0, i64 0), i32 %142, i64 %149, i32 %150)
  %152 = load i32, i32* %12, align 4
  %153 = icmp eq i32 %152, 0
  br i1 %153, label %154, label %175

154:                                              ; preds = %148
  %155 = load i64, i64* %7, align 8
  %156 = load i32*, i32** %5, align 8
  %157 = call i32 @PGTYPESnumeric_from_long(i64 %155, i32* %156)
  store i32 %157, i32* %12, align 4
  %158 = load i32, i32* %12, align 4
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %162

160:                                              ; preds = %154
  %161 = call i32 (...) @check_errno()
  br label %162

162:                                              ; preds = %160, %154
  %163 = load i32*, i32** %5, align 8
  %164 = call i8* @PGTYPESnumeric_to_asc(i32* %163, i32 2)
  store i8* %164, i8** %2, align 8
  %165 = load i32*, i32** %4, align 8
  %166 = load i32*, i32** %5, align 8
  %167 = call i32 @PGTYPESnumeric_cmp(i32* %165, i32* %166)
  store i32 %167, i32* %11, align 4
  %168 = load i32, i32* %8, align 4
  %169 = load i8*, i8** %2, align 8
  %170 = load i32, i32* %12, align 4
  %171 = load i32, i32* %11, align 4
  %172 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.9, i64 0, i64 0), i32 %168, i8* %169, i32 %170, i32 %171)
  %173 = load i8*, i8** %2, align 8
  %174 = call i32 @PGTYPESchar_free(i8* %173)
  br label %175

175:                                              ; preds = %162, %148
  %176 = load i32*, i32** %4, align 8
  %177 = call i32 @PGTYPESnumeric_to_int(i32* %176, i32* %10)
  store i32 %177, i32* %12, align 4
  %178 = load i32, i32* %12, align 4
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %180, label %182

180:                                              ; preds = %175
  %181 = call i32 (...) @check_errno()
  br label %182

182:                                              ; preds = %180, %175
  %183 = load i32, i32* %8, align 4
  %184 = load i32, i32* %12, align 4
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %186, label %187

186:                                              ; preds = %182
  br label %189

187:                                              ; preds = %182
  %188 = load i32, i32* %10, align 4
  br label %189

189:                                              ; preds = %187, %186
  %190 = phi i32 [ 0, %186 ], [ %188, %187 ]
  %191 = load i32, i32* %12, align 4
  %192 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.10, i64 0, i64 0), i32 %183, i32 %190, i32 %191)
  %193 = load i32, i32* %12, align 4
  %194 = icmp eq i32 %193, 0
  br i1 %194, label %195, label %216

195:                                              ; preds = %189
  %196 = load i32, i32* %10, align 4
  %197 = load i32*, i32** %5, align 8
  %198 = call i32 @PGTYPESnumeric_from_int(i32 %196, i32* %197)
  store i32 %198, i32* %12, align 4
  %199 = load i32, i32* %12, align 4
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %201, label %203

201:                                              ; preds = %195
  %202 = call i32 (...) @check_errno()
  br label %203

203:                                              ; preds = %201, %195
  %204 = load i32*, i32** %5, align 8
  %205 = call i8* @PGTYPESnumeric_to_asc(i32* %204, i32 2)
  store i8* %205, i8** %2, align 8
  %206 = load i32*, i32** %4, align 8
  %207 = load i32*, i32** %5, align 8
  %208 = call i32 @PGTYPESnumeric_cmp(i32* %206, i32* %207)
  store i32 %208, i32* %11, align 4
  %209 = load i32, i32* %8, align 4
  %210 = load i8*, i8** %2, align 8
  %211 = load i32, i32* %12, align 4
  %212 = load i32, i32* %11, align 4
  %213 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.11, i64 0, i64 0), i32 %209, i8* %210, i32 %211, i32 %212)
  %214 = load i8*, i8** %2, align 8
  %215 = call i32 @PGTYPESchar_free(i8* %214)
  br label %216

216:                                              ; preds = %203, %189
  %217 = load i32, i32* %8, align 4
  %218 = icmp ne i32 %217, 6
  br i1 %218, label %219, label %239

219:                                              ; preds = %216
  %220 = load i32*, i32** %4, align 8
  %221 = call i32 @PGTYPESnumeric_to_double(i32* %220, double* %14)
  store i32 %221, i32* %12, align 4
  %222 = load i32, i32* %12, align 4
  %223 = icmp ne i32 %222, 0
  br i1 %223, label %224, label %226

224:                                              ; preds = %219
  %225 = call i32 (...) @check_errno()
  br label %226

226:                                              ; preds = %224, %219
  %227 = load i32, i32* %8, align 4
  %228 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.12, i64 0, i64 0), i32 %227)
  %229 = load i32, i32* %12, align 4
  %230 = icmp ne i32 %229, 0
  br i1 %230, label %231, label %232

231:                                              ; preds = %226
  br label %234

232:                                              ; preds = %226
  %233 = load double, double* %14, align 8
  br label %234

234:                                              ; preds = %232, %231
  %235 = phi double [ 0.000000e+00, %231 ], [ %233, %232 ]
  %236 = call i32 @print_double(double %235)
  %237 = load i32, i32* %12, align 4
  %238 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i64 0, i64 0), i32 %237)
  br label %239

239:                                              ; preds = %234, %216
  %240 = call i32* (...) @PGTYPESdecimal_new()
  store i32* %240, i32** %6, align 8
  %241 = load i32*, i32** %4, align 8
  %242 = load i32*, i32** %6, align 8
  %243 = call i32 @PGTYPESnumeric_to_decimal(i32* %241, i32* %242)
  store i32 %243, i32* %12, align 4
  %244 = load i32, i32* %12, align 4
  %245 = icmp ne i32 %244, 0
  br i1 %245, label %246, label %248

246:                                              ; preds = %239
  %247 = call i32 (...) @check_errno()
  br label %248

248:                                              ; preds = %246, %239
  %249 = load i32, i32* %8, align 4
  %250 = load i32, i32* %12, align 4
  %251 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.14, i64 0, i64 0), i32 %249, i32 %250)
  %252 = load i32, i32* %12, align 4
  %253 = icmp eq i32 %252, 0
  br i1 %253, label %254, label %275

254:                                              ; preds = %248
  %255 = load i32*, i32** %6, align 8
  %256 = load i32*, i32** %5, align 8
  %257 = call i32 @PGTYPESnumeric_from_decimal(i32* %255, i32* %256)
  store i32 %257, i32* %12, align 4
  %258 = load i32, i32* %12, align 4
  %259 = icmp ne i32 %258, 0
  br i1 %259, label %260, label %262

260:                                              ; preds = %254
  %261 = call i32 (...) @check_errno()
  br label %262

262:                                              ; preds = %260, %254
  %263 = load i32*, i32** %5, align 8
  %264 = call i8* @PGTYPESnumeric_to_asc(i32* %263, i32 2)
  store i8* %264, i8** %2, align 8
  %265 = load i32*, i32** %4, align 8
  %266 = load i32*, i32** %5, align 8
  %267 = call i32 @PGTYPESnumeric_cmp(i32* %265, i32* %266)
  store i32 %267, i32* %11, align 4
  %268 = load i32, i32* %8, align 4
  %269 = load i8*, i8** %2, align 8
  %270 = load i32, i32* %12, align 4
  %271 = load i32, i32* %11, align 4
  %272 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.15, i64 0, i64 0), i32 %268, i8* %269, i32 %270, i32 %271)
  %273 = load i8*, i8** %2, align 8
  %274 = call i32 @PGTYPESchar_free(i8* %273)
  br label %275

275:                                              ; preds = %262, %248
  %276 = load i32*, i32** %6, align 8
  %277 = call i32 @PGTYPESdecimal_free(i32* %276)
  %278 = load i32*, i32** %5, align 8
  %279 = call i32 @PGTYPESnumeric_free(i32* %278)
  %280 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.16, i64 0, i64 0))
  br label %281

281:                                              ; preds = %275, %59
  %282 = load i32, i32* %8, align 4
  %283 = add nsw i32 %282, 1
  store i32 %283, i32* %8, align 4
  br label %24

284:                                              ; preds = %24
  store i32 0, i32* %8, align 4
  br label %285

285:                                              ; preds = %423, %284
  %286 = load i32, i32* %8, align 4
  %287 = load i32, i32* %13, align 4
  %288 = icmp slt i32 %286, %287
  br i1 %288, label %289, label %426

289:                                              ; preds = %285
  store i32 0, i32* %9, align 4
  br label %290

290:                                              ; preds = %419, %289
  %291 = load i32, i32* %9, align 4
  %292 = load i32, i32* %13, align 4
  %293 = icmp slt i32 %291, %292
  br i1 %293, label %294, label %422

294:                                              ; preds = %290
  %295 = call i32* (...) @PGTYPESnumeric_new()
  store i32* %295, i32** %16, align 8
  %296 = call i32* (...) @PGTYPESnumeric_new()
  store i32* %296, i32** %17, align 8
  %297 = call i32* (...) @PGTYPESnumeric_new()
  store i32* %297, i32** %18, align 8
  %298 = call i32* (...) @PGTYPESnumeric_new()
  store i32* %298, i32** %19, align 8
  %299 = load i32**, i32*** %15, align 8
  %300 = load i32, i32* %8, align 4
  %301 = sext i32 %300 to i64
  %302 = getelementptr inbounds i32*, i32** %299, i64 %301
  %303 = load i32*, i32** %302, align 8
  %304 = load i32**, i32*** %15, align 8
  %305 = load i32, i32* %9, align 4
  %306 = sext i32 %305 to i64
  %307 = getelementptr inbounds i32*, i32** %304, i64 %306
  %308 = load i32*, i32** %307, align 8
  %309 = load i32*, i32** %16, align 8
  %310 = call i32 @PGTYPESnumeric_add(i32* %303, i32* %308, i32* %309)
  store i32 %310, i32* %12, align 4
  %311 = load i32, i32* %12, align 4
  %312 = icmp ne i32 %311, 0
  br i1 %312, label %313, label %317

313:                                              ; preds = %294
  %314 = call i32 (...) @check_errno()
  %315 = load i32, i32* %12, align 4
  %316 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.17, i64 0, i64 0), i32 %315)
  br label %326

317:                                              ; preds = %294
  %318 = load i32*, i32** %16, align 8
  %319 = call i8* @PGTYPESnumeric_to_asc(i32* %318, i32 10)
  store i8* %319, i8** %2, align 8
  %320 = load i32, i32* %8, align 4
  %321 = load i32, i32* %9, align 4
  %322 = load i8*, i8** %2, align 8
  %323 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.18, i64 0, i64 0), i32 %320, i32 %321, i8* %322)
  %324 = load i8*, i8** %2, align 8
  %325 = call i32 @PGTYPESchar_free(i8* %324)
  br label %326

326:                                              ; preds = %317, %313
  %327 = load i32**, i32*** %15, align 8
  %328 = load i32, i32* %8, align 4
  %329 = sext i32 %328 to i64
  %330 = getelementptr inbounds i32*, i32** %327, i64 %329
  %331 = load i32*, i32** %330, align 8
  %332 = load i32**, i32*** %15, align 8
  %333 = load i32, i32* %9, align 4
  %334 = sext i32 %333 to i64
  %335 = getelementptr inbounds i32*, i32** %332, i64 %334
  %336 = load i32*, i32** %335, align 8
  %337 = load i32*, i32** %17, align 8
  %338 = call i32 @PGTYPESnumeric_sub(i32* %331, i32* %336, i32* %337)
  store i32 %338, i32* %12, align 4
  %339 = load i32, i32* %12, align 4
  %340 = icmp ne i32 %339, 0
  br i1 %340, label %341, label %345

341:                                              ; preds = %326
  %342 = call i32 (...) @check_errno()
  %343 = load i32, i32* %12, align 4
  %344 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.17, i64 0, i64 0), i32 %343)
  br label %354

345:                                              ; preds = %326
  %346 = load i32*, i32** %17, align 8
  %347 = call i8* @PGTYPESnumeric_to_asc(i32* %346, i32 10)
  store i8* %347, i8** %2, align 8
  %348 = load i32, i32* %8, align 4
  %349 = load i32, i32* %9, align 4
  %350 = load i8*, i8** %2, align 8
  %351 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.19, i64 0, i64 0), i32 %348, i32 %349, i8* %350)
  %352 = load i8*, i8** %2, align 8
  %353 = call i32 @PGTYPESchar_free(i8* %352)
  br label %354

354:                                              ; preds = %345, %341
  %355 = load i32**, i32*** %15, align 8
  %356 = load i32, i32* %8, align 4
  %357 = sext i32 %356 to i64
  %358 = getelementptr inbounds i32*, i32** %355, i64 %357
  %359 = load i32*, i32** %358, align 8
  %360 = load i32**, i32*** %15, align 8
  %361 = load i32, i32* %9, align 4
  %362 = sext i32 %361 to i64
  %363 = getelementptr inbounds i32*, i32** %360, i64 %362
  %364 = load i32*, i32** %363, align 8
  %365 = load i32*, i32** %18, align 8
  %366 = call i32 @PGTYPESnumeric_mul(i32* %359, i32* %364, i32* %365)
  store i32 %366, i32* %12, align 4
  %367 = load i32, i32* %12, align 4
  %368 = icmp ne i32 %367, 0
  br i1 %368, label %369, label %373

369:                                              ; preds = %354
  %370 = call i32 (...) @check_errno()
  %371 = load i32, i32* %12, align 4
  %372 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.17, i64 0, i64 0), i32 %371)
  br label %382

373:                                              ; preds = %354
  %374 = load i32*, i32** %18, align 8
  %375 = call i8* @PGTYPESnumeric_to_asc(i32* %374, i32 10)
  store i8* %375, i8** %2, align 8
  %376 = load i32, i32* %8, align 4
  %377 = load i32, i32* %9, align 4
  %378 = load i8*, i8** %2, align 8
  %379 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.20, i64 0, i64 0), i32 %376, i32 %377, i8* %378)
  %380 = load i8*, i8** %2, align 8
  %381 = call i32 @PGTYPESchar_free(i8* %380)
  br label %382

382:                                              ; preds = %373, %369
  %383 = load i32**, i32*** %15, align 8
  %384 = load i32, i32* %8, align 4
  %385 = sext i32 %384 to i64
  %386 = getelementptr inbounds i32*, i32** %383, i64 %385
  %387 = load i32*, i32** %386, align 8
  %388 = load i32**, i32*** %15, align 8
  %389 = load i32, i32* %9, align 4
  %390 = sext i32 %389 to i64
  %391 = getelementptr inbounds i32*, i32** %388, i64 %390
  %392 = load i32*, i32** %391, align 8
  %393 = load i32*, i32** %19, align 8
  %394 = call i32 @PGTYPESnumeric_div(i32* %387, i32* %392, i32* %393)
  store i32 %394, i32* %12, align 4
  %395 = load i32, i32* %12, align 4
  %396 = icmp ne i32 %395, 0
  br i1 %396, label %397, label %401

397:                                              ; preds = %382
  %398 = call i32 (...) @check_errno()
  %399 = load i32, i32* %12, align 4
  %400 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.17, i64 0, i64 0), i32 %399)
  br label %410

401:                                              ; preds = %382
  %402 = load i32*, i32** %19, align 8
  %403 = call i8* @PGTYPESnumeric_to_asc(i32* %402, i32 10)
  store i8* %403, i8** %2, align 8
  %404 = load i32, i32* %8, align 4
  %405 = load i32, i32* %9, align 4
  %406 = load i8*, i8** %2, align 8
  %407 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.21, i64 0, i64 0), i32 %404, i32 %405, i8* %406)
  %408 = load i8*, i8** %2, align 8
  %409 = call i32 @PGTYPESchar_free(i8* %408)
  br label %410

410:                                              ; preds = %401, %397
  %411 = load i32*, i32** %16, align 8
  %412 = call i32 @PGTYPESnumeric_free(i32* %411)
  %413 = load i32*, i32** %17, align 8
  %414 = call i32 @PGTYPESnumeric_free(i32* %413)
  %415 = load i32*, i32** %18, align 8
  %416 = call i32 @PGTYPESnumeric_free(i32* %415)
  %417 = load i32*, i32** %19, align 8
  %418 = call i32 @PGTYPESnumeric_free(i32* %417)
  br label %419

419:                                              ; preds = %410
  %420 = load i32, i32* %9, align 4
  %421 = add nsw i32 %420, 1
  store i32 %421, i32* %9, align 4
  br label %290

422:                                              ; preds = %290
  br label %423

423:                                              ; preds = %422
  %424 = load i32, i32* %8, align 4
  %425 = add nsw i32 %424, 1
  store i32 %425, i32* %8, align 4
  br label %285

426:                                              ; preds = %285
  store i32 0, i32* %8, align 4
  br label %427

427:                                              ; preds = %449, %426
  %428 = load i32, i32* %8, align 4
  %429 = load i32, i32* %13, align 4
  %430 = icmp slt i32 %428, %429
  br i1 %430, label %431, label %452

431:                                              ; preds = %427
  %432 = load i32**, i32*** %15, align 8
  %433 = load i32, i32* %8, align 4
  %434 = sext i32 %433 to i64
  %435 = getelementptr inbounds i32*, i32** %432, i64 %434
  %436 = load i32*, i32** %435, align 8
  %437 = call i8* @PGTYPESnumeric_to_asc(i32* %436, i32 -1)
  store i8* %437, i8** %2, align 8
  %438 = load i32, i32* %8, align 4
  %439 = load i8*, i8** %2, align 8
  %440 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.22, i64 0, i64 0), i32 %438, i8* %439)
  %441 = load i8*, i8** %2, align 8
  %442 = call i32 @PGTYPESchar_free(i8* %441)
  %443 = load i32**, i32*** %15, align 8
  %444 = load i32, i32* %8, align 4
  %445 = sext i32 %444 to i64
  %446 = getelementptr inbounds i32*, i32** %443, i64 %445
  %447 = load i32*, i32** %446, align 8
  %448 = call i32 @PGTYPESnumeric_free(i32* %447)
  br label %449

449:                                              ; preds = %431
  %450 = load i32, i32* %8, align 4
  %451 = add nsw i32 %450, 1
  store i32 %451, i32* %8, align 4
  br label %427

452:                                              ; preds = %427
  %453 = load i32**, i32*** %15, align 8
  %454 = call i32 @free(i32** %453)
  ret i32 0
}

declare dso_local i64 @calloc(i32, i32) #1

declare dso_local i32 @ECPGdebug(i32, i32) #1

declare dso_local i32* @PGTYPESnumeric_from_asc(i64, i8**) #1

declare dso_local i32 @check_errno(...) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32** @realloc(i32**, i32) #1

declare dso_local i8* @PGTYPESnumeric_to_asc(i32*, i32) #1

declare dso_local i32 @PGTYPESchar_free(i8*) #1

declare dso_local i32* @PGTYPESnumeric_new(...) #1

declare dso_local i32 @PGTYPESnumeric_to_long(i32*, i64*) #1

declare dso_local i32 @PGTYPESnumeric_from_long(i64, i32*) #1

declare dso_local i32 @PGTYPESnumeric_cmp(i32*, i32*) #1

declare dso_local i32 @PGTYPESnumeric_to_int(i32*, i32*) #1

declare dso_local i32 @PGTYPESnumeric_from_int(i32, i32*) #1

declare dso_local i32 @PGTYPESnumeric_to_double(i32*, double*) #1

declare dso_local i32 @print_double(double) #1

declare dso_local i32* @PGTYPESdecimal_new(...) #1

declare dso_local i32 @PGTYPESnumeric_to_decimal(i32*, i32*) #1

declare dso_local i32 @PGTYPESnumeric_from_decimal(i32*, i32*) #1

declare dso_local i32 @PGTYPESdecimal_free(i32*) #1

declare dso_local i32 @PGTYPESnumeric_free(i32*) #1

declare dso_local i32 @PGTYPESnumeric_add(i32*, i32*, i32*) #1

declare dso_local i32 @PGTYPESnumeric_sub(i32*, i32*, i32*) #1

declare dso_local i32 @PGTYPESnumeric_mul(i32*, i32*, i32*) #1

declare dso_local i32 @PGTYPESnumeric_div(i32*, i32*, i32*) #1

declare dso_local i32 @free(i32**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
