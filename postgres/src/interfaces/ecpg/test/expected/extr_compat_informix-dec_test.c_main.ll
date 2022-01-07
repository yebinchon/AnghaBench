; ModuleID = '/home/carl/AnghaBench/postgres/src/interfaces/ecpg/test/expected/extr_compat_informix-dec_test.c_main.c'
source_filename = "/home/carl/AnghaBench/postgres/src/interfaces/ecpg/test/expected/extr_compat_informix-dec_test.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@BUFSIZE = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@decs = common dso_local global i64* null, align 8
@.str = private unnamed_addr constant [18 x i8] c"dec[%d,0]: r: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"dec[%d,1]: r: %d, %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"dec[%d,2]: r: %d, %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"dec[%d,3]: r: %d, %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"dec[%d,4]: r: %d, %s\0A\00", align 1
@.str.5 = private unnamed_addr constant [22 x i8] c"dec[%d,5]: r: %d, %s\0A\00", align 1
@.str.6 = private unnamed_addr constant [24 x i8] c"dec[%d,6]: %ld (r: %d)\0A\00", align 1
@.str.7 = private unnamed_addr constant [33 x i8] c"dec[%d,7]: %s (r: %d - cmp: %d)\0A\00", align 1
@.str.8 = private unnamed_addr constant [23 x i8] c"dec[%d,8]: %d (r: %d)\0A\00", align 1
@.str.9 = private unnamed_addr constant [33 x i8] c"dec[%d,9]: %s (r: %d - cmp: %d)\0A\00", align 1
@.str.10 = private unnamed_addr constant [13 x i8] c"dec[%d,10]: \00", align 1
@.str.11 = private unnamed_addr constant [10 x i8] c" (r: %d)\0A\00", align 1
@.str.12 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@CDECIMALTYPE = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [17 x i8] c"dec[%d]: %sNULL\0A\00", align 1
@.str.14 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.15 = private unnamed_addr constant [5 x i8] c"NOT \00", align 1
@.str.16 = private unnamed_addr constant [16 x i8] c"dec[0]: %sNULL\0A\00", align 1
@.str.17 = private unnamed_addr constant [32 x i8] c"dectoasc with len == -1: r: %d\0A\00", align 1
@.str.18 = private unnamed_addr constant [31 x i8] c"dectoasc with len == 0: r: %d\0A\00", align 1
@.str.19 = private unnamed_addr constant [18 x i8] c"dec[c,%d,%d]: %d\0A\00", align 1
@.str.20 = private unnamed_addr constant [7 x i8] c"r: %d\0A\00", align 1
@.str.21 = private unnamed_addr constant [18 x i8] c"dec[a,%d,%d]: %s\0A\00", align 1
@.str.22 = private unnamed_addr constant [18 x i8] c"dec[s,%d,%d]: %s\0A\00", align 1
@.str.23 = private unnamed_addr constant [18 x i8] c"dec[m,%d,%d]: %s\0A\00", align 1
@.str.24 = private unnamed_addr constant [18 x i8] c"dec[d,%d,%d]: %s\0A\00", align 1
@.str.25 = private unnamed_addr constant [8 x i8] c"%d: %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca double, align 8
  %14 = alloca i32**, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %20 = load i32, i32* @BUFSIZE, align 4
  %21 = zext i32 %20 to i64
  %22 = call i8* @llvm.stacksave()
  store i8* %22, i8** %4, align 8
  %23 = alloca i8, i64 %21, align 16
  store i64 %21, i64* %5, align 8
  store i32 0, i32* %12, align 4
  %24 = call i64 @calloc(i32 1, i32 4)
  %25 = inttoptr i64 %24 to i32**
  store i32** %25, i32*** %14, align 8
  %26 = load i32, i32* @stderr, align 4
  %27 = call i32 @ECPGdebug(i32 1, i32 %26)
  store i32 0, i32* %7, align 4
  br label %28

28:                                               ; preds = %240, %0
  %29 = load i64*, i64** @decs, align 8
  %30 = load i32, i32* %7, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i64, i64* %29, i64 %31
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %243

35:                                               ; preds = %28
  %36 = call i32* (...) @PGTYPESdecimal_new()
  store i32* %36, i32** %2, align 8
  %37 = load i64*, i64** @decs, align 8
  %38 = load i32, i32* %7, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i64, i64* %37, i64 %39
  %41 = load i64, i64* %40, align 8
  %42 = load i64*, i64** @decs, align 8
  %43 = load i32, i32* %7, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i64, i64* %42, i64 %44
  %46 = load i64, i64* %45, align 8
  %47 = call i32 @strlen(i64 %46)
  %48 = load i32*, i32** %2, align 8
  %49 = call i32 @deccvasc(i64 %41, i32 %47, i32* %48)
  store i32 %49, i32* %11, align 4
  %50 = load i32, i32* %11, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %59

52:                                               ; preds = %35
  %53 = call i32 (...) @check_errno()
  %54 = load i32, i32* %7, align 4
  %55 = load i32, i32* %11, align 4
  %56 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %54, i32 %55)
  %57 = load i32*, i32** %2, align 8
  %58 = call i32 @PGTYPESdecimal_free(i32* %57)
  br label %240

59:                                               ; preds = %35
  %60 = load i32**, i32*** %14, align 8
  %61 = load i32, i32* %12, align 4
  %62 = add nsw i32 %61, 1
  %63 = sext i32 %62 to i64
  %64 = mul i64 8, %63
  %65 = trunc i64 %64 to i32
  %66 = call i32** @realloc(i32** %60, i32 %65)
  store i32** %66, i32*** %14, align 8
  %67 = load i32*, i32** %2, align 8
  %68 = load i32**, i32*** %14, align 8
  %69 = load i32, i32* %12, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %12, align 4
  %71 = sext i32 %69 to i64
  %72 = getelementptr inbounds i32*, i32** %68, i64 %71
  store i32* %67, i32** %72, align 8
  %73 = load i32*, i32** %2, align 8
  %74 = load i32, i32* @BUFSIZE, align 4
  %75 = sub nsw i32 %74, 1
  %76 = call i32 @dectoasc(i32* %73, i8* %23, i32 %75, i32 -1)
  store i32 %76, i32* %11, align 4
  %77 = load i32, i32* %11, align 4
  %78 = icmp slt i32 %77, 0
  br i1 %78, label %79, label %81

79:                                               ; preds = %59
  %80 = call i32 (...) @check_errno()
  br label %81

81:                                               ; preds = %79, %59
  %82 = load i32, i32* %7, align 4
  %83 = load i32, i32* %11, align 4
  %84 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 %82, i32 %83, i8* %23)
  %85 = load i32*, i32** %2, align 8
  %86 = load i32, i32* @BUFSIZE, align 4
  %87 = sub nsw i32 %86, 1
  %88 = call i32 @dectoasc(i32* %85, i8* %23, i32 %87, i32 0)
  store i32 %88, i32* %11, align 4
  %89 = load i32, i32* %11, align 4
  %90 = icmp slt i32 %89, 0
  br i1 %90, label %91, label %93

91:                                               ; preds = %81
  %92 = call i32 (...) @check_errno()
  br label %93

93:                                               ; preds = %91, %81
  %94 = load i32, i32* %7, align 4
  %95 = load i32, i32* %11, align 4
  %96 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i32 %94, i32 %95, i8* %23)
  %97 = load i32*, i32** %2, align 8
  %98 = load i32, i32* @BUFSIZE, align 4
  %99 = sub nsw i32 %98, 1
  %100 = call i32 @dectoasc(i32* %97, i8* %23, i32 %99, i32 1)
  store i32 %100, i32* %11, align 4
  %101 = load i32, i32* %11, align 4
  %102 = icmp slt i32 %101, 0
  br i1 %102, label %103, label %105

103:                                              ; preds = %93
  %104 = call i32 (...) @check_errno()
  br label %105

105:                                              ; preds = %103, %93
  %106 = load i32, i32* %7, align 4
  %107 = load i32, i32* %11, align 4
  %108 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i32 %106, i32 %107, i8* %23)
  %109 = load i32*, i32** %2, align 8
  %110 = load i32, i32* @BUFSIZE, align 4
  %111 = sub nsw i32 %110, 1
  %112 = call i32 @dectoasc(i32* %109, i8* %23, i32 %111, i32 2)
  store i32 %112, i32* %11, align 4
  %113 = load i32, i32* %11, align 4
  %114 = icmp slt i32 %113, 0
  br i1 %114, label %115, label %117

115:                                              ; preds = %105
  %116 = call i32 (...) @check_errno()
  br label %117

117:                                              ; preds = %115, %105
  %118 = load i32, i32* %7, align 4
  %119 = load i32, i32* %11, align 4
  %120 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0), i32 %118, i32 %119, i8* %23)
  %121 = call i32* (...) @PGTYPESdecimal_new()
  store i32* %121, i32** %3, align 8
  %122 = load i32*, i32** %3, align 8
  %123 = load i32, i32* @BUFSIZE, align 4
  %124 = sub nsw i32 %123, 1
  %125 = call i32 @dectoasc(i32* %122, i8* %23, i32 %124, i32 2)
  store i32 %125, i32* %11, align 4
  %126 = load i32, i32* %11, align 4
  %127 = icmp slt i32 %126, 0
  br i1 %127, label %128, label %130

128:                                              ; preds = %117
  %129 = call i32 (...) @check_errno()
  br label %130

130:                                              ; preds = %128, %117
  %131 = load i32, i32* %7, align 4
  %132 = load i32, i32* %11, align 4
  %133 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0), i32 %131, i32 %132, i8* %23)
  %134 = load i32*, i32** %2, align 8
  %135 = call i32 @dectolong(i32* %134, i64* %6)
  store i32 %135, i32* %11, align 4
  %136 = load i32, i32* %11, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %140

138:                                              ; preds = %130
  %139 = call i32 (...) @check_errno()
  br label %140

140:                                              ; preds = %138, %130
  %141 = load i32, i32* %7, align 4
  %142 = load i32, i32* %11, align 4
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %145

144:                                              ; preds = %140
  br label %147

145:                                              ; preds = %140
  %146 = load i64, i64* %6, align 8
  br label %147

147:                                              ; preds = %145, %144
  %148 = phi i64 [ 0, %144 ], [ %146, %145 ]
  %149 = load i32, i32* %11, align 4
  %150 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i64 0, i64 0), i32 %141, i64 %148, i32 %149)
  %151 = load i32, i32* %11, align 4
  %152 = icmp eq i32 %151, 0
  br i1 %152, label %153, label %173

153:                                              ; preds = %147
  %154 = load i64, i64* %6, align 8
  %155 = load i32*, i32** %3, align 8
  %156 = call i32 @deccvlong(i64 %154, i32* %155)
  store i32 %156, i32* %11, align 4
  %157 = load i32, i32* %11, align 4
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %161

159:                                              ; preds = %153
  %160 = call i32 (...) @check_errno()
  br label %161

161:                                              ; preds = %159, %153
  %162 = load i32*, i32** %3, align 8
  %163 = load i32, i32* @BUFSIZE, align 4
  %164 = sub nsw i32 %163, 1
  %165 = call i32 @dectoasc(i32* %162, i8* %23, i32 %164, i32 2)
  %166 = load i32*, i32** %2, align 8
  %167 = load i32*, i32** %3, align 8
  %168 = call i32 @deccmp(i32* %166, i32* %167)
  store i32 %168, i32* %10, align 4
  %169 = load i32, i32* %7, align 4
  %170 = load i32, i32* %11, align 4
  %171 = load i32, i32* %10, align 4
  %172 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.7, i64 0, i64 0), i32 %169, i8* %23, i32 %170, i32 %171)
  br label %173

173:                                              ; preds = %161, %147
  %174 = load i32*, i32** %2, align 8
  %175 = call i32 @dectoint(i32* %174, i32* %9)
  store i32 %175, i32* %11, align 4
  %176 = load i32, i32* %11, align 4
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %178, label %180

178:                                              ; preds = %173
  %179 = call i32 (...) @check_errno()
  br label %180

180:                                              ; preds = %178, %173
  %181 = load i32, i32* %7, align 4
  %182 = load i32, i32* %11, align 4
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %184, label %185

184:                                              ; preds = %180
  br label %187

185:                                              ; preds = %180
  %186 = load i32, i32* %9, align 4
  br label %187

187:                                              ; preds = %185, %184
  %188 = phi i32 [ 0, %184 ], [ %186, %185 ]
  %189 = load i32, i32* %11, align 4
  %190 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.8, i64 0, i64 0), i32 %181, i32 %188, i32 %189)
  %191 = load i32, i32* %11, align 4
  %192 = icmp eq i32 %191, 0
  br i1 %192, label %193, label %213

193:                                              ; preds = %187
  %194 = load i32, i32* %9, align 4
  %195 = load i32*, i32** %3, align 8
  %196 = call i32 @deccvint(i32 %194, i32* %195)
  store i32 %196, i32* %11, align 4
  %197 = load i32, i32* %11, align 4
  %198 = icmp ne i32 %197, 0
  br i1 %198, label %199, label %201

199:                                              ; preds = %193
  %200 = call i32 (...) @check_errno()
  br label %201

201:                                              ; preds = %199, %193
  %202 = load i32*, i32** %3, align 8
  %203 = load i32, i32* @BUFSIZE, align 4
  %204 = sub nsw i32 %203, 1
  %205 = call i32 @dectoasc(i32* %202, i8* %23, i32 %204, i32 2)
  %206 = load i32*, i32** %2, align 8
  %207 = load i32*, i32** %3, align 8
  %208 = call i32 @deccmp(i32* %206, i32* %207)
  store i32 %208, i32* %10, align 4
  %209 = load i32, i32* %7, align 4
  %210 = load i32, i32* %11, align 4
  %211 = load i32, i32* %10, align 4
  %212 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.9, i64 0, i64 0), i32 %209, i8* %23, i32 %210, i32 %211)
  br label %213

213:                                              ; preds = %201, %187
  %214 = load i32, i32* %7, align 4
  %215 = icmp ne i32 %214, 6
  br i1 %215, label %216, label %236

216:                                              ; preds = %213
  %217 = load i32*, i32** %2, align 8
  %218 = call i32 @dectodbl(i32* %217, double* %13)
  store i32 %218, i32* %11, align 4
  %219 = load i32, i32* %11, align 4
  %220 = icmp ne i32 %219, 0
  br i1 %220, label %221, label %223

221:                                              ; preds = %216
  %222 = call i32 (...) @check_errno()
  br label %223

223:                                              ; preds = %221, %216
  %224 = load i32, i32* %7, align 4
  %225 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.10, i64 0, i64 0), i32 %224)
  %226 = load i32, i32* %11, align 4
  %227 = icmp ne i32 %226, 0
  br i1 %227, label %228, label %229

228:                                              ; preds = %223
  br label %231

229:                                              ; preds = %223
  %230 = load double, double* %13, align 8
  br label %231

231:                                              ; preds = %229, %228
  %232 = phi double [ 0.000000e+00, %228 ], [ %230, %229 ]
  %233 = call i32 @print_double(double %232)
  %234 = load i32, i32* %11, align 4
  %235 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11, i64 0, i64 0), i32 %234)
  br label %236

236:                                              ; preds = %231, %213
  %237 = load i32*, i32** %3, align 8
  %238 = call i32 @PGTYPESdecimal_free(i32* %237)
  %239 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i64 0, i64 0))
  br label %240

240:                                              ; preds = %236, %52
  %241 = load i32, i32* %7, align 4
  %242 = add nsw i32 %241, 1
  store i32 %242, i32* %7, align 4
  br label %28

243:                                              ; preds = %28
  %244 = call i32* (...) @PGTYPESdecimal_new()
  store i32* %244, i32** %2, align 8
  %245 = load i32**, i32*** %14, align 8
  %246 = load i32, i32* %12, align 4
  %247 = add nsw i32 %246, 1
  %248 = sext i32 %247 to i64
  %249 = mul i64 8, %248
  %250 = trunc i64 %249 to i32
  %251 = call i32** @realloc(i32** %245, i32 %250)
  store i32** %251, i32*** %14, align 8
  %252 = load i32*, i32** %2, align 8
  %253 = load i32**, i32*** %14, align 8
  %254 = load i32, i32* %12, align 4
  %255 = add nsw i32 %254, 1
  store i32 %255, i32* %12, align 4
  %256 = sext i32 %254 to i64
  %257 = getelementptr inbounds i32*, i32** %253, i64 %256
  store i32* %252, i32** %257, align 8
  %258 = load i32, i32* @CDECIMALTYPE, align 4
  %259 = load i32**, i32*** %14, align 8
  %260 = load i32, i32* %12, align 4
  %261 = sub nsw i32 %260, 1
  %262 = sext i32 %261 to i64
  %263 = getelementptr inbounds i32*, i32** %259, i64 %262
  %264 = load i32*, i32** %263, align 8
  %265 = bitcast i32* %264 to i8*
  %266 = call i32 @rsetnull(i32 %258, i8* %265)
  %267 = load i32, i32* %12, align 4
  %268 = sub nsw i32 %267, 1
  %269 = load i32, i32* @CDECIMALTYPE, align 4
  %270 = load i32**, i32*** %14, align 8
  %271 = load i32, i32* %12, align 4
  %272 = sub nsw i32 %271, 1
  %273 = sext i32 %272 to i64
  %274 = getelementptr inbounds i32*, i32** %270, i64 %273
  %275 = load i32*, i32** %274, align 8
  %276 = bitcast i32* %275 to i8*
  %277 = call i64 @risnull(i32 %269, i8* %276)
  %278 = icmp ne i64 %277, 0
  %279 = zext i1 %278 to i64
  %280 = select i1 %278, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.14, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.15, i64 0, i64 0)
  %281 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.13, i64 0, i64 0), i32 %268, i8* %280)
  %282 = load i32, i32* @CDECIMALTYPE, align 4
  %283 = load i32**, i32*** %14, align 8
  %284 = getelementptr inbounds i32*, i32** %283, i64 0
  %285 = load i32*, i32** %284, align 8
  %286 = bitcast i32* %285 to i8*
  %287 = call i64 @risnull(i32 %282, i8* %286)
  %288 = icmp ne i64 %287, 0
  %289 = zext i1 %288 to i64
  %290 = select i1 %288, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.14, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.15, i64 0, i64 0)
  %291 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.16, i64 0, i64 0), i8* %290)
  %292 = load i32**, i32*** %14, align 8
  %293 = getelementptr inbounds i32*, i32** %292, i64 3
  %294 = load i32*, i32** %293, align 8
  %295 = call i32 @dectoasc(i32* %294, i8* %23, i32 -1, i32 -1)
  store i32 %295, i32* %11, align 4
  %296 = call i32 (...) @check_errno()
  %297 = load i32, i32* %11, align 4
  %298 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.17, i64 0, i64 0), i32 %297)
  %299 = load i32**, i32*** %14, align 8
  %300 = getelementptr inbounds i32*, i32** %299, i64 3
  %301 = load i32*, i32** %300, align 8
  %302 = call i32 @dectoasc(i32* %301, i8* %23, i32 0, i32 -1)
  store i32 %302, i32* %11, align 4
  %303 = call i32 (...) @check_errno()
  %304 = load i32, i32* %11, align 4
  %305 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.18, i64 0, i64 0), i32 %304)
  store i32 0, i32* %7, align 4
  br label %306

306:                                              ; preds = %435, %243
  %307 = load i32, i32* %7, align 4
  %308 = load i32, i32* %12, align 4
  %309 = icmp slt i32 %307, %308
  br i1 %309, label %310, label %438

310:                                              ; preds = %306
  store i32 0, i32* %8, align 4
  br label %311

311:                                              ; preds = %431, %310
  %312 = load i32, i32* %8, align 4
  %313 = load i32, i32* %12, align 4
  %314 = icmp slt i32 %312, %313
  br i1 %314, label %315, label %434

315:                                              ; preds = %311
  %316 = load i32**, i32*** %14, align 8
  %317 = load i32, i32* %7, align 4
  %318 = sext i32 %317 to i64
  %319 = getelementptr inbounds i32*, i32** %316, i64 %318
  %320 = load i32*, i32** %319, align 8
  %321 = load i32**, i32*** %14, align 8
  %322 = load i32, i32* %8, align 4
  %323 = sext i32 %322 to i64
  %324 = getelementptr inbounds i32*, i32** %321, i64 %323
  %325 = load i32*, i32** %324, align 8
  %326 = call i32 @deccmp(i32* %320, i32* %325)
  store i32 %326, i32* %19, align 4
  %327 = load i32, i32* %7, align 4
  %328 = load i32, i32* %8, align 4
  %329 = load i32, i32* %19, align 4
  %330 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.19, i64 0, i64 0), i32 %327, i32 %328, i32 %329)
  %331 = load i32**, i32*** %14, align 8
  %332 = load i32, i32* %7, align 4
  %333 = sext i32 %332 to i64
  %334 = getelementptr inbounds i32*, i32** %331, i64 %333
  %335 = load i32*, i32** %334, align 8
  %336 = load i32**, i32*** %14, align 8
  %337 = load i32, i32* %8, align 4
  %338 = sext i32 %337 to i64
  %339 = getelementptr inbounds i32*, i32** %336, i64 %338
  %340 = load i32*, i32** %339, align 8
  %341 = call i32 @decadd(i32* %335, i32* %340, i32* %15)
  store i32 %341, i32* %11, align 4
  %342 = load i32, i32* %11, align 4
  %343 = icmp ne i32 %342, 0
  br i1 %343, label %344, label %348

344:                                              ; preds = %315
  %345 = call i32 (...) @check_errno()
  %346 = load i32, i32* %11, align 4
  %347 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.20, i64 0, i64 0), i32 %346)
  br label %355

348:                                              ; preds = %315
  %349 = load i32, i32* @BUFSIZE, align 4
  %350 = sub nsw i32 %349, 1
  %351 = call i32 @dectoasc(i32* %15, i8* %23, i32 %350, i32 -1)
  %352 = load i32, i32* %7, align 4
  %353 = load i32, i32* %8, align 4
  %354 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.21, i64 0, i64 0), i32 %352, i32 %353, i8* %23)
  br label %355

355:                                              ; preds = %348, %344
  %356 = load i32**, i32*** %14, align 8
  %357 = load i32, i32* %7, align 4
  %358 = sext i32 %357 to i64
  %359 = getelementptr inbounds i32*, i32** %356, i64 %358
  %360 = load i32*, i32** %359, align 8
  %361 = load i32**, i32*** %14, align 8
  %362 = load i32, i32* %8, align 4
  %363 = sext i32 %362 to i64
  %364 = getelementptr inbounds i32*, i32** %361, i64 %363
  %365 = load i32*, i32** %364, align 8
  %366 = call i32 @decsub(i32* %360, i32* %365, i32* %16)
  store i32 %366, i32* %11, align 4
  %367 = load i32, i32* %11, align 4
  %368 = icmp ne i32 %367, 0
  br i1 %368, label %369, label %373

369:                                              ; preds = %355
  %370 = call i32 (...) @check_errno()
  %371 = load i32, i32* %11, align 4
  %372 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.20, i64 0, i64 0), i32 %371)
  br label %380

373:                                              ; preds = %355
  %374 = load i32, i32* @BUFSIZE, align 4
  %375 = sub nsw i32 %374, 1
  %376 = call i32 @dectoasc(i32* %16, i8* %23, i32 %375, i32 -1)
  %377 = load i32, i32* %7, align 4
  %378 = load i32, i32* %8, align 4
  %379 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.22, i64 0, i64 0), i32 %377, i32 %378, i8* %23)
  br label %380

380:                                              ; preds = %373, %369
  %381 = load i32**, i32*** %14, align 8
  %382 = load i32, i32* %7, align 4
  %383 = sext i32 %382 to i64
  %384 = getelementptr inbounds i32*, i32** %381, i64 %383
  %385 = load i32*, i32** %384, align 8
  %386 = load i32**, i32*** %14, align 8
  %387 = load i32, i32* %8, align 4
  %388 = sext i32 %387 to i64
  %389 = getelementptr inbounds i32*, i32** %386, i64 %388
  %390 = load i32*, i32** %389, align 8
  %391 = call i32 @decmul(i32* %385, i32* %390, i32* %17)
  store i32 %391, i32* %11, align 4
  %392 = load i32, i32* %11, align 4
  %393 = icmp ne i32 %392, 0
  br i1 %393, label %394, label %398

394:                                              ; preds = %380
  %395 = call i32 (...) @check_errno()
  %396 = load i32, i32* %11, align 4
  %397 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.20, i64 0, i64 0), i32 %396)
  br label %405

398:                                              ; preds = %380
  %399 = load i32, i32* @BUFSIZE, align 4
  %400 = sub nsw i32 %399, 1
  %401 = call i32 @dectoasc(i32* %17, i8* %23, i32 %400, i32 -1)
  %402 = load i32, i32* %7, align 4
  %403 = load i32, i32* %8, align 4
  %404 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.23, i64 0, i64 0), i32 %402, i32 %403, i8* %23)
  br label %405

405:                                              ; preds = %398, %394
  %406 = load i32**, i32*** %14, align 8
  %407 = load i32, i32* %7, align 4
  %408 = sext i32 %407 to i64
  %409 = getelementptr inbounds i32*, i32** %406, i64 %408
  %410 = load i32*, i32** %409, align 8
  %411 = load i32**, i32*** %14, align 8
  %412 = load i32, i32* %8, align 4
  %413 = sext i32 %412 to i64
  %414 = getelementptr inbounds i32*, i32** %411, i64 %413
  %415 = load i32*, i32** %414, align 8
  %416 = call i32 @decdiv(i32* %410, i32* %415, i32* %18)
  store i32 %416, i32* %11, align 4
  %417 = load i32, i32* %11, align 4
  %418 = icmp ne i32 %417, 0
  br i1 %418, label %419, label %423

419:                                              ; preds = %405
  %420 = call i32 (...) @check_errno()
  %421 = load i32, i32* %11, align 4
  %422 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.20, i64 0, i64 0), i32 %421)
  br label %430

423:                                              ; preds = %405
  %424 = load i32, i32* @BUFSIZE, align 4
  %425 = sub nsw i32 %424, 1
  %426 = call i32 @dectoasc(i32* %18, i8* %23, i32 %425, i32 -1)
  %427 = load i32, i32* %7, align 4
  %428 = load i32, i32* %8, align 4
  %429 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.24, i64 0, i64 0), i32 %427, i32 %428, i8* %23)
  br label %430

430:                                              ; preds = %423, %419
  br label %431

431:                                              ; preds = %430
  %432 = load i32, i32* %8, align 4
  %433 = add nsw i32 %432, 1
  store i32 %433, i32* %8, align 4
  br label %311

434:                                              ; preds = %311
  br label %435

435:                                              ; preds = %434
  %436 = load i32, i32* %7, align 4
  %437 = add nsw i32 %436, 1
  store i32 %437, i32* %7, align 4
  br label %306

438:                                              ; preds = %306
  store i32 0, i32* %7, align 4
  br label %439

439:                                              ; preds = %460, %438
  %440 = load i32, i32* %7, align 4
  %441 = load i32, i32* %12, align 4
  %442 = icmp slt i32 %440, %441
  br i1 %442, label %443, label %463

443:                                              ; preds = %439
  %444 = load i32**, i32*** %14, align 8
  %445 = load i32, i32* %7, align 4
  %446 = sext i32 %445 to i64
  %447 = getelementptr inbounds i32*, i32** %444, i64 %446
  %448 = load i32*, i32** %447, align 8
  %449 = load i32, i32* @BUFSIZE, align 4
  %450 = sub nsw i32 %449, 1
  %451 = call i32 @dectoasc(i32* %448, i8* %23, i32 %450, i32 -1)
  %452 = load i32, i32* %7, align 4
  %453 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.25, i64 0, i64 0), i32 %452, i8* %23)
  %454 = load i32**, i32*** %14, align 8
  %455 = load i32, i32* %7, align 4
  %456 = sext i32 %455 to i64
  %457 = getelementptr inbounds i32*, i32** %454, i64 %456
  %458 = load i32*, i32** %457, align 8
  %459 = call i32 @PGTYPESdecimal_free(i32* %458)
  br label %460

460:                                              ; preds = %443
  %461 = load i32, i32* %7, align 4
  %462 = add nsw i32 %461, 1
  store i32 %462, i32* %7, align 4
  br label %439

463:                                              ; preds = %439
  %464 = load i32**, i32*** %14, align 8
  %465 = call i32 @free(i32** %464)
  store i32 0, i32* %1, align 4
  %466 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %466)
  %467 = load i32, i32* %1, align 4
  ret i32 %467
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @calloc(i32, i32) #2

declare dso_local i32 @ECPGdebug(i32, i32) #2

declare dso_local i32* @PGTYPESdecimal_new(...) #2

declare dso_local i32 @deccvasc(i64, i32, i32*) #2

declare dso_local i32 @strlen(i64) #2

declare dso_local i32 @check_errno(...) #2

declare dso_local i32 @printf(i8*, ...) #2

declare dso_local i32 @PGTYPESdecimal_free(i32*) #2

declare dso_local i32** @realloc(i32**, i32) #2

declare dso_local i32 @dectoasc(i32*, i8*, i32, i32) #2

declare dso_local i32 @dectolong(i32*, i64*) #2

declare dso_local i32 @deccvlong(i64, i32*) #2

declare dso_local i32 @deccmp(i32*, i32*) #2

declare dso_local i32 @dectoint(i32*, i32*) #2

declare dso_local i32 @deccvint(i32, i32*) #2

declare dso_local i32 @dectodbl(i32*, double*) #2

declare dso_local i32 @print_double(double) #2

declare dso_local i32 @rsetnull(i32, i8*) #2

declare dso_local i64 @risnull(i32, i8*) #2

declare dso_local i32 @decadd(i32*, i32*, i32*) #2

declare dso_local i32 @decsub(i32*, i32*, i32*) #2

declare dso_local i32 @decmul(i32*, i32*, i32*) #2

declare dso_local i32 @decdiv(i32*, i32*, i32*) #2

declare dso_local i32 @free(i32**) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
