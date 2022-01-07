; ModuleID = '/home/carl/AnghaBench/obs-studio/deps/obs-scripting/extr_obs-scripting-python.c_hotkey_register_frontend.c'
source_filename = "/home/carl/AnghaBench/obs-studio/deps/obs-scripting/extr_obs-scripting-python.c_hotkey_register_frontend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.obs_python_script = type { i32 }
%struct.python_obs_callback = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@cur_python_script = common dso_local global %struct.obs_python_script* null, align 8
@.str = private unnamed_addr constant [4 x i8] c"ssO\00", align 1
@on_remove_hotkey = common dso_local global i32 0, align 4
@hotkey_callback = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"id\00", align 1
@OBS_INVALID_HOTKEY_ID = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i32*)* @hotkey_register_frontend to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @hotkey_register_frontend(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.obs_python_script*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.python_obs_callback*, align 8
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  %12 = load %struct.obs_python_script*, %struct.obs_python_script** @cur_python_script, align 8
  store %struct.obs_python_script* %12, %struct.obs_python_script** %6, align 8
  %13 = load i32*, i32** %5, align 8
  %14 = call i32 @parse_args(i32* %13, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8** %7, i8** %8, i32** %10)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %18, label %16

16:                                               ; preds = %2
  %17 = call i32* (...) @py_invalid_hotkey_id()
  store i32* %17, i32** %3, align 8
  br label %56

18:                                               ; preds = %2
  %19 = load i32*, i32** %10, align 8
  %20 = icmp ne i32* %19, null
  br i1 %20, label %21, label %25

21:                                               ; preds = %18
  %22 = load i32*, i32** %10, align 8
  %23 = call i32 @PyFunction_Check(i32* %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %27, label %25

25:                                               ; preds = %21, %18
  %26 = call i32* (...) @py_invalid_hotkey_id()
  store i32* %26, i32** %3, align 8
  br label %56

27:                                               ; preds = %21
  %28 = load %struct.obs_python_script*, %struct.obs_python_script** %6, align 8
  %29 = load i32*, i32** %10, align 8
  %30 = call %struct.python_obs_callback* @add_python_obs_callback(%struct.obs_python_script* %28, i32* %29)
  store %struct.python_obs_callback* %30, %struct.python_obs_callback** %11, align 8
  %31 = load i32, i32* @on_remove_hotkey, align 4
  %32 = load %struct.python_obs_callback*, %struct.python_obs_callback** %11, align 8
  %33 = getelementptr inbounds %struct.python_obs_callback, %struct.python_obs_callback* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 1
  store i32 %31, i32* %34, align 4
  %35 = load i8*, i8** %7, align 8
  %36 = load i8*, i8** %8, align 8
  %37 = load i32, i32* @hotkey_callback, align 4
  %38 = load %struct.python_obs_callback*, %struct.python_obs_callback** %11, align 8
  %39 = call i64 @obs_hotkey_register_frontend(i8* %35, i8* %36, i32 %37, %struct.python_obs_callback* %38)
  store i64 %39, i64* %9, align 8
  %40 = load %struct.python_obs_callback*, %struct.python_obs_callback** %11, align 8
  %41 = getelementptr inbounds %struct.python_obs_callback, %struct.python_obs_callback* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i64, i64* %9, align 8
  %44 = call i32 @calldata_set_int(i32* %42, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i64 %43)
  %45 = load i64, i64* %9, align 8
  %46 = load i64, i64* @OBS_INVALID_HOTKEY_ID, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %51

48:                                               ; preds = %27
  %49 = load %struct.python_obs_callback*, %struct.python_obs_callback** %11, align 8
  %50 = call i32 @remove_python_obs_callback(%struct.python_obs_callback* %49)
  br label %51

51:                                               ; preds = %48, %27
  %52 = load i32*, i32** %4, align 8
  %53 = call i32 @UNUSED_PARAMETER(i32* %52)
  %54 = load i64, i64* %9, align 8
  %55 = call i32* @PyLong_FromUnsignedLongLong(i64 %54)
  store i32* %55, i32** %3, align 8
  br label %56

56:                                               ; preds = %51, %25, %16
  %57 = load i32*, i32** %3, align 8
  ret i32* %57
}

declare dso_local i32 @parse_args(i32*, i8*, i8**, i8**, i32**) #1

declare dso_local i32* @py_invalid_hotkey_id(...) #1

declare dso_local i32 @PyFunction_Check(i32*) #1

declare dso_local %struct.python_obs_callback* @add_python_obs_callback(%struct.obs_python_script*, i32*) #1

declare dso_local i64 @obs_hotkey_register_frontend(i8*, i8*, i32, %struct.python_obs_callback*) #1

declare dso_local i32 @calldata_set_int(i32*, i8*, i64) #1

declare dso_local i32 @remove_python_obs_callback(%struct.python_obs_callback*) #1

declare dso_local i32 @UNUSED_PARAMETER(i32*) #1

declare dso_local i32* @PyLong_FromUnsignedLongLong(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
