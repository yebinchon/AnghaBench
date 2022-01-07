; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/regedit/extr_childwnd.c_finish_splitbar.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/regedit/extr_childwnd.c_finish_splitbar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32, i32 }

@last_split = common dso_local global i32 0, align 4
@g_pChildWnd = common dso_local global %struct.TYPE_5__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32)* @finish_splitbar to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @finish_splitbar(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_4__, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %3, align 4
  %7 = load i32, i32* @last_split, align 4
  %8 = call i32 @draw_splitbar(i32 %6, i32 %7)
  store i32 -1, i32* @last_split, align 4
  %9 = load i32, i32* %3, align 4
  %10 = call i32 @GetClientRect(i32 %9, %struct.TYPE_4__* %5)
  %11 = load i32, i32* %4, align 4
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** @g_pChildWnd, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  store i32 %11, i32* %13, align 4
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @ResizeWnd(i32 %15, i32 %17)
  %19 = call i32 (...) @ReleaseCapture()
  ret void
}

declare dso_local i32 @draw_splitbar(i32, i32) #1

declare dso_local i32 @GetClientRect(i32, %struct.TYPE_4__*) #1

declare dso_local i32 @ResizeWnd(i32, i32) #1

declare dso_local i32 @ReleaseCapture(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
