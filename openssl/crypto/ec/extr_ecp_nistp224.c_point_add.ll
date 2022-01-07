; ModuleID = '/home/carl/AnghaBench/openssl/crypto/ec/extr_ecp_nistp224.c_point_add.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/ec/extr_ecp_nistp224.c_point_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32, i32, i32, i32, i32, i32, i32, i32)* @point_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @point_add(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7, i32 %8, i32 %9) #0 {
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i64, align 8
  %32 = alloca i64, align 8
  %33 = alloca i64, align 8
  %34 = alloca i64, align 8
  store i32 %0, i32* %11, align 4
  store i32 %1, i32* %12, align 4
  store i32 %2, i32* %13, align 4
  store i32 %3, i32* %14, align 4
  store i32 %4, i32* %15, align 4
  store i32 %5, i32* %16, align 4
  store i32 %6, i32* %17, align 4
  store i32 %7, i32* %18, align 4
  store i32 %8, i32* %19, align 4
  store i32 %9, i32* %20, align 4
  %35 = load i32, i32* %17, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %65, label %37

37:                                               ; preds = %10
  %38 = load i32, i32* %29, align 4
  %39 = load i32, i32* %20, align 4
  %40 = call i32 @felem_square(i32 %38, i32 %39)
  %41 = load i32, i32* %22, align 4
  %42 = load i32, i32* %29, align 4
  %43 = call i32 @felem_reduce(i32 %41, i32 %42)
  %44 = load i32, i32* %29, align 4
  %45 = load i32, i32* %22, align 4
  %46 = load i32, i32* %20, align 4
  %47 = call i32 @felem_mul(i32 %44, i32 %45, i32 %46)
  %48 = load i32, i32* %24, align 4
  %49 = load i32, i32* %29, align 4
  %50 = call i32 @felem_reduce(i32 %48, i32 %49)
  %51 = load i32, i32* %30, align 4
  %52 = load i32, i32* %24, align 4
  %53 = load i32, i32* %15, align 4
  %54 = call i32 @felem_mul(i32 %51, i32 %52, i32 %53)
  %55 = load i32, i32* %24, align 4
  %56 = load i32, i32* %30, align 4
  %57 = call i32 @felem_reduce(i32 %55, i32 %56)
  %58 = load i32, i32* %30, align 4
  %59 = load i32, i32* %22, align 4
  %60 = load i32, i32* %14, align 4
  %61 = call i32 @felem_mul(i32 %58, i32 %59, i32 %60)
  %62 = load i32, i32* %22, align 4
  %63 = load i32, i32* %30, align 4
  %64 = call i32 @felem_reduce(i32 %62, i32 %63)
  br label %72

65:                                               ; preds = %10
  %66 = load i32, i32* %24, align 4
  %67 = load i32, i32* %15, align 4
  %68 = call i32 @felem_assign(i32 %66, i32 %67)
  %69 = load i32, i32* %22, align 4
  %70 = load i32, i32* %14, align 4
  %71 = call i32 @felem_assign(i32 %69, i32 %70)
  br label %72

72:                                               ; preds = %65, %37
  %73 = load i32, i32* %29, align 4
  %74 = load i32, i32* %16, align 4
  %75 = call i32 @felem_square(i32 %73, i32 %74)
  %76 = load i32, i32* %21, align 4
  %77 = load i32, i32* %29, align 4
  %78 = call i32 @felem_reduce(i32 %76, i32 %77)
  %79 = load i32, i32* %29, align 4
  %80 = load i32, i32* %21, align 4
  %81 = load i32, i32* %16, align 4
  %82 = call i32 @felem_mul(i32 %79, i32 %80, i32 %81)
  %83 = load i32, i32* %23, align 4
  %84 = load i32, i32* %29, align 4
  %85 = call i32 @felem_reduce(i32 %83, i32 %84)
  %86 = load i32, i32* %29, align 4
  %87 = load i32, i32* %23, align 4
  %88 = load i32, i32* %19, align 4
  %89 = call i32 @felem_mul(i32 %86, i32 %87, i32 %88)
  %90 = load i32, i32* %29, align 4
  %91 = load i32, i32* %24, align 4
  %92 = call i32 @felem_diff_128_64(i32 %90, i32 %91)
  %93 = load i32, i32* %23, align 4
  %94 = load i32, i32* %29, align 4
  %95 = call i32 @felem_reduce(i32 %93, i32 %94)
  %96 = load i32, i32* %29, align 4
  %97 = load i32, i32* %21, align 4
  %98 = load i32, i32* %18, align 4
  %99 = call i32 @felem_mul(i32 %96, i32 %97, i32 %98)
  %100 = load i32, i32* %29, align 4
  %101 = load i32, i32* %22, align 4
  %102 = call i32 @felem_diff_128_64(i32 %100, i32 %101)
  %103 = load i32, i32* %21, align 4
  %104 = load i32, i32* %29, align 4
  %105 = call i32 @felem_reduce(i32 %103, i32 %104)
  %106 = load i32, i32* %21, align 4
  %107 = call i64 @felem_is_zero(i32 %106)
  store i64 %107, i64* %33, align 8
  %108 = load i32, i32* %23, align 4
  %109 = call i64 @felem_is_zero(i32 %108)
  store i64 %109, i64* %34, align 8
  %110 = load i32, i32* %16, align 4
  %111 = call i64 @felem_is_zero(i32 %110)
  store i64 %111, i64* %31, align 8
  %112 = load i32, i32* %20, align 4
  %113 = call i64 @felem_is_zero(i32 %112)
  store i64 %113, i64* %32, align 8
  %114 = load i64, i64* %33, align 8
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %133

116:                                              ; preds = %72
  %117 = load i64, i64* %34, align 8
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %133

119:                                              ; preds = %116
  %120 = load i64, i64* %31, align 8
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %133, label %122

122:                                              ; preds = %119
  %123 = load i64, i64* %32, align 8
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %133, label %125

125:                                              ; preds = %122
  %126 = load i32, i32* %11, align 4
  %127 = load i32, i32* %12, align 4
  %128 = load i32, i32* %13, align 4
  %129 = load i32, i32* %14, align 4
  %130 = load i32, i32* %15, align 4
  %131 = load i32, i32* %16, align 4
  %132 = call i32 @point_double(i32 %126, i32 %127, i32 %128, i32 %129, i32 %130, i32 %131)
  br label %246

133:                                              ; preds = %122, %119, %116, %72
  %134 = load i32, i32* %17, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %144, label %136

136:                                              ; preds = %133
  %137 = load i32, i32* %29, align 4
  %138 = load i32, i32* %16, align 4
  %139 = load i32, i32* %20, align 4
  %140 = call i32 @felem_mul(i32 %137, i32 %138, i32 %139)
  %141 = load i32, i32* %25, align 4
  %142 = load i32, i32* %29, align 4
  %143 = call i32 @felem_reduce(i32 %141, i32 %142)
  br label %148

144:                                              ; preds = %133
  %145 = load i32, i32* %25, align 4
  %146 = load i32, i32* %16, align 4
  %147 = call i32 @felem_assign(i32 %145, i32 %146)
  br label %148

148:                                              ; preds = %144, %136
  %149 = load i32, i32* %29, align 4
  %150 = load i32, i32* %21, align 4
  %151 = load i32, i32* %25, align 4
  %152 = call i32 @felem_mul(i32 %149, i32 %150, i32 %151)
  %153 = load i32, i32* %28, align 4
  %154 = load i32, i32* %29, align 4
  %155 = call i32 @felem_reduce(i32 %153, i32 %154)
  %156 = load i32, i32* %25, align 4
  %157 = load i32, i32* %21, align 4
  %158 = call i32 @felem_assign(i32 %156, i32 %157)
  %159 = load i32, i32* %29, align 4
  %160 = load i32, i32* %21, align 4
  %161 = call i32 @felem_square(i32 %159, i32 %160)
  %162 = load i32, i32* %21, align 4
  %163 = load i32, i32* %29, align 4
  %164 = call i32 @felem_reduce(i32 %162, i32 %163)
  %165 = load i32, i32* %29, align 4
  %166 = load i32, i32* %21, align 4
  %167 = load i32, i32* %25, align 4
  %168 = call i32 @felem_mul(i32 %165, i32 %166, i32 %167)
  %169 = load i32, i32* %25, align 4
  %170 = load i32, i32* %29, align 4
  %171 = call i32 @felem_reduce(i32 %169, i32 %170)
  %172 = load i32, i32* %29, align 4
  %173 = load i32, i32* %22, align 4
  %174 = load i32, i32* %21, align 4
  %175 = call i32 @felem_mul(i32 %172, i32 %173, i32 %174)
  %176 = load i32, i32* %22, align 4
  %177 = load i32, i32* %29, align 4
  %178 = call i32 @felem_reduce(i32 %176, i32 %177)
  %179 = load i32, i32* %29, align 4
  %180 = load i32, i32* %24, align 4
  %181 = load i32, i32* %25, align 4
  %182 = call i32 @felem_mul(i32 %179, i32 %180, i32 %181)
  %183 = load i32, i32* %30, align 4
  %184 = load i32, i32* %23, align 4
  %185 = call i32 @felem_square(i32 %183, i32 %184)
  %186 = load i32, i32* %30, align 4
  %187 = load i32, i32* %25, align 4
  %188 = call i32 @felem_diff_128_64(i32 %186, i32 %187)
  %189 = load i32, i32* %25, align 4
  %190 = load i32, i32* %22, align 4
  %191 = call i32 @felem_assign(i32 %189, i32 %190)
  %192 = load i32, i32* %25, align 4
  %193 = call i32 @felem_scalar(i32 %192, i32 2)
  %194 = load i32, i32* %30, align 4
  %195 = load i32, i32* %25, align 4
  %196 = call i32 @felem_diff_128_64(i32 %194, i32 %195)
  %197 = load i32, i32* %26, align 4
  %198 = load i32, i32* %30, align 4
  %199 = call i32 @felem_reduce(i32 %197, i32 %198)
  %200 = load i32, i32* %22, align 4
  %201 = load i32, i32* %26, align 4
  %202 = call i32 @felem_diff(i32 %200, i32 %201)
  %203 = load i32, i32* %30, align 4
  %204 = load i32, i32* %23, align 4
  %205 = load i32, i32* %22, align 4
  %206 = call i32 @felem_mul(i32 %203, i32 %204, i32 %205)
  %207 = load i32, i32* %30, align 4
  %208 = load i32, i32* %29, align 4
  %209 = call i32 @widefelem_diff(i32 %207, i32 %208)
  %210 = load i32, i32* %27, align 4
  %211 = load i32, i32* %30, align 4
  %212 = call i32 @felem_reduce(i32 %210, i32 %211)
  %213 = load i32, i32* %26, align 4
  %214 = load i32, i32* %18, align 4
  %215 = load i64, i64* %31, align 8
  %216 = call i32 @copy_conditional(i32 %213, i32 %214, i64 %215)
  %217 = load i32, i32* %26, align 4
  %218 = load i32, i32* %14, align 4
  %219 = load i64, i64* %32, align 8
  %220 = call i32 @copy_conditional(i32 %217, i32 %218, i64 %219)
  %221 = load i32, i32* %27, align 4
  %222 = load i32, i32* %19, align 4
  %223 = load i64, i64* %31, align 8
  %224 = call i32 @copy_conditional(i32 %221, i32 %222, i64 %223)
  %225 = load i32, i32* %27, align 4
  %226 = load i32, i32* %15, align 4
  %227 = load i64, i64* %32, align 8
  %228 = call i32 @copy_conditional(i32 %225, i32 %226, i64 %227)
  %229 = load i32, i32* %28, align 4
  %230 = load i32, i32* %20, align 4
  %231 = load i64, i64* %31, align 8
  %232 = call i32 @copy_conditional(i32 %229, i32 %230, i64 %231)
  %233 = load i32, i32* %28, align 4
  %234 = load i32, i32* %16, align 4
  %235 = load i64, i64* %32, align 8
  %236 = call i32 @copy_conditional(i32 %233, i32 %234, i64 %235)
  %237 = load i32, i32* %11, align 4
  %238 = load i32, i32* %26, align 4
  %239 = call i32 @felem_assign(i32 %237, i32 %238)
  %240 = load i32, i32* %12, align 4
  %241 = load i32, i32* %27, align 4
  %242 = call i32 @felem_assign(i32 %240, i32 %241)
  %243 = load i32, i32* %13, align 4
  %244 = load i32, i32* %28, align 4
  %245 = call i32 @felem_assign(i32 %243, i32 %244)
  br label %246

246:                                              ; preds = %148, %125
  ret void
}

declare dso_local i32 @felem_square(i32, i32) #1

declare dso_local i32 @felem_reduce(i32, i32) #1

declare dso_local i32 @felem_mul(i32, i32, i32) #1

declare dso_local i32 @felem_assign(i32, i32) #1

declare dso_local i32 @felem_diff_128_64(i32, i32) #1

declare dso_local i64 @felem_is_zero(i32) #1

declare dso_local i32 @point_double(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @felem_scalar(i32, i32) #1

declare dso_local i32 @felem_diff(i32, i32) #1

declare dso_local i32 @widefelem_diff(i32, i32) #1

declare dso_local i32 @copy_conditional(i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
