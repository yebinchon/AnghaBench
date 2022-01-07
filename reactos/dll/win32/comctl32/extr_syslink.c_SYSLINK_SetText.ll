; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/comctl32/extr_syslink.c_SYSLINK_SetText.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/comctl32/extr_syslink.c_SYSLINK_SetText.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }

@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, i64*)* @SYSLINK_SetText to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @SYSLINK_SetText(%struct.TYPE_6__* %0, i64* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %4, align 8
  store i64* %1, i64** %5, align 8
  %8 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %9 = call i32 @SYSLINK_ClearDoc(%struct.TYPE_6__* %8)
  %10 = load i64*, i64** %5, align 8
  %11 = icmp eq i64* %10, null
  br i1 %11, label %16, label %12

12:                                               ; preds = %2
  %13 = load i64*, i64** %5, align 8
  %14 = load i64, i64* %13, align 8
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %12, %2
  %17 = load i32, i32* @TRUE, align 4
  store i32 %17, i32* %3, align 4
  br label %54

18:                                               ; preds = %12
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %20 = load i64*, i64** %5, align 8
  %21 = call i64 @SYSLINK_ParseText(%struct.TYPE_6__* %19, i64* %20)
  %22 = icmp sgt i64 %21, 0
  br i1 %22, label %23, label %52

23:                                               ; preds = %18
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i64 @GetClientRect(i32 %26, i32* %6)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %51

29:                                               ; preds = %23
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32* @GetDC(i32 %32)
  store i32* %33, i32** %7, align 8
  %34 = load i32*, i32** %7, align 8
  %35 = icmp ne i32* %34, null
  br i1 %35, label %36, label %50

36:                                               ; preds = %29
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %38 = load i32*, i32** %7, align 8
  %39 = call i32 @SYSLINK_Render(%struct.TYPE_6__* %37, i32* %38, i32* %6)
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32*, i32** %7, align 8
  %44 = call i32 @ReleaseDC(i32 %42, i32* %43)
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @TRUE, align 4
  %49 = call i32 @InvalidateRect(i32 %47, i32* null, i32 %48)
  br label %50

50:                                               ; preds = %36, %29
  br label %51

51:                                               ; preds = %50, %23
  br label %52

52:                                               ; preds = %51, %18
  %53 = load i32, i32* @TRUE, align 4
  store i32 %53, i32* %3, align 4
  br label %54

54:                                               ; preds = %52, %16
  %55 = load i32, i32* %3, align 4
  ret i32 %55
}

declare dso_local i32 @SYSLINK_ClearDoc(%struct.TYPE_6__*) #1

declare dso_local i64 @SYSLINK_ParseText(%struct.TYPE_6__*, i64*) #1

declare dso_local i64 @GetClientRect(i32, i32*) #1

declare dso_local i32* @GetDC(i32) #1

declare dso_local i32 @SYSLINK_Render(%struct.TYPE_6__*, i32*, i32*) #1

declare dso_local i32 @ReleaseDC(i32, i32*) #1

declare dso_local i32 @InvalidateRect(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
