; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/mmc/extr_console.c_FrameOnCommand.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/mmc/extr_console.c_FrameOnCommand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@hwndMDIClient = common dso_local global i32 0, align 4
@WM_CLOSE = common dso_local global i32 0, align 4
@IDM_MDI_FIRSTCHILD = common dso_local global i32 0, align 4
@WM_MDIGETACTIVE = common dso_local global i32 0, align 4
@WM_COMMAND = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32)* @FrameOnCommand to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @FrameOnCommand(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_3__*, align 8
  %11 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %12 = load i32, i32* %6, align 4
  %13 = call i64 @GetWindowLongPtr(i32 %12, i32 0)
  %14 = inttoptr i64 %13 to %struct.TYPE_3__*
  store %struct.TYPE_3__* %14, %struct.TYPE_3__** %10, align 8
  %15 = load i32, i32* %8, align 4
  %16 = call i32 @LOWORD(i32 %15)
  switch i32 %16, label %38 [
    i32 130, label %17
    i32 129, label %28
    i32 128, label %31
    i32 131, label %34
  ]

17:                                               ; preds = %4
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %19 = load i32, i32* @hwndMDIClient, align 4
  %20 = call i32 @CreateNewMDIChild(%struct.TYPE_3__* %18, i32 %19)
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @SetMenu(i32 %23, i32 %26)
  br label %64

28:                                               ; preds = %4
  %29 = load i32, i32* %6, align 4
  %30 = call i32 @FrameOnSave(i32 %29)
  br label %64

31:                                               ; preds = %4
  %32 = load i32, i32* %6, align 4
  %33 = call i32 @FrameOnSaveAs(i32 %32)
  br label %64

34:                                               ; preds = %4
  %35 = load i32, i32* %6, align 4
  %36 = load i32, i32* @WM_CLOSE, align 4
  %37 = call i32 @PostMessage(i32 %35, i32 %36, i32 0, i32 0)
  br label %64

38:                                               ; preds = %4
  %39 = load i32, i32* %8, align 4
  %40 = call i32 @LOWORD(i32 %39)
  %41 = load i32, i32* @IDM_MDI_FIRSTCHILD, align 4
  %42 = icmp sge i32 %40, %41
  br i1 %42, label %43, label %50

43:                                               ; preds = %38
  %44 = load i32, i32* %6, align 4
  %45 = load i32, i32* @hwndMDIClient, align 4
  %46 = load i32, i32* %7, align 4
  %47 = load i32, i32* %8, align 4
  %48 = load i32, i32* %9, align 4
  %49 = call i32 @DefFrameProc(i32 %44, i32 %45, i32 %46, i32 %47, i32 %48)
  br label %63

50:                                               ; preds = %38
  %51 = load i32, i32* @hwndMDIClient, align 4
  %52 = load i32, i32* @WM_MDIGETACTIVE, align 4
  %53 = call i32 @SendMessage(i32 %51, i32 %52, i32 0, i32 0)
  store i32 %53, i32* %11, align 4
  %54 = load i32, i32* %11, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %62

56:                                               ; preds = %50
  %57 = load i32, i32* %11, align 4
  %58 = load i32, i32* @WM_COMMAND, align 4
  %59 = load i32, i32* %8, align 4
  %60 = load i32, i32* %9, align 4
  %61 = call i32 @SendMessage(i32 %57, i32 %58, i32 %59, i32 %60)
  br label %62

62:                                               ; preds = %56, %50
  br label %63

63:                                               ; preds = %62, %43
  br label %64

64:                                               ; preds = %63, %34, %31, %28, %17
  %65 = load i32, i32* %5, align 4
  ret i32 %65
}

declare dso_local i64 @GetWindowLongPtr(i32, i32) #1

declare dso_local i32 @LOWORD(i32) #1

declare dso_local i32 @CreateNewMDIChild(%struct.TYPE_3__*, i32) #1

declare dso_local i32 @SetMenu(i32, i32) #1

declare dso_local i32 @FrameOnSave(i32) #1

declare dso_local i32 @FrameOnSaveAs(i32) #1

declare dso_local i32 @PostMessage(i32, i32, i32, i32) #1

declare dso_local i32 @DefFrameProc(i32, i32, i32, i32, i32) #1

declare dso_local i32 @SendMessage(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
