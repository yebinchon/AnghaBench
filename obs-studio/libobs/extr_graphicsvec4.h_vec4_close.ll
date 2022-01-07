; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/extr_graphicsvec4.h_vec4_close.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/extr_graphicsvec4.h_vec4_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vec4 = type { float, float, float, float }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vec4*, %struct.vec4*, float)* @vec4_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vec4_close(%struct.vec4* %0, %struct.vec4* %1, float %2) #0 {
  %4 = alloca %struct.vec4*, align 8
  %5 = alloca %struct.vec4*, align 8
  %6 = alloca float, align 4
  %7 = alloca %struct.vec4, align 4
  store %struct.vec4* %0, %struct.vec4** %4, align 8
  store %struct.vec4* %1, %struct.vec4** %5, align 8
  store float %2, float* %6, align 4
  %8 = load %struct.vec4*, %struct.vec4** %4, align 8
  %9 = load %struct.vec4*, %struct.vec4** %5, align 8
  %10 = call i32 @vec4_sub(%struct.vec4* %7, %struct.vec4* %8, %struct.vec4* %9)
  %11 = getelementptr inbounds %struct.vec4, %struct.vec4* %7, i32 0, i32 0
  %12 = load float, float* %11, align 4
  %13 = load float, float* %6, align 4
  %14 = fcmp olt float %12, %13
  br i1 %14, label %15, label %30

15:                                               ; preds = %3
  %16 = getelementptr inbounds %struct.vec4, %struct.vec4* %7, i32 0, i32 1
  %17 = load float, float* %16, align 4
  %18 = load float, float* %6, align 4
  %19 = fcmp olt float %17, %18
  br i1 %19, label %20, label %30

20:                                               ; preds = %15
  %21 = getelementptr inbounds %struct.vec4, %struct.vec4* %7, i32 0, i32 2
  %22 = load float, float* %21, align 4
  %23 = load float, float* %6, align 4
  %24 = fcmp olt float %22, %23
  br i1 %24, label %25, label %30

25:                                               ; preds = %20
  %26 = getelementptr inbounds %struct.vec4, %struct.vec4* %7, i32 0, i32 3
  %27 = load float, float* %26, align 4
  %28 = load float, float* %6, align 4
  %29 = fcmp olt float %27, %28
  br label %30

30:                                               ; preds = %25, %20, %15, %3
  %31 = phi i1 [ false, %20 ], [ false, %15 ], [ false, %3 ], [ %29, %25 ]
  %32 = zext i1 %31 to i32
  ret i32 %32
}

declare dso_local i32 @vec4_sub(%struct.vec4*, %struct.vec4*, %struct.vec4*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
