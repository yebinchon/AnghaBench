; ModuleID = '/home/carl/AnghaBench/obs-studio/plugins/obs-transitions/extr_transition-luma-wipe.c_luma_wipe_callback.c'
source_filename = "/home/carl/AnghaBench/obs-studio/plugins/obs-transitions/extr_transition-luma-wipe.c_luma_wipe_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.luma_wipe_info = type { float, i32, i32, i32, i32, i32, %struct.TYPE_2__, i32, i32, i32 }
%struct.TYPE_2__ = type { i32* }

@.str = private unnamed_addr constant [9 x i8] c"LumaWipe\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32*, i32*, float, i32, i32)* @luma_wipe_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @luma_wipe_callback(i8* %0, i32* %1, i32* %2, float %3, i32 %4, i32 %5) #0 {
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca float, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.luma_wipe_info*, align 8
  store i8* %0, i8** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32* %2, i32** %9, align 8
  store float %3, float* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %14 = load i8*, i8** %7, align 8
  %15 = bitcast i8* %14 to %struct.luma_wipe_info*
  store %struct.luma_wipe_info* %15, %struct.luma_wipe_info** %13, align 8
  %16 = load %struct.luma_wipe_info*, %struct.luma_wipe_info** %13, align 8
  %17 = getelementptr inbounds %struct.luma_wipe_info, %struct.luma_wipe_info* %16, i32 0, i32 9
  %18 = load i32, i32* %17, align 8
  %19 = load i32*, i32** %8, align 8
  %20 = call i32 @gs_effect_set_texture(i32 %18, i32* %19)
  %21 = load %struct.luma_wipe_info*, %struct.luma_wipe_info** %13, align 8
  %22 = getelementptr inbounds %struct.luma_wipe_info, %struct.luma_wipe_info* %21, i32 0, i32 8
  %23 = load i32, i32* %22, align 4
  %24 = load i32*, i32** %9, align 8
  %25 = call i32 @gs_effect_set_texture(i32 %23, i32* %24)
  %26 = load %struct.luma_wipe_info*, %struct.luma_wipe_info** %13, align 8
  %27 = getelementptr inbounds %struct.luma_wipe_info, %struct.luma_wipe_info* %26, i32 0, i32 7
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.luma_wipe_info*, %struct.luma_wipe_info** %13, align 8
  %30 = getelementptr inbounds %struct.luma_wipe_info, %struct.luma_wipe_info* %29, i32 0, i32 6
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = call i32 @gs_effect_set_texture(i32 %28, i32* %32)
  %34 = load %struct.luma_wipe_info*, %struct.luma_wipe_info** %13, align 8
  %35 = getelementptr inbounds %struct.luma_wipe_info, %struct.luma_wipe_info* %34, i32 0, i32 5
  %36 = load i32, i32* %35, align 4
  %37 = load float, float* %10, align 4
  %38 = call i32 @gs_effect_set_float(i32 %36, float %37)
  %39 = load %struct.luma_wipe_info*, %struct.luma_wipe_info** %13, align 8
  %40 = getelementptr inbounds %struct.luma_wipe_info, %struct.luma_wipe_info* %39, i32 0, i32 4
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.luma_wipe_info*, %struct.luma_wipe_info** %13, align 8
  %43 = getelementptr inbounds %struct.luma_wipe_info, %struct.luma_wipe_info* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @gs_effect_set_bool(i32 %41, i32 %44)
  %46 = load %struct.luma_wipe_info*, %struct.luma_wipe_info** %13, align 8
  %47 = getelementptr inbounds %struct.luma_wipe_info, %struct.luma_wipe_info* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.luma_wipe_info*, %struct.luma_wipe_info** %13, align 8
  %50 = getelementptr inbounds %struct.luma_wipe_info, %struct.luma_wipe_info* %49, i32 0, i32 0
  %51 = load float, float* %50, align 8
  %52 = call i32 @gs_effect_set_float(i32 %48, float %51)
  br label %53

53:                                               ; preds = %59, %6
  %54 = load %struct.luma_wipe_info*, %struct.luma_wipe_info** %13, align 8
  %55 = getelementptr inbounds %struct.luma_wipe_info, %struct.luma_wipe_info* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = call i64 @gs_effect_loop(i32 %56, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %63

59:                                               ; preds = %53
  %60 = load i32, i32* %11, align 4
  %61 = load i32, i32* %12, align 4
  %62 = call i32 @gs_draw_sprite(i32* null, i32 0, i32 %60, i32 %61)
  br label %53

63:                                               ; preds = %53
  ret void
}

declare dso_local i32 @gs_effect_set_texture(i32, i32*) #1

declare dso_local i32 @gs_effect_set_float(i32, float) #1

declare dso_local i32 @gs_effect_set_bool(i32, i32) #1

declare dso_local i64 @gs_effect_loop(i32, i8*) #1

declare dso_local i32 @gs_draw_sprite(i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
