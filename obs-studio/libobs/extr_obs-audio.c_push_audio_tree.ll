; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/extr_obs-audio.c_push_audio_tree.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/extr_obs-audio.c_push_audio_tree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.obs_core_audio = type { i32 }

@DARRAY_INVALID = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i8*)* @push_audio_tree to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @push_audio_tree(i32* %0, i32* %1, i8* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.obs_core_audio*, align 8
  %8 = alloca i32*, align 8
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i8* %2, i8** %6, align 8
  %9 = load i8*, i8** %6, align 8
  %10 = bitcast i8* %9 to %struct.obs_core_audio*
  store %struct.obs_core_audio* %10, %struct.obs_core_audio** %7, align 8
  %11 = load %struct.obs_core_audio*, %struct.obs_core_audio** %7, align 8
  %12 = getelementptr inbounds %struct.obs_core_audio, %struct.obs_core_audio* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i64 @da_find(i32 %13, i32** %5, i32 0)
  %15 = load i64, i64* @DARRAY_INVALID, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %28

17:                                               ; preds = %3
  %18 = load i32*, i32** %5, align 8
  %19 = call i32* @obs_source_get_ref(i32* %18)
  store i32* %19, i32** %8, align 8
  %20 = load i32*, i32** %8, align 8
  %21 = icmp ne i32* %20, null
  br i1 %21, label %22, label %27

22:                                               ; preds = %17
  %23 = load %struct.obs_core_audio*, %struct.obs_core_audio** %7, align 8
  %24 = getelementptr inbounds %struct.obs_core_audio, %struct.obs_core_audio* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @da_push_back(i32 %25, i32** %8)
  br label %27

27:                                               ; preds = %22, %17
  br label %28

28:                                               ; preds = %27, %3
  %29 = load i32*, i32** %4, align 8
  %30 = call i32 @UNUSED_PARAMETER(i32* %29)
  ret void
}

declare dso_local i64 @da_find(i32, i32**, i32) #1

declare dso_local i32* @obs_source_get_ref(i32*) #1

declare dso_local i32 @da_push_back(i32, i32**) #1

declare dso_local i32 @UNUSED_PARAMETER(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
