; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/comctl32/extr_updown.c_UPDOWN_KeyPressed.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/comctl32/extr_updown.c_UPDOWN_KeyPressed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, %struct.TYPE_6__*, i64, i32 }
%struct.TYPE_6__ = type { i32 }

@VK_UP = common dso_local global i32 0, align 4
@FLAG_INCR = common dso_local global i32 0, align 4
@VK_DOWN = common dso_local global i32 0, align 4
@FLAG_DECR = common dso_local global i32 0, align 4
@FLAG_ARROW = common dso_local global i32 0, align 4
@FLAG_PRESSED = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@TIMER_AUTOPRESS = common dso_local global i32 0, align 4
@AUTOPRESS_DELAY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*, i32)* @UPDOWN_KeyPressed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @UPDOWN_KeyPressed(%struct.TYPE_7__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  %9 = load i32, i32* @VK_UP, align 4
  %10 = icmp eq i32 %8, %9
  br i1 %10, label %11, label %13

11:                                               ; preds = %2
  %12 = load i32, i32* @FLAG_INCR, align 4
  store i32 %12, i32* %6, align 4
  br label %21

13:                                               ; preds = %2
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* @VK_DOWN, align 4
  %16 = icmp eq i32 %14, %15
  br i1 %16, label %17, label %19

17:                                               ; preds = %13
  %18 = load i32, i32* @FLAG_DECR, align 4
  store i32 %18, i32* %6, align 4
  br label %20

19:                                               ; preds = %13
  store i32 1, i32* %3, align 4
  br label %71

20:                                               ; preds = %17
  br label %21

21:                                               ; preds = %20, %11
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %23 = call i32 @UPDOWN_GetBuddyInt(%struct.TYPE_7__* %22)
  %24 = load i32, i32* @FLAG_ARROW, align 4
  %25 = xor i32 %24, -1
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = and i32 %28, %25
  store i32 %29, i32* %27, align 8
  %30 = load i32, i32* @FLAG_PRESSED, align 4
  %31 = load i32, i32* %6, align 4
  %32 = or i32 %30, %31
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = or i32 %35, %32
  store i32 %36, i32* %34, align 8
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* @FALSE, align 4
  %41 = call i32 @InvalidateRect(i32 %39, i32* null, i32 %40)
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* @TIMER_AUTOPRESS, align 4
  %46 = load i32, i32* @AUTOPRESS_DELAY, align 4
  %47 = call i32 @SetTimer(i32 %44, i32 %45, i32 %46, i32 0)
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 2
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %64

52:                                               ; preds = %21
  %53 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 1
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %54, align 8
  %56 = icmp ne %struct.TYPE_6__* %55, null
  br i1 %56, label %57, label %64

57:                                               ; preds = %52
  %58 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 1
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i64 0
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  br label %65

64:                                               ; preds = %52, %21
  br label %65

65:                                               ; preds = %64, %57
  %66 = phi i32 [ %63, %57 ], [ 1, %64 ]
  store i32 %66, i32* %7, align 4
  %67 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %68 = load i32, i32* %7, align 4
  %69 = load i32, i32* %6, align 4
  %70 = call i32 @UPDOWN_DoAction(%struct.TYPE_7__* %67, i32 %68, i32 %69)
  store i32 0, i32* %3, align 4
  br label %71

71:                                               ; preds = %65, %19
  %72 = load i32, i32* %3, align 4
  ret i32 %72
}

declare dso_local i32 @UPDOWN_GetBuddyInt(%struct.TYPE_7__*) #1

declare dso_local i32 @InvalidateRect(i32, i32*, i32) #1

declare dso_local i32 @SetTimer(i32, i32, i32, i32) #1

declare dso_local i32 @UPDOWN_DoAction(%struct.TYPE_7__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
