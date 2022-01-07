; ModuleID = '/home/carl/AnghaBench/mpv/misc/extr_thread_tools.c_mp_cancel_set_parent.c'
source_filename = "/home/carl/AnghaBench/mpv/misc/extr_thread_tools.c_mp_cancel_set_parent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mp_cancel = type { i32, %struct.mp_cancel*, i32 }

@siblings = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mp_cancel_set_parent(%struct.mp_cancel* %0, %struct.mp_cancel* %1) #0 {
  %3 = alloca %struct.mp_cancel*, align 8
  %4 = alloca %struct.mp_cancel*, align 8
  store %struct.mp_cancel* %0, %struct.mp_cancel** %3, align 8
  store %struct.mp_cancel* %1, %struct.mp_cancel** %4, align 8
  %5 = load %struct.mp_cancel*, %struct.mp_cancel** %3, align 8
  %6 = getelementptr inbounds %struct.mp_cancel, %struct.mp_cancel* %5, i32 0, i32 1
  %7 = load %struct.mp_cancel*, %struct.mp_cancel** %6, align 8
  %8 = load %struct.mp_cancel*, %struct.mp_cancel** %4, align 8
  %9 = icmp eq %struct.mp_cancel* %7, %8
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  br label %64

11:                                               ; preds = %2
  %12 = load %struct.mp_cancel*, %struct.mp_cancel** %3, align 8
  %13 = getelementptr inbounds %struct.mp_cancel, %struct.mp_cancel* %12, i32 0, i32 1
  %14 = load %struct.mp_cancel*, %struct.mp_cancel** %13, align 8
  %15 = icmp ne %struct.mp_cancel* %14, null
  br i1 %15, label %16, label %34

16:                                               ; preds = %11
  %17 = load %struct.mp_cancel*, %struct.mp_cancel** %3, align 8
  %18 = getelementptr inbounds %struct.mp_cancel, %struct.mp_cancel* %17, i32 0, i32 1
  %19 = load %struct.mp_cancel*, %struct.mp_cancel** %18, align 8
  %20 = getelementptr inbounds %struct.mp_cancel, %struct.mp_cancel* %19, i32 0, i32 0
  %21 = call i32 @pthread_mutex_lock(i32* %20)
  %22 = load i32, i32* @siblings, align 4
  %23 = load %struct.mp_cancel*, %struct.mp_cancel** %3, align 8
  %24 = getelementptr inbounds %struct.mp_cancel, %struct.mp_cancel* %23, i32 0, i32 1
  %25 = load %struct.mp_cancel*, %struct.mp_cancel** %24, align 8
  %26 = getelementptr inbounds %struct.mp_cancel, %struct.mp_cancel* %25, i32 0, i32 2
  %27 = load %struct.mp_cancel*, %struct.mp_cancel** %3, align 8
  %28 = call i32 @LL_REMOVE(i32 %22, i32* %26, %struct.mp_cancel* %27)
  %29 = load %struct.mp_cancel*, %struct.mp_cancel** %3, align 8
  %30 = getelementptr inbounds %struct.mp_cancel, %struct.mp_cancel* %29, i32 0, i32 1
  %31 = load %struct.mp_cancel*, %struct.mp_cancel** %30, align 8
  %32 = getelementptr inbounds %struct.mp_cancel, %struct.mp_cancel* %31, i32 0, i32 0
  %33 = call i32 @pthread_mutex_unlock(i32* %32)
  br label %34

34:                                               ; preds = %16, %11
  %35 = load %struct.mp_cancel*, %struct.mp_cancel** %4, align 8
  %36 = load %struct.mp_cancel*, %struct.mp_cancel** %3, align 8
  %37 = getelementptr inbounds %struct.mp_cancel, %struct.mp_cancel* %36, i32 0, i32 1
  store %struct.mp_cancel* %35, %struct.mp_cancel** %37, align 8
  %38 = load %struct.mp_cancel*, %struct.mp_cancel** %3, align 8
  %39 = getelementptr inbounds %struct.mp_cancel, %struct.mp_cancel* %38, i32 0, i32 1
  %40 = load %struct.mp_cancel*, %struct.mp_cancel** %39, align 8
  %41 = icmp ne %struct.mp_cancel* %40, null
  br i1 %41, label %42, label %64

42:                                               ; preds = %34
  %43 = load %struct.mp_cancel*, %struct.mp_cancel** %3, align 8
  %44 = getelementptr inbounds %struct.mp_cancel, %struct.mp_cancel* %43, i32 0, i32 1
  %45 = load %struct.mp_cancel*, %struct.mp_cancel** %44, align 8
  %46 = getelementptr inbounds %struct.mp_cancel, %struct.mp_cancel* %45, i32 0, i32 0
  %47 = call i32 @pthread_mutex_lock(i32* %46)
  %48 = load i32, i32* @siblings, align 4
  %49 = load %struct.mp_cancel*, %struct.mp_cancel** %3, align 8
  %50 = getelementptr inbounds %struct.mp_cancel, %struct.mp_cancel* %49, i32 0, i32 1
  %51 = load %struct.mp_cancel*, %struct.mp_cancel** %50, align 8
  %52 = getelementptr inbounds %struct.mp_cancel, %struct.mp_cancel* %51, i32 0, i32 2
  %53 = load %struct.mp_cancel*, %struct.mp_cancel** %3, align 8
  %54 = call i32 @LL_APPEND(i32 %48, i32* %52, %struct.mp_cancel* %53)
  %55 = load %struct.mp_cancel*, %struct.mp_cancel** %3, align 8
  %56 = getelementptr inbounds %struct.mp_cancel, %struct.mp_cancel* %55, i32 0, i32 1
  %57 = load %struct.mp_cancel*, %struct.mp_cancel** %56, align 8
  %58 = call i32 @retrigger_locked(%struct.mp_cancel* %57)
  %59 = load %struct.mp_cancel*, %struct.mp_cancel** %3, align 8
  %60 = getelementptr inbounds %struct.mp_cancel, %struct.mp_cancel* %59, i32 0, i32 1
  %61 = load %struct.mp_cancel*, %struct.mp_cancel** %60, align 8
  %62 = getelementptr inbounds %struct.mp_cancel, %struct.mp_cancel* %61, i32 0, i32 0
  %63 = call i32 @pthread_mutex_unlock(i32* %62)
  br label %64

64:                                               ; preds = %10, %42, %34
  ret void
}

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare dso_local i32 @LL_REMOVE(i32, i32*, %struct.mp_cancel*) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

declare dso_local i32 @LL_APPEND(i32, i32*, %struct.mp_cancel*) #1

declare dso_local i32 @retrigger_locked(%struct.mp_cancel*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
