; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/graphics/extr_graphics.c_find_cached_effect.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/graphics/extr_graphics.c_find_cached_effect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { %struct.gs_effect* }
%struct.gs_effect = type { %struct.gs_effect*, i32 }

@thread_graphics = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.gs_effect* (i8*)* @find_cached_effect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.gs_effect* @find_cached_effect(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.gs_effect*, align 8
  store i8* %0, i8** %2, align 8
  %4 = load %struct.TYPE_2__*, %struct.TYPE_2__** @thread_graphics, align 8
  %5 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %4, i32 0, i32 0
  %6 = load %struct.gs_effect*, %struct.gs_effect** %5, align 8
  store %struct.gs_effect* %6, %struct.gs_effect** %3, align 8
  br label %7

7:                                                ; preds = %18, %1
  %8 = load %struct.gs_effect*, %struct.gs_effect** %3, align 8
  %9 = icmp ne %struct.gs_effect* %8, null
  br i1 %9, label %10, label %22

10:                                               ; preds = %7
  %11 = load %struct.gs_effect*, %struct.gs_effect** %3, align 8
  %12 = getelementptr inbounds %struct.gs_effect, %struct.gs_effect* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  %14 = load i8*, i8** %2, align 8
  %15 = call i64 @strcmp(i32 %13, i8* %14)
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %10
  br label %22

18:                                               ; preds = %10
  %19 = load %struct.gs_effect*, %struct.gs_effect** %3, align 8
  %20 = getelementptr inbounds %struct.gs_effect, %struct.gs_effect* %19, i32 0, i32 0
  %21 = load %struct.gs_effect*, %struct.gs_effect** %20, align 8
  store %struct.gs_effect* %21, %struct.gs_effect** %3, align 8
  br label %7

22:                                               ; preds = %17, %7
  %23 = load %struct.gs_effect*, %struct.gs_effect** %3, align 8
  ret %struct.gs_effect* %23
}

declare dso_local i64 @strcmp(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
