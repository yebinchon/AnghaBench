; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/regedit/extr_main.c_TranslateChildTabMessage.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/regedit/extr_main.c_TranslateChildTabMessage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i64 }
%struct.TYPE_4__ = type { i64, i64, i32 }

@WM_KEYDOWN = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4
@g_pChildWnd = common dso_local global %struct.TYPE_5__* null, align 8
@VK_CONTROL = common dso_local global i32 0, align 4
@EM_SETSEL = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@VK_TAB = common dso_local global i32 0, align 4
@WM_COMMAND = common dso_local global i32 0, align 4
@ID_SWITCH_PANELS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @TranslateChildTabMessage(%struct.TYPE_4__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_4__*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %3, align 8
  %4 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %5 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @WM_KEYDOWN, align 8
  %8 = icmp ne i64 %6, %7
  br i1 %8, label %9, label %11

9:                                                ; preds = %1
  %10 = load i32, i32* @FALSE, align 4
  store i32 %10, i32* %2, align 4
  br label %68

11:                                               ; preds = %1
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** @g_pChildWnd, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp eq i64 %14, %17
  br i1 %18, label %19, label %41

19:                                               ; preds = %11
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @WM_KEYDOWN, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %41

25:                                               ; preds = %19
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  %29 = icmp eq i32 %28, 65
  br i1 %29, label %30, label %41

30:                                               ; preds = %25
  %31 = load i32, i32* @VK_CONTROL, align 4
  %32 = call i64 @GetKeyState(i32 %31)
  %33 = icmp slt i64 %32, 0
  br i1 %33, label %34, label %41

34:                                               ; preds = %30
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = load i32, i32* @EM_SETSEL, align 4
  %39 = call i32 @SendMessageW(i64 %37, i32 %38, i32 0, i32 -1)
  %40 = load i32, i32* @TRUE, align 4
  store i32 %40, i32* %2, align 4
  br label %68

41:                                               ; preds = %30, %25, %19, %11
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* @VK_TAB, align 4
  %46 = icmp ne i32 %44, %45
  br i1 %46, label %47, label %49

47:                                               ; preds = %41
  %48 = load i32, i32* @FALSE, align 4
  store i32 %48, i32* %2, align 4
  br label %68

49:                                               ; preds = %41
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = call i64 @GetParent(i64 %52)
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** @g_pChildWnd, align 8
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %53, %56
  br i1 %57, label %58, label %60

58:                                               ; preds = %49
  %59 = load i32, i32* @FALSE, align 4
  store i32 %59, i32* %2, align 4
  br label %68

60:                                               ; preds = %49
  %61 = load %struct.TYPE_5__*, %struct.TYPE_5__** @g_pChildWnd, align 8
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = load i32, i32* @WM_COMMAND, align 4
  %65 = load i32, i32* @ID_SWITCH_PANELS, align 4
  %66 = call i32 @PostMessageW(i64 %63, i32 %64, i32 %65, i32 0)
  %67 = load i32, i32* @TRUE, align 4
  store i32 %67, i32* %2, align 4
  br label %68

68:                                               ; preds = %60, %58, %47, %34, %9
  %69 = load i32, i32* %2, align 4
  ret i32 %69
}

declare dso_local i64 @GetKeyState(i32) #1

declare dso_local i32 @SendMessageW(i64, i32, i32, i32) #1

declare dso_local i64 @GetParent(i64) #1

declare dso_local i32 @PostMessageW(i64, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
