; ModuleID = '/home/carl/AnghaBench/obs-studio/plugins/win-capture/extr_window-capture.c_wc_destroy.c'
source_filename = "/home/carl/AnghaBench/obs-studio/plugins/win-capture/extr_window-capture.c_wc_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.window_capture = type { %struct.window_capture*, %struct.window_capture*, %struct.window_capture*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @wc_destroy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wc_destroy(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.window_capture*, align 8
  store i8* %0, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = bitcast i8* %4 to %struct.window_capture*
  store %struct.window_capture* %5, %struct.window_capture** %3, align 8
  %6 = load %struct.window_capture*, %struct.window_capture** %3, align 8
  %7 = icmp ne %struct.window_capture* %6, null
  br i1 %7, label %8, label %28

8:                                                ; preds = %1
  %9 = call i32 (...) @obs_enter_graphics()
  %10 = load %struct.window_capture*, %struct.window_capture** %3, align 8
  %11 = getelementptr inbounds %struct.window_capture, %struct.window_capture* %10, i32 0, i32 3
  %12 = call i32 @dc_capture_free(i32* %11)
  %13 = call i32 (...) @obs_leave_graphics()
  %14 = load %struct.window_capture*, %struct.window_capture** %3, align 8
  %15 = getelementptr inbounds %struct.window_capture, %struct.window_capture* %14, i32 0, i32 2
  %16 = load %struct.window_capture*, %struct.window_capture** %15, align 8
  %17 = call i32 @bfree(%struct.window_capture* %16)
  %18 = load %struct.window_capture*, %struct.window_capture** %3, align 8
  %19 = getelementptr inbounds %struct.window_capture, %struct.window_capture* %18, i32 0, i32 1
  %20 = load %struct.window_capture*, %struct.window_capture** %19, align 8
  %21 = call i32 @bfree(%struct.window_capture* %20)
  %22 = load %struct.window_capture*, %struct.window_capture** %3, align 8
  %23 = getelementptr inbounds %struct.window_capture, %struct.window_capture* %22, i32 0, i32 0
  %24 = load %struct.window_capture*, %struct.window_capture** %23, align 8
  %25 = call i32 @bfree(%struct.window_capture* %24)
  %26 = load %struct.window_capture*, %struct.window_capture** %3, align 8
  %27 = call i32 @bfree(%struct.window_capture* %26)
  br label %28

28:                                               ; preds = %8, %1
  ret void
}

declare dso_local i32 @obs_enter_graphics(...) #1

declare dso_local i32 @dc_capture_free(i32*) #1

declare dso_local i32 @obs_leave_graphics(...) #1

declare dso_local i32 @bfree(%struct.window_capture*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
