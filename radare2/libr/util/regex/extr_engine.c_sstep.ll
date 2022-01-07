; ModuleID = '/home/carl/AnghaBench/radare2/libr/util/regex/extr_engine.c_sstep.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/util/regex/extr_engine.c_sstep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.re_guts = type { i32*, i32* }

@BOL = common dso_local global i32 0, align 4
@BOLEOL = common dso_local global i32 0, align 4
@EOL = common dso_local global i32 0, align 4
@BOW = common dso_local global i32 0, align 4
@EOW = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"ops in regex.c\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.re_guts*, i64, i64, i32, i32, i32)* @step to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @step(%struct.re_guts* %0, i64 %1, i64 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.re_guts*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  store %struct.re_guts* %0, %struct.re_guts** %7, align 8
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %19 = load i64, i64* %8, align 8
  store i64 %19, i64* %15, align 8
  %20 = load i32, i32* %16, align 4
  %21 = load i64, i64* %15, align 8
  %22 = call i32 @INIT(i32 %20, i64 %21)
  br label %23

23:                                               ; preds = %295, %6
  %24 = load i64, i64* %15, align 8
  %25 = load i64, i64* %9, align 8
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %27, label %300

27:                                               ; preds = %23
  %28 = load %struct.re_guts*, %struct.re_guts** %7, align 8
  %29 = getelementptr inbounds %struct.re_guts, %struct.re_guts* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = load i64, i64* %15, align 8
  %32 = getelementptr inbounds i32, i32* %30, i64 %31
  %33 = load i32, i32* %32, align 4
  store i32 %33, i32* %14, align 4
  %34 = load i32, i32* %14, align 4
  %35 = call i32 @OP(i32 %34)
  switch i32 %35, label %292 [
    i32 140, label %36
    i32 142, label %37
    i32 144, label %61
    i32 139, label %74
    i32 143, label %87
    i32 138, label %96
    i32 147, label %105
    i32 146, label %114
    i32 145, label %135
    i32 131, label %135
    i32 134, label %139
    i32 129, label %143
    i32 133, label %175
    i32 128, label %184
    i32 137, label %188
    i32 132, label %188
    i32 141, label %192
    i32 136, label %215
    i32 135, label %251
    i32 130, label %288
  ]

36:                                               ; preds = %27
  br label %294

37:                                               ; preds = %27
  %38 = load i32, i32* %11, align 4
  %39 = call i32 @NONCHAR(i32 %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %48

41:                                               ; preds = %37
  %42 = load i32, i32* %11, align 4
  %43 = load i32, i32* %14, align 4
  %44 = call i32 @OPND(i32 %43)
  %45 = trunc i32 %44 to i8
  %46 = sext i8 %45 to i32
  %47 = icmp ne i32 %42, %46
  br i1 %47, label %48, label %60

48:                                               ; preds = %41, %37
  %49 = load i32, i32* %11, align 4
  %50 = load i32, i32* %14, align 4
  %51 = call i32 @OPND(i32 %50)
  %52 = trunc i32 %51 to i8
  %53 = sext i8 %52 to i32
  %54 = icmp eq i32 %49, %53
  br i1 %54, label %55, label %59

55:                                               ; preds = %48
  %56 = load i32, i32* %12, align 4
  %57 = load i32, i32* %10, align 4
  %58 = call i32 @FWD(i32 %56, i32 %57, i32 1)
  br label %59

59:                                               ; preds = %55, %48
  br label %60

60:                                               ; preds = %59, %41
  br label %294

61:                                               ; preds = %27
  %62 = load i32, i32* %11, align 4
  %63 = load i32, i32* @BOL, align 4
  %64 = icmp eq i32 %62, %63
  br i1 %64, label %69, label %65

65:                                               ; preds = %61
  %66 = load i32, i32* %11, align 4
  %67 = load i32, i32* @BOLEOL, align 4
  %68 = icmp eq i32 %66, %67
  br i1 %68, label %69, label %73

69:                                               ; preds = %65, %61
  %70 = load i32, i32* %12, align 4
  %71 = load i32, i32* %10, align 4
  %72 = call i32 @FWD(i32 %70, i32 %71, i32 1)
  br label %73

73:                                               ; preds = %69, %65
  br label %294

74:                                               ; preds = %27
  %75 = load i32, i32* %11, align 4
  %76 = load i32, i32* @EOL, align 4
  %77 = icmp eq i32 %75, %76
  br i1 %77, label %82, label %78

78:                                               ; preds = %74
  %79 = load i32, i32* %11, align 4
  %80 = load i32, i32* @BOLEOL, align 4
  %81 = icmp eq i32 %79, %80
  br i1 %81, label %82, label %86

82:                                               ; preds = %78, %74
  %83 = load i32, i32* %12, align 4
  %84 = load i32, i32* %10, align 4
  %85 = call i32 @FWD(i32 %83, i32 %84, i32 1)
  br label %86

86:                                               ; preds = %82, %78
  br label %294

87:                                               ; preds = %27
  %88 = load i32, i32* %11, align 4
  %89 = load i32, i32* @BOW, align 4
  %90 = icmp eq i32 %88, %89
  br i1 %90, label %91, label %95

91:                                               ; preds = %87
  %92 = load i32, i32* %12, align 4
  %93 = load i32, i32* %10, align 4
  %94 = call i32 @FWD(i32 %92, i32 %93, i32 1)
  br label %95

95:                                               ; preds = %91, %87
  br label %294

96:                                               ; preds = %27
  %97 = load i32, i32* %11, align 4
  %98 = load i32, i32* @EOW, align 4
  %99 = icmp eq i32 %97, %98
  br i1 %99, label %100, label %104

100:                                              ; preds = %96
  %101 = load i32, i32* %12, align 4
  %102 = load i32, i32* %10, align 4
  %103 = call i32 @FWD(i32 %101, i32 %102, i32 1)
  br label %104

104:                                              ; preds = %100, %96
  br label %294

105:                                              ; preds = %27
  %106 = load i32, i32* %11, align 4
  %107 = call i32 @NONCHAR(i32 %106)
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %113, label %109

109:                                              ; preds = %105
  %110 = load i32, i32* %12, align 4
  %111 = load i32, i32* %10, align 4
  %112 = call i32 @FWD(i32 %110, i32 %111, i32 1)
  br label %113

113:                                              ; preds = %109, %105
  br label %294

114:                                              ; preds = %27
  %115 = load %struct.re_guts*, %struct.re_guts** %7, align 8
  %116 = getelementptr inbounds %struct.re_guts, %struct.re_guts* %115, i32 0, i32 1
  %117 = load i32*, i32** %116, align 8
  %118 = load i32, i32* %14, align 4
  %119 = call i32 @OPND(i32 %118)
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds i32, i32* %117, i64 %120
  store i32* %121, i32** %13, align 8
  %122 = load i32, i32* %11, align 4
  %123 = call i32 @NONCHAR(i32 %122)
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %134, label %125

125:                                              ; preds = %114
  %126 = load i32*, i32** %13, align 8
  %127 = load i32, i32* %11, align 4
  %128 = call i32 @CHIN(i32* %126, i32 %127)
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %134

130:                                              ; preds = %125
  %131 = load i32, i32* %12, align 4
  %132 = load i32, i32* %10, align 4
  %133 = call i32 @FWD(i32 %131, i32 %132, i32 1)
  br label %134

134:                                              ; preds = %130, %125, %114
  br label %294

135:                                              ; preds = %27, %27
  %136 = load i32, i32* %12, align 4
  %137 = load i32, i32* %12, align 4
  %138 = call i32 @FWD(i32 %136, i32 %137, i32 1)
  br label %294

139:                                              ; preds = %27
  %140 = load i32, i32* %12, align 4
  %141 = load i32, i32* %12, align 4
  %142 = call i32 @FWD(i32 %140, i32 %141, i32 1)
  br label %294

143:                                              ; preds = %27
  %144 = load i32, i32* %12, align 4
  %145 = load i32, i32* %12, align 4
  %146 = call i32 @FWD(i32 %144, i32 %145, i32 1)
  %147 = load i32, i32* %12, align 4
  %148 = load i32, i32* %14, align 4
  %149 = call i32 @OPND(i32 %148)
  %150 = call i32 @ISSETBACK(i32 %147, i32 %149)
  store i32 %150, i32* %18, align 4
  %151 = load i32, i32* %12, align 4
  %152 = load i32, i32* %12, align 4
  %153 = load i32, i32* %14, align 4
  %154 = call i32 @OPND(i32 %153)
  %155 = call i32 @BACK(i32 %151, i32 %152, i32 %154)
  %156 = load i32, i32* %18, align 4
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %174, label %158

158:                                              ; preds = %143
  %159 = load i32, i32* %12, align 4
  %160 = load i32, i32* %14, align 4
  %161 = call i32 @OPND(i32 %160)
  %162 = call i32 @ISSETBACK(i32 %159, i32 %161)
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %174

164:                                              ; preds = %158
  %165 = load i32, i32* %14, align 4
  %166 = call i32 @OPND(i32 %165)
  %167 = add nsw i32 %166, 1
  %168 = sext i32 %167 to i64
  %169 = load i64, i64* %15, align 8
  %170 = sub i64 %169, %168
  store i64 %170, i64* %15, align 8
  %171 = load i32, i32* %16, align 4
  %172 = load i64, i64* %15, align 8
  %173 = call i32 @INIT(i32 %171, i64 %172)
  br label %174

174:                                              ; preds = %164, %158, %143
  br label %294

175:                                              ; preds = %27
  %176 = load i32, i32* %12, align 4
  %177 = load i32, i32* %12, align 4
  %178 = call i32 @FWD(i32 %176, i32 %177, i32 1)
  %179 = load i32, i32* %12, align 4
  %180 = load i32, i32* %12, align 4
  %181 = load i32, i32* %14, align 4
  %182 = call i32 @OPND(i32 %181)
  %183 = call i32 @FWD(i32 %179, i32 %180, i32 %182)
  br label %294

184:                                              ; preds = %27
  %185 = load i32, i32* %12, align 4
  %186 = load i32, i32* %12, align 4
  %187 = call i32 @FWD(i32 %185, i32 %186, i32 1)
  br label %294

188:                                              ; preds = %27, %27
  %189 = load i32, i32* %12, align 4
  %190 = load i32, i32* %12, align 4
  %191 = call i32 @FWD(i32 %189, i32 %190, i32 1)
  br label %294

192:                                              ; preds = %27
  %193 = load i32, i32* %12, align 4
  %194 = load i32, i32* %12, align 4
  %195 = call i32 @FWD(i32 %193, i32 %194, i32 1)
  %196 = load %struct.re_guts*, %struct.re_guts** %7, align 8
  %197 = getelementptr inbounds %struct.re_guts, %struct.re_guts* %196, i32 0, i32 0
  %198 = load i32*, i32** %197, align 8
  %199 = load i64, i64* %15, align 8
  %200 = load i32, i32* %14, align 4
  %201 = call i32 @OPND(i32 %200)
  %202 = sext i32 %201 to i64
  %203 = add i64 %199, %202
  %204 = getelementptr inbounds i32, i32* %198, i64 %203
  %205 = load i32, i32* %204, align 4
  %206 = call i32 @OP(i32 %205)
  %207 = icmp ne i32 %206, 135
  br i1 %207, label %208, label %209

208:                                              ; preds = %192
  br label %294

209:                                              ; preds = %192
  %210 = load i32, i32* %12, align 4
  %211 = load i32, i32* %12, align 4
  %212 = load i32, i32* %14, align 4
  %213 = call i32 @OPND(i32 %212)
  %214 = call i32 @FWD(i32 %210, i32 %211, i32 %213)
  br label %294

215:                                              ; preds = %27
  %216 = load i32, i32* %12, align 4
  %217 = load i32, i32* %16, align 4
  %218 = call i32 @ISSTATEIN(i32 %216, i32 %217)
  %219 = icmp ne i32 %218, 0
  br i1 %219, label %220, label %250

220:                                              ; preds = %215
  store i64 1, i64* %17, align 8
  br label %221

221:                                              ; preds = %238, %220
  %222 = load %struct.re_guts*, %struct.re_guts** %7, align 8
  %223 = getelementptr inbounds %struct.re_guts, %struct.re_guts* %222, i32 0, i32 0
  %224 = load i32*, i32** %223, align 8
  %225 = load i64, i64* %15, align 8
  %226 = load i64, i64* %17, align 8
  %227 = add i64 %225, %226
  %228 = getelementptr inbounds i32, i32* %224, i64 %227
  %229 = load i32, i32* %228, align 4
  store i32 %229, i32* %14, align 4
  %230 = call i32 @OP(i32 %229)
  %231 = icmp ne i32 %230, 130
  br i1 %231, label %232, label %244

232:                                              ; preds = %221
  %233 = load i32, i32* %14, align 4
  %234 = call i32 @OP(i32 %233)
  %235 = icmp ne i32 %234, 135
  br i1 %235, label %236, label %237

236:                                              ; preds = %232
  br label %244

237:                                              ; preds = %232
  br label %238

238:                                              ; preds = %237
  %239 = load i32, i32* %14, align 4
  %240 = call i32 @OPND(i32 %239)
  %241 = sext i32 %240 to i64
  %242 = load i64, i64* %17, align 8
  %243 = add i64 %242, %241
  store i64 %243, i64* %17, align 8
  br label %221

244:                                              ; preds = %236, %221
  %245 = load i32, i32* %12, align 4
  %246 = load i32, i32* %12, align 4
  %247 = load i64, i64* %17, align 8
  %248 = trunc i64 %247 to i32
  %249 = call i32 @FWD(i32 %245, i32 %246, i32 %248)
  br label %250

250:                                              ; preds = %244, %215
  br label %294

251:                                              ; preds = %27
  %252 = load i32, i32* %12, align 4
  %253 = load i32, i32* %12, align 4
  %254 = call i32 @FWD(i32 %252, i32 %253, i32 1)
  %255 = load %struct.re_guts*, %struct.re_guts** %7, align 8
  %256 = getelementptr inbounds %struct.re_guts, %struct.re_guts* %255, i32 0, i32 0
  %257 = load i32*, i32** %256, align 8
  %258 = load i64, i64* %15, align 8
  %259 = load i32, i32* %14, align 4
  %260 = call i32 @OPND(i32 %259)
  %261 = sext i32 %260 to i64
  %262 = add i64 %258, %261
  %263 = getelementptr inbounds i32, i32* %257, i64 %262
  %264 = load i32, i32* %263, align 4
  %265 = call i32 @OP(i32 %264)
  %266 = icmp ne i32 %265, 130
  br i1 %266, label %267, label %287

267:                                              ; preds = %251
  %268 = load %struct.re_guts*, %struct.re_guts** %7, align 8
  %269 = getelementptr inbounds %struct.re_guts, %struct.re_guts* %268, i32 0, i32 0
  %270 = load i32*, i32** %269, align 8
  %271 = load i64, i64* %15, align 8
  %272 = load i32, i32* %14, align 4
  %273 = call i32 @OPND(i32 %272)
  %274 = sext i32 %273 to i64
  %275 = add i64 %271, %274
  %276 = getelementptr inbounds i32, i32* %270, i64 %275
  %277 = load i32, i32* %276, align 4
  %278 = call i32 @OP(i32 %277)
  %279 = icmp eq i32 %278, 135
  br i1 %279, label %280, label %286

280:                                              ; preds = %267
  %281 = load i32, i32* %12, align 4
  %282 = load i32, i32* %12, align 4
  %283 = load i32, i32* %14, align 4
  %284 = call i32 @OPND(i32 %283)
  %285 = call i32 @FWD(i32 %281, i32 %282, i32 %284)
  br label %286

286:                                              ; preds = %280, %267
  br label %287

287:                                              ; preds = %286, %251
  br label %294

288:                                              ; preds = %27
  %289 = load i32, i32* %12, align 4
  %290 = load i32, i32* %12, align 4
  %291 = call i32 @FWD(i32 %289, i32 %290, i32 1)
  br label %294

292:                                              ; preds = %27
  %293 = call i32 @eprintf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  br label %294

294:                                              ; preds = %292, %288, %287, %250, %209, %208, %188, %184, %175, %174, %139, %135, %134, %113, %104, %95, %86, %73, %60, %36
  br label %295

295:                                              ; preds = %294
  %296 = load i64, i64* %15, align 8
  %297 = add i64 %296, 1
  store i64 %297, i64* %15, align 8
  %298 = load i32, i32* %16, align 4
  %299 = call i32 @INC(i32 %298)
  br label %23

300:                                              ; preds = %23
  %301 = load i32, i32* %12, align 4
  ret i32 %301
}

declare dso_local i32 @INIT(i32, i64) #1

declare dso_local i32 @OP(i32) #1

declare dso_local i32 @NONCHAR(i32) #1

declare dso_local i32 @OPND(i32) #1

declare dso_local i32 @FWD(i32, i32, i32) #1

declare dso_local i32 @CHIN(i32*, i32) #1

declare dso_local i32 @ISSETBACK(i32, i32) #1

declare dso_local i32 @BACK(i32, i32, i32) #1

declare dso_local i32 @ISSTATEIN(i32, i32) #1

declare dso_local i32 @eprintf(i8*) #1

declare dso_local i32 @INC(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
