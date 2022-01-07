; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/extr_obs-hotkey.c_obs_hotkey_pair_register_source.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/extr_obs-hotkey.c_obs_hotkey_pair_register_source.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@OBS_INVALID_HOTKEY_PAIR_ID = common dso_local global i32 0, align 4
@OBS_HOTKEY_REGISTERER_SOURCE = common dso_local global i32 0, align 4
@weak_source_ref = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @obs_hotkey_pair_register_source(%struct.TYPE_4__* %0, i8* %1, i8* %2, i8* %3, i8* %4, i32 %5, i32 %6, i8* %7, i8* %8) #0 {
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_4__*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %11, align 8
  store i8* %1, i8** %12, align 8
  store i8* %2, i8** %13, align 8
  store i8* %3, i8** %14, align 8
  store i8* %4, i8** %15, align 8
  store i32 %5, i32* %16, align 4
  store i32 %6, i32* %17, align 4
  store i8* %7, i8** %18, align 8
  store i8* %8, i8** %19, align 8
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %21 = icmp ne %struct.TYPE_4__* %20, null
  br i1 %21, label %24, label %22

22:                                               ; preds = %9
  %23 = load i32, i32* @OBS_INVALID_HOTKEY_PAIR_ID, align 4
  store i32 %23, i32* %10, align 4
  br label %39

24:                                               ; preds = %9
  %25 = load i32, i32* @OBS_HOTKEY_REGISTERER_SOURCE, align 4
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %27 = load i32, i32* @weak_source_ref, align 4
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i8*, i8** %12, align 8
  %31 = load i8*, i8** %13, align 8
  %32 = load i8*, i8** %14, align 8
  %33 = load i8*, i8** %15, align 8
  %34 = load i32, i32* %16, align 4
  %35 = load i32, i32* %17, align 4
  %36 = load i8*, i8** %18, align 8
  %37 = load i8*, i8** %19, align 8
  %38 = call i32 @register_hotkey_pair_internal(i32 %25, %struct.TYPE_4__* %26, i32 %27, i32* %29, i8* %30, i8* %31, i8* %32, i8* %33, i32 %34, i32 %35, i8* %36, i8* %37)
  store i32 %38, i32* %10, align 4
  br label %39

39:                                               ; preds = %24, %22
  %40 = load i32, i32* %10, align 4
  ret i32 %40
}

declare dso_local i32 @register_hotkey_pair_internal(i32, %struct.TYPE_4__*, i32, i32*, i8*, i8*, i8*, i8*, i32, i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
