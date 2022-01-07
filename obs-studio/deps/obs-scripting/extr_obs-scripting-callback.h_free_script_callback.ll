; ModuleID = '/home/carl/AnghaBench/obs-studio/deps/obs-scripting/extr_obs-scripting-callback.h_free_script_callback.c'
source_filename = "/home/carl/AnghaBench/obs-studio/deps/obs-scripting/extr_obs-scripting-callback.h_free_script_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.script_callback = type { %struct.script_callback*, %struct.script_callback** }

@detach_mutex = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.script_callback*)* @free_script_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @free_script_callback(%struct.script_callback* %0) #0 {
  %2 = alloca %struct.script_callback*, align 8
  %3 = alloca %struct.script_callback*, align 8
  store %struct.script_callback* %0, %struct.script_callback** %2, align 8
  %4 = call i32 @pthread_mutex_lock(i32* @detach_mutex)
  %5 = load %struct.script_callback*, %struct.script_callback** %2, align 8
  %6 = getelementptr inbounds %struct.script_callback, %struct.script_callback* %5, i32 0, i32 0
  %7 = load %struct.script_callback*, %struct.script_callback** %6, align 8
  store %struct.script_callback* %7, %struct.script_callback** %3, align 8
  %8 = load %struct.script_callback*, %struct.script_callback** %3, align 8
  %9 = icmp ne %struct.script_callback* %8, null
  br i1 %9, label %10, label %16

10:                                               ; preds = %1
  %11 = load %struct.script_callback*, %struct.script_callback** %2, align 8
  %12 = getelementptr inbounds %struct.script_callback, %struct.script_callback* %11, i32 0, i32 1
  %13 = load %struct.script_callback**, %struct.script_callback*** %12, align 8
  %14 = load %struct.script_callback*, %struct.script_callback** %3, align 8
  %15 = getelementptr inbounds %struct.script_callback, %struct.script_callback* %14, i32 0, i32 1
  store %struct.script_callback** %13, %struct.script_callback*** %15, align 8
  br label %16

16:                                               ; preds = %10, %1
  %17 = load %struct.script_callback*, %struct.script_callback** %2, align 8
  %18 = getelementptr inbounds %struct.script_callback, %struct.script_callback* %17, i32 0, i32 0
  %19 = load %struct.script_callback*, %struct.script_callback** %18, align 8
  %20 = load %struct.script_callback*, %struct.script_callback** %2, align 8
  %21 = getelementptr inbounds %struct.script_callback, %struct.script_callback* %20, i32 0, i32 1
  %22 = load %struct.script_callback**, %struct.script_callback*** %21, align 8
  store %struct.script_callback* %19, %struct.script_callback** %22, align 8
  %23 = call i32 @pthread_mutex_unlock(i32* @detach_mutex)
  %24 = load %struct.script_callback*, %struct.script_callback** %2, align 8
  %25 = call i32 @just_free_script_callback(%struct.script_callback* %24)
  ret void
}

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

declare dso_local i32 @just_free_script_callback(%struct.script_callback*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
