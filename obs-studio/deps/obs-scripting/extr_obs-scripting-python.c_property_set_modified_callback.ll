; ModuleID = '/home/carl/AnghaBench/obs-studio/deps/obs-scripting/extr_obs-scripting-python.c_property_set_modified_callback.c'
source_filename = "/home/carl/AnghaBench/obs-studio/deps/obs-scripting/extr_obs-scripting-python.c_property_set_modified_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.obs_python_script = type { i32 }
%struct.python_obs_callback = type { i32 }

@cur_python_script = common dso_local global %struct.obs_python_script* null, align 8
@obs_property_t = common dso_local global i32 0, align 4
@p = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"OO\00", align 1
@modified_callback = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i32*)* @property_set_modified_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @property_set_modified_callback(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.obs_python_script*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.python_obs_callback*, align 8
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  %10 = load %struct.obs_python_script*, %struct.obs_python_script** @cur_python_script, align 8
  store %struct.obs_python_script* %10, %struct.obs_python_script** %6, align 8
  %11 = load i32, i32* @obs_property_t, align 4
  %12 = load i32, i32* @p, align 4
  %13 = mul nsw i32 %11, %12
  %14 = load i32*, i32** %5, align 8
  %15 = call i32 @parse_args(i32* %14, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32** %7, i32** %8)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %19, label %17

17:                                               ; preds = %2
  %18 = call i32* (...) @python_none()
  store i32* %18, i32** %3, align 8
  br label %46

19:                                               ; preds = %2
  %20 = load i32, i32* @obs_property_t, align 4
  %21 = load i32*, i32** %7, align 8
  %22 = call i32 @py_to_libobs(i32 %20, i32* %21, i32* @p)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %26, label %24

24:                                               ; preds = %19
  %25 = call i32* (...) @python_none()
  store i32* %25, i32** %3, align 8
  br label %46

26:                                               ; preds = %19
  %27 = load i32*, i32** %8, align 8
  %28 = icmp ne i32* %27, null
  br i1 %28, label %29, label %33

29:                                               ; preds = %26
  %30 = load i32*, i32** %8, align 8
  %31 = call i32 @PyFunction_Check(i32* %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %35, label %33

33:                                               ; preds = %29, %26
  %34 = call i32* (...) @python_none()
  store i32* %34, i32** %3, align 8
  br label %46

35:                                               ; preds = %29
  %36 = load %struct.obs_python_script*, %struct.obs_python_script** %6, align 8
  %37 = load i32*, i32** %8, align 8
  %38 = call %struct.python_obs_callback* @add_python_obs_callback(%struct.obs_python_script* %36, i32* %37)
  store %struct.python_obs_callback* %38, %struct.python_obs_callback** %9, align 8
  %39 = load i32, i32* @p, align 4
  %40 = load i32, i32* @modified_callback, align 4
  %41 = load %struct.python_obs_callback*, %struct.python_obs_callback** %9, align 8
  %42 = call i32 @obs_property_set_modified_callback2(i32 %39, i32 %40, %struct.python_obs_callback* %41)
  %43 = load i32*, i32** %4, align 8
  %44 = call i32 @UNUSED_PARAMETER(i32* %43)
  %45 = call i32* (...) @python_none()
  store i32* %45, i32** %3, align 8
  br label %46

46:                                               ; preds = %35, %33, %24, %17
  %47 = load i32*, i32** %3, align 8
  ret i32* %47
}

declare dso_local i32 @parse_args(i32*, i8*, i32**, i32**) #1

declare dso_local i32* @python_none(...) #1

declare dso_local i32 @py_to_libobs(i32, i32*, i32*) #1

declare dso_local i32 @PyFunction_Check(i32*) #1

declare dso_local %struct.python_obs_callback* @add_python_obs_callback(%struct.obs_python_script*, i32*) #1

declare dso_local i32 @obs_property_set_modified_callback2(i32, i32, %struct.python_obs_callback*) #1

declare dso_local i32 @UNUSED_PARAMETER(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
