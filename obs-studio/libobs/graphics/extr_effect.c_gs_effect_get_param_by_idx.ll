; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/graphics/extr_effect.c_gs_effect_get_param_by_idx.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/graphics/extr_effect.c_gs_effect_get_param_by_idx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gs_effect_param = type { i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, %struct.gs_effect_param* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.gs_effect_param* @gs_effect_get_param_by_idx(%struct.TYPE_5__* %0, i64 %1) #0 {
  %3 = alloca %struct.gs_effect_param*, align 8
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.gs_effect_param*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %8 = icmp ne %struct.TYPE_5__* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %2
  store %struct.gs_effect_param* null, %struct.gs_effect_param** %3, align 8
  br label %26

10:                                               ; preds = %2
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 1
  %14 = load %struct.gs_effect_param*, %struct.gs_effect_param** %13, align 8
  store %struct.gs_effect_param* %14, %struct.gs_effect_param** %6, align 8
  %15 = load i64, i64* %5, align 8
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp uge i64 %15, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %10
  store %struct.gs_effect_param* null, %struct.gs_effect_param** %3, align 8
  br label %26

22:                                               ; preds = %10
  %23 = load %struct.gs_effect_param*, %struct.gs_effect_param** %6, align 8
  %24 = load i64, i64* %5, align 8
  %25 = getelementptr inbounds %struct.gs_effect_param, %struct.gs_effect_param* %23, i64 %24
  store %struct.gs_effect_param* %25, %struct.gs_effect_param** %3, align 8
  br label %26

26:                                               ; preds = %22, %21, %9
  %27 = load %struct.gs_effect_param*, %struct.gs_effect_param** %3, align 8
  ret %struct.gs_effect_param* %27
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
