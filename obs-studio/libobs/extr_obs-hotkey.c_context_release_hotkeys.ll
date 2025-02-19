; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/extr_obs-hotkey.c_context_release_hotkeys.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/extr_obs-hotkey.c_context_release_hotkeys.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.obs_context_data = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.obs_context_data*)* @context_release_hotkeys to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @context_release_hotkeys(%struct.obs_context_data* %0) #0 {
  %2 = alloca %struct.obs_context_data*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  store %struct.obs_context_data* %0, %struct.obs_context_data** %2, align 8
  %5 = load %struct.obs_context_data*, %struct.obs_context_data** %2, align 8
  %6 = getelementptr inbounds %struct.obs_context_data, %struct.obs_context_data* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  br label %44

11:                                               ; preds = %1
  store i32 0, i32* %3, align 4
  store i64 0, i64* %4, align 8
  br label %12

12:                                               ; preds = %35, %11
  %13 = load i64, i64* %4, align 8
  %14 = load %struct.obs_context_data*, %struct.obs_context_data** %2, align 8
  %15 = getelementptr inbounds %struct.obs_context_data, %struct.obs_context_data* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ult i64 %13, %17
  br i1 %18, label %19, label %38

19:                                               ; preds = %12
  %20 = load %struct.obs_context_data*, %struct.obs_context_data** %2, align 8
  %21 = getelementptr inbounds %struct.obs_context_data, %struct.obs_context_data* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 1
  %23 = load i32*, i32** %22, align 8
  %24 = load i64, i64* %4, align 8
  %25 = getelementptr inbounds i32, i32* %23, i64 %24
  %26 = load i32, i32* %25, align 4
  %27 = call i64 @unregister_hotkey(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %19
  %30 = load i32, i32* %3, align 4
  %31 = icmp ne i32 %30, 0
  br label %32

32:                                               ; preds = %29, %19
  %33 = phi i1 [ true, %19 ], [ %31, %29 ]
  %34 = zext i1 %33 to i32
  store i32 %34, i32* %3, align 4
  br label %35

35:                                               ; preds = %32
  %36 = load i64, i64* %4, align 8
  %37 = add i64 %36, 1
  store i64 %37, i64* %4, align 8
  br label %12

38:                                               ; preds = %12
  %39 = load i32, i32* %3, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %38
  %42 = call i32 (...) @fixup_pointers()
  br label %43

43:                                               ; preds = %41, %38
  br label %44

44:                                               ; preds = %43, %10
  %45 = load %struct.obs_context_data*, %struct.obs_context_data** %2, align 8
  %46 = getelementptr inbounds %struct.obs_context_data, %struct.obs_context_data* %45, i32 0, i32 0
  %47 = bitcast %struct.TYPE_2__* %46 to { i64, i32* }*
  %48 = getelementptr inbounds { i64, i32* }, { i64, i32* }* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = getelementptr inbounds { i64, i32* }, { i64, i32* }* %47, i32 0, i32 1
  %51 = load i32*, i32** %50, align 8
  %52 = call i32 @da_free(i64 %49, i32* %51)
  ret void
}

declare dso_local i64 @unregister_hotkey(i32) #1

declare dso_local i32 @fixup_pointers(...) #1

declare dso_local i32 @da_free(i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
