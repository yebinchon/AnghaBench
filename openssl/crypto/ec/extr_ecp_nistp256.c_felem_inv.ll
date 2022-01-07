; ModuleID = '/home/carl/AnghaBench/openssl/crypto/ec/extr_ecp_nistp256.c_felem_inv.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/ec/extr_ecp_nistp256.c_felem_inv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32)* @felem_inv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @felem_inv(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %15 = load i32, i32* %13, align 4
  %16 = load i32, i32* %4, align 4
  %17 = call i32 @felem_square(i32 %15, i32 %16)
  %18 = load i32, i32* %5, align 4
  %19 = load i32, i32* %13, align 4
  %20 = call i32 @felem_reduce(i32 %18, i32 %19)
  %21 = load i32, i32* %13, align 4
  %22 = load i32, i32* %4, align 4
  %23 = load i32, i32* %5, align 4
  %24 = call i32 @felem_mul(i32 %21, i32 %22, i32 %23)
  %25 = load i32, i32* %5, align 4
  %26 = load i32, i32* %13, align 4
  %27 = call i32 @felem_reduce(i32 %25, i32 %26)
  %28 = load i32, i32* %7, align 4
  %29 = load i32, i32* %5, align 4
  %30 = call i32 @felem_assign(i32 %28, i32 %29)
  %31 = load i32, i32* %13, align 4
  %32 = load i32, i32* %5, align 4
  %33 = call i32 @felem_square(i32 %31, i32 %32)
  %34 = load i32, i32* %5, align 4
  %35 = load i32, i32* %13, align 4
  %36 = call i32 @felem_reduce(i32 %34, i32 %35)
  %37 = load i32, i32* %13, align 4
  %38 = load i32, i32* %5, align 4
  %39 = call i32 @felem_square(i32 %37, i32 %38)
  %40 = load i32, i32* %5, align 4
  %41 = load i32, i32* %13, align 4
  %42 = call i32 @felem_reduce(i32 %40, i32 %41)
  %43 = load i32, i32* %13, align 4
  %44 = load i32, i32* %5, align 4
  %45 = load i32, i32* %7, align 4
  %46 = call i32 @felem_mul(i32 %43, i32 %44, i32 %45)
  %47 = load i32, i32* %5, align 4
  %48 = load i32, i32* %13, align 4
  %49 = call i32 @felem_reduce(i32 %47, i32 %48)
  %50 = load i32, i32* %8, align 4
  %51 = load i32, i32* %5, align 4
  %52 = call i32 @felem_assign(i32 %50, i32 %51)
  %53 = load i32, i32* %13, align 4
  %54 = load i32, i32* %5, align 4
  %55 = call i32 @felem_square(i32 %53, i32 %54)
  %56 = load i32, i32* %5, align 4
  %57 = load i32, i32* %13, align 4
  %58 = call i32 @felem_reduce(i32 %56, i32 %57)
  %59 = load i32, i32* %13, align 4
  %60 = load i32, i32* %5, align 4
  %61 = call i32 @felem_square(i32 %59, i32 %60)
  %62 = load i32, i32* %5, align 4
  %63 = load i32, i32* %13, align 4
  %64 = call i32 @felem_reduce(i32 %62, i32 %63)
  %65 = load i32, i32* %13, align 4
  %66 = load i32, i32* %5, align 4
  %67 = call i32 @felem_square(i32 %65, i32 %66)
  %68 = load i32, i32* %5, align 4
  %69 = load i32, i32* %13, align 4
  %70 = call i32 @felem_reduce(i32 %68, i32 %69)
  %71 = load i32, i32* %13, align 4
  %72 = load i32, i32* %5, align 4
  %73 = call i32 @felem_square(i32 %71, i32 %72)
  %74 = load i32, i32* %5, align 4
  %75 = load i32, i32* %13, align 4
  %76 = call i32 @felem_reduce(i32 %74, i32 %75)
  %77 = load i32, i32* %13, align 4
  %78 = load i32, i32* %5, align 4
  %79 = load i32, i32* %8, align 4
  %80 = call i32 @felem_mul(i32 %77, i32 %78, i32 %79)
  %81 = load i32, i32* %5, align 4
  %82 = load i32, i32* %13, align 4
  %83 = call i32 @felem_reduce(i32 %81, i32 %82)
  %84 = load i32, i32* %9, align 4
  %85 = load i32, i32* %5, align 4
  %86 = call i32 @felem_assign(i32 %84, i32 %85)
  store i32 0, i32* %14, align 4
  br label %87

87:                                               ; preds = %97, %2
  %88 = load i32, i32* %14, align 4
  %89 = icmp ult i32 %88, 8
  br i1 %89, label %90, label %100

90:                                               ; preds = %87
  %91 = load i32, i32* %13, align 4
  %92 = load i32, i32* %5, align 4
  %93 = call i32 @felem_square(i32 %91, i32 %92)
  %94 = load i32, i32* %5, align 4
  %95 = load i32, i32* %13, align 4
  %96 = call i32 @felem_reduce(i32 %94, i32 %95)
  br label %97

97:                                               ; preds = %90
  %98 = load i32, i32* %14, align 4
  %99 = add i32 %98, 1
  store i32 %99, i32* %14, align 4
  br label %87

100:                                              ; preds = %87
  %101 = load i32, i32* %13, align 4
  %102 = load i32, i32* %5, align 4
  %103 = load i32, i32* %9, align 4
  %104 = call i32 @felem_mul(i32 %101, i32 %102, i32 %103)
  %105 = load i32, i32* %5, align 4
  %106 = load i32, i32* %13, align 4
  %107 = call i32 @felem_reduce(i32 %105, i32 %106)
  %108 = load i32, i32* %10, align 4
  %109 = load i32, i32* %5, align 4
  %110 = call i32 @felem_assign(i32 %108, i32 %109)
  store i32 0, i32* %14, align 4
  br label %111

111:                                              ; preds = %121, %100
  %112 = load i32, i32* %14, align 4
  %113 = icmp ult i32 %112, 16
  br i1 %113, label %114, label %124

114:                                              ; preds = %111
  %115 = load i32, i32* %13, align 4
  %116 = load i32, i32* %5, align 4
  %117 = call i32 @felem_square(i32 %115, i32 %116)
  %118 = load i32, i32* %5, align 4
  %119 = load i32, i32* %13, align 4
  %120 = call i32 @felem_reduce(i32 %118, i32 %119)
  br label %121

121:                                              ; preds = %114
  %122 = load i32, i32* %14, align 4
  %123 = add i32 %122, 1
  store i32 %123, i32* %14, align 4
  br label %111

124:                                              ; preds = %111
  %125 = load i32, i32* %13, align 4
  %126 = load i32, i32* %5, align 4
  %127 = load i32, i32* %10, align 4
  %128 = call i32 @felem_mul(i32 %125, i32 %126, i32 %127)
  %129 = load i32, i32* %5, align 4
  %130 = load i32, i32* %13, align 4
  %131 = call i32 @felem_reduce(i32 %129, i32 %130)
  %132 = load i32, i32* %11, align 4
  %133 = load i32, i32* %5, align 4
  %134 = call i32 @felem_assign(i32 %132, i32 %133)
  store i32 0, i32* %14, align 4
  br label %135

135:                                              ; preds = %145, %124
  %136 = load i32, i32* %14, align 4
  %137 = icmp ult i32 %136, 32
  br i1 %137, label %138, label %148

138:                                              ; preds = %135
  %139 = load i32, i32* %13, align 4
  %140 = load i32, i32* %5, align 4
  %141 = call i32 @felem_square(i32 %139, i32 %140)
  %142 = load i32, i32* %5, align 4
  %143 = load i32, i32* %13, align 4
  %144 = call i32 @felem_reduce(i32 %142, i32 %143)
  br label %145

145:                                              ; preds = %138
  %146 = load i32, i32* %14, align 4
  %147 = add i32 %146, 1
  store i32 %147, i32* %14, align 4
  br label %135

148:                                              ; preds = %135
  %149 = load i32, i32* %12, align 4
  %150 = load i32, i32* %5, align 4
  %151 = call i32 @felem_assign(i32 %149, i32 %150)
  %152 = load i32, i32* %13, align 4
  %153 = load i32, i32* %5, align 4
  %154 = load i32, i32* %4, align 4
  %155 = call i32 @felem_mul(i32 %152, i32 %153, i32 %154)
  %156 = load i32, i32* %5, align 4
  %157 = load i32, i32* %13, align 4
  %158 = call i32 @felem_reduce(i32 %156, i32 %157)
  store i32 0, i32* %14, align 4
  br label %159

159:                                              ; preds = %169, %148
  %160 = load i32, i32* %14, align 4
  %161 = icmp ult i32 %160, 192
  br i1 %161, label %162, label %172

162:                                              ; preds = %159
  %163 = load i32, i32* %13, align 4
  %164 = load i32, i32* %5, align 4
  %165 = call i32 @felem_square(i32 %163, i32 %164)
  %166 = load i32, i32* %5, align 4
  %167 = load i32, i32* %13, align 4
  %168 = call i32 @felem_reduce(i32 %166, i32 %167)
  br label %169

169:                                              ; preds = %162
  %170 = load i32, i32* %14, align 4
  %171 = add i32 %170, 1
  store i32 %171, i32* %14, align 4
  br label %159

172:                                              ; preds = %159
  %173 = load i32, i32* %13, align 4
  %174 = load i32, i32* %12, align 4
  %175 = load i32, i32* %11, align 4
  %176 = call i32 @felem_mul(i32 %173, i32 %174, i32 %175)
  %177 = load i32, i32* %6, align 4
  %178 = load i32, i32* %13, align 4
  %179 = call i32 @felem_reduce(i32 %177, i32 %178)
  store i32 0, i32* %14, align 4
  br label %180

180:                                              ; preds = %190, %172
  %181 = load i32, i32* %14, align 4
  %182 = icmp ult i32 %181, 16
  br i1 %182, label %183, label %193

183:                                              ; preds = %180
  %184 = load i32, i32* %13, align 4
  %185 = load i32, i32* %6, align 4
  %186 = call i32 @felem_square(i32 %184, i32 %185)
  %187 = load i32, i32* %6, align 4
  %188 = load i32, i32* %13, align 4
  %189 = call i32 @felem_reduce(i32 %187, i32 %188)
  br label %190

190:                                              ; preds = %183
  %191 = load i32, i32* %14, align 4
  %192 = add i32 %191, 1
  store i32 %192, i32* %14, align 4
  br label %180

193:                                              ; preds = %180
  %194 = load i32, i32* %13, align 4
  %195 = load i32, i32* %6, align 4
  %196 = load i32, i32* %10, align 4
  %197 = call i32 @felem_mul(i32 %194, i32 %195, i32 %196)
  %198 = load i32, i32* %6, align 4
  %199 = load i32, i32* %13, align 4
  %200 = call i32 @felem_reduce(i32 %198, i32 %199)
  store i32 0, i32* %14, align 4
  br label %201

201:                                              ; preds = %211, %193
  %202 = load i32, i32* %14, align 4
  %203 = icmp ult i32 %202, 8
  br i1 %203, label %204, label %214

204:                                              ; preds = %201
  %205 = load i32, i32* %13, align 4
  %206 = load i32, i32* %6, align 4
  %207 = call i32 @felem_square(i32 %205, i32 %206)
  %208 = load i32, i32* %6, align 4
  %209 = load i32, i32* %13, align 4
  %210 = call i32 @felem_reduce(i32 %208, i32 %209)
  br label %211

211:                                              ; preds = %204
  %212 = load i32, i32* %14, align 4
  %213 = add i32 %212, 1
  store i32 %213, i32* %14, align 4
  br label %201

214:                                              ; preds = %201
  %215 = load i32, i32* %13, align 4
  %216 = load i32, i32* %6, align 4
  %217 = load i32, i32* %9, align 4
  %218 = call i32 @felem_mul(i32 %215, i32 %216, i32 %217)
  %219 = load i32, i32* %6, align 4
  %220 = load i32, i32* %13, align 4
  %221 = call i32 @felem_reduce(i32 %219, i32 %220)
  store i32 0, i32* %14, align 4
  br label %222

222:                                              ; preds = %232, %214
  %223 = load i32, i32* %14, align 4
  %224 = icmp ult i32 %223, 4
  br i1 %224, label %225, label %235

225:                                              ; preds = %222
  %226 = load i32, i32* %13, align 4
  %227 = load i32, i32* %6, align 4
  %228 = call i32 @felem_square(i32 %226, i32 %227)
  %229 = load i32, i32* %6, align 4
  %230 = load i32, i32* %13, align 4
  %231 = call i32 @felem_reduce(i32 %229, i32 %230)
  br label %232

232:                                              ; preds = %225
  %233 = load i32, i32* %14, align 4
  %234 = add i32 %233, 1
  store i32 %234, i32* %14, align 4
  br label %222

235:                                              ; preds = %222
  %236 = load i32, i32* %13, align 4
  %237 = load i32, i32* %6, align 4
  %238 = load i32, i32* %8, align 4
  %239 = call i32 @felem_mul(i32 %236, i32 %237, i32 %238)
  %240 = load i32, i32* %6, align 4
  %241 = load i32, i32* %13, align 4
  %242 = call i32 @felem_reduce(i32 %240, i32 %241)
  %243 = load i32, i32* %13, align 4
  %244 = load i32, i32* %6, align 4
  %245 = call i32 @felem_square(i32 %243, i32 %244)
  %246 = load i32, i32* %6, align 4
  %247 = load i32, i32* %13, align 4
  %248 = call i32 @felem_reduce(i32 %246, i32 %247)
  %249 = load i32, i32* %13, align 4
  %250 = load i32, i32* %6, align 4
  %251 = call i32 @felem_square(i32 %249, i32 %250)
  %252 = load i32, i32* %6, align 4
  %253 = load i32, i32* %13, align 4
  %254 = call i32 @felem_reduce(i32 %252, i32 %253)
  %255 = load i32, i32* %13, align 4
  %256 = load i32, i32* %6, align 4
  %257 = load i32, i32* %7, align 4
  %258 = call i32 @felem_mul(i32 %255, i32 %256, i32 %257)
  %259 = load i32, i32* %6, align 4
  %260 = load i32, i32* %13, align 4
  %261 = call i32 @felem_reduce(i32 %259, i32 %260)
  %262 = load i32, i32* %13, align 4
  %263 = load i32, i32* %6, align 4
  %264 = call i32 @felem_square(i32 %262, i32 %263)
  %265 = load i32, i32* %6, align 4
  %266 = load i32, i32* %13, align 4
  %267 = call i32 @felem_reduce(i32 %265, i32 %266)
  %268 = load i32, i32* %13, align 4
  %269 = load i32, i32* %6, align 4
  %270 = call i32 @felem_square(i32 %268, i32 %269)
  %271 = load i32, i32* %6, align 4
  %272 = load i32, i32* %13, align 4
  %273 = call i32 @felem_reduce(i32 %271, i32 %272)
  %274 = load i32, i32* %13, align 4
  %275 = load i32, i32* %6, align 4
  %276 = load i32, i32* %4, align 4
  %277 = call i32 @felem_mul(i32 %274, i32 %275, i32 %276)
  %278 = load i32, i32* %6, align 4
  %279 = load i32, i32* %13, align 4
  %280 = call i32 @felem_reduce(i32 %278, i32 %279)
  %281 = load i32, i32* %13, align 4
  %282 = load i32, i32* %6, align 4
  %283 = load i32, i32* %5, align 4
  %284 = call i32 @felem_mul(i32 %281, i32 %282, i32 %283)
  %285 = load i32, i32* %3, align 4
  %286 = load i32, i32* %13, align 4
  %287 = call i32 @felem_reduce(i32 %285, i32 %286)
  ret void
}

declare dso_local i32 @felem_square(i32, i32) #1

declare dso_local i32 @felem_reduce(i32, i32) #1

declare dso_local i32 @felem_mul(i32, i32, i32) #1

declare dso_local i32 @felem_assign(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
