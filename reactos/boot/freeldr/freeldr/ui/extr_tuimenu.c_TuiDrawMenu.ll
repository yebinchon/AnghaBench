; ModuleID = '/home/carl/AnghaBench/reactos/boot/freeldr/freeldr/ui/extr_tuimenu.c_TuiDrawMenu.c'
source_filename = "/home/carl/AnghaBench/reactos/boot/freeldr/freeldr/ui/extr_tuimenu.c_TuiDrawMenu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 (i8*)* }
%struct.TYPE_6__ = type { i64, i64 }

@UiVtbl = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8
@.str = private unnamed_addr constant [41 x i8] c"Use \18 and \19 to select, then press ENTER.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @TuiDrawMenu(%struct.TYPE_6__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca i64, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  %5 = call i32 (...) @UiDrawBackdrop()
  %6 = load i32 (i8*)*, i32 (i8*)** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @UiVtbl, i32 0, i32 0), align 8
  %7 = call i32 %6(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  %8 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %9 = call i32 @TuiDrawMenuBox(%struct.TYPE_6__* %8)
  store i64 0, i64* %4, align 8
  br label %10

10:                                               ; preds = %20, %1
  %11 = load i64, i64* %4, align 8
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp slt i64 %11, %14
  br i1 %15, label %16, label %23

16:                                               ; preds = %10
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %18 = load i64, i64* %4, align 8
  %19 = call i32 @TuiDrawMenuItem(%struct.TYPE_6__* %17, i64 %18)
  br label %20

20:                                               ; preds = %16
  %21 = load i64, i64* %4, align 8
  %22 = add nsw i64 %21, 1
  store i64 %22, i64* %4, align 8
  br label %10

23:                                               ; preds = %10
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %23
  %29 = call i32 (...) @DisplayBootTimeOptions()
  br label %30

30:                                               ; preds = %28, %23
  %31 = call i32 (...) @VideoCopyOffScreenBufferToVRAM()
  %32 = load i32, i32* %2, align 4
  ret i32 %32
}

declare dso_local i32 @UiDrawBackdrop(...) #1

declare dso_local i32 @TuiDrawMenuBox(%struct.TYPE_6__*) #1

declare dso_local i32 @TuiDrawMenuItem(%struct.TYPE_6__*, i64) #1

declare dso_local i32 @DisplayBootTimeOptions(...) #1

declare dso_local i32 @VideoCopyOffScreenBufferToVRAM(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
