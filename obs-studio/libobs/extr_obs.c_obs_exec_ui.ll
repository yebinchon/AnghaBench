; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/extr_obs.c_obs_exec_ui.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/extr_obs.c_obs_exec_ui.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.obs_modal_ui = type { i32 (i8*, i8*)* }

@OBS_UI_NOTFOUND = common dso_local global i32 0, align 4
@obs = common dso_local global i32 0, align 4
@OBS_UI_SUCCESS = common dso_local global i32 0, align 4
@OBS_UI_CANCEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @obs_exec_ui(i8* %0, i8* %1, i8* %2, i8* %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.obs_modal_ui*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i8* %0, i8** %7, align 8
  store i8* %1, i8** %8, align 8
  store i8* %2, i8** %9, align 8
  store i8* %3, i8** %10, align 8
  store i8* %4, i8** %11, align 8
  %15 = load i32, i32* @OBS_UI_NOTFOUND, align 4
  store i32 %15, i32* %13, align 4
  %16 = load i32, i32* @obs, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %20, label %18

18:                                               ; preds = %5
  %19 = load i32, i32* %13, align 4
  store i32 %19, i32* %6, align 4
  br label %44

20:                                               ; preds = %5
  %21 = load i8*, i8** %7, align 8
  %22 = load i8*, i8** %8, align 8
  %23 = load i8*, i8** %9, align 8
  %24 = call %struct.obs_modal_ui* @get_modal_ui_callback(i8* %21, i8* %22, i8* %23)
  store %struct.obs_modal_ui* %24, %struct.obs_modal_ui** %12, align 8
  %25 = load %struct.obs_modal_ui*, %struct.obs_modal_ui** %12, align 8
  %26 = icmp ne %struct.obs_modal_ui* %25, null
  br i1 %26, label %27, label %42

27:                                               ; preds = %20
  %28 = load %struct.obs_modal_ui*, %struct.obs_modal_ui** %12, align 8
  %29 = getelementptr inbounds %struct.obs_modal_ui, %struct.obs_modal_ui* %28, i32 0, i32 0
  %30 = load i32 (i8*, i8*)*, i32 (i8*, i8*)** %29, align 8
  %31 = load i8*, i8** %10, align 8
  %32 = load i8*, i8** %11, align 8
  %33 = call i32 %30(i8* %31, i8* %32)
  store i32 %33, i32* %14, align 4
  %34 = load i32, i32* %14, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %27
  %37 = load i32, i32* @OBS_UI_SUCCESS, align 4
  br label %40

38:                                               ; preds = %27
  %39 = load i32, i32* @OBS_UI_CANCEL, align 4
  br label %40

40:                                               ; preds = %38, %36
  %41 = phi i32 [ %37, %36 ], [ %39, %38 ]
  store i32 %41, i32* %13, align 4
  br label %42

42:                                               ; preds = %40, %20
  %43 = load i32, i32* %13, align 4
  store i32 %43, i32* %6, align 4
  br label %44

44:                                               ; preds = %42, %18
  %45 = load i32, i32* %6, align 4
  ret i32 %45
}

declare dso_local %struct.obs_modal_ui* @get_modal_ui_callback(i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
