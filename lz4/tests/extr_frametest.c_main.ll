; ModuleID = '/home/carl/AnghaBench/lz4/tests/extr_frametest.c_main.c'
source_filename = "/home/carl/AnghaBench/lz4/tests/extr_frametest.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@nbTestsDefault = common dso_local global i32 0, align 4
@FUZ_COMPRESSIBILITY_DEFAULT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"--no-prompt\00", align 1
@no_prompt = common dso_local global i32 0, align 4
@displayLevel = common dso_local global i32 0, align 4
@use_pause = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"Starting lz4frame tester (%i-bits, %s)\0A\00", align 1
@LZ4_VERSION_STRING = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [11 x i8] c"Seed = %u\0A\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"Compressibility : %i%%\0A\00", align 1

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
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %18 = load i32, i32* @nbTestsDefault, align 4
  store i32 %18, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %19 = load i32, i32* @FUZ_COMPRESSIBILITY_DEFAULT, align 4
  store i32 %19, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %20 = load i8**, i8*** %5, align 8
  %21 = getelementptr inbounds i8*, i8** %20, i64 0
  %22 = load i8*, i8** %21, align 8
  store i8* %22, i8** %14, align 8
  store i32 1, i32* %8, align 4
  br label %23

23:                                               ; preds = %224, %2
  %24 = load i32, i32* %8, align 4
  %25 = load i32, i32* %4, align 4
  %26 = icmp slt i32 %24, %25
  br i1 %26, label %27, label %227

27:                                               ; preds = %23
  %28 = load i8**, i8*** %5, align 8
  %29 = load i32, i32* %8, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i8*, i8** %28, i64 %30
  %32 = load i8*, i8** %31, align 8
  store i8* %32, i8** %15, align 8
  %33 = load i8*, i8** %15, align 8
  %34 = icmp ne i8* %33, null
  br i1 %34, label %36, label %35

35:                                               ; preds = %27
  br label %224

36:                                               ; preds = %27
  %37 = load i8*, i8** %15, align 8
  %38 = getelementptr inbounds i8, i8* %37, i64 0
  %39 = load i8, i8* %38, align 1
  %40 = sext i8 %39 to i32
  %41 = icmp eq i32 %40, 45
  br i1 %41, label %42, label %223

42:                                               ; preds = %36
  %43 = load i8*, i8** %15, align 8
  %44 = call i32 @strcmp(i8* %43, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %47, label %46

46:                                               ; preds = %42
  store i32 1, i32* @no_prompt, align 4
  store i32 1, i32* %7, align 4
  store i32 1, i32* @displayLevel, align 4
  br label %224

47:                                               ; preds = %42
  %48 = load i8*, i8** %15, align 8
  %49 = getelementptr inbounds i8, i8* %48, i32 1
  store i8* %49, i8** %15, align 8
  br label %50

50:                                               ; preds = %221, %47
  %51 = load i8*, i8** %15, align 8
  %52 = load i8, i8* %51, align 1
  %53 = sext i8 %52 to i32
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %222

55:                                               ; preds = %50
  %56 = load i8*, i8** %15, align 8
  %57 = load i8, i8* %56, align 1
  %58 = sext i8 %57 to i32
  switch i32 %58, label %218 [
    i32 104, label %59
    i32 118, label %62
    i32 113, label %67
    i32 112, label %72
    i32 105, label %75
    i32 84, label %102
    i32 115, label %129
    i32 116, label %156
    i32 80, label %183
  ]

59:                                               ; preds = %55
  %60 = load i8*, i8** %14, align 8
  %61 = call i32 @FUZ_usage(i8* %60)
  store i32 %61, i32* %3, align 4
  br label %273

62:                                               ; preds = %55
  %63 = load i8*, i8** %15, align 8
  %64 = getelementptr inbounds i8, i8* %63, i32 1
  store i8* %64, i8** %15, align 8
  %65 = load i32, i32* @displayLevel, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* @displayLevel, align 4
  br label %221

67:                                               ; preds = %55
  %68 = load i8*, i8** %15, align 8
  %69 = getelementptr inbounds i8, i8* %68, i32 1
  store i8* %69, i8** %15, align 8
  %70 = load i32, i32* @displayLevel, align 4
  %71 = add nsw i32 %70, -1
  store i32 %71, i32* @displayLevel, align 4
  br label %221

72:                                               ; preds = %55
  %73 = load i8*, i8** %15, align 8
  %74 = getelementptr inbounds i8, i8* %73, i32 1
  store i8* %74, i8** %15, align 8
  store i32 1, i32* @use_pause, align 4
  br label %221

75:                                               ; preds = %55
  %76 = load i8*, i8** %15, align 8
  %77 = getelementptr inbounds i8, i8* %76, i32 1
  store i8* %77, i8** %15, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %13, align 4
  br label %78

78:                                               ; preds = %90, %75
  %79 = load i8*, i8** %15, align 8
  %80 = load i8, i8* %79, align 1
  %81 = sext i8 %80 to i32
  %82 = icmp sge i32 %81, 48
  br i1 %82, label %83, label %88

83:                                               ; preds = %78
  %84 = load i8*, i8** %15, align 8
  %85 = load i8, i8* %84, align 1
  %86 = sext i8 %85 to i32
  %87 = icmp sle i32 %86, 57
  br label %88

88:                                               ; preds = %83, %78
  %89 = phi i1 [ false, %78 ], [ %87, %83 ]
  br i1 %89, label %90, label %101

90:                                               ; preds = %88
  %91 = load i32, i32* %9, align 4
  %92 = mul i32 %91, 10
  store i32 %92, i32* %9, align 4
  %93 = load i8*, i8** %15, align 8
  %94 = load i8, i8* %93, align 1
  %95 = sext i8 %94 to i32
  %96 = sub nsw i32 %95, 48
  %97 = load i32, i32* %9, align 4
  %98 = add i32 %97, %96
  store i32 %98, i32* %9, align 4
  %99 = load i8*, i8** %15, align 8
  %100 = getelementptr inbounds i8, i8* %99, i32 1
  store i8* %100, i8** %15, align 8
  br label %78

101:                                              ; preds = %88
  br label %221

102:                                              ; preds = %55
  %103 = load i8*, i8** %15, align 8
  %104 = getelementptr inbounds i8, i8* %103, i32 1
  store i8* %104, i8** %15, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %13, align 4
  br label %105

105:                                              ; preds = %117, %114, %109, %102
  %106 = load i8*, i8** %15, align 8
  %107 = load i8, i8* %106, align 1
  %108 = sext i8 %107 to i32
  switch i32 %108, label %127 [
    i32 109, label %109
    i32 115, label %114
    i32 110, label %114
    i32 48, label %117
    i32 49, label %117
    i32 50, label %117
    i32 51, label %117
    i32 52, label %117
    i32 53, label %117
    i32 54, label %117
    i32 55, label %117
    i32 56, label %117
    i32 57, label %117
  ]

109:                                              ; preds = %105
  %110 = load i32, i32* %13, align 4
  %111 = mul nsw i32 %110, 60
  store i32 %111, i32* %13, align 4
  %112 = load i8*, i8** %15, align 8
  %113 = getelementptr inbounds i8, i8* %112, i32 1
  store i8* %113, i8** %15, align 8
  br label %105

114:                                              ; preds = %105, %105
  %115 = load i8*, i8** %15, align 8
  %116 = getelementptr inbounds i8, i8* %115, i32 1
  store i8* %116, i8** %15, align 8
  br label %105

117:                                              ; preds = %105, %105, %105, %105, %105, %105, %105, %105, %105, %105
  %118 = load i32, i32* %13, align 4
  %119 = mul nsw i32 %118, 10
  store i32 %119, i32* %13, align 4
  %120 = load i8*, i8** %15, align 8
  %121 = getelementptr inbounds i8, i8* %120, i32 1
  store i8* %121, i8** %15, align 8
  %122 = load i8, i8* %120, align 1
  %123 = sext i8 %122 to i32
  %124 = sub nsw i32 %123, 48
  %125 = load i32, i32* %13, align 4
  %126 = add nsw i32 %125, %124
  store i32 %126, i32* %13, align 4
  br label %105

127:                                              ; preds = %105
  br label %128

128:                                              ; preds = %127
  br label %221

129:                                              ; preds = %55
  %130 = load i8*, i8** %15, align 8
  %131 = getelementptr inbounds i8, i8* %130, i32 1
  store i8* %131, i8** %15, align 8
  store i32 0, i32* %6, align 4
  store i32 1, i32* %7, align 4
  br label %132

132:                                              ; preds = %144, %129
  %133 = load i8*, i8** %15, align 8
  %134 = load i8, i8* %133, align 1
  %135 = sext i8 %134 to i32
  %136 = icmp sge i32 %135, 48
  br i1 %136, label %137, label %142

137:                                              ; preds = %132
  %138 = load i8*, i8** %15, align 8
  %139 = load i8, i8* %138, align 1
  %140 = sext i8 %139 to i32
  %141 = icmp sle i32 %140, 57
  br label %142

142:                                              ; preds = %137, %132
  %143 = phi i1 [ false, %132 ], [ %141, %137 ]
  br i1 %143, label %144, label %155

144:                                              ; preds = %142
  %145 = load i32, i32* %6, align 4
  %146 = mul nsw i32 %145, 10
  store i32 %146, i32* %6, align 4
  %147 = load i8*, i8** %15, align 8
  %148 = load i8, i8* %147, align 1
  %149 = sext i8 %148 to i32
  %150 = sub nsw i32 %149, 48
  %151 = load i32, i32* %6, align 4
  %152 = add nsw i32 %151, %150
  store i32 %152, i32* %6, align 4
  %153 = load i8*, i8** %15, align 8
  %154 = getelementptr inbounds i8, i8* %153, i32 1
  store i8* %154, i8** %15, align 8
  br label %132

155:                                              ; preds = %142
  br label %221

156:                                              ; preds = %55
  %157 = load i8*, i8** %15, align 8
  %158 = getelementptr inbounds i8, i8* %157, i32 1
  store i8* %158, i8** %15, align 8
  store i32 0, i32* %10, align 4
  br label %159

159:                                              ; preds = %171, %156
  %160 = load i8*, i8** %15, align 8
  %161 = load i8, i8* %160, align 1
  %162 = sext i8 %161 to i32
  %163 = icmp sge i32 %162, 48
  br i1 %163, label %164, label %169

164:                                              ; preds = %159
  %165 = load i8*, i8** %15, align 8
  %166 = load i8, i8* %165, align 1
  %167 = sext i8 %166 to i32
  %168 = icmp sle i32 %167, 57
  br label %169

169:                                              ; preds = %164, %159
  %170 = phi i1 [ false, %159 ], [ %168, %164 ]
  br i1 %170, label %171, label %182

171:                                              ; preds = %169
  %172 = load i32, i32* %10, align 4
  %173 = mul i32 %172, 10
  store i32 %173, i32* %10, align 4
  %174 = load i8*, i8** %15, align 8
  %175 = load i8, i8* %174, align 1
  %176 = sext i8 %175 to i32
  %177 = sub nsw i32 %176, 48
  %178 = load i32, i32* %10, align 4
  %179 = add i32 %178, %177
  store i32 %179, i32* %10, align 4
  %180 = load i8*, i8** %15, align 8
  %181 = getelementptr inbounds i8, i8* %180, i32 1
  store i8* %181, i8** %15, align 8
  br label %159

182:                                              ; preds = %169
  br label %221

183:                                              ; preds = %55
  %184 = load i8*, i8** %15, align 8
  %185 = getelementptr inbounds i8, i8* %184, i32 1
  store i8* %185, i8** %15, align 8
  store i32 0, i32* %11, align 4
  br label %186

186:                                              ; preds = %198, %183
  %187 = load i8*, i8** %15, align 8
  %188 = load i8, i8* %187, align 1
  %189 = sext i8 %188 to i32
  %190 = icmp sge i32 %189, 48
  br i1 %190, label %191, label %196

191:                                              ; preds = %186
  %192 = load i8*, i8** %15, align 8
  %193 = load i8, i8* %192, align 1
  %194 = sext i8 %193 to i32
  %195 = icmp sle i32 %194, 57
  br label %196

196:                                              ; preds = %191, %186
  %197 = phi i1 [ false, %186 ], [ %195, %191 ]
  br i1 %197, label %198, label %209

198:                                              ; preds = %196
  %199 = load i32, i32* %11, align 4
  %200 = mul nsw i32 %199, 10
  store i32 %200, i32* %11, align 4
  %201 = load i8*, i8** %15, align 8
  %202 = load i8, i8* %201, align 1
  %203 = sext i8 %202 to i32
  %204 = sub nsw i32 %203, 48
  %205 = load i32, i32* %11, align 4
  %206 = add nsw i32 %205, %204
  store i32 %206, i32* %11, align 4
  %207 = load i8*, i8** %15, align 8
  %208 = getelementptr inbounds i8, i8* %207, i32 1
  store i8* %208, i8** %15, align 8
  br label %186

209:                                              ; preds = %196
  %210 = load i32, i32* %11, align 4
  %211 = icmp slt i32 %210, 0
  br i1 %211, label %212, label %213

212:                                              ; preds = %209
  store i32 0, i32* %11, align 4
  br label %213

213:                                              ; preds = %212, %209
  %214 = load i32, i32* %11, align 4
  %215 = icmp sgt i32 %214, 100
  br i1 %215, label %216, label %217

216:                                              ; preds = %213
  store i32 100, i32* %11, align 4
  br label %217

217:                                              ; preds = %216, %213
  br label %221

218:                                              ; preds = %55
  %219 = load i8*, i8** %14, align 8
  %220 = call i32 @FUZ_usage(i8* %219)
  store i32 %220, i32* %3, align 4
  br label %273

221:                                              ; preds = %217, %182, %155, %128, %101, %72, %67, %62
  br label %50

222:                                              ; preds = %50
  br label %223

223:                                              ; preds = %222, %36
  br label %224

224:                                              ; preds = %223, %46, %35
  %225 = load i32, i32* %8, align 4
  %226 = add nsw i32 %225, 1
  store i32 %226, i32* %8, align 4
  br label %23

227:                                              ; preds = %23
  %228 = load i32, i32* @LZ4_VERSION_STRING, align 4
  %229 = call i32 (i8*, i32, ...) @DISPLAY(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i32 64, i32 %228)
  %230 = load i32, i32* %7, align 4
  %231 = icmp ne i32 %230, 0
  br i1 %231, label %237, label %232

232:                                              ; preds = %227
  %233 = call i32 @time(i32* null)
  store i32 %233, i32* %16, align 4
  %234 = call i32 @XXH32(i32* %16, i32 4, i32 1)
  store i32 %234, i32* %17, align 4
  %235 = load i32, i32* %17, align 4
  %236 = srem i32 %235, 10000
  store i32 %236, i32* %6, align 4
  br label %237

237:                                              ; preds = %232, %227
  %238 = load i32, i32* %6, align 4
  %239 = call i32 (i8*, i32, ...) @DISPLAY(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i32 %238)
  %240 = load i32, i32* %11, align 4
  %241 = load i32, i32* @FUZ_COMPRESSIBILITY_DEFAULT, align 4
  %242 = icmp ne i32 %240, %241
  br i1 %242, label %243, label %246

243:                                              ; preds = %237
  %244 = load i32, i32* %11, align 4
  %245 = call i32 (i8*, i32, ...) @DISPLAY(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0), i32 %244)
  br label %246

246:                                              ; preds = %243, %237
  %247 = load i32, i32* %9, align 4
  %248 = icmp eq i32 %247, 0
  %249 = zext i1 %248 to i32
  %250 = load i32, i32* %9, align 4
  %251 = add i32 %250, %249
  store i32 %251, i32* %9, align 4
  %252 = load i32, i32* %10, align 4
  %253 = icmp eq i32 %252, 0
  br i1 %253, label %254, label %260

254:                                              ; preds = %246
  %255 = load i32, i32* %6, align 4
  %256 = load i32, i32* %11, align 4
  %257 = sitofp i32 %256 to double
  %258 = fdiv double %257, 1.000000e+02
  %259 = call i32 @basicTests(i32 %255, double %258)
  store i32 %259, i32* %12, align 4
  br label %260

260:                                              ; preds = %254, %246
  %261 = load i32, i32* %12, align 4
  %262 = icmp ne i32 %261, 0
  br i1 %262, label %263, label %264

263:                                              ; preds = %260
  store i32 1, i32* %3, align 4
  br label %273

264:                                              ; preds = %260
  %265 = load i32, i32* %6, align 4
  %266 = load i32, i32* %9, align 4
  %267 = load i32, i32* %10, align 4
  %268 = load i32, i32* %11, align 4
  %269 = sitofp i32 %268 to double
  %270 = fdiv double %269, 1.000000e+02
  %271 = load i32, i32* %13, align 4
  %272 = call i32 @fuzzerTests(i32 %265, i32 %266, i32 %267, double %270, i32 %271)
  store i32 %272, i32* %3, align 4
  br label %273

273:                                              ; preds = %264, %263, %218, %59
  %274 = load i32, i32* %3, align 4
  ret i32 %274
}

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @FUZ_usage(i8*) #1

declare dso_local i32 @DISPLAY(i8*, i32, ...) #1

declare dso_local i32 @time(i32*) #1

declare dso_local i32 @XXH32(i32*, i32, i32) #1

declare dso_local i32 @basicTests(i32, double) #1

declare dso_local i32 @fuzzerTests(i32, i32, i32, double, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
