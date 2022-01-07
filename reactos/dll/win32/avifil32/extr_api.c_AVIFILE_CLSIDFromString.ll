; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/avifil32/extr_api.c_AVIFILE_CLSIDFromString.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/avifil32/extr_api.c_AVIFILE_CLSIDFromString.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@S_OK = common dso_local global i32 0, align 4
@CO_E_CLASSSTRING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"%s -> %p\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i32*)* @AVIFILE_CLSIDFromString to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @AVIFILE_CLSIDFromString(i64 %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca [256 x i32], align 16
  store i64 %0, i64* %4, align 8
  store i32* %1, i32** %5, align 8
  %10 = load i64, i64* %4, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %16, label %12

12:                                               ; preds = %2
  %13 = load i32*, i32** %5, align 8
  %14 = call i32 @memset(i32* %13, i32 0, i32 4)
  %15 = load i32, i32* @S_OK, align 4
  store i32 %15, i32* %3, align 4
  br label %312

16:                                               ; preds = %2
  %17 = load i64, i64* %4, align 8
  %18 = call i32 @lstrlenA(i64 %17)
  %19 = icmp ne i32 %18, 38
  br i1 %19, label %20, label %22

20:                                               ; preds = %16
  %21 = load i32, i32* @CO_E_CLASSSTRING, align 4
  store i32 %21, i32* %3, align 4
  br label %312

22:                                               ; preds = %16
  %23 = load i64, i64* %4, align 8
  %24 = inttoptr i64 %23 to i32*
  store i32* %24, i32** %6, align 8
  %25 = load i32*, i32** %6, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 0
  %27 = load i32, i32* %26, align 4
  %28 = icmp ne i32 %27, 123
  br i1 %28, label %54, label %29

29:                                               ; preds = %22
  %30 = load i32*, i32** %6, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 9
  %32 = load i32, i32* %31, align 4
  %33 = icmp ne i32 %32, 45
  br i1 %33, label %54, label %34

34:                                               ; preds = %29
  %35 = load i32*, i32** %6, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 14
  %37 = load i32, i32* %36, align 4
  %38 = icmp ne i32 %37, 45
  br i1 %38, label %54, label %39

39:                                               ; preds = %34
  %40 = load i32*, i32** %6, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 19
  %42 = load i32, i32* %41, align 4
  %43 = icmp ne i32 %42, 45
  br i1 %43, label %54, label %44

44:                                               ; preds = %39
  %45 = load i32*, i32** %6, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 24
  %47 = load i32, i32* %46, align 4
  %48 = icmp ne i32 %47, 45
  br i1 %48, label %54, label %49

49:                                               ; preds = %44
  %50 = load i32*, i32** %6, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 37
  %52 = load i32, i32* %51, align 4
  %53 = icmp ne i32 %52, 125
  br i1 %53, label %54, label %56

54:                                               ; preds = %49, %44, %39, %34, %29, %22
  %55 = load i32, i32* @CO_E_CLASSSTRING, align 4
  store i32 %55, i32* %3, align 4
  br label %312

56:                                               ; preds = %49
  store i32 1, i32* %8, align 4
  br label %57

57:                                               ; preds = %118, %56
  %58 = load i32, i32* %8, align 4
  %59 = icmp slt i32 %58, 37
  br i1 %59, label %60, label %121

60:                                               ; preds = %57
  %61 = load i32, i32* %8, align 4
  %62 = icmp eq i32 %61, 9
  br i1 %62, label %72, label %63

63:                                               ; preds = %60
  %64 = load i32, i32* %8, align 4
  %65 = icmp eq i32 %64, 14
  br i1 %65, label %72, label %66

66:                                               ; preds = %63
  %67 = load i32, i32* %8, align 4
  %68 = icmp eq i32 %67, 19
  br i1 %68, label %72, label %69

69:                                               ; preds = %66
  %70 = load i32, i32* %8, align 4
  %71 = icmp eq i32 %70, 24
  br i1 %71, label %72, label %73

72:                                               ; preds = %69, %66, %63, %60
  br label %118

73:                                               ; preds = %69
  %74 = load i32*, i32** %6, align 8
  %75 = load i32, i32* %8, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i32, i32* %74, i64 %76
  %78 = load i32, i32* %77, align 4
  %79 = icmp sge i32 %78, 48
  br i1 %79, label %80, label %87

80:                                               ; preds = %73
  %81 = load i32*, i32** %6, align 8
  %82 = load i32, i32* %8, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i32, i32* %81, i64 %83
  %85 = load i32, i32* %84, align 4
  %86 = icmp sle i32 %85, 57
  br i1 %86, label %117, label %87

87:                                               ; preds = %80, %73
  %88 = load i32*, i32** %6, align 8
  %89 = load i32, i32* %8, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i32, i32* %88, i64 %90
  %92 = load i32, i32* %91, align 4
  %93 = icmp sge i32 %92, 97
  br i1 %93, label %94, label %101

94:                                               ; preds = %87
  %95 = load i32*, i32** %6, align 8
  %96 = load i32, i32* %8, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i32, i32* %95, i64 %97
  %99 = load i32, i32* %98, align 4
  %100 = icmp sle i32 %99, 102
  br i1 %100, label %117, label %101

101:                                              ; preds = %94, %87
  %102 = load i32*, i32** %6, align 8
  %103 = load i32, i32* %8, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i32, i32* %102, i64 %104
  %106 = load i32, i32* %105, align 4
  %107 = icmp sge i32 %106, 65
  br i1 %107, label %108, label %115

108:                                              ; preds = %101
  %109 = load i32*, i32** %6, align 8
  %110 = load i32, i32* %8, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i32, i32* %109, i64 %111
  %113 = load i32, i32* %112, align 4
  %114 = icmp sle i32 %113, 70
  br i1 %114, label %117, label %115

115:                                              ; preds = %108, %101
  %116 = load i32, i32* @CO_E_CLASSSTRING, align 4
  store i32 %116, i32* %3, align 4
  br label %312

117:                                              ; preds = %108, %94, %80
  br label %118

118:                                              ; preds = %117, %72
  %119 = load i32, i32* %8, align 4
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %8, align 4
  br label %57

121:                                              ; preds = %57
  %122 = load i32*, i32** %6, align 8
  %123 = load i32*, i32** %5, align 8
  %124 = call i32 @TRACE(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32* %122, i32* %123)
  %125 = getelementptr inbounds [256 x i32], [256 x i32]* %9, i64 0, i64 0
  %126 = call i32 @memset(i32* %125, i32 0, i32 256)
  store i32 0, i32* %8, align 4
  br label %127

127:                                              ; preds = %136, %121
  %128 = load i32, i32* %8, align 4
  %129 = icmp slt i32 %128, 10
  br i1 %129, label %130, label %139

130:                                              ; preds = %127
  %131 = load i32, i32* %8, align 4
  %132 = load i32, i32* %8, align 4
  %133 = add nsw i32 48, %132
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds [256 x i32], [256 x i32]* %9, i64 0, i64 %134
  store i32 %131, i32* %135, align 4
  br label %136

136:                                              ; preds = %130
  %137 = load i32, i32* %8, align 4
  %138 = add nsw i32 %137, 1
  store i32 %138, i32* %8, align 4
  br label %127

139:                                              ; preds = %127
  store i32 0, i32* %8, align 4
  br label %140

140:                                              ; preds = %156, %139
  %141 = load i32, i32* %8, align 4
  %142 = icmp slt i32 %141, 6
  br i1 %142, label %143, label %159

143:                                              ; preds = %140
  %144 = load i32, i32* %8, align 4
  %145 = add nsw i32 %144, 10
  %146 = load i32, i32* %8, align 4
  %147 = add nsw i32 65, %146
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds [256 x i32], [256 x i32]* %9, i64 0, i64 %148
  store i32 %145, i32* %149, align 4
  %150 = load i32, i32* %8, align 4
  %151 = add nsw i32 %150, 10
  %152 = load i32, i32* %8, align 4
  %153 = add nsw i32 97, %152
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds [256 x i32], [256 x i32]* %9, i64 0, i64 %154
  store i32 %151, i32* %155, align 4
  br label %156

156:                                              ; preds = %143
  %157 = load i32, i32* %8, align 4
  %158 = add nsw i32 %157, 1
  store i32 %158, i32* %8, align 4
  br label %140

159:                                              ; preds = %140
  %160 = load i32*, i32** %5, align 8
  store i32* %160, i32** %7, align 8
  %161 = load i32*, i32** %6, align 8
  %162 = getelementptr inbounds i32, i32* %161, i32 1
  store i32* %162, i32** %6, align 8
  store i32 0, i32* %8, align 4
  br label %163

163:                                              ; preds = %187, %159
  %164 = load i32, i32* %8, align 4
  %165 = icmp slt i32 %164, 4
  br i1 %165, label %166, label %190

166:                                              ; preds = %163
  %167 = load i32*, i32** %6, align 8
  %168 = load i32, i32* %167, align 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds [256 x i32], [256 x i32]* %9, i64 0, i64 %169
  %171 = load i32, i32* %170, align 4
  %172 = shl i32 %171, 4
  %173 = load i32*, i32** %6, align 8
  %174 = getelementptr inbounds i32, i32* %173, i64 1
  %175 = load i32, i32* %174, align 4
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds [256 x i32], [256 x i32]* %9, i64 0, i64 %176
  %178 = load i32, i32* %177, align 4
  %179 = or i32 %172, %178
  %180 = load i32*, i32** %7, align 8
  %181 = load i32, i32* %8, align 4
  %182 = sub nsw i32 3, %181
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds i32, i32* %180, i64 %183
  store i32 %179, i32* %184, align 4
  %185 = load i32*, i32** %6, align 8
  %186 = getelementptr inbounds i32, i32* %185, i64 2
  store i32* %186, i32** %6, align 8
  br label %187

187:                                              ; preds = %166
  %188 = load i32, i32* %8, align 4
  %189 = add nsw i32 %188, 1
  store i32 %189, i32* %8, align 4
  br label %163

190:                                              ; preds = %163
  %191 = load i32*, i32** %7, align 8
  %192 = getelementptr inbounds i32, i32* %191, i64 4
  store i32* %192, i32** %7, align 8
  %193 = load i32*, i32** %6, align 8
  %194 = getelementptr inbounds i32, i32* %193, i32 1
  store i32* %194, i32** %6, align 8
  store i32 0, i32* %8, align 4
  br label %195

195:                                              ; preds = %219, %190
  %196 = load i32, i32* %8, align 4
  %197 = icmp slt i32 %196, 2
  br i1 %197, label %198, label %222

198:                                              ; preds = %195
  %199 = load i32*, i32** %6, align 8
  %200 = load i32, i32* %199, align 4
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds [256 x i32], [256 x i32]* %9, i64 0, i64 %201
  %203 = load i32, i32* %202, align 4
  %204 = shl i32 %203, 4
  %205 = load i32*, i32** %6, align 8
  %206 = getelementptr inbounds i32, i32* %205, i64 1
  %207 = load i32, i32* %206, align 4
  %208 = sext i32 %207 to i64
  %209 = getelementptr inbounds [256 x i32], [256 x i32]* %9, i64 0, i64 %208
  %210 = load i32, i32* %209, align 4
  %211 = or i32 %204, %210
  %212 = load i32*, i32** %7, align 8
  %213 = load i32, i32* %8, align 4
  %214 = sub nsw i32 1, %213
  %215 = sext i32 %214 to i64
  %216 = getelementptr inbounds i32, i32* %212, i64 %215
  store i32 %211, i32* %216, align 4
  %217 = load i32*, i32** %6, align 8
  %218 = getelementptr inbounds i32, i32* %217, i64 2
  store i32* %218, i32** %6, align 8
  br label %219

219:                                              ; preds = %198
  %220 = load i32, i32* %8, align 4
  %221 = add nsw i32 %220, 1
  store i32 %221, i32* %8, align 4
  br label %195

222:                                              ; preds = %195
  %223 = load i32*, i32** %7, align 8
  %224 = getelementptr inbounds i32, i32* %223, i64 2
  store i32* %224, i32** %7, align 8
  %225 = load i32*, i32** %6, align 8
  %226 = getelementptr inbounds i32, i32* %225, i32 1
  store i32* %226, i32** %6, align 8
  store i32 0, i32* %8, align 4
  br label %227

227:                                              ; preds = %251, %222
  %228 = load i32, i32* %8, align 4
  %229 = icmp slt i32 %228, 2
  br i1 %229, label %230, label %254

230:                                              ; preds = %227
  %231 = load i32*, i32** %6, align 8
  %232 = load i32, i32* %231, align 4
  %233 = sext i32 %232 to i64
  %234 = getelementptr inbounds [256 x i32], [256 x i32]* %9, i64 0, i64 %233
  %235 = load i32, i32* %234, align 4
  %236 = shl i32 %235, 4
  %237 = load i32*, i32** %6, align 8
  %238 = getelementptr inbounds i32, i32* %237, i64 1
  %239 = load i32, i32* %238, align 4
  %240 = sext i32 %239 to i64
  %241 = getelementptr inbounds [256 x i32], [256 x i32]* %9, i64 0, i64 %240
  %242 = load i32, i32* %241, align 4
  %243 = or i32 %236, %242
  %244 = load i32*, i32** %7, align 8
  %245 = load i32, i32* %8, align 4
  %246 = sub nsw i32 1, %245
  %247 = sext i32 %246 to i64
  %248 = getelementptr inbounds i32, i32* %244, i64 %247
  store i32 %243, i32* %248, align 4
  %249 = load i32*, i32** %6, align 8
  %250 = getelementptr inbounds i32, i32* %249, i64 2
  store i32* %250, i32** %6, align 8
  br label %251

251:                                              ; preds = %230
  %252 = load i32, i32* %8, align 4
  %253 = add nsw i32 %252, 1
  store i32 %253, i32* %8, align 4
  br label %227

254:                                              ; preds = %227
  %255 = load i32*, i32** %7, align 8
  %256 = getelementptr inbounds i32, i32* %255, i64 2
  store i32* %256, i32** %7, align 8
  %257 = load i32*, i32** %6, align 8
  %258 = getelementptr inbounds i32, i32* %257, i32 1
  store i32* %258, i32** %6, align 8
  store i32 0, i32* %8, align 4
  br label %259

259:                                              ; preds = %280, %254
  %260 = load i32, i32* %8, align 4
  %261 = icmp slt i32 %260, 2
  br i1 %261, label %262, label %283

262:                                              ; preds = %259
  %263 = load i32*, i32** %6, align 8
  %264 = load i32, i32* %263, align 4
  %265 = sext i32 %264 to i64
  %266 = getelementptr inbounds [256 x i32], [256 x i32]* %9, i64 0, i64 %265
  %267 = load i32, i32* %266, align 4
  %268 = shl i32 %267, 4
  %269 = load i32*, i32** %6, align 8
  %270 = getelementptr inbounds i32, i32* %269, i64 1
  %271 = load i32, i32* %270, align 4
  %272 = sext i32 %271 to i64
  %273 = getelementptr inbounds [256 x i32], [256 x i32]* %9, i64 0, i64 %272
  %274 = load i32, i32* %273, align 4
  %275 = or i32 %268, %274
  %276 = load i32*, i32** %7, align 8
  %277 = getelementptr inbounds i32, i32* %276, i32 1
  store i32* %277, i32** %7, align 8
  store i32 %275, i32* %276, align 4
  %278 = load i32*, i32** %6, align 8
  %279 = getelementptr inbounds i32, i32* %278, i64 2
  store i32* %279, i32** %6, align 8
  br label %280

280:                                              ; preds = %262
  %281 = load i32, i32* %8, align 4
  %282 = add nsw i32 %281, 1
  store i32 %282, i32* %8, align 4
  br label %259

283:                                              ; preds = %259
  %284 = load i32*, i32** %6, align 8
  %285 = getelementptr inbounds i32, i32* %284, i32 1
  store i32* %285, i32** %6, align 8
  store i32 0, i32* %8, align 4
  br label %286

286:                                              ; preds = %307, %283
  %287 = load i32, i32* %8, align 4
  %288 = icmp slt i32 %287, 6
  br i1 %288, label %289, label %310

289:                                              ; preds = %286
  %290 = load i32*, i32** %6, align 8
  %291 = load i32, i32* %290, align 4
  %292 = sext i32 %291 to i64
  %293 = getelementptr inbounds [256 x i32], [256 x i32]* %9, i64 0, i64 %292
  %294 = load i32, i32* %293, align 4
  %295 = shl i32 %294, 4
  %296 = load i32*, i32** %6, align 8
  %297 = getelementptr inbounds i32, i32* %296, i64 1
  %298 = load i32, i32* %297, align 4
  %299 = sext i32 %298 to i64
  %300 = getelementptr inbounds [256 x i32], [256 x i32]* %9, i64 0, i64 %299
  %301 = load i32, i32* %300, align 4
  %302 = or i32 %295, %301
  %303 = load i32*, i32** %7, align 8
  %304 = getelementptr inbounds i32, i32* %303, i32 1
  store i32* %304, i32** %7, align 8
  store i32 %302, i32* %303, align 4
  %305 = load i32*, i32** %6, align 8
  %306 = getelementptr inbounds i32, i32* %305, i64 2
  store i32* %306, i32** %6, align 8
  br label %307

307:                                              ; preds = %289
  %308 = load i32, i32* %8, align 4
  %309 = add nsw i32 %308, 1
  store i32 %309, i32* %8, align 4
  br label %286

310:                                              ; preds = %286
  %311 = load i32, i32* @S_OK, align 4
  store i32 %311, i32* %3, align 4
  br label %312

312:                                              ; preds = %310, %115, %54, %20, %12
  %313 = load i32, i32* %3, align 4
  ret i32 %313
}

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @lstrlenA(i64) #1

declare dso_local i32 @TRACE(i8*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
