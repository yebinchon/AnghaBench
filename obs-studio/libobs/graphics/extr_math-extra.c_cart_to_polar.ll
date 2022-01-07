; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/graphics/extr_math-extra.c_cart_to_polar.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/graphics/extr_math-extra.c_cart_to_polar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vec3 = type { i32, i32, i32 }

@EPSILON = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cart_to_polar(%struct.vec3* %0, %struct.vec3* %1) #0 {
  %3 = alloca %struct.vec3*, align 8
  %4 = alloca %struct.vec3*, align 8
  %5 = alloca %struct.vec3, align 4
  store %struct.vec3* %0, %struct.vec3** %3, align 8
  store %struct.vec3* %1, %struct.vec3** %4, align 8
  %6 = load %struct.vec3*, %struct.vec3** %4, align 8
  %7 = call i32 @vec3_len(%struct.vec3* %6)
  %8 = getelementptr inbounds %struct.vec3, %struct.vec3* %5, i32 0, i32 0
  store i32 %7, i32* %8, align 4
  %9 = getelementptr inbounds %struct.vec3, %struct.vec3* %5, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @EPSILON, align 4
  %12 = call i64 @close_float(i32 %10, float 0.000000e+00, i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = call i32 @vec3_zero(%struct.vec3* %5)
  br label %33

16:                                               ; preds = %2
  %17 = load %struct.vec3*, %struct.vec3** %4, align 8
  %18 = getelementptr inbounds %struct.vec3, %struct.vec3* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = getelementptr inbounds %struct.vec3, %struct.vec3* %5, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = sdiv i32 %19, %21
  %23 = call i32 @asinf(i32 %22)
  %24 = getelementptr inbounds %struct.vec3, %struct.vec3* %5, i32 0, i32 2
  store i32 %23, i32* %24, align 4
  %25 = load %struct.vec3*, %struct.vec3** %4, align 8
  %26 = getelementptr inbounds %struct.vec3, %struct.vec3* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.vec3*, %struct.vec3** %4, align 8
  %29 = getelementptr inbounds %struct.vec3, %struct.vec3* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @atan2f(i32 %27, i32 %30)
  %32 = getelementptr inbounds %struct.vec3, %struct.vec3* %5, i32 0, i32 1
  store i32 %31, i32* %32, align 4
  br label %33

33:                                               ; preds = %16, %14
  %34 = load %struct.vec3*, %struct.vec3** %3, align 8
  %35 = call i32 @vec3_copy(%struct.vec3* %34, %struct.vec3* %5)
  ret void
}

declare dso_local i32 @vec3_len(%struct.vec3*) #1

declare dso_local i64 @close_float(i32, float, i32) #1

declare dso_local i32 @vec3_zero(%struct.vec3*) #1

declare dso_local i32 @asinf(i32) #1

declare dso_local i32 @atan2f(i32, i32) #1

declare dso_local i32 @vec3_copy(%struct.vec3*, %struct.vec3*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
