; ModuleID = '/home/carl/AnghaBench/mpv/video/out/extr_vo.c_wakeup_locked.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/extr_vo.c_wakeup_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vo = type { %struct.TYPE_2__*, %struct.vo_internal* }
%struct.TYPE_2__ = type { i32 (%struct.vo*)* }
%struct.vo_internal = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vo*)* @wakeup_locked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wakeup_locked(%struct.vo* %0) #0 {
  %2 = alloca %struct.vo*, align 8
  %3 = alloca %struct.vo_internal*, align 8
  store %struct.vo* %0, %struct.vo** %2, align 8
  %4 = load %struct.vo*, %struct.vo** %2, align 8
  %5 = getelementptr inbounds %struct.vo, %struct.vo* %4, i32 0, i32 1
  %6 = load %struct.vo_internal*, %struct.vo_internal** %5, align 8
  store %struct.vo_internal* %6, %struct.vo_internal** %3, align 8
  %7 = load %struct.vo_internal*, %struct.vo_internal** %3, align 8
  %8 = getelementptr inbounds %struct.vo_internal, %struct.vo_internal* %7, i32 0, i32 1
  %9 = call i32 @pthread_cond_broadcast(i32* %8)
  %10 = load %struct.vo*, %struct.vo** %2, align 8
  %11 = getelementptr inbounds %struct.vo, %struct.vo* %10, i32 0, i32 0
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32 (%struct.vo*)*, i32 (%struct.vo*)** %13, align 8
  %15 = icmp ne i32 (%struct.vo*)* %14, null
  br i1 %15, label %16, label %24

16:                                               ; preds = %1
  %17 = load %struct.vo*, %struct.vo** %2, align 8
  %18 = getelementptr inbounds %struct.vo, %struct.vo* %17, i32 0, i32 0
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32 (%struct.vo*)*, i32 (%struct.vo*)** %20, align 8
  %22 = load %struct.vo*, %struct.vo** %2, align 8
  %23 = call i32 %21(%struct.vo* %22)
  br label %24

24:                                               ; preds = %16, %1
  %25 = load %struct.vo_internal*, %struct.vo_internal** %3, align 8
  %26 = getelementptr inbounds %struct.vo_internal, %struct.vo_internal* %25, i32 0, i32 0
  store i32 1, i32* %26, align 4
  ret void
}

declare dso_local i32 @pthread_cond_broadcast(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
