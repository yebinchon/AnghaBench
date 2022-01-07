; ModuleID = '/home/carl/AnghaBench/obs-studio/deps/obs-scripting/extr_obs-scripting-python-frontend.c_remove_save_callback.c'
source_filename = "/home/carl/AnghaBench/obs-studio/deps/obs-scripting/extr_obs-scripting-python-frontend.c_remove_save_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.obs_python_script = type { i32 }
%struct.python_obs_callback = type { i32 }

@cur_python_script = common dso_local global %struct.obs_python_script* null, align 8
@.str = private unnamed_addr constant [2 x i8] c"O\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i32*)* @remove_save_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @remove_save_callback(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.obs_python_script*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.python_obs_callback*, align 8
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  %9 = load %struct.obs_python_script*, %struct.obs_python_script** @cur_python_script, align 8
  store %struct.obs_python_script* %9, %struct.obs_python_script** %6, align 8
  store i32* null, i32** %7, align 8
  %10 = load i32*, i32** %4, align 8
  %11 = call i32 @UNUSED_PARAMETER(i32* %10)
  %12 = load i32*, i32** %5, align 8
  %13 = call i32 @parse_args(i32* %12, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32** %7)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %17, label %15

15:                                               ; preds = %2
  %16 = call i32* (...) @python_none()
  store i32* %16, i32** %3, align 8
  br label %37

17:                                               ; preds = %2
  %18 = load i32*, i32** %7, align 8
  %19 = icmp ne i32* %18, null
  br i1 %19, label %20, label %24

20:                                               ; preds = %17
  %21 = load i32*, i32** %7, align 8
  %22 = call i32 @PyFunction_Check(i32* %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %26, label %24

24:                                               ; preds = %20, %17
  %25 = call i32* (...) @python_none()
  store i32* %25, i32** %3, align 8
  br label %37

26:                                               ; preds = %20
  %27 = load %struct.obs_python_script*, %struct.obs_python_script** %6, align 8
  %28 = load i32*, i32** %7, align 8
  %29 = call %struct.python_obs_callback* @find_python_obs_callback(%struct.obs_python_script* %27, i32* %28)
  store %struct.python_obs_callback* %29, %struct.python_obs_callback** %8, align 8
  %30 = load %struct.python_obs_callback*, %struct.python_obs_callback** %8, align 8
  %31 = icmp ne %struct.python_obs_callback* %30, null
  br i1 %31, label %32, label %35

32:                                               ; preds = %26
  %33 = load %struct.python_obs_callback*, %struct.python_obs_callback** %8, align 8
  %34 = call i32 @remove_python_obs_callback(%struct.python_obs_callback* %33)
  br label %35

35:                                               ; preds = %32, %26
  %36 = call i32* (...) @python_none()
  store i32* %36, i32** %3, align 8
  br label %37

37:                                               ; preds = %35, %24, %15
  %38 = load i32*, i32** %3, align 8
  ret i32* %38
}

declare dso_local i32 @UNUSED_PARAMETER(i32*) #1

declare dso_local i32 @parse_args(i32*, i8*, i32**) #1

declare dso_local i32* @python_none(...) #1

declare dso_local i32 @PyFunction_Check(i32*) #1

declare dso_local %struct.python_obs_callback* @find_python_obs_callback(%struct.obs_python_script*, i32*) #1

declare dso_local i32 @remove_python_obs_callback(%struct.python_obs_callback*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
