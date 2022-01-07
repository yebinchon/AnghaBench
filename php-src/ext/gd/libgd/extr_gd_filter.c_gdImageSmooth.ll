; ModuleID = '/home/carl/AnghaBench/php-src/ext/gd/libgd/extr_gd_filter.c_gdImageSmooth.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/gd/libgd/extr_gd_filter.c_gdImageSmooth.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__const.gdImageSmooth.filter = private unnamed_addr constant [3 x [3 x float]] [[3 x float] [float 1.000000e+00, float 1.000000e+00, float 1.000000e+00], [3 x float] [float 1.000000e+00, float 0.000000e+00, float 1.000000e+00], [3 x float] [float 1.000000e+00, float 1.000000e+00, float 1.000000e+00]], align 16

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gdImageSmooth(i32 %0, float %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca float, align 4
  %5 = alloca [3 x [3 x float]], align 16
  store i32 %0, i32* %3, align 4
  store float %1, float* %4, align 4
  %6 = bitcast [3 x [3 x float]]* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %6, i8* align 16 bitcast ([3 x [3 x float]]* @__const.gdImageSmooth.filter to i8*), i64 36, i1 false)
  %7 = load float, float* %4, align 4
  %8 = getelementptr inbounds [3 x [3 x float]], [3 x [3 x float]]* %5, i64 0, i64 1
  %9 = getelementptr inbounds [3 x float], [3 x float]* %8, i64 0, i64 1
  store float %7, float* %9, align 4
  %10 = load i32, i32* %3, align 4
  %11 = getelementptr inbounds [3 x [3 x float]], [3 x [3 x float]]* %5, i64 0, i64 0
  %12 = bitcast [3 x float]* %11 to float**
  %13 = load float, float* %4, align 4
  %14 = fadd float %13, 8.000000e+00
  %15 = call i32 @gdImageConvolution(i32 %10, float** %12, float %14, i32 0)
  ret i32 %15
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @gdImageConvolution(i32, float**, float, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
