; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/mstsc/extr_win32.c_check_sck.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/mstsc/extr_win32.c_check_sck.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timeval = type { i32 }

@g_block = common dso_local global i32 0, align 4
@g_tcp_sck = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @check_sck to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_sck() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.timeval, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 0, i32* %4, align 4
  %5 = load i32, i32* @g_block, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %26

7:                                                ; preds = %0
  store i32 1, i32* @g_block, align 4
  %8 = call i32 @FD_ZERO(i32* %1)
  %9 = load i64, i64* @g_tcp_sck, align 8
  %10 = trunc i64 %9 to i32
  %11 = call i32 @FD_SET(i32 %10, i32* %1)
  %12 = call i32 @ZeroMemory(%struct.timeval* %2, i32 4)
  %13 = load i64, i64* @g_tcp_sck, align 8
  %14 = add nsw i64 %13, 1
  %15 = call i32 @select(i64 %14, i32* %1, i32 0, i32 0, %struct.timeval* %2)
  store i32 %15, i32* %3, align 4
  %16 = load i32, i32* %3, align 4
  %17 = icmp sgt i32 %16, 0
  br i1 %17, label %18, label %25

18:                                               ; preds = %7
  %19 = call i64 (...) @ui_read_wire()
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %18
  store i32 1, i32* %4, align 4
  br label %24

22:                                               ; preds = %18
  %23 = call i32 @PostQuitMessage(i32 0)
  br label %24

24:                                               ; preds = %22, %21
  br label %25

25:                                               ; preds = %24, %7
  store i32 0, i32* @g_block, align 4
  br label %26

26:                                               ; preds = %25, %0
  %27 = load i32, i32* %4, align 4
  ret i32 %27
}

declare dso_local i32 @FD_ZERO(i32*) #1

declare dso_local i32 @FD_SET(i32, i32*) #1

declare dso_local i32 @ZeroMemory(%struct.timeval*, i32) #1

declare dso_local i32 @select(i64, i32*, i32, i32, %struct.timeval*) #1

declare dso_local i64 @ui_read_wire(...) #1

declare dso_local i32 @PostQuitMessage(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
