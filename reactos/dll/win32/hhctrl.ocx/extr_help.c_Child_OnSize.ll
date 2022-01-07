; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/hhctrl.ocx/extr_help.c_Child_OnSize.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/hhctrl.ocx/extr_help.c_Child_OnSize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_7__ = type { i64, i64 }

@HWND_TOP = common dso_local global i32 0, align 4
@TAB_RIGHT_PADDING = common dso_local global i64 0, align 8
@TAB_TOP_PADDING = common dso_local global i64 0, align 8
@SWP_NOMOVE = common dso_local global i32 0, align 4
@TAB_CONTENTS = common dso_local global i32 0, align 4
@TAB_INDEX = common dso_local global i32 0, align 4
@TAB_SEARCH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64)* @Child_OnSize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @Child_OnSize(i64 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca %struct.TYPE_7__, align 8
  store i64 %0, i64* %3, align 8
  %6 = load i64, i64* %3, align 8
  %7 = call i64 @GetWindowLongPtrW(i64 %6, i32 0)
  %8 = inttoptr i64 %7 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %8, %struct.TYPE_8__** %4, align 8
  %9 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %10 = icmp ne %struct.TYPE_8__* %9, null
  br i1 %10, label %11, label %18

11:                                               ; preds = %1
  %12 = load i64, i64* %3, align 8
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %12, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %11, %1
  store i32 0, i32* %2, align 4
  br label %45

19:                                               ; preds = %11
  %20 = load i64, i64* %3, align 8
  %21 = call i32 @GetClientRect(i64 %20, %struct.TYPE_7__* %5)
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @HWND_TOP, align 4
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @TAB_RIGHT_PADDING, align 8
  %29 = sub nsw i64 %27, %28
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @TAB_TOP_PADDING, align 8
  %33 = sub nsw i64 %31, %32
  %34 = load i32, i32* @SWP_NOMOVE, align 4
  %35 = call i32 @SetWindowPos(i32 %24, i32 %25, i32 0, i32 0, i64 %29, i64 %33, i32 %34)
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %37 = load i32, i32* @TAB_CONTENTS, align 4
  %38 = call i32 @ResizeTabChild(%struct.TYPE_8__* %36, i32 %37)
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %40 = load i32, i32* @TAB_INDEX, align 4
  %41 = call i32 @ResizeTabChild(%struct.TYPE_8__* %39, i32 %40)
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %43 = load i32, i32* @TAB_SEARCH, align 4
  %44 = call i32 @ResizeTabChild(%struct.TYPE_8__* %42, i32 %43)
  store i32 0, i32* %2, align 4
  br label %45

45:                                               ; preds = %19, %18
  %46 = load i32, i32* %2, align 4
  ret i32 %46
}

declare dso_local i64 @GetWindowLongPtrW(i64, i32) #1

declare dso_local i32 @GetClientRect(i64, %struct.TYPE_7__*) #1

declare dso_local i32 @SetWindowPos(i32, i32, i32, i32, i64, i64, i32) #1

declare dso_local i32 @ResizeTabChild(%struct.TYPE_8__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
