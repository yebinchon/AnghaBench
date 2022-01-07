; ModuleID = '/home/carl/AnghaBench/mpv/sub/extr_osd_libass.c_ass_draw_c.c'
source_filename = "/home/carl/AnghaBench/mpv/sub/extr_osd_libass.c_ass_draw_c.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ass_draw = type { i32, i32 }

@.str = private unnamed_addr constant [7 x i8] c" %d %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ass_draw*, float, float)* @ass_draw_c to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ass_draw_c(%struct.ass_draw* %0, float %1, float %2) #0 {
  %4 = alloca %struct.ass_draw*, align 8
  %5 = alloca float, align 4
  %6 = alloca float, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.ass_draw* %0, %struct.ass_draw** %4, align 8
  store float %1, float* %5, align 4
  store float %2, float* %6, align 4
  %9 = load float, float* %5, align 4
  %10 = load %struct.ass_draw*, %struct.ass_draw** %4, align 8
  %11 = getelementptr inbounds %struct.ass_draw, %struct.ass_draw* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = sub nsw i32 %12, 1
  %14 = shl i32 1, %13
  %15 = sitofp i32 %14 to float
  %16 = fmul float %9, %15
  %17 = call i32 @round(float %16)
  store i32 %17, i32* %7, align 4
  %18 = load float, float* %6, align 4
  %19 = load %struct.ass_draw*, %struct.ass_draw** %4, align 8
  %20 = getelementptr inbounds %struct.ass_draw, %struct.ass_draw* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = sub nsw i32 %21, 1
  %23 = shl i32 1, %22
  %24 = sitofp i32 %23 to float
  %25 = fmul float %18, %24
  %26 = call i32 @round(float %25)
  store i32 %26, i32* %8, align 4
  %27 = load %struct.ass_draw*, %struct.ass_draw** %4, align 8
  %28 = getelementptr inbounds %struct.ass_draw, %struct.ass_draw* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* %8, align 4
  %32 = call i32 @talloc_asprintf_append(i32 %29, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %30, i32 %31)
  %33 = load %struct.ass_draw*, %struct.ass_draw** %4, align 8
  %34 = getelementptr inbounds %struct.ass_draw, %struct.ass_draw* %33, i32 0, i32 1
  store i32 %32, i32* %34, align 4
  ret void
}

declare dso_local i32 @round(float) #1

declare dso_local i32 @talloc_asprintf_append(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
