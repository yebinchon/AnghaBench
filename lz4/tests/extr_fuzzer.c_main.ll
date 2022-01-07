; ModuleID = '/home/carl/AnghaBench/lz4/tests/extr_fuzzer.c_main.c'
source_filename = "/home/carl/AnghaBench/lz4/tests/extr_fuzzer.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NB_ATTEMPTS = common dso_local global i32 0, align 4
@FUZ_COMPRESSIBILITY_DEFAULT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"--no-prompt\00", align 1
@g_displayLevel = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"Starting LZ4 fuzzer (%i-bits, v%s)\0A\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"Seed = %u\0A\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"Compressibility : %i%%\0A\00", align 1
@LZ4HC_CLEVEL_DEFAULT = common dso_local global i32 0, align 4
@LZ4HC_CLEVEL_OPT_MIN = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [18 x i8] c"press enter ... \0A\00", align 1

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
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %19 = load i32, i32* @NB_ATTEMPTS, align 4
  store i32 %19, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %20 = load i32, i32* @FUZ_COMPRESSIBILITY_DEFAULT, align 4
  store i32 %20, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %21 = load i8**, i8*** %5, align 8
  %22 = getelementptr inbounds i8*, i8** %21, i64 0
  %23 = load i8*, i8** %22, align 8
  store i8* %23, i8** %13, align 8
  store i32 0, i32* %14, align 4
  store i32 1, i32* %8, align 4
  br label %24

24:                                               ; preds = %218, %2
  %25 = load i32, i32* %8, align 4
  %26 = load i32, i32* %4, align 4
  %27 = icmp slt i32 %25, %26
  br i1 %27, label %28, label %221

28:                                               ; preds = %24
  %29 = load i8**, i8*** %5, align 8
  %30 = load i32, i32* %8, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i8*, i8** %29, i64 %31
  %33 = load i8*, i8** %32, align 8
  store i8* %33, i8** %15, align 8
  %34 = load i8*, i8** %15, align 8
  %35 = icmp ne i8* %34, null
  br i1 %35, label %37, label %36

36:                                               ; preds = %28
  br label %218

37:                                               ; preds = %28
  %38 = load i8*, i8** %15, align 8
  %39 = getelementptr inbounds i8, i8* %38, i64 0
  %40 = load i8, i8* %39, align 1
  %41 = sext i8 %40 to i32
  %42 = icmp eq i32 %41, 45
  br i1 %42, label %43, label %217

43:                                               ; preds = %37
  %44 = load i8*, i8** %15, align 8
  %45 = call i32 @strcmp(i8* %44, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %48, label %47

47:                                               ; preds = %43
  store i32 0, i32* %12, align 4
  store i32 1, i32* %7, align 4
  store i32 1, i32* @g_displayLevel, align 4
  br label %218

48:                                               ; preds = %43
  %49 = load i8*, i8** %15, align 8
  %50 = getelementptr inbounds i8, i8* %49, i32 1
  store i8* %50, i8** %15, align 8
  br label %51

51:                                               ; preds = %215, %48
  %52 = load i8*, i8** %15, align 8
  %53 = load i8, i8* %52, align 1
  %54 = sext i8 %53 to i32
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %216

56:                                               ; preds = %51
  %57 = load i8*, i8** %15, align 8
  %58 = load i8, i8* %57, align 1
  %59 = sext i8 %58 to i32
  switch i32 %59, label %214 [
    i32 104, label %60
    i32 118, label %63
    i32 112, label %68
    i32 105, label %71
    i32 84, label %98
    i32 115, label %125
    i32 116, label %152
    i32 80, label %179
  ]

60:                                               ; preds = %56
  %61 = load i8*, i8** %13, align 8
  %62 = call i32 @FUZ_usage(i8* %61)
  store i32 %62, i32* %3, align 4
  br label %272

63:                                               ; preds = %56
  %64 = load i32, i32* @g_displayLevel, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* @g_displayLevel, align 4
  %66 = load i8*, i8** %15, align 8
  %67 = getelementptr inbounds i8, i8* %66, i32 1
  store i8* %67, i8** %15, align 8
  br label %215

68:                                               ; preds = %56
  store i32 1, i32* %12, align 4
  %69 = load i8*, i8** %15, align 8
  %70 = getelementptr inbounds i8, i8* %69, i32 1
  store i8* %70, i8** %15, align 8
  br label %215

71:                                               ; preds = %56
  %72 = load i8*, i8** %15, align 8
  %73 = getelementptr inbounds i8, i8* %72, i32 1
  store i8* %73, i8** %15, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %14, align 4
  br label %74

74:                                               ; preds = %86, %71
  %75 = load i8*, i8** %15, align 8
  %76 = load i8, i8* %75, align 1
  %77 = sext i8 %76 to i32
  %78 = icmp sge i32 %77, 48
  br i1 %78, label %79, label %84

79:                                               ; preds = %74
  %80 = load i8*, i8** %15, align 8
  %81 = load i8, i8* %80, align 1
  %82 = sext i8 %81 to i32
  %83 = icmp sle i32 %82, 57
  br label %84

84:                                               ; preds = %79, %74
  %85 = phi i1 [ false, %74 ], [ %83, %79 ]
  br i1 %85, label %86, label %97

86:                                               ; preds = %84
  %87 = load i32, i32* %9, align 4
  %88 = mul i32 %87, 10
  store i32 %88, i32* %9, align 4
  %89 = load i8*, i8** %15, align 8
  %90 = load i8, i8* %89, align 1
  %91 = sext i8 %90 to i32
  %92 = sub nsw i32 %91, 48
  %93 = load i32, i32* %9, align 4
  %94 = add i32 %93, %92
  store i32 %94, i32* %9, align 4
  %95 = load i8*, i8** %15, align 8
  %96 = getelementptr inbounds i8, i8* %95, i32 1
  store i8* %96, i8** %15, align 8
  br label %74

97:                                               ; preds = %84
  br label %215

98:                                               ; preds = %56
  %99 = load i8*, i8** %15, align 8
  %100 = getelementptr inbounds i8, i8* %99, i32 1
  store i8* %100, i8** %15, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %14, align 4
  br label %101

101:                                              ; preds = %113, %110, %105, %98
  %102 = load i8*, i8** %15, align 8
  %103 = load i8, i8* %102, align 1
  %104 = sext i8 %103 to i32
  switch i32 %104, label %123 [
    i32 109, label %105
    i32 115, label %110
    i32 110, label %110
    i32 48, label %113
    i32 49, label %113
    i32 50, label %113
    i32 51, label %113
    i32 52, label %113
    i32 53, label %113
    i32 54, label %113
    i32 55, label %113
    i32 56, label %113
    i32 57, label %113
  ]

105:                                              ; preds = %101
  %106 = load i32, i32* %14, align 4
  %107 = mul nsw i32 %106, 60
  store i32 %107, i32* %14, align 4
  %108 = load i8*, i8** %15, align 8
  %109 = getelementptr inbounds i8, i8* %108, i32 1
  store i8* %109, i8** %15, align 8
  br label %101

110:                                              ; preds = %101, %101
  %111 = load i8*, i8** %15, align 8
  %112 = getelementptr inbounds i8, i8* %111, i32 1
  store i8* %112, i8** %15, align 8
  br label %101

113:                                              ; preds = %101, %101, %101, %101, %101, %101, %101, %101, %101, %101
  %114 = load i32, i32* %14, align 4
  %115 = mul nsw i32 %114, 10
  store i32 %115, i32* %14, align 4
  %116 = load i8*, i8** %15, align 8
  %117 = getelementptr inbounds i8, i8* %116, i32 1
  store i8* %117, i8** %15, align 8
  %118 = load i8, i8* %116, align 1
  %119 = sext i8 %118 to i32
  %120 = sub nsw i32 %119, 48
  %121 = load i32, i32* %14, align 4
  %122 = add nsw i32 %121, %120
  store i32 %122, i32* %14, align 4
  br label %101

123:                                              ; preds = %101
  br label %124

124:                                              ; preds = %123
  br label %215

125:                                              ; preds = %56
  %126 = load i8*, i8** %15, align 8
  %127 = getelementptr inbounds i8, i8* %126, i32 1
  store i8* %127, i8** %15, align 8
  store i32 0, i32* %6, align 4
  store i32 1, i32* %7, align 4
  br label %128

128:                                              ; preds = %140, %125
  %129 = load i8*, i8** %15, align 8
  %130 = load i8, i8* %129, align 1
  %131 = sext i8 %130 to i32
  %132 = icmp sge i32 %131, 48
  br i1 %132, label %133, label %138

133:                                              ; preds = %128
  %134 = load i8*, i8** %15, align 8
  %135 = load i8, i8* %134, align 1
  %136 = sext i8 %135 to i32
  %137 = icmp sle i32 %136, 57
  br label %138

138:                                              ; preds = %133, %128
  %139 = phi i1 [ false, %128 ], [ %137, %133 ]
  br i1 %139, label %140, label %151

140:                                              ; preds = %138
  %141 = load i32, i32* %6, align 4
  %142 = mul nsw i32 %141, 10
  store i32 %142, i32* %6, align 4
  %143 = load i8*, i8** %15, align 8
  %144 = load i8, i8* %143, align 1
  %145 = sext i8 %144 to i32
  %146 = sub nsw i32 %145, 48
  %147 = load i32, i32* %6, align 4
  %148 = add nsw i32 %147, %146
  store i32 %148, i32* %6, align 4
  %149 = load i8*, i8** %15, align 8
  %150 = getelementptr inbounds i8, i8* %149, i32 1
  store i8* %150, i8** %15, align 8
  br label %128

151:                                              ; preds = %138
  br label %215

152:                                              ; preds = %56
  %153 = load i8*, i8** %15, align 8
  %154 = getelementptr inbounds i8, i8* %153, i32 1
  store i8* %154, i8** %15, align 8
  store i32 0, i32* %10, align 4
  br label %155

155:                                              ; preds = %167, %152
  %156 = load i8*, i8** %15, align 8
  %157 = load i8, i8* %156, align 1
  %158 = sext i8 %157 to i32
  %159 = icmp sge i32 %158, 48
  br i1 %159, label %160, label %165

160:                                              ; preds = %155
  %161 = load i8*, i8** %15, align 8
  %162 = load i8, i8* %161, align 1
  %163 = sext i8 %162 to i32
  %164 = icmp sle i32 %163, 57
  br label %165

165:                                              ; preds = %160, %155
  %166 = phi i1 [ false, %155 ], [ %164, %160 ]
  br i1 %166, label %167, label %178

167:                                              ; preds = %165
  %168 = load i32, i32* %10, align 4
  %169 = mul i32 %168, 10
  store i32 %169, i32* %10, align 4
  %170 = load i8*, i8** %15, align 8
  %171 = load i8, i8* %170, align 1
  %172 = sext i8 %171 to i32
  %173 = sub nsw i32 %172, 48
  %174 = load i32, i32* %10, align 4
  %175 = add i32 %174, %173
  store i32 %175, i32* %10, align 4
  %176 = load i8*, i8** %15, align 8
  %177 = getelementptr inbounds i8, i8* %176, i32 1
  store i8* %177, i8** %15, align 8
  br label %155

178:                                              ; preds = %165
  br label %215

179:                                              ; preds = %56
  %180 = load i8*, i8** %15, align 8
  %181 = getelementptr inbounds i8, i8* %180, i32 1
  store i8* %181, i8** %15, align 8
  store i32 0, i32* %11, align 4
  br label %182

182:                                              ; preds = %194, %179
  %183 = load i8*, i8** %15, align 8
  %184 = load i8, i8* %183, align 1
  %185 = sext i8 %184 to i32
  %186 = icmp sge i32 %185, 48
  br i1 %186, label %187, label %192

187:                                              ; preds = %182
  %188 = load i8*, i8** %15, align 8
  %189 = load i8, i8* %188, align 1
  %190 = sext i8 %189 to i32
  %191 = icmp sle i32 %190, 57
  br label %192

192:                                              ; preds = %187, %182
  %193 = phi i1 [ false, %182 ], [ %191, %187 ]
  br i1 %193, label %194, label %205

194:                                              ; preds = %192
  %195 = load i32, i32* %11, align 4
  %196 = mul nsw i32 %195, 10
  store i32 %196, i32* %11, align 4
  %197 = load i8*, i8** %15, align 8
  %198 = load i8, i8* %197, align 1
  %199 = sext i8 %198 to i32
  %200 = sub nsw i32 %199, 48
  %201 = load i32, i32* %11, align 4
  %202 = add nsw i32 %201, %200
  store i32 %202, i32* %11, align 4
  %203 = load i8*, i8** %15, align 8
  %204 = getelementptr inbounds i8, i8* %203, i32 1
  store i8* %204, i8** %15, align 8
  br label %182

205:                                              ; preds = %192
  %206 = load i32, i32* %11, align 4
  %207 = icmp slt i32 %206, 0
  br i1 %207, label %208, label %209

208:                                              ; preds = %205
  store i32 0, i32* %11, align 4
  br label %209

209:                                              ; preds = %208, %205
  %210 = load i32, i32* %11, align 4
  %211 = icmp sgt i32 %210, 100
  br i1 %211, label %212, label %213

212:                                              ; preds = %209
  store i32 100, i32* %11, align 4
  br label %213

213:                                              ; preds = %212, %209
  br label %215

214:                                              ; preds = %56
  br label %215

215:                                              ; preds = %214, %213, %178, %151, %124, %97, %68, %63
  br label %51

216:                                              ; preds = %51
  br label %217

217:                                              ; preds = %216, %37
  br label %218

218:                                              ; preds = %217, %47, %36
  %219 = load i32, i32* %8, align 4
  %220 = add nsw i32 %219, 1
  store i32 %220, i32* %8, align 4
  br label %24

221:                                              ; preds = %24
  %222 = call i8* (...) @LZ4_versionString()
  %223 = call i32 (i8*, i32, ...) @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 64, i8* %222)
  %224 = load i32, i32* %7, align 4
  %225 = icmp ne i32 %224, 0
  br i1 %225, label %231, label %226

226:                                              ; preds = %221
  %227 = call i32 @time(i32* null)
  store i32 %227, i32* %16, align 4
  %228 = call i32 @XXH32(i32* %16, i32 4, i32 1)
  store i32 %228, i32* %17, align 4
  %229 = load i32, i32* %17, align 4
  %230 = srem i32 %229, 10000
  store i32 %230, i32* %6, align 4
  br label %231

231:                                              ; preds = %226, %221
  %232 = load i32, i32* %6, align 4
  %233 = call i32 (i8*, i32, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i32 %232)
  %234 = load i32, i32* %11, align 4
  %235 = load i32, i32* @FUZ_COMPRESSIBILITY_DEFAULT, align 4
  %236 = icmp ne i32 %234, %235
  br i1 %236, label %237, label %240

237:                                              ; preds = %231
  %238 = load i32, i32* %11, align 4
  %239 = call i32 (i8*, i32, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0), i32 %238)
  br label %240

240:                                              ; preds = %237, %231
  %241 = load i32, i32* %7, align 4
  %242 = icmp eq i32 %241, 0
  br i1 %242, label %243, label %251

243:                                              ; preds = %240
  %244 = load i32, i32* %10, align 4
  %245 = icmp eq i32 %244, 0
  br i1 %245, label %246, label %251

246:                                              ; preds = %243
  %247 = load i32, i32* @LZ4HC_CLEVEL_DEFAULT, align 4
  %248 = call i32 @FUZ_unitTests(i32 %247)
  %249 = load i32, i32* @LZ4HC_CLEVEL_OPT_MIN, align 4
  %250 = call i32 @FUZ_unitTests(i32 %249)
  br label %251

251:                                              ; preds = %246, %243, %240
  %252 = load i32, i32* %9, align 4
  %253 = icmp eq i32 %252, 0
  %254 = zext i1 %253 to i32
  %255 = load i32, i32* %9, align 4
  %256 = add i32 %255, %254
  store i32 %256, i32* %9, align 4
  %257 = load i32, i32* %6, align 4
  %258 = load i32, i32* %9, align 4
  %259 = load i32, i32* %10, align 4
  %260 = load i32, i32* %11, align 4
  %261 = sitofp i32 %260 to double
  %262 = fdiv double %261, 1.000000e+02
  %263 = load i32, i32* %14, align 4
  %264 = call i32 @FUZ_test(i32 %257, i32 %258, i32 %259, double %262, i32 %263)
  store i32 %264, i32* %18, align 4
  %265 = load i32, i32* %12, align 4
  %266 = icmp ne i32 %265, 0
  br i1 %266, label %267, label %270

267:                                              ; preds = %251
  %268 = call i32 @DISPLAY(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0))
  %269 = call i32 (...) @getchar()
  br label %270

270:                                              ; preds = %267, %251
  %271 = load i32, i32* %18, align 4
  store i32 %271, i32* %3, align 4
  br label %272

272:                                              ; preds = %270, %60
  %273 = load i32, i32* %3, align 4
  ret i32 %273
}

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @FUZ_usage(i8*) #1

declare dso_local i32 @printf(i8*, i32, ...) #1

declare dso_local i8* @LZ4_versionString(...) #1

declare dso_local i32 @time(i32*) #1

declare dso_local i32 @XXH32(i32*, i32, i32) #1

declare dso_local i32 @FUZ_unitTests(i32) #1

declare dso_local i32 @FUZ_test(i32, i32, i32, double, i32) #1

declare dso_local i32 @DISPLAY(i8*) #1

declare dso_local i32 @getchar(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
