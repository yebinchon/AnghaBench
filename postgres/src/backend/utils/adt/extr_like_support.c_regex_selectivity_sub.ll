; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_like_support.c_regex_selectivity_sub.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_like_support.c_regex_selectivity_sub.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CHAR_RANGE_SEL = common dso_local global double 0.000000e+00, align 8
@ANY_CHAR_SEL = common dso_local global double 0.000000e+00, align 8
@PARTIAL_WILDCARD_SEL = common dso_local global double 0.000000e+00, align 8
@FIXED_CHAR_SEL = common dso_local global double 0.000000e+00, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (double (i8*, i32, i32)* @regex_selectivity_sub to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal double @regex_selectivity_sub(i8* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca double, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store double 1.000000e+00, double* %7, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  br label %12

12:                                               ; preds = %274, %3
  %13 = load i32, i32* %10, align 4
  %14 = load i32, i32* %5, align 4
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %16, label %277

16:                                               ; preds = %12
  %17 = load i8*, i8** %4, align 8
  %18 = load i32, i32* %10, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i8, i8* %17, i64 %19
  %21 = load i8, i8* %20, align 1
  %22 = sext i8 %21 to i32
  %23 = icmp eq i32 %22, 40
  br i1 %23, label %24, label %32

24:                                               ; preds = %16
  %25 = load i32, i32* %8, align 4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %24
  %28 = load i32, i32* %10, align 4
  store i32 %28, i32* %9, align 4
  br label %29

29:                                               ; preds = %27, %24
  %30 = load i32, i32* %8, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %8, align 4
  br label %273

32:                                               ; preds = %16
  %33 = load i8*, i8** %4, align 8
  %34 = load i32, i32* %10, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i8, i8* %33, i64 %35
  %37 = load i8, i8* %36, align 1
  %38 = sext i8 %37 to i32
  %39 = icmp eq i32 %38, 41
  br i1 %39, label %40, label %63

40:                                               ; preds = %32
  %41 = load i32, i32* %8, align 4
  %42 = icmp sgt i32 %41, 0
  br i1 %42, label %43, label %63

43:                                               ; preds = %40
  %44 = load i32, i32* %8, align 4
  %45 = add nsw i32 %44, -1
  store i32 %45, i32* %8, align 4
  %46 = load i32, i32* %8, align 4
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %62

48:                                               ; preds = %43
  %49 = load i8*, i8** %4, align 8
  %50 = load i32, i32* %9, align 4
  %51 = add nsw i32 %50, 1
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i8, i8* %49, i64 %52
  %54 = load i32, i32* %10, align 4
  %55 = load i32, i32* %9, align 4
  %56 = add nsw i32 %55, 1
  %57 = sub nsw i32 %54, %56
  %58 = load i32, i32* %6, align 4
  %59 = call double @regex_selectivity_sub(i8* %53, i32 %57, i32 %58)
  %60 = load double, double* %7, align 8
  %61 = fmul double %60, %59
  store double %61, double* %7, align 8
  br label %62

62:                                               ; preds = %48, %43
  br label %272

63:                                               ; preds = %40, %32
  %64 = load i8*, i8** %4, align 8
  %65 = load i32, i32* %10, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i8, i8* %64, i64 %66
  %68 = load i8, i8* %67, align 1
  %69 = sext i8 %68 to i32
  %70 = icmp eq i32 %69, 124
  br i1 %70, label %71, label %88

71:                                               ; preds = %63
  %72 = load i32, i32* %8, align 4
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %74, label %88

74:                                               ; preds = %71
  %75 = load i8*, i8** %4, align 8
  %76 = load i32, i32* %10, align 4
  %77 = add nsw i32 %76, 1
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i8, i8* %75, i64 %78
  %80 = load i32, i32* %5, align 4
  %81 = load i32, i32* %10, align 4
  %82 = add nsw i32 %81, 1
  %83 = sub nsw i32 %80, %82
  %84 = load i32, i32* %6, align 4
  %85 = call double @regex_selectivity_sub(i8* %79, i32 %83, i32 %84)
  %86 = load double, double* %7, align 8
  %87 = fadd double %86, %85
  store double %87, double* %7, align 8
  br label %277

88:                                               ; preds = %71, %63
  %89 = load i8*, i8** %4, align 8
  %90 = load i32, i32* %10, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i8, i8* %89, i64 %91
  %93 = load i8, i8* %92, align 1
  %94 = sext i8 %93 to i32
  %95 = icmp eq i32 %94, 91
  br i1 %95, label %96, label %153

96:                                               ; preds = %88
  store i32 0, i32* %11, align 4
  %97 = load i8*, i8** %4, align 8
  %98 = load i32, i32* %10, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %10, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i8, i8* %97, i64 %100
  %102 = load i8, i8* %101, align 1
  %103 = sext i8 %102 to i32
  %104 = icmp eq i32 %103, 94
  br i1 %104, label %105, label %108

105:                                              ; preds = %96
  store i32 1, i32* %11, align 4
  %106 = load i32, i32* %10, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %10, align 4
  br label %108

108:                                              ; preds = %105, %96
  %109 = load i8*, i8** %4, align 8
  %110 = load i32, i32* %10, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i8, i8* %109, i64 %111
  %113 = load i8, i8* %112, align 1
  %114 = sext i8 %113 to i32
  %115 = icmp eq i32 %114, 93
  br i1 %115, label %116, label %119

116:                                              ; preds = %108
  %117 = load i32, i32* %10, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %10, align 4
  br label %119

119:                                              ; preds = %116, %108
  br label %120

120:                                              ; preds = %134, %119
  %121 = load i32, i32* %10, align 4
  %122 = load i32, i32* %5, align 4
  %123 = icmp slt i32 %121, %122
  br i1 %123, label %124, label %132

124:                                              ; preds = %120
  %125 = load i8*, i8** %4, align 8
  %126 = load i32, i32* %10, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds i8, i8* %125, i64 %127
  %129 = load i8, i8* %128, align 1
  %130 = sext i8 %129 to i32
  %131 = icmp ne i32 %130, 93
  br label %132

132:                                              ; preds = %124, %120
  %133 = phi i1 [ false, %120 ], [ %131, %124 ]
  br i1 %133, label %134, label %137

134:                                              ; preds = %132
  %135 = load i32, i32* %10, align 4
  %136 = add nsw i32 %135, 1
  store i32 %136, i32* %10, align 4
  br label %120

137:                                              ; preds = %132
  %138 = load i32, i32* %8, align 4
  %139 = icmp eq i32 %138, 0
  br i1 %139, label %140, label %152

140:                                              ; preds = %137
  %141 = load i32, i32* %11, align 4
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %146

143:                                              ; preds = %140
  %144 = load double, double* @CHAR_RANGE_SEL, align 8
  %145 = fsub double 1.000000e+00, %144
  br label %148

146:                                              ; preds = %140
  %147 = load double, double* @CHAR_RANGE_SEL, align 8
  br label %148

148:                                              ; preds = %146, %143
  %149 = phi double [ %145, %143 ], [ %147, %146 ]
  %150 = load double, double* %7, align 8
  %151 = fmul double %150, %149
  store double %151, double* %7, align 8
  br label %152

152:                                              ; preds = %148, %137
  br label %270

153:                                              ; preds = %88
  %154 = load i8*, i8** %4, align 8
  %155 = load i32, i32* %10, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds i8, i8* %154, i64 %156
  %158 = load i8, i8* %157, align 1
  %159 = sext i8 %158 to i32
  %160 = icmp eq i32 %159, 46
  br i1 %160, label %161, label %169

161:                                              ; preds = %153
  %162 = load i32, i32* %8, align 4
  %163 = icmp eq i32 %162, 0
  br i1 %163, label %164, label %168

164:                                              ; preds = %161
  %165 = load double, double* @ANY_CHAR_SEL, align 8
  %166 = load double, double* %7, align 8
  %167 = fmul double %166, %165
  store double %167, double* %7, align 8
  br label %168

168:                                              ; preds = %164, %161
  br label %269

169:                                              ; preds = %153
  %170 = load i8*, i8** %4, align 8
  %171 = load i32, i32* %10, align 4
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds i8, i8* %170, i64 %172
  %174 = load i8, i8* %173, align 1
  %175 = sext i8 %174 to i32
  %176 = icmp eq i32 %175, 42
  br i1 %176, label %193, label %177

177:                                              ; preds = %169
  %178 = load i8*, i8** %4, align 8
  %179 = load i32, i32* %10, align 4
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds i8, i8* %178, i64 %180
  %182 = load i8, i8* %181, align 1
  %183 = sext i8 %182 to i32
  %184 = icmp eq i32 %183, 63
  br i1 %184, label %193, label %185

185:                                              ; preds = %177
  %186 = load i8*, i8** %4, align 8
  %187 = load i32, i32* %10, align 4
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds i8, i8* %186, i64 %188
  %190 = load i8, i8* %189, align 1
  %191 = sext i8 %190 to i32
  %192 = icmp eq i32 %191, 43
  br i1 %192, label %193, label %201

193:                                              ; preds = %185, %177, %169
  %194 = load i32, i32* %8, align 4
  %195 = icmp eq i32 %194, 0
  br i1 %195, label %196, label %200

196:                                              ; preds = %193
  %197 = load double, double* @PARTIAL_WILDCARD_SEL, align 8
  %198 = load double, double* %7, align 8
  %199 = fmul double %198, %197
  store double %199, double* %7, align 8
  br label %200

200:                                              ; preds = %196, %193
  br label %268

201:                                              ; preds = %185
  %202 = load i8*, i8** %4, align 8
  %203 = load i32, i32* %10, align 4
  %204 = sext i32 %203 to i64
  %205 = getelementptr inbounds i8, i8* %202, i64 %204
  %206 = load i8, i8* %205, align 1
  %207 = sext i8 %206 to i32
  %208 = icmp eq i32 %207, 123
  br i1 %208, label %209, label %235

209:                                              ; preds = %201
  br label %210

210:                                              ; preds = %224, %209
  %211 = load i32, i32* %10, align 4
  %212 = load i32, i32* %5, align 4
  %213 = icmp slt i32 %211, %212
  br i1 %213, label %214, label %222

214:                                              ; preds = %210
  %215 = load i8*, i8** %4, align 8
  %216 = load i32, i32* %10, align 4
  %217 = sext i32 %216 to i64
  %218 = getelementptr inbounds i8, i8* %215, i64 %217
  %219 = load i8, i8* %218, align 1
  %220 = sext i8 %219 to i32
  %221 = icmp ne i32 %220, 125
  br label %222

222:                                              ; preds = %214, %210
  %223 = phi i1 [ false, %210 ], [ %221, %214 ]
  br i1 %223, label %224, label %227

224:                                              ; preds = %222
  %225 = load i32, i32* %10, align 4
  %226 = add nsw i32 %225, 1
  store i32 %226, i32* %10, align 4
  br label %210

227:                                              ; preds = %222
  %228 = load i32, i32* %8, align 4
  %229 = icmp eq i32 %228, 0
  br i1 %229, label %230, label %234

230:                                              ; preds = %227
  %231 = load double, double* @PARTIAL_WILDCARD_SEL, align 8
  %232 = load double, double* %7, align 8
  %233 = fmul double %232, %231
  store double %233, double* %7, align 8
  br label %234

234:                                              ; preds = %230, %227
  br label %267

235:                                              ; preds = %201
  %236 = load i8*, i8** %4, align 8
  %237 = load i32, i32* %10, align 4
  %238 = sext i32 %237 to i64
  %239 = getelementptr inbounds i8, i8* %236, i64 %238
  %240 = load i8, i8* %239, align 1
  %241 = sext i8 %240 to i32
  %242 = icmp eq i32 %241, 92
  br i1 %242, label %243, label %258

243:                                              ; preds = %235
  %244 = load i32, i32* %10, align 4
  %245 = add nsw i32 %244, 1
  store i32 %245, i32* %10, align 4
  %246 = load i32, i32* %10, align 4
  %247 = load i32, i32* %5, align 4
  %248 = icmp sge i32 %246, %247
  br i1 %248, label %249, label %250

249:                                              ; preds = %243
  br label %277

250:                                              ; preds = %243
  %251 = load i32, i32* %8, align 4
  %252 = icmp eq i32 %251, 0
  br i1 %252, label %253, label %257

253:                                              ; preds = %250
  %254 = load double, double* @FIXED_CHAR_SEL, align 8
  %255 = load double, double* %7, align 8
  %256 = fmul double %255, %254
  store double %256, double* %7, align 8
  br label %257

257:                                              ; preds = %253, %250
  br label %266

258:                                              ; preds = %235
  %259 = load i32, i32* %8, align 4
  %260 = icmp eq i32 %259, 0
  br i1 %260, label %261, label %265

261:                                              ; preds = %258
  %262 = load double, double* @FIXED_CHAR_SEL, align 8
  %263 = load double, double* %7, align 8
  %264 = fmul double %263, %262
  store double %264, double* %7, align 8
  br label %265

265:                                              ; preds = %261, %258
  br label %266

266:                                              ; preds = %265, %257
  br label %267

267:                                              ; preds = %266, %234
  br label %268

268:                                              ; preds = %267, %200
  br label %269

269:                                              ; preds = %268, %168
  br label %270

270:                                              ; preds = %269, %152
  br label %271

271:                                              ; preds = %270
  br label %272

272:                                              ; preds = %271, %62
  br label %273

273:                                              ; preds = %272, %29
  br label %274

274:                                              ; preds = %273
  %275 = load i32, i32* %10, align 4
  %276 = add nsw i32 %275, 1
  store i32 %276, i32* %10, align 4
  br label %12

277:                                              ; preds = %249, %74, %12
  %278 = load double, double* %7, align 8
  %279 = fcmp ogt double %278, 1.000000e+00
  br i1 %279, label %280, label %281

280:                                              ; preds = %277
  store double 1.000000e+00, double* %7, align 8
  br label %281

281:                                              ; preds = %280, %277
  %282 = load double, double* %7, align 8
  ret double %282
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
