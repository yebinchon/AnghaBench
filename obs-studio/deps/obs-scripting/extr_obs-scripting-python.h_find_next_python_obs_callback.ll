; ModuleID = '/home/carl/AnghaBench/obs-studio/deps/obs-scripting/extr_obs-scripting-python.h_find_next_python_obs_callback.c'
source_filename = "/home/carl/AnghaBench/obs-studio/deps/obs-scripting/extr_obs-scripting-python.h_find_next_python_obs_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.obs_python_script = type { i64 }
%struct.python_obs_callback = type { %struct.TYPE_2__, i32* }
%struct.TYPE_2__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.python_obs_callback* (%struct.obs_python_script*, %struct.python_obs_callback*, i32*)* @find_next_python_obs_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.python_obs_callback* @find_next_python_obs_callback(%struct.obs_python_script* %0, %struct.python_obs_callback* %1, i32* %2) #0 {
  %4 = alloca %struct.obs_python_script*, align 8
  %5 = alloca %struct.python_obs_callback*, align 8
  %6 = alloca i32*, align 8
  store %struct.obs_python_script* %0, %struct.obs_python_script** %4, align 8
  store %struct.python_obs_callback* %1, %struct.python_obs_callback** %5, align 8
  store i32* %2, i32** %6, align 8
  %7 = load %struct.python_obs_callback*, %struct.python_obs_callback** %5, align 8
  %8 = icmp ne %struct.python_obs_callback* %7, null
  br i1 %8, label %9, label %15

9:                                                ; preds = %3
  %10 = load %struct.python_obs_callback*, %struct.python_obs_callback** %5, align 8
  %11 = getelementptr inbounds %struct.python_obs_callback, %struct.python_obs_callback* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = inttoptr i64 %13 to %struct.python_obs_callback*
  br label %20

15:                                               ; preds = %3
  %16 = load %struct.obs_python_script*, %struct.obs_python_script** %4, align 8
  %17 = getelementptr inbounds %struct.obs_python_script, %struct.obs_python_script* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = inttoptr i64 %18 to %struct.python_obs_callback*
  br label %20

20:                                               ; preds = %15, %9
  %21 = phi %struct.python_obs_callback* [ %14, %9 ], [ %19, %15 ]
  store %struct.python_obs_callback* %21, %struct.python_obs_callback** %5, align 8
  br label %22

22:                                               ; preds = %32, %20
  %23 = load %struct.python_obs_callback*, %struct.python_obs_callback** %5, align 8
  %24 = icmp ne %struct.python_obs_callback* %23, null
  br i1 %24, label %25, label %38

25:                                               ; preds = %22
  %26 = load %struct.python_obs_callback*, %struct.python_obs_callback** %5, align 8
  %27 = getelementptr inbounds %struct.python_obs_callback, %struct.python_obs_callback* %26, i32 0, i32 1
  %28 = load i32*, i32** %27, align 8
  %29 = load i32*, i32** %6, align 8
  %30 = icmp eq i32* %28, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %25
  br label %38

32:                                               ; preds = %25
  %33 = load %struct.python_obs_callback*, %struct.python_obs_callback** %5, align 8
  %34 = getelementptr inbounds %struct.python_obs_callback, %struct.python_obs_callback* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = inttoptr i64 %36 to %struct.python_obs_callback*
  store %struct.python_obs_callback* %37, %struct.python_obs_callback** %5, align 8
  br label %22

38:                                               ; preds = %31, %22
  %39 = load %struct.python_obs_callback*, %struct.python_obs_callback** %5, align 8
  ret %struct.python_obs_callback* %39
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
