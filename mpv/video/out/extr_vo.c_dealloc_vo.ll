; ModuleID = '/home/carl/AnghaBench/mpv/video/out/extr_vo.c_dealloc_vo.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/extr_vo.c_dealloc_vo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vo = type { %struct.TYPE_2__*, %struct.vo*, %struct.vo*, %struct.vo* }
%struct.TYPE_2__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vo*)* @dealloc_vo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dealloc_vo(%struct.vo* %0) #0 {
  %2 = alloca %struct.vo*, align 8
  store %struct.vo* %0, %struct.vo** %2, align 8
  %3 = load %struct.vo*, %struct.vo** %2, align 8
  %4 = call i32 @forget_frames(%struct.vo* %3)
  %5 = load %struct.vo*, %struct.vo** %2, align 8
  %6 = getelementptr inbounds %struct.vo, %struct.vo* %5, i32 0, i32 3
  %7 = load %struct.vo*, %struct.vo** %6, align 8
  %8 = call i32 @talloc_free(%struct.vo* %7)
  %9 = load %struct.vo*, %struct.vo** %2, align 8
  %10 = getelementptr inbounds %struct.vo, %struct.vo* %9, i32 0, i32 2
  %11 = load %struct.vo*, %struct.vo** %10, align 8
  %12 = call i32 @talloc_free(%struct.vo* %11)
  %13 = load %struct.vo*, %struct.vo** %2, align 8
  %14 = getelementptr inbounds %struct.vo, %struct.vo* %13, i32 0, i32 1
  %15 = load %struct.vo*, %struct.vo** %14, align 8
  %16 = call i32 @talloc_free(%struct.vo* %15)
  %17 = load %struct.vo*, %struct.vo** %2, align 8
  %18 = getelementptr inbounds %struct.vo, %struct.vo* %17, i32 0, i32 0
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 1
  %21 = call i32 @pthread_mutex_destroy(i32* %20)
  %22 = load %struct.vo*, %struct.vo** %2, align 8
  %23 = getelementptr inbounds %struct.vo, %struct.vo* %22, i32 0, i32 0
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = call i32 @pthread_cond_destroy(i32* %25)
  %27 = load %struct.vo*, %struct.vo** %2, align 8
  %28 = call i32 @talloc_free(%struct.vo* %27)
  ret void
}

declare dso_local i32 @forget_frames(%struct.vo*) #1

declare dso_local i32 @talloc_free(%struct.vo*) #1

declare dso_local i32 @pthread_mutex_destroy(i32*) #1

declare dso_local i32 @pthread_cond_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
