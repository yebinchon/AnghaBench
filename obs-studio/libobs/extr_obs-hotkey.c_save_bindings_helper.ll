; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/extr_obs-hotkey.c_save_bindings_helper.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/extr_obs-hotkey.c_save_bindings_helper.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32 }
%struct.save_bindings_helper_t = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64 }

@.str = private unnamed_addr constant [6 x i8] c"shift\00", align 1
@INTERACT_SHIFT_KEY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"control\00", align 1
@INTERACT_CONTROL_KEY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [4 x i8] c"alt\00", align 1
@INTERACT_ALT_KEY = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [8 x i8] c"command\00", align 1
@INTERACT_COMMAND_KEY = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [4 x i8] c"key\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i64, %struct.TYPE_7__*)* @save_bindings_helper to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @save_bindings_helper(i8* %0, i64 %1, %struct.TYPE_7__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_7__*, align 8
  %8 = alloca %struct.save_bindings_helper_t*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.TYPE_7__* %2, %struct.TYPE_7__** %7, align 8
  %11 = load i64, i64* %6, align 8
  %12 = call i32 @UNUSED_PARAMETER(i64 %11)
  %13 = load i8*, i8** %5, align 8
  %14 = bitcast i8* %13 to %struct.save_bindings_helper_t*
  store %struct.save_bindings_helper_t* %14, %struct.save_bindings_helper_t** %8, align 8
  %15 = load %struct.save_bindings_helper_t*, %struct.save_bindings_helper_t** %8, align 8
  %16 = getelementptr inbounds %struct.save_bindings_helper_t, %struct.save_bindings_helper_t* %15, i32 0, i32 1
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %19, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %3
  store i32 1, i32* %4, align 4
  br label %61

25:                                               ; preds = %3
  %26 = call i32* (...) @obs_data_create()
  store i32* %26, i32** %9, align 8
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %10, align 4
  %31 = load i32, i32* %10, align 4
  %32 = load i32*, i32** %9, align 8
  %33 = load i32, i32* @INTERACT_SHIFT_KEY, align 4
  %34 = call i32 @save_modifier(i32 %31, i32* %32, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %33)
  %35 = load i32, i32* %10, align 4
  %36 = load i32*, i32** %9, align 8
  %37 = load i32, i32* @INTERACT_CONTROL_KEY, align 4
  %38 = call i32 @save_modifier(i32 %35, i32* %36, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 %37)
  %39 = load i32, i32* %10, align 4
  %40 = load i32*, i32** %9, align 8
  %41 = load i32, i32* @INTERACT_ALT_KEY, align 4
  %42 = call i32 @save_modifier(i32 %39, i32* %40, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 %41)
  %43 = load i32, i32* %10, align 4
  %44 = load i32*, i32** %9, align 8
  %45 = load i32, i32* @INTERACT_COMMAND_KEY, align 4
  %46 = call i32 @save_modifier(i32 %43, i32* %44, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i32 %45)
  %47 = load i32*, i32** %9, align 8
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @obs_key_to_name(i32 %51)
  %53 = call i32 @obs_data_set_string(i32* %47, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32 %52)
  %54 = load %struct.save_bindings_helper_t*, %struct.save_bindings_helper_t** %8, align 8
  %55 = getelementptr inbounds %struct.save_bindings_helper_t, %struct.save_bindings_helper_t* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load i32*, i32** %9, align 8
  %58 = call i32 @obs_data_array_push_back(i32 %56, i32* %57)
  %59 = load i32*, i32** %9, align 8
  %60 = call i32 @obs_data_release(i32* %59)
  store i32 1, i32* %4, align 4
  br label %61

61:                                               ; preds = %25, %24
  %62 = load i32, i32* %4, align 4
  ret i32 %62
}

declare dso_local i32 @UNUSED_PARAMETER(i64) #1

declare dso_local i32* @obs_data_create(...) #1

declare dso_local i32 @save_modifier(i32, i32*, i8*, i32) #1

declare dso_local i32 @obs_data_set_string(i32*, i8*, i32) #1

declare dso_local i32 @obs_key_to_name(i32) #1

declare dso_local i32 @obs_data_array_push_back(i32, i32*) #1

declare dso_local i32 @obs_data_release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
