; ModuleID = '/home/carl/AnghaBench/numpy/numpy/linalg/lapack_lite/extr_f2c_d_lapack.c_dlasv2_.c'
source_filename = "/home/carl/AnghaBench/numpy/numpy/linalg/lapack_lite/extr_f2c_d_lapack.c_dlasv2_.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@dlasv2_.a = internal global i32 0, align 4
@dlasv2_.d__ = internal global i32 0, align 4
@dlasv2_.l = internal global i32 0, align 4
@dlasv2_.m = internal global i32 0, align 4
@dlasv2_.r__ = internal global i32 0, align 4
@dlasv2_.s = internal global i32 0, align 4
@dlasv2_.t = internal global i32 0, align 4
@dlasv2_.fa = internal global i32 0, align 4
@dlasv2_.ga = internal global i32 0, align 4
@dlasv2_.ha = internal global i32 0, align 4
@dlasv2_.ft = internal global i32 0, align 4
@dlasv2_.gt = internal global i32 0, align 4
@dlasv2_.ht = internal global i32 0, align 4
@dlasv2_.mm = internal global i32 0, align 4
@dlasv2_.tt = internal global i32 0, align 4
@dlasv2_.clt = internal global i32 0, align 4
@dlasv2_.crt = internal global i32 0, align 4
@dlasv2_.slt = internal global i32 0, align 4
@dlasv2_.srt = internal global i32 0, align 4
@dlasv2_.pmax = internal global i32 0, align 4
@dlasv2_.temp = internal global i32 0, align 4
@dlasv2_.swap = internal global i32 0, align 4
@dlasv2_.tsign = internal global i32 0, align 4
@dlasv2_.gasmal = internal global i32 0, align 4
@TRUE_ = common dso_local global i32 0, align 4
@EPSILON = common dso_local global i32 0, align 4
@FALSE_ = common dso_local global i32 0, align 4
@c_b3192 = common dso_local global i32 0, align 4
@c_b15 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dlasv2_(i32* %0, i32* %1, i32* %2, i32* %3, i32* %4, i32* %5, i32* %6, i32* %7, i32* %8) #0 {
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32, align 4
  store i32* %0, i32** %10, align 8
  store i32* %1, i32** %11, align 8
  store i32* %2, i32** %12, align 8
  store i32* %3, i32** %13, align 8
  store i32* %4, i32** %14, align 8
  store i32* %5, i32** %15, align 8
  store i32* %6, i32** %16, align 8
  store i32* %7, i32** %17, align 8
  store i32* %8, i32** %18, align 8
  %20 = load i32*, i32** %10, align 8
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* @dlasv2_.ft, align 4
  %22 = load i32, i32* @dlasv2_.ft, align 4
  %23 = call i32 @abs(i32 %22) #3
  store i32 %23, i32* @dlasv2_.fa, align 4
  %24 = load i32*, i32** %12, align 8
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* @dlasv2_.ht, align 4
  %26 = load i32*, i32** %12, align 8
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @abs(i32 %27) #3
  store i32 %28, i32* @dlasv2_.ha, align 4
  store i32 1, i32* @dlasv2_.pmax, align 4
  %29 = load i32, i32* @dlasv2_.ha, align 4
  %30 = load i32, i32* @dlasv2_.fa, align 4
  %31 = icmp sgt i32 %29, %30
  %32 = zext i1 %31 to i32
  store i32 %32, i32* @dlasv2_.swap, align 4
  %33 = load i32, i32* @dlasv2_.swap, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %42

35:                                               ; preds = %9
  store i32 3, i32* @dlasv2_.pmax, align 4
  %36 = load i32, i32* @dlasv2_.ft, align 4
  store i32 %36, i32* @dlasv2_.temp, align 4
  %37 = load i32, i32* @dlasv2_.ht, align 4
  store i32 %37, i32* @dlasv2_.ft, align 4
  %38 = load i32, i32* @dlasv2_.temp, align 4
  store i32 %38, i32* @dlasv2_.ht, align 4
  %39 = load i32, i32* @dlasv2_.fa, align 4
  store i32 %39, i32* @dlasv2_.temp, align 4
  %40 = load i32, i32* @dlasv2_.ha, align 4
  store i32 %40, i32* @dlasv2_.fa, align 4
  %41 = load i32, i32* @dlasv2_.temp, align 4
  store i32 %41, i32* @dlasv2_.ha, align 4
  br label %42

42:                                               ; preds = %35, %9
  %43 = load i32*, i32** %11, align 8
  %44 = load i32, i32* %43, align 4
  store i32 %44, i32* @dlasv2_.gt, align 4
  %45 = load i32, i32* @dlasv2_.gt, align 4
  %46 = call i32 @abs(i32 %45) #3
  store i32 %46, i32* @dlasv2_.ga, align 4
  %47 = load i32, i32* @dlasv2_.ga, align 4
  %48 = sitofp i32 %47 to double
  %49 = fcmp oeq double %48, 0.000000e+00
  br i1 %49, label %50, label %55

50:                                               ; preds = %42
  %51 = load i32, i32* @dlasv2_.ha, align 4
  %52 = load i32*, i32** %13, align 8
  store i32 %51, i32* %52, align 4
  %53 = load i32, i32* @dlasv2_.fa, align 4
  %54 = load i32*, i32** %14, align 8
  store i32 %53, i32* %54, align 4
  store i32 1, i32* @dlasv2_.clt, align 4
  store i32 1, i32* @dlasv2_.crt, align 4
  store i32 0, i32* @dlasv2_.slt, align 4
  store i32 0, i32* @dlasv2_.srt, align 4
  br label %224

55:                                               ; preds = %42
  %56 = load i32, i32* @TRUE_, align 4
  store i32 %56, i32* @dlasv2_.gasmal, align 4
  %57 = load i32, i32* @dlasv2_.ga, align 4
  %58 = load i32, i32* @dlasv2_.fa, align 4
  %59 = icmp sgt i32 %57, %58
  br i1 %59, label %60, label %95

60:                                               ; preds = %55
  store i32 2, i32* @dlasv2_.pmax, align 4
  %61 = load i32, i32* @dlasv2_.fa, align 4
  %62 = load i32, i32* @dlasv2_.ga, align 4
  %63 = sdiv i32 %61, %62
  %64 = load i32, i32* @EPSILON, align 4
  %65 = icmp slt i32 %63, %64
  br i1 %65, label %66, label %94

66:                                               ; preds = %60
  %67 = load i32, i32* @FALSE_, align 4
  store i32 %67, i32* @dlasv2_.gasmal, align 4
  %68 = load i32, i32* @dlasv2_.ga, align 4
  %69 = load i32*, i32** %14, align 8
  store i32 %68, i32* %69, align 4
  %70 = load i32, i32* @dlasv2_.ha, align 4
  %71 = sitofp i32 %70 to double
  %72 = fcmp ogt double %71, 1.000000e+00
  br i1 %72, label %73, label %80

73:                                               ; preds = %66
  %74 = load i32, i32* @dlasv2_.fa, align 4
  %75 = load i32, i32* @dlasv2_.ga, align 4
  %76 = load i32, i32* @dlasv2_.ha, align 4
  %77 = sdiv i32 %75, %76
  %78 = sdiv i32 %74, %77
  %79 = load i32*, i32** %13, align 8
  store i32 %78, i32* %79, align 4
  br label %87

80:                                               ; preds = %66
  %81 = load i32, i32* @dlasv2_.fa, align 4
  %82 = load i32, i32* @dlasv2_.ga, align 4
  %83 = sdiv i32 %81, %82
  %84 = load i32, i32* @dlasv2_.ha, align 4
  %85 = mul nsw i32 %83, %84
  %86 = load i32*, i32** %13, align 8
  store i32 %85, i32* %86, align 4
  br label %87

87:                                               ; preds = %80, %73
  store i32 1, i32* @dlasv2_.clt, align 4
  %88 = load i32, i32* @dlasv2_.ht, align 4
  %89 = load i32, i32* @dlasv2_.gt, align 4
  %90 = sdiv i32 %88, %89
  store i32 %90, i32* @dlasv2_.slt, align 4
  store i32 1, i32* @dlasv2_.srt, align 4
  %91 = load i32, i32* @dlasv2_.ft, align 4
  %92 = load i32, i32* @dlasv2_.gt, align 4
  %93 = sdiv i32 %91, %92
  store i32 %93, i32* @dlasv2_.crt, align 4
  br label %94

94:                                               ; preds = %87, %60
  br label %95

95:                                               ; preds = %94, %55
  %96 = load i32, i32* @dlasv2_.gasmal, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %223

98:                                               ; preds = %95
  %99 = load i32, i32* @dlasv2_.fa, align 4
  %100 = load i32, i32* @dlasv2_.ha, align 4
  %101 = sub nsw i32 %99, %100
  store i32 %101, i32* @dlasv2_.d__, align 4
  %102 = load i32, i32* @dlasv2_.d__, align 4
  %103 = load i32, i32* @dlasv2_.fa, align 4
  %104 = icmp eq i32 %102, %103
  br i1 %104, label %105, label %106

105:                                              ; preds = %98
  store i32 1, i32* @dlasv2_.l, align 4
  br label %110

106:                                              ; preds = %98
  %107 = load i32, i32* @dlasv2_.d__, align 4
  %108 = load i32, i32* @dlasv2_.fa, align 4
  %109 = sdiv i32 %107, %108
  store i32 %109, i32* @dlasv2_.l, align 4
  br label %110

110:                                              ; preds = %106, %105
  %111 = load i32, i32* @dlasv2_.gt, align 4
  %112 = load i32, i32* @dlasv2_.ft, align 4
  %113 = sdiv i32 %111, %112
  store i32 %113, i32* @dlasv2_.m, align 4
  %114 = load i32, i32* @dlasv2_.l, align 4
  %115 = sitofp i32 %114 to double
  %116 = fsub double 2.000000e+00, %115
  %117 = fptosi double %116 to i32
  store i32 %117, i32* @dlasv2_.t, align 4
  %118 = load i32, i32* @dlasv2_.m, align 4
  %119 = load i32, i32* @dlasv2_.m, align 4
  %120 = mul nsw i32 %118, %119
  store i32 %120, i32* @dlasv2_.mm, align 4
  %121 = load i32, i32* @dlasv2_.t, align 4
  %122 = load i32, i32* @dlasv2_.t, align 4
  %123 = mul nsw i32 %121, %122
  store i32 %123, i32* @dlasv2_.tt, align 4
  %124 = load i32, i32* @dlasv2_.tt, align 4
  %125 = load i32, i32* @dlasv2_.mm, align 4
  %126 = add nsw i32 %124, %125
  %127 = call i32 @sqrt(i32 %126)
  store i32 %127, i32* @dlasv2_.s, align 4
  %128 = load i32, i32* @dlasv2_.l, align 4
  %129 = sitofp i32 %128 to double
  %130 = fcmp oeq double %129, 0.000000e+00
  br i1 %130, label %131, label %134

131:                                              ; preds = %110
  %132 = load i32, i32* @dlasv2_.m, align 4
  %133 = call i32 @abs(i32 %132) #3
  store i32 %133, i32* @dlasv2_.r__, align 4
  br label %141

134:                                              ; preds = %110
  %135 = load i32, i32* @dlasv2_.l, align 4
  %136 = load i32, i32* @dlasv2_.l, align 4
  %137 = mul nsw i32 %135, %136
  %138 = load i32, i32* @dlasv2_.mm, align 4
  %139 = add nsw i32 %137, %138
  %140 = call i32 @sqrt(i32 %139)
  store i32 %140, i32* @dlasv2_.r__, align 4
  br label %141

141:                                              ; preds = %134, %131
  %142 = load i32, i32* @dlasv2_.s, align 4
  %143 = load i32, i32* @dlasv2_.r__, align 4
  %144 = add nsw i32 %142, %143
  %145 = sitofp i32 %144 to double
  %146 = fmul double %145, 5.000000e-01
  %147 = fptosi double %146 to i32
  store i32 %147, i32* @dlasv2_.a, align 4
  %148 = load i32, i32* @dlasv2_.ha, align 4
  %149 = load i32, i32* @dlasv2_.a, align 4
  %150 = sdiv i32 %148, %149
  %151 = load i32*, i32** %13, align 8
  store i32 %150, i32* %151, align 4
  %152 = load i32, i32* @dlasv2_.fa, align 4
  %153 = load i32, i32* @dlasv2_.a, align 4
  %154 = mul nsw i32 %152, %153
  %155 = load i32*, i32** %14, align 8
  store i32 %154, i32* %155, align 4
  %156 = load i32, i32* @dlasv2_.mm, align 4
  %157 = sitofp i32 %156 to double
  %158 = fcmp oeq double %157, 0.000000e+00
  br i1 %158, label %159, label %176

159:                                              ; preds = %141
  %160 = load i32, i32* @dlasv2_.l, align 4
  %161 = sitofp i32 %160 to double
  %162 = fcmp oeq double %161, 0.000000e+00
  br i1 %162, label %163, label %167

163:                                              ; preds = %159
  %164 = call i32 @d_sign(i32* @c_b3192, i32* @dlasv2_.ft)
  %165 = call i32 @d_sign(i32* @c_b15, i32* @dlasv2_.gt)
  %166 = mul nsw i32 %164, %165
  store i32 %166, i32* @dlasv2_.t, align 4
  br label %175

167:                                              ; preds = %159
  %168 = load i32, i32* @dlasv2_.gt, align 4
  %169 = call i32 @d_sign(i32* @dlasv2_.d__, i32* @dlasv2_.ft)
  %170 = sdiv i32 %168, %169
  %171 = load i32, i32* @dlasv2_.m, align 4
  %172 = load i32, i32* @dlasv2_.t, align 4
  %173 = sdiv i32 %171, %172
  %174 = add nsw i32 %170, %173
  store i32 %174, i32* @dlasv2_.t, align 4
  br label %175

175:                                              ; preds = %167, %163
  br label %194

176:                                              ; preds = %141
  %177 = load i32, i32* @dlasv2_.m, align 4
  %178 = load i32, i32* @dlasv2_.s, align 4
  %179 = load i32, i32* @dlasv2_.t, align 4
  %180 = add nsw i32 %178, %179
  %181 = sdiv i32 %177, %180
  %182 = load i32, i32* @dlasv2_.m, align 4
  %183 = load i32, i32* @dlasv2_.r__, align 4
  %184 = load i32, i32* @dlasv2_.l, align 4
  %185 = add nsw i32 %183, %184
  %186 = sdiv i32 %182, %185
  %187 = add nsw i32 %181, %186
  %188 = sitofp i32 %187 to double
  %189 = load i32, i32* @dlasv2_.a, align 4
  %190 = sitofp i32 %189 to double
  %191 = fadd double %190, 1.000000e+00
  %192 = fmul double %188, %191
  %193 = fptosi double %192 to i32
  store i32 %193, i32* @dlasv2_.t, align 4
  br label %194

194:                                              ; preds = %176, %175
  %195 = load i32, i32* @dlasv2_.t, align 4
  %196 = load i32, i32* @dlasv2_.t, align 4
  %197 = mul nsw i32 %195, %196
  %198 = sitofp i32 %197 to double
  %199 = fadd double %198, 4.000000e+00
  %200 = fptosi double %199 to i32
  %201 = call i32 @sqrt(i32 %200)
  store i32 %201, i32* @dlasv2_.l, align 4
  %202 = load i32, i32* @dlasv2_.l, align 4
  %203 = sitofp i32 %202 to double
  %204 = fdiv double 2.000000e+00, %203
  %205 = fptosi double %204 to i32
  store i32 %205, i32* @dlasv2_.crt, align 4
  %206 = load i32, i32* @dlasv2_.t, align 4
  %207 = load i32, i32* @dlasv2_.l, align 4
  %208 = sdiv i32 %206, %207
  store i32 %208, i32* @dlasv2_.srt, align 4
  %209 = load i32, i32* @dlasv2_.crt, align 4
  %210 = load i32, i32* @dlasv2_.srt, align 4
  %211 = load i32, i32* @dlasv2_.m, align 4
  %212 = mul nsw i32 %210, %211
  %213 = add nsw i32 %209, %212
  %214 = load i32, i32* @dlasv2_.a, align 4
  %215 = sdiv i32 %213, %214
  store i32 %215, i32* @dlasv2_.clt, align 4
  %216 = load i32, i32* @dlasv2_.ht, align 4
  %217 = load i32, i32* @dlasv2_.ft, align 4
  %218 = sdiv i32 %216, %217
  %219 = load i32, i32* @dlasv2_.srt, align 4
  %220 = mul nsw i32 %218, %219
  %221 = load i32, i32* @dlasv2_.a, align 4
  %222 = sdiv i32 %220, %221
  store i32 %222, i32* @dlasv2_.slt, align 4
  br label %223

223:                                              ; preds = %194, %95
  br label %224

224:                                              ; preds = %223, %50
  %225 = load i32, i32* @dlasv2_.swap, align 4
  %226 = icmp ne i32 %225, 0
  br i1 %226, label %227, label %236

227:                                              ; preds = %224
  %228 = load i32, i32* @dlasv2_.srt, align 4
  %229 = load i32*, i32** %18, align 8
  store i32 %228, i32* %229, align 4
  %230 = load i32, i32* @dlasv2_.crt, align 4
  %231 = load i32*, i32** %17, align 8
  store i32 %230, i32* %231, align 4
  %232 = load i32, i32* @dlasv2_.slt, align 4
  %233 = load i32*, i32** %16, align 8
  store i32 %232, i32* %233, align 4
  %234 = load i32, i32* @dlasv2_.clt, align 4
  %235 = load i32*, i32** %15, align 8
  store i32 %234, i32* %235, align 4
  br label %245

236:                                              ; preds = %224
  %237 = load i32, i32* @dlasv2_.clt, align 4
  %238 = load i32*, i32** %18, align 8
  store i32 %237, i32* %238, align 4
  %239 = load i32, i32* @dlasv2_.slt, align 4
  %240 = load i32*, i32** %17, align 8
  store i32 %239, i32* %240, align 4
  %241 = load i32, i32* @dlasv2_.crt, align 4
  %242 = load i32*, i32** %16, align 8
  store i32 %241, i32* %242, align 4
  %243 = load i32, i32* @dlasv2_.srt, align 4
  %244 = load i32*, i32** %15, align 8
  store i32 %243, i32* %244, align 4
  br label %245

245:                                              ; preds = %236, %227
  %246 = load i32, i32* @dlasv2_.pmax, align 4
  %247 = icmp eq i32 %246, 1
  br i1 %247, label %248, label %257

248:                                              ; preds = %245
  %249 = load i32*, i32** %16, align 8
  %250 = call i32 @d_sign(i32* @c_b15, i32* %249)
  %251 = load i32*, i32** %18, align 8
  %252 = call i32 @d_sign(i32* @c_b15, i32* %251)
  %253 = mul nsw i32 %250, %252
  %254 = load i32*, i32** %10, align 8
  %255 = call i32 @d_sign(i32* @c_b15, i32* %254)
  %256 = mul nsw i32 %253, %255
  store i32 %256, i32* @dlasv2_.tsign, align 4
  br label %257

257:                                              ; preds = %248, %245
  %258 = load i32, i32* @dlasv2_.pmax, align 4
  %259 = icmp eq i32 %258, 2
  br i1 %259, label %260, label %269

260:                                              ; preds = %257
  %261 = load i32*, i32** %15, align 8
  %262 = call i32 @d_sign(i32* @c_b15, i32* %261)
  %263 = load i32*, i32** %18, align 8
  %264 = call i32 @d_sign(i32* @c_b15, i32* %263)
  %265 = mul nsw i32 %262, %264
  %266 = load i32*, i32** %11, align 8
  %267 = call i32 @d_sign(i32* @c_b15, i32* %266)
  %268 = mul nsw i32 %265, %267
  store i32 %268, i32* @dlasv2_.tsign, align 4
  br label %269

269:                                              ; preds = %260, %257
  %270 = load i32, i32* @dlasv2_.pmax, align 4
  %271 = icmp eq i32 %270, 3
  br i1 %271, label %272, label %281

272:                                              ; preds = %269
  %273 = load i32*, i32** %15, align 8
  %274 = call i32 @d_sign(i32* @c_b15, i32* %273)
  %275 = load i32*, i32** %17, align 8
  %276 = call i32 @d_sign(i32* @c_b15, i32* %275)
  %277 = mul nsw i32 %274, %276
  %278 = load i32*, i32** %12, align 8
  %279 = call i32 @d_sign(i32* @c_b15, i32* %278)
  %280 = mul nsw i32 %277, %279
  store i32 %280, i32* @dlasv2_.tsign, align 4
  br label %281

281:                                              ; preds = %272, %269
  %282 = load i32*, i32** %14, align 8
  %283 = call i32 @d_sign(i32* %282, i32* @dlasv2_.tsign)
  %284 = load i32*, i32** %14, align 8
  store i32 %283, i32* %284, align 4
  %285 = load i32, i32* @dlasv2_.tsign, align 4
  %286 = load i32*, i32** %10, align 8
  %287 = call i32 @d_sign(i32* @c_b15, i32* %286)
  %288 = mul nsw i32 %285, %287
  %289 = load i32*, i32** %12, align 8
  %290 = call i32 @d_sign(i32* @c_b15, i32* %289)
  %291 = mul nsw i32 %288, %290
  store i32 %291, i32* %19, align 4
  %292 = load i32*, i32** %13, align 8
  %293 = call i32 @d_sign(i32* %292, i32* %19)
  %294 = load i32*, i32** %13, align 8
  store i32 %293, i32* %294, align 4
  ret i32 0
}

; Function Attrs: nounwind readnone
declare dso_local i32 @abs(i32) #1

declare dso_local i32 @sqrt(i32) #2

declare dso_local i32 @d_sign(i32*, i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
