; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/graphics/extr_matrix4.c_matrix4_translate4v_i.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/graphics/extr_matrix4.c_matrix4_translate4v_i.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vec4 = type { i32 }
%struct.matrix4 = type { i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @matrix4_translate4v_i(%struct.matrix4* %0, %struct.vec4* %1, %struct.matrix4* %2) #0 {
  %4 = alloca %struct.matrix4*, align 8
  %5 = alloca %struct.vec4*, align 8
  %6 = alloca %struct.matrix4*, align 8
  %7 = alloca %struct.matrix4, align 4
  store %struct.matrix4* %0, %struct.matrix4** %4, align 8
  store %struct.vec4* %1, %struct.vec4** %5, align 8
  store %struct.matrix4* %2, %struct.matrix4** %6, align 8
  %8 = getelementptr inbounds %struct.matrix4, %struct.matrix4* %7, i32 0, i32 3
  %9 = call i32 @vec4_set(i32* %8, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00)
  %10 = getelementptr inbounds %struct.matrix4, %struct.matrix4* %7, i32 0, i32 2
  %11 = call i32 @vec4_set(i32* %10, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00)
  %12 = getelementptr inbounds %struct.matrix4, %struct.matrix4* %7, i32 0, i32 1
  %13 = call i32 @vec4_set(i32* %12, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00)
  %14 = getelementptr inbounds %struct.matrix4, %struct.matrix4* %7, i32 0, i32 0
  %15 = load %struct.vec4*, %struct.vec4** %5, align 8
  %16 = call i32 @vec4_copy(i32* %14, %struct.vec4* %15)
  %17 = load %struct.matrix4*, %struct.matrix4** %4, align 8
  %18 = load %struct.matrix4*, %struct.matrix4** %6, align 8
  %19 = call i32 @matrix4_mul(%struct.matrix4* %17, %struct.matrix4* %7, %struct.matrix4* %18)
  ret void
}

declare dso_local i32 @vec4_set(i32*, float, float, float, float) #1

declare dso_local i32 @vec4_copy(i32*, %struct.vec4*) #1

declare dso_local i32 @matrix4_mul(%struct.matrix4*, %struct.matrix4*, %struct.matrix4*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
