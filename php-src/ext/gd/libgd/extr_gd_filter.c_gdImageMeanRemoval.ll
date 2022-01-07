; ModuleID = '/home/carl/AnghaBench/php-src/ext/gd/libgd/extr_gd_filter.c_gdImageMeanRemoval.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/gd/libgd/extr_gd_filter.c_gdImageMeanRemoval.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__const.gdImageMeanRemoval.filter = private unnamed_addr constant [3 x [3 x float]] [[3 x float] [float -1.000000e+00, float -1.000000e+00, float -1.000000e+00], [3 x float] [float -1.000000e+00, float 9.000000e+00, float -1.000000e+00], [3 x float] [float -1.000000e+00, float -1.000000e+00, float -1.000000e+00]], align 16

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gdImageMeanRemoval(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca [3 x [3 x float]], align 16
  store i32 %0, i32* %2, align 4
  %4 = bitcast [3 x [3 x float]]* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %4, i8* align 16 bitcast ([3 x [3 x float]]* @__const.gdImageMeanRemoval.filter to i8*), i64 36, i1 false)
  %5 = load i32, i32* %2, align 4
  %6 = getelementptr inbounds [3 x [3 x float]], [3 x [3 x float]]* %3, i64 0, i64 0
  %7 = bitcast [3 x float]* %6 to float**
  %8 = call i32 @gdImageConvolution(i32 %5, float** %7, i32 1, i32 0)
  ret i32 %8
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @gdImageConvolution(i32, float**, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
