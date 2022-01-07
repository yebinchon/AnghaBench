; ModuleID = '/home/carl/AnghaBench/openssl/crypto/ec/extr_ecp_nistp224.c_felem_inv.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/ec/extr_ecp_nistp224.c_felem_inv.c"
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
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %11 = load i32, i32* %9, align 4
  %12 = load i32, i32* %4, align 4
  %13 = call i32 @felem_square(i32 %11, i32 %12)
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* %9, align 4
  %16 = call i32 @felem_reduce(i32 %14, i32 %15)
  %17 = load i32, i32* %9, align 4
  %18 = load i32, i32* %4, align 4
  %19 = load i32, i32* %5, align 4
  %20 = call i32 @felem_mul(i32 %17, i32 %18, i32 %19)
  %21 = load i32, i32* %5, align 4
  %22 = load i32, i32* %9, align 4
  %23 = call i32 @felem_reduce(i32 %21, i32 %22)
  %24 = load i32, i32* %9, align 4
  %25 = load i32, i32* %5, align 4
  %26 = call i32 @felem_square(i32 %24, i32 %25)
  %27 = load i32, i32* %5, align 4
  %28 = load i32, i32* %9, align 4
  %29 = call i32 @felem_reduce(i32 %27, i32 %28)
  %30 = load i32, i32* %9, align 4
  %31 = load i32, i32* %4, align 4
  %32 = load i32, i32* %5, align 4
  %33 = call i32 @felem_mul(i32 %30, i32 %31, i32 %32)
  %34 = load i32, i32* %5, align 4
  %35 = load i32, i32* %9, align 4
  %36 = call i32 @felem_reduce(i32 %34, i32 %35)
  %37 = load i32, i32* %9, align 4
  %38 = load i32, i32* %5, align 4
  %39 = call i32 @felem_square(i32 %37, i32 %38)
  %40 = load i32, i32* %6, align 4
  %41 = load i32, i32* %9, align 4
  %42 = call i32 @felem_reduce(i32 %40, i32 %41)
  %43 = load i32, i32* %9, align 4
  %44 = load i32, i32* %6, align 4
  %45 = call i32 @felem_square(i32 %43, i32 %44)
  %46 = load i32, i32* %6, align 4
  %47 = load i32, i32* %9, align 4
  %48 = call i32 @felem_reduce(i32 %46, i32 %47)
  %49 = load i32, i32* %9, align 4
  %50 = load i32, i32* %6, align 4
  %51 = call i32 @felem_square(i32 %49, i32 %50)
  %52 = load i32, i32* %6, align 4
  %53 = load i32, i32* %9, align 4
  %54 = call i32 @felem_reduce(i32 %52, i32 %53)
  %55 = load i32, i32* %9, align 4
  %56 = load i32, i32* %6, align 4
  %57 = load i32, i32* %5, align 4
  %58 = call i32 @felem_mul(i32 %55, i32 %56, i32 %57)
  %59 = load i32, i32* %5, align 4
  %60 = load i32, i32* %9, align 4
  %61 = call i32 @felem_reduce(i32 %59, i32 %60)
  %62 = load i32, i32* %9, align 4
  %63 = load i32, i32* %5, align 4
  %64 = call i32 @felem_square(i32 %62, i32 %63)
  %65 = load i32, i32* %6, align 4
  %66 = load i32, i32* %9, align 4
  %67 = call i32 @felem_reduce(i32 %65, i32 %66)
  store i32 0, i32* %10, align 4
  br label %68

68:                                               ; preds = %78, %2
  %69 = load i32, i32* %10, align 4
  %70 = icmp ult i32 %69, 5
  br i1 %70, label %71, label %81

71:                                               ; preds = %68
  %72 = load i32, i32* %9, align 4
  %73 = load i32, i32* %6, align 4
  %74 = call i32 @felem_square(i32 %72, i32 %73)
  %75 = load i32, i32* %6, align 4
  %76 = load i32, i32* %9, align 4
  %77 = call i32 @felem_reduce(i32 %75, i32 %76)
  br label %78

78:                                               ; preds = %71
  %79 = load i32, i32* %10, align 4
  %80 = add i32 %79, 1
  store i32 %80, i32* %10, align 4
  br label %68

81:                                               ; preds = %68
  %82 = load i32, i32* %9, align 4
  %83 = load i32, i32* %6, align 4
  %84 = load i32, i32* %5, align 4
  %85 = call i32 @felem_mul(i32 %82, i32 %83, i32 %84)
  %86 = load i32, i32* %6, align 4
  %87 = load i32, i32* %9, align 4
  %88 = call i32 @felem_reduce(i32 %86, i32 %87)
  %89 = load i32, i32* %9, align 4
  %90 = load i32, i32* %6, align 4
  %91 = call i32 @felem_square(i32 %89, i32 %90)
  %92 = load i32, i32* %7, align 4
  %93 = load i32, i32* %9, align 4
  %94 = call i32 @felem_reduce(i32 %92, i32 %93)
  store i32 0, i32* %10, align 4
  br label %95

95:                                               ; preds = %105, %81
  %96 = load i32, i32* %10, align 4
  %97 = icmp ult i32 %96, 11
  br i1 %97, label %98, label %108

98:                                               ; preds = %95
  %99 = load i32, i32* %9, align 4
  %100 = load i32, i32* %7, align 4
  %101 = call i32 @felem_square(i32 %99, i32 %100)
  %102 = load i32, i32* %7, align 4
  %103 = load i32, i32* %9, align 4
  %104 = call i32 @felem_reduce(i32 %102, i32 %103)
  br label %105

105:                                              ; preds = %98
  %106 = load i32, i32* %10, align 4
  %107 = add i32 %106, 1
  store i32 %107, i32* %10, align 4
  br label %95

108:                                              ; preds = %95
  %109 = load i32, i32* %9, align 4
  %110 = load i32, i32* %7, align 4
  %111 = load i32, i32* %6, align 4
  %112 = call i32 @felem_mul(i32 %109, i32 %110, i32 %111)
  %113 = load i32, i32* %6, align 4
  %114 = load i32, i32* %9, align 4
  %115 = call i32 @felem_reduce(i32 %113, i32 %114)
  %116 = load i32, i32* %9, align 4
  %117 = load i32, i32* %6, align 4
  %118 = call i32 @felem_square(i32 %116, i32 %117)
  %119 = load i32, i32* %7, align 4
  %120 = load i32, i32* %9, align 4
  %121 = call i32 @felem_reduce(i32 %119, i32 %120)
  store i32 0, i32* %10, align 4
  br label %122

122:                                              ; preds = %132, %108
  %123 = load i32, i32* %10, align 4
  %124 = icmp ult i32 %123, 23
  br i1 %124, label %125, label %135

125:                                              ; preds = %122
  %126 = load i32, i32* %9, align 4
  %127 = load i32, i32* %7, align 4
  %128 = call i32 @felem_square(i32 %126, i32 %127)
  %129 = load i32, i32* %7, align 4
  %130 = load i32, i32* %9, align 4
  %131 = call i32 @felem_reduce(i32 %129, i32 %130)
  br label %132

132:                                              ; preds = %125
  %133 = load i32, i32* %10, align 4
  %134 = add i32 %133, 1
  store i32 %134, i32* %10, align 4
  br label %122

135:                                              ; preds = %122
  %136 = load i32, i32* %9, align 4
  %137 = load i32, i32* %7, align 4
  %138 = load i32, i32* %6, align 4
  %139 = call i32 @felem_mul(i32 %136, i32 %137, i32 %138)
  %140 = load i32, i32* %7, align 4
  %141 = load i32, i32* %9, align 4
  %142 = call i32 @felem_reduce(i32 %140, i32 %141)
  %143 = load i32, i32* %9, align 4
  %144 = load i32, i32* %7, align 4
  %145 = call i32 @felem_square(i32 %143, i32 %144)
  %146 = load i32, i32* %8, align 4
  %147 = load i32, i32* %9, align 4
  %148 = call i32 @felem_reduce(i32 %146, i32 %147)
  store i32 0, i32* %10, align 4
  br label %149

149:                                              ; preds = %159, %135
  %150 = load i32, i32* %10, align 4
  %151 = icmp ult i32 %150, 47
  br i1 %151, label %152, label %162

152:                                              ; preds = %149
  %153 = load i32, i32* %9, align 4
  %154 = load i32, i32* %8, align 4
  %155 = call i32 @felem_square(i32 %153, i32 %154)
  %156 = load i32, i32* %8, align 4
  %157 = load i32, i32* %9, align 4
  %158 = call i32 @felem_reduce(i32 %156, i32 %157)
  br label %159

159:                                              ; preds = %152
  %160 = load i32, i32* %10, align 4
  %161 = add i32 %160, 1
  store i32 %161, i32* %10, align 4
  br label %149

162:                                              ; preds = %149
  %163 = load i32, i32* %9, align 4
  %164 = load i32, i32* %7, align 4
  %165 = load i32, i32* %8, align 4
  %166 = call i32 @felem_mul(i32 %163, i32 %164, i32 %165)
  %167 = load i32, i32* %7, align 4
  %168 = load i32, i32* %9, align 4
  %169 = call i32 @felem_reduce(i32 %167, i32 %168)
  %170 = load i32, i32* %9, align 4
  %171 = load i32, i32* %7, align 4
  %172 = call i32 @felem_square(i32 %170, i32 %171)
  %173 = load i32, i32* %8, align 4
  %174 = load i32, i32* %9, align 4
  %175 = call i32 @felem_reduce(i32 %173, i32 %174)
  store i32 0, i32* %10, align 4
  br label %176

176:                                              ; preds = %186, %162
  %177 = load i32, i32* %10, align 4
  %178 = icmp ult i32 %177, 23
  br i1 %178, label %179, label %189

179:                                              ; preds = %176
  %180 = load i32, i32* %9, align 4
  %181 = load i32, i32* %8, align 4
  %182 = call i32 @felem_square(i32 %180, i32 %181)
  %183 = load i32, i32* %8, align 4
  %184 = load i32, i32* %9, align 4
  %185 = call i32 @felem_reduce(i32 %183, i32 %184)
  br label %186

186:                                              ; preds = %179
  %187 = load i32, i32* %10, align 4
  %188 = add i32 %187, 1
  store i32 %188, i32* %10, align 4
  br label %176

189:                                              ; preds = %176
  %190 = load i32, i32* %9, align 4
  %191 = load i32, i32* %6, align 4
  %192 = load i32, i32* %8, align 4
  %193 = call i32 @felem_mul(i32 %190, i32 %191, i32 %192)
  %194 = load i32, i32* %6, align 4
  %195 = load i32, i32* %9, align 4
  %196 = call i32 @felem_reduce(i32 %194, i32 %195)
  store i32 0, i32* %10, align 4
  br label %197

197:                                              ; preds = %207, %189
  %198 = load i32, i32* %10, align 4
  %199 = icmp ult i32 %198, 6
  br i1 %199, label %200, label %210

200:                                              ; preds = %197
  %201 = load i32, i32* %9, align 4
  %202 = load i32, i32* %6, align 4
  %203 = call i32 @felem_square(i32 %201, i32 %202)
  %204 = load i32, i32* %6, align 4
  %205 = load i32, i32* %9, align 4
  %206 = call i32 @felem_reduce(i32 %204, i32 %205)
  br label %207

207:                                              ; preds = %200
  %208 = load i32, i32* %10, align 4
  %209 = add i32 %208, 1
  store i32 %209, i32* %10, align 4
  br label %197

210:                                              ; preds = %197
  %211 = load i32, i32* %9, align 4
  %212 = load i32, i32* %6, align 4
  %213 = load i32, i32* %5, align 4
  %214 = call i32 @felem_mul(i32 %211, i32 %212, i32 %213)
  %215 = load i32, i32* %5, align 4
  %216 = load i32, i32* %9, align 4
  %217 = call i32 @felem_reduce(i32 %215, i32 %216)
  %218 = load i32, i32* %9, align 4
  %219 = load i32, i32* %5, align 4
  %220 = call i32 @felem_square(i32 %218, i32 %219)
  %221 = load i32, i32* %5, align 4
  %222 = load i32, i32* %9, align 4
  %223 = call i32 @felem_reduce(i32 %221, i32 %222)
  %224 = load i32, i32* %9, align 4
  %225 = load i32, i32* %5, align 4
  %226 = load i32, i32* %4, align 4
  %227 = call i32 @felem_mul(i32 %224, i32 %225, i32 %226)
  %228 = load i32, i32* %5, align 4
  %229 = load i32, i32* %9, align 4
  %230 = call i32 @felem_reduce(i32 %228, i32 %229)
  store i32 0, i32* %10, align 4
  br label %231

231:                                              ; preds = %241, %210
  %232 = load i32, i32* %10, align 4
  %233 = icmp ult i32 %232, 97
  br i1 %233, label %234, label %244

234:                                              ; preds = %231
  %235 = load i32, i32* %9, align 4
  %236 = load i32, i32* %5, align 4
  %237 = call i32 @felem_square(i32 %235, i32 %236)
  %238 = load i32, i32* %5, align 4
  %239 = load i32, i32* %9, align 4
  %240 = call i32 @felem_reduce(i32 %238, i32 %239)
  br label %241

241:                                              ; preds = %234
  %242 = load i32, i32* %10, align 4
  %243 = add i32 %242, 1
  store i32 %243, i32* %10, align 4
  br label %231

244:                                              ; preds = %231
  %245 = load i32, i32* %9, align 4
  %246 = load i32, i32* %5, align 4
  %247 = load i32, i32* %7, align 4
  %248 = call i32 @felem_mul(i32 %245, i32 %246, i32 %247)
  %249 = load i32, i32* %3, align 4
  %250 = load i32, i32* %9, align 4
  %251 = call i32 @felem_reduce(i32 %249, i32 %250)
  ret void
}

declare dso_local i32 @felem_square(i32, i32) #1

declare dso_local i32 @felem_reduce(i32, i32) #1

declare dso_local i32 @felem_mul(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
