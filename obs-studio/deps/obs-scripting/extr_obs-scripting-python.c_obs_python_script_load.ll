; ModuleID = '/home/carl/AnghaBench/obs-studio/deps/obs-scripting/extr_obs-scripting-python.c_obs_python_script_load.c'
source_filename = "/home/carl/AnghaBench/obs-studio/deps/obs-scripting/extr_obs-scripting-python.c_obs_python_script_load.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.obs_python_script = type { %struct.TYPE_4__, %struct.TYPE_3__, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@python_loaded = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @obs_python_script_load(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.obs_python_script*, align 8
  store i32* %0, i32** %2, align 8
  %4 = load i32*, i32** %2, align 8
  %5 = bitcast i32* %4 to %struct.obs_python_script*
  store %struct.obs_python_script* %5, %struct.obs_python_script** %3, align 8
  %6 = load i64, i64* @python_loaded, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %42

8:                                                ; preds = %1
  %9 = load %struct.obs_python_script*, %struct.obs_python_script** %3, align 8
  %10 = getelementptr inbounds %struct.obs_python_script, %struct.obs_python_script* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %42, label %14

14:                                               ; preds = %8
  %15 = call i32 (...) @lock_python()
  %16 = load %struct.obs_python_script*, %struct.obs_python_script** %3, align 8
  %17 = getelementptr inbounds %struct.obs_python_script, %struct.obs_python_script* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %26, label %20

20:                                               ; preds = %14
  %21 = load %struct.obs_python_script*, %struct.obs_python_script** %3, align 8
  %22 = getelementptr inbounds %struct.obs_python_script, %struct.obs_python_script* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @add_to_python_path(i32 %24)
  br label %26

26:                                               ; preds = %20, %14
  %27 = load %struct.obs_python_script*, %struct.obs_python_script** %3, align 8
  %28 = call i32 @load_python_script(%struct.obs_python_script* %27)
  %29 = load %struct.obs_python_script*, %struct.obs_python_script** %3, align 8
  %30 = getelementptr inbounds %struct.obs_python_script, %struct.obs_python_script* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  store i32 %28, i32* %31, align 4
  %32 = call i32 (...) @unlock_python()
  %33 = load %struct.obs_python_script*, %struct.obs_python_script** %3, align 8
  %34 = getelementptr inbounds %struct.obs_python_script, %struct.obs_python_script* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %26
  %39 = load i32*, i32** %2, align 8
  %40 = call i32 @obs_python_script_update(i32* %39, i32* null)
  br label %41

41:                                               ; preds = %38, %26
  br label %42

42:                                               ; preds = %41, %8, %1
  %43 = load %struct.obs_python_script*, %struct.obs_python_script** %3, align 8
  %44 = getelementptr inbounds %struct.obs_python_script, %struct.obs_python_script* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  ret i32 %46
}

declare dso_local i32 @lock_python(...) #1

declare dso_local i32 @add_to_python_path(i32) #1

declare dso_local i32 @load_python_script(%struct.obs_python_script*) #1

declare dso_local i32 @unlock_python(...) #1

declare dso_local i32 @obs_python_script_update(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
