; ModuleID = '/home/carl/AnghaBench/obs-studio/plugins/win-capture/graphics-hook/extr_gl-capture.c_gl_shtex_init_window.c'
source_filename = "/home/carl/AnghaBench/obs-studio/plugins/win-capture/graphics-hook/extr_gl-capture.c_gl_shtex_init_window.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@DUMMY_WINDOW_CLASS_NAME = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i32] [i32 68, i32 117, i32 109, i32 109, i32 121, i32 32, i32 71, i32 76, i32 32, i32 119, i32 105, i32 110, i32 100, i32 111, i32 119, i32 44, i32 32, i32 105, i32 103, i32 110, i32 111, i32 114, i32 101, i32 0], align 4
@WS_POPUP = common dso_local global i32 0, align 4
@WS_CLIPCHILDREN = common dso_local global i32 0, align 4
@WS_CLIPSIBLINGS = common dso_local global i32 0, align 4
@data = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@.str.1 = private unnamed_addr constant [50 x i8] c"gl_shtex_init_window: failed to create window: %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @gl_shtex_init_window to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gl_shtex_init_window() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @DUMMY_WINDOW_CLASS_NAME, align 4
  %3 = load i32, i32* @WS_POPUP, align 4
  %4 = load i32, i32* @WS_CLIPCHILDREN, align 4
  %5 = or i32 %3, %4
  %6 = load i32, i32* @WS_CLIPSIBLINGS, align 4
  %7 = or i32 %5, %6
  %8 = call i32 @GetModuleHandle(i32* null)
  %9 = call i32 @CreateWindowExW(i32 0, i32 %2, i8* bitcast ([24 x i32]* @.str to i8*), i32 %7, i32 0, i32 0, i32 2, i32 2, i32* null, i32* null, i32 %8, i32* null)
  store i32 %9, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @data, i32 0, i32 0), align 4
  %10 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @data, i32 0, i32 0), align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %0
  %13 = call i32 (...) @GetLastError()
  %14 = call i32 @hlog(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0), i32 %13)
  store i32 0, i32* %1, align 4
  br label %16

15:                                               ; preds = %0
  store i32 1, i32* %1, align 4
  br label %16

16:                                               ; preds = %15, %12
  %17 = load i32, i32* %1, align 4
  ret i32 %17
}

declare dso_local i32 @CreateWindowExW(i32, i32, i8*, i32, i32, i32, i32, i32, i32*, i32*, i32, i32*) #1

declare dso_local i32 @GetModuleHandle(i32*) #1

declare dso_local i32 @hlog(i8*, i32) #1

declare dso_local i32 @GetLastError(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
