; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/graphics/extr_effect.c_gs_technique_end_pass.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/graphics/extr_effect.c_gs_technique_end_pass.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.gs_effect_pass* }
%struct.gs_effect_pass = type { %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gs_technique_end_pass(%struct.TYPE_9__* %0) #0 {
  %2 = alloca %struct.TYPE_9__*, align 8
  %3 = alloca %struct.gs_effect_pass*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %2, align 8
  %4 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %5 = icmp ne %struct.TYPE_9__* %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  br label %29

7:                                                ; preds = %1
  %8 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %9 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %8, i32 0, i32 0
  %10 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 0
  %12 = load %struct.gs_effect_pass*, %struct.gs_effect_pass** %11, align 8
  store %struct.gs_effect_pass* %12, %struct.gs_effect_pass** %3, align 8
  %13 = load %struct.gs_effect_pass*, %struct.gs_effect_pass** %3, align 8
  %14 = icmp ne %struct.gs_effect_pass* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %7
  br label %29

16:                                               ; preds = %7
  %17 = load %struct.gs_effect_pass*, %struct.gs_effect_pass** %3, align 8
  %18 = getelementptr inbounds %struct.gs_effect_pass, %struct.gs_effect_pass* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = call i32 @clear_tex_params(i32* %19)
  %21 = load %struct.gs_effect_pass*, %struct.gs_effect_pass** %3, align 8
  %22 = getelementptr inbounds %struct.gs_effect_pass, %struct.gs_effect_pass* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 0
  %24 = call i32 @clear_tex_params(i32* %23)
  %25 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i32 0, i32 0
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 0
  store %struct.gs_effect_pass* null, %struct.gs_effect_pass** %28, align 8
  br label %29

29:                                               ; preds = %16, %15, %6
  ret void
}

declare dso_local i32 @clear_tex_params(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
