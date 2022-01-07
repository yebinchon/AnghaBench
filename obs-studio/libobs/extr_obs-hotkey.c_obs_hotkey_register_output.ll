; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/extr_obs-hotkey.c_obs_hotkey_register_output.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/extr_obs-hotkey.c_obs_hotkey_register_output.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@OBS_INVALID_HOTKEY_ID = common dso_local global i32 0, align 4
@OBS_HOTKEY_REGISTERER_OUTPUT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @obs_hotkey_register_output(%struct.TYPE_4__* %0, i8* %1, i8* %2, i32 %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_4__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %7, align 8
  store i8* %1, i8** %8, align 8
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store i8* %4, i8** %11, align 8
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %14 = icmp ne %struct.TYPE_4__* %13, null
  br i1 %14, label %15, label %18

15:                                               ; preds = %5
  %16 = call i32 (...) @lock()
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %20, label %18

18:                                               ; preds = %15, %5
  %19 = load i32, i32* @OBS_INVALID_HOTKEY_ID, align 4
  store i32 %19, i32* %6, align 4
  br label %33

20:                                               ; preds = %15
  %21 = load i32, i32* @OBS_HOTKEY_REGISTERER_OUTPUT, align 4
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %23 = call i32 @obs_output_get_weak_output(%struct.TYPE_4__* %22)
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i8*, i8** %8, align 8
  %27 = load i8*, i8** %9, align 8
  %28 = load i32, i32* %10, align 4
  %29 = load i8*, i8** %11, align 8
  %30 = call i32 @obs_hotkey_register_internal(i32 %21, i32 %23, i32* %25, i8* %26, i8* %27, i32 %28, i8* %29)
  store i32 %30, i32* %12, align 4
  %31 = call i32 (...) @unlock()
  %32 = load i32, i32* %12, align 4
  store i32 %32, i32* %6, align 4
  br label %33

33:                                               ; preds = %20, %18
  %34 = load i32, i32* %6, align 4
  ret i32 %34
}

declare dso_local i32 @lock(...) #1

declare dso_local i32 @obs_hotkey_register_internal(i32, i32, i32*, i8*, i8*, i32, i8*) #1

declare dso_local i32 @obs_output_get_weak_output(%struct.TYPE_4__*) #1

declare dso_local i32 @unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
