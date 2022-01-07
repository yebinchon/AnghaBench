; ModuleID = '/home/carl/AnghaBench/openssl/crypto/bn/extr_bn_gf2m.c_BN_GF2m_mod_solve_quad_arr.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/bn/extr_bn_gf2m.c_BN_GF2m_mod_solve_quad_arr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@BN_RAND_TOP_ONE = common dso_local global i32 0, align 4
@BN_RAND_BOTTOM_ANY = common dso_local global i32 0, align 4
@MAX_ITERATIONS = common dso_local global i32 0, align 4
@BN_F_BN_GF2M_MOD_SOLVE_QUAD_ARR = common dso_local global i32 0, align 4
@BN_R_TOO_MANY_ITERATIONS = common dso_local global i32 0, align 4
@BN_R_NO_SOLUTION = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @BN_GF2m_mod_solve_quad_arr(i32* %0, i32* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %19 = load i32*, i32** %7, align 8
  %20 = call i32 @bn_check_top(i32* %19)
  %21 = load i32*, i32** %8, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 0
  %23 = load i32, i32* %22, align 4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %4
  %26 = load i32*, i32** %6, align 8
  %27 = call i32 @BN_zero(i32* %26)
  store i32 1, i32* %5, align 4
  br label %250

28:                                               ; preds = %4
  %29 = load i32*, i32** %9, align 8
  %30 = call i32 @BN_CTX_start(i32* %29)
  %31 = load i32*, i32** %9, align 8
  %32 = call i32* @BN_CTX_get(i32* %31)
  store i32* %32, i32** %13, align 8
  %33 = load i32*, i32** %9, align 8
  %34 = call i32* @BN_CTX_get(i32* %33)
  store i32* %34, i32** %14, align 8
  %35 = load i32*, i32** %9, align 8
  %36 = call i32* @BN_CTX_get(i32* %35)
  store i32* %36, i32** %16, align 8
  %37 = load i32*, i32** %16, align 8
  %38 = icmp eq i32* %37, null
  br i1 %38, label %39, label %40

39:                                               ; preds = %28
  br label %246

40:                                               ; preds = %28
  %41 = load i32*, i32** %13, align 8
  %42 = load i32*, i32** %7, align 8
  %43 = load i32*, i32** %8, align 8
  %44 = call i32 @BN_GF2m_mod_arr(i32* %41, i32* %42, i32* %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %47, label %46

46:                                               ; preds = %40
  br label %246

47:                                               ; preds = %40
  %48 = load i32*, i32** %13, align 8
  %49 = call i64 @BN_is_zero(i32* %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %47
  %52 = load i32*, i32** %6, align 8
  %53 = call i32 @BN_zero(i32* %52)
  store i32 1, i32* %10, align 4
  br label %246

54:                                               ; preds = %47
  %55 = load i32*, i32** %8, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 0
  %57 = load i32, i32* %56, align 4
  %58 = and i32 %57, 1
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %103

60:                                               ; preds = %54
  %61 = load i32*, i32** %14, align 8
  %62 = load i32*, i32** %13, align 8
  %63 = call i32 @BN_copy(i32* %61, i32* %62)
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %66, label %65

65:                                               ; preds = %60
  br label %246

66:                                               ; preds = %60
  store i32 1, i32* %12, align 4
  br label %67

67:                                               ; preds = %99, %66
  %68 = load i32, i32* %12, align 4
  %69 = load i32*, i32** %8, align 8
  %70 = getelementptr inbounds i32, i32* %69, i64 0
  %71 = load i32, i32* %70, align 4
  %72 = sub nsw i32 %71, 1
  %73 = sdiv i32 %72, 2
  %74 = icmp sle i32 %68, %73
  br i1 %74, label %75, label %102

75:                                               ; preds = %67
  %76 = load i32*, i32** %14, align 8
  %77 = load i32*, i32** %14, align 8
  %78 = load i32*, i32** %8, align 8
  %79 = load i32*, i32** %9, align 8
  %80 = call i32 @BN_GF2m_mod_sqr_arr(i32* %76, i32* %77, i32* %78, i32* %79)
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %83, label %82

82:                                               ; preds = %75
  br label %246

83:                                               ; preds = %75
  %84 = load i32*, i32** %14, align 8
  %85 = load i32*, i32** %14, align 8
  %86 = load i32*, i32** %8, align 8
  %87 = load i32*, i32** %9, align 8
  %88 = call i32 @BN_GF2m_mod_sqr_arr(i32* %84, i32* %85, i32* %86, i32* %87)
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %91, label %90

90:                                               ; preds = %83
  br label %246

91:                                               ; preds = %83
  %92 = load i32*, i32** %14, align 8
  %93 = load i32*, i32** %14, align 8
  %94 = load i32*, i32** %13, align 8
  %95 = call i32 @BN_GF2m_add(i32* %92, i32* %93, i32* %94)
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %98, label %97

97:                                               ; preds = %91
  br label %246

98:                                               ; preds = %91
  br label %99

99:                                               ; preds = %98
  %100 = load i32, i32* %12, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %12, align 4
  br label %67

102:                                              ; preds = %67
  br label %213

103:                                              ; preds = %54
  %104 = load i32*, i32** %9, align 8
  %105 = call i32* @BN_CTX_get(i32* %104)
  store i32* %105, i32** %15, align 8
  %106 = load i32*, i32** %9, align 8
  %107 = call i32* @BN_CTX_get(i32* %106)
  store i32* %107, i32** %17, align 8
  %108 = load i32*, i32** %9, align 8
  %109 = call i32* @BN_CTX_get(i32* %108)
  store i32* %109, i32** %18, align 8
  %110 = load i32*, i32** %18, align 8
  %111 = icmp eq i32* %110, null
  br i1 %111, label %112, label %113

112:                                              ; preds = %103
  br label %246

113:                                              ; preds = %103
  br label %114

114:                                              ; preds = %202, %113
  %115 = load i32*, i32** %15, align 8
  %116 = load i32*, i32** %8, align 8
  %117 = getelementptr inbounds i32, i32* %116, i64 0
  %118 = load i32, i32* %117, align 4
  %119 = load i32, i32* @BN_RAND_TOP_ONE, align 4
  %120 = load i32, i32* @BN_RAND_BOTTOM_ANY, align 4
  %121 = load i32*, i32** %9, align 8
  %122 = call i32 @BN_priv_rand_ex(i32* %115, i32 %118, i32 %119, i32 %120, i32* %121)
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %125, label %124

124:                                              ; preds = %114
  br label %246

125:                                              ; preds = %114
  %126 = load i32*, i32** %15, align 8
  %127 = load i32*, i32** %15, align 8
  %128 = load i32*, i32** %8, align 8
  %129 = call i32 @BN_GF2m_mod_arr(i32* %126, i32* %127, i32* %128)
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %132, label %131

131:                                              ; preds = %125
  br label %246

132:                                              ; preds = %125
  %133 = load i32*, i32** %14, align 8
  %134 = call i32 @BN_zero(i32* %133)
  %135 = load i32*, i32** %16, align 8
  %136 = load i32*, i32** %15, align 8
  %137 = call i32 @BN_copy(i32* %135, i32* %136)
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %140, label %139

139:                                              ; preds = %132
  br label %246

140:                                              ; preds = %132
  store i32 1, i32* %12, align 4
  br label %141

141:                                              ; preds = %188, %140
  %142 = load i32, i32* %12, align 4
  %143 = load i32*, i32** %8, align 8
  %144 = getelementptr inbounds i32, i32* %143, i64 0
  %145 = load i32, i32* %144, align 4
  %146 = sub nsw i32 %145, 1
  %147 = icmp sle i32 %142, %146
  br i1 %147, label %148, label %191

148:                                              ; preds = %141
  %149 = load i32*, i32** %14, align 8
  %150 = load i32*, i32** %14, align 8
  %151 = load i32*, i32** %8, align 8
  %152 = load i32*, i32** %9, align 8
  %153 = call i32 @BN_GF2m_mod_sqr_arr(i32* %149, i32* %150, i32* %151, i32* %152)
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %156, label %155

155:                                              ; preds = %148
  br label %246

156:                                              ; preds = %148
  %157 = load i32*, i32** %17, align 8
  %158 = load i32*, i32** %16, align 8
  %159 = load i32*, i32** %8, align 8
  %160 = load i32*, i32** %9, align 8
  %161 = call i32 @BN_GF2m_mod_sqr_arr(i32* %157, i32* %158, i32* %159, i32* %160)
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %164, label %163

163:                                              ; preds = %156
  br label %246

164:                                              ; preds = %156
  %165 = load i32*, i32** %18, align 8
  %166 = load i32*, i32** %17, align 8
  %167 = load i32*, i32** %13, align 8
  %168 = load i32*, i32** %8, align 8
  %169 = load i32*, i32** %9, align 8
  %170 = call i32 @BN_GF2m_mod_mul_arr(i32* %165, i32* %166, i32* %167, i32* %168, i32* %169)
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %173, label %172

172:                                              ; preds = %164
  br label %246

173:                                              ; preds = %164
  %174 = load i32*, i32** %14, align 8
  %175 = load i32*, i32** %14, align 8
  %176 = load i32*, i32** %18, align 8
  %177 = call i32 @BN_GF2m_add(i32* %174, i32* %175, i32* %176)
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %180, label %179

179:                                              ; preds = %173
  br label %246

180:                                              ; preds = %173
  %181 = load i32*, i32** %16, align 8
  %182 = load i32*, i32** %17, align 8
  %183 = load i32*, i32** %15, align 8
  %184 = call i32 @BN_GF2m_add(i32* %181, i32* %182, i32* %183)
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %187, label %186

186:                                              ; preds = %180
  br label %246

187:                                              ; preds = %180
  br label %188

188:                                              ; preds = %187
  %189 = load i32, i32* %12, align 4
  %190 = add nsw i32 %189, 1
  store i32 %190, i32* %12, align 4
  br label %141

191:                                              ; preds = %141
  %192 = load i32, i32* %11, align 4
  %193 = add nsw i32 %192, 1
  store i32 %193, i32* %11, align 4
  br label %194

194:                                              ; preds = %191
  %195 = load i32*, i32** %16, align 8
  %196 = call i64 @BN_is_zero(i32* %195)
  %197 = icmp ne i64 %196, 0
  br i1 %197, label %198, label %202

198:                                              ; preds = %194
  %199 = load i32, i32* %11, align 4
  %200 = load i32, i32* @MAX_ITERATIONS, align 4
  %201 = icmp slt i32 %199, %200
  br label %202

202:                                              ; preds = %198, %194
  %203 = phi i1 [ false, %194 ], [ %201, %198 ]
  br i1 %203, label %114, label %204

204:                                              ; preds = %202
  %205 = load i32*, i32** %16, align 8
  %206 = call i64 @BN_is_zero(i32* %205)
  %207 = icmp ne i64 %206, 0
  br i1 %207, label %208, label %212

208:                                              ; preds = %204
  %209 = load i32, i32* @BN_F_BN_GF2M_MOD_SOLVE_QUAD_ARR, align 4
  %210 = load i32, i32* @BN_R_TOO_MANY_ITERATIONS, align 4
  %211 = call i32 @BNerr(i32 %209, i32 %210)
  br label %246

212:                                              ; preds = %204
  br label %213

213:                                              ; preds = %212, %102
  %214 = load i32*, i32** %16, align 8
  %215 = load i32*, i32** %14, align 8
  %216 = load i32*, i32** %8, align 8
  %217 = load i32*, i32** %9, align 8
  %218 = call i32 @BN_GF2m_mod_sqr_arr(i32* %214, i32* %215, i32* %216, i32* %217)
  %219 = icmp ne i32 %218, 0
  br i1 %219, label %221, label %220

220:                                              ; preds = %213
  br label %246

221:                                              ; preds = %213
  %222 = load i32*, i32** %16, align 8
  %223 = load i32*, i32** %14, align 8
  %224 = load i32*, i32** %16, align 8
  %225 = call i32 @BN_GF2m_add(i32* %222, i32* %223, i32* %224)
  %226 = icmp ne i32 %225, 0
  br i1 %226, label %228, label %227

227:                                              ; preds = %221
  br label %246

228:                                              ; preds = %221
  %229 = load i32*, i32** %16, align 8
  %230 = load i32*, i32** %13, align 8
  %231 = call i64 @BN_GF2m_cmp(i32* %229, i32* %230)
  %232 = icmp ne i64 %231, 0
  br i1 %232, label %233, label %237

233:                                              ; preds = %228
  %234 = load i32, i32* @BN_F_BN_GF2M_MOD_SOLVE_QUAD_ARR, align 4
  %235 = load i32, i32* @BN_R_NO_SOLUTION, align 4
  %236 = call i32 @BNerr(i32 %234, i32 %235)
  br label %246

237:                                              ; preds = %228
  %238 = load i32*, i32** %6, align 8
  %239 = load i32*, i32** %14, align 8
  %240 = call i32 @BN_copy(i32* %238, i32* %239)
  %241 = icmp ne i32 %240, 0
  br i1 %241, label %243, label %242

242:                                              ; preds = %237
  br label %246

243:                                              ; preds = %237
  %244 = load i32*, i32** %6, align 8
  %245 = call i32 @bn_check_top(i32* %244)
  store i32 1, i32* %10, align 4
  br label %246

246:                                              ; preds = %243, %242, %233, %227, %220, %208, %186, %179, %172, %163, %155, %139, %131, %124, %112, %97, %90, %82, %65, %51, %46, %39
  %247 = load i32*, i32** %9, align 8
  %248 = call i32 @BN_CTX_end(i32* %247)
  %249 = load i32, i32* %10, align 4
  store i32 %249, i32* %5, align 4
  br label %250

250:                                              ; preds = %246, %25
  %251 = load i32, i32* %5, align 4
  ret i32 %251
}

declare dso_local i32 @bn_check_top(i32*) #1

declare dso_local i32 @BN_zero(i32*) #1

declare dso_local i32 @BN_CTX_start(i32*) #1

declare dso_local i32* @BN_CTX_get(i32*) #1

declare dso_local i32 @BN_GF2m_mod_arr(i32*, i32*, i32*) #1

declare dso_local i64 @BN_is_zero(i32*) #1

declare dso_local i32 @BN_copy(i32*, i32*) #1

declare dso_local i32 @BN_GF2m_mod_sqr_arr(i32*, i32*, i32*, i32*) #1

declare dso_local i32 @BN_GF2m_add(i32*, i32*, i32*) #1

declare dso_local i32 @BN_priv_rand_ex(i32*, i32, i32, i32, i32*) #1

declare dso_local i32 @BN_GF2m_mod_mul_arr(i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @BNerr(i32, i32) #1

declare dso_local i64 @BN_GF2m_cmp(i32*, i32*) #1

declare dso_local i32 @BN_CTX_end(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
