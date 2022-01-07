; ModuleID = '/home/carl/AnghaBench/mpv/video/out/extr_android_common.c_vo_android_uninit.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/extr_android_common.c_vo_android_uninit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vo = type { %struct.vo_android_state* }
%struct.vo_android_state = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vo_android_uninit(%struct.vo* %0) #0 {
  %2 = alloca %struct.vo*, align 8
  %3 = alloca %struct.vo_android_state*, align 8
  store %struct.vo* %0, %struct.vo** %2, align 8
  %4 = load %struct.vo*, %struct.vo** %2, align 8
  %5 = getelementptr inbounds %struct.vo, %struct.vo* %4, i32 0, i32 0
  %6 = load %struct.vo_android_state*, %struct.vo_android_state** %5, align 8
  store %struct.vo_android_state* %6, %struct.vo_android_state** %3, align 8
  %7 = load %struct.vo_android_state*, %struct.vo_android_state** %3, align 8
  %8 = icmp ne %struct.vo_android_state* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  br label %25

10:                                               ; preds = %1
  %11 = load %struct.vo_android_state*, %struct.vo_android_state** %3, align 8
  %12 = getelementptr inbounds %struct.vo_android_state, %struct.vo_android_state* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %10
  %16 = load %struct.vo_android_state*, %struct.vo_android_state** %3, align 8
  %17 = getelementptr inbounds %struct.vo_android_state, %struct.vo_android_state* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = call i32 @ANativeWindow_release(i64 %18)
  br label %20

20:                                               ; preds = %15, %10
  %21 = load %struct.vo_android_state*, %struct.vo_android_state** %3, align 8
  %22 = call i32 @talloc_free(%struct.vo_android_state* %21)
  %23 = load %struct.vo*, %struct.vo** %2, align 8
  %24 = getelementptr inbounds %struct.vo, %struct.vo* %23, i32 0, i32 0
  store %struct.vo_android_state* null, %struct.vo_android_state** %24, align 8
  br label %25

25:                                               ; preds = %20, %9
  ret void
}

declare dso_local i32 @ANativeWindow_release(i64) #1

declare dso_local i32 @talloc_free(%struct.vo_android_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
