; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/comdlg32/extr_colordlg.c_CC_PaintColorGraph.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/comdlg32/extr_colordlg.c_CC_PaintColorGraph.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32, i32 }

@IDC_COLOR_GRAPH = common dso_local global i32 0, align 4
@SRCCOPY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"choose color: hdcMem is not defined\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_7__*)* @CC_PaintColorGraph to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @CC_PaintColorGraph(%struct.TYPE_7__* %0) #0 {
  %2 = alloca %struct.TYPE_7__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_6__, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %2, align 8
  %6 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %7 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @IDC_COLOR_GRAPH, align 4
  %10 = call i32 @GetDlgItem(i32 %8, i32 %9)
  store i32 %10, i32* %3, align 4
  %11 = load i32, i32* %3, align 4
  %12 = call i64 @IsWindowVisible(i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %48

14:                                               ; preds = %1
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %14
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %21 = call i32 @CC_PrepareColorGraph(%struct.TYPE_7__* %20)
  br label %22

22:                                               ; preds = %19, %14
  %23 = load i32, i32* %3, align 4
  %24 = call i32 @GetDC(i32 %23)
  store i32 %24, i32* %4, align 4
  %25 = load i32, i32* %3, align 4
  %26 = call i32 @GetClientRect(i32 %25, %struct.TYPE_6__* %5)
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %42

31:                                               ; preds = %22
  %32 = load i32, i32* %4, align 4
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @SRCCOPY, align 4
  %41 = call i32 @BitBlt(i32 %32, i32 0, i32 0, i32 %34, i32 %36, i32 %39, i32 0, i32 0, i32 %40)
  br label %44

42:                                               ; preds = %22
  %43 = call i32 @WARN(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  br label %44

44:                                               ; preds = %42, %31
  %45 = load i32, i32* %3, align 4
  %46 = load i32, i32* %4, align 4
  %47 = call i32 @ReleaseDC(i32 %45, i32 %46)
  br label %48

48:                                               ; preds = %44, %1
  ret void
}

declare dso_local i32 @GetDlgItem(i32, i32) #1

declare dso_local i64 @IsWindowVisible(i32) #1

declare dso_local i32 @CC_PrepareColorGraph(%struct.TYPE_7__*) #1

declare dso_local i32 @GetDC(i32) #1

declare dso_local i32 @GetClientRect(i32, %struct.TYPE_6__*) #1

declare dso_local i32 @BitBlt(i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @WARN(i8*) #1

declare dso_local i32 @ReleaseDC(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
