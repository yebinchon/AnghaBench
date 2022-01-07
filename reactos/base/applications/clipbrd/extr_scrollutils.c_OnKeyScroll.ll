; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/clipbrd/extr_scrollutils.c_OnKeyScroll.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/clipbrd/extr_scrollutils.c_OnKeyScroll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@SB_VERT = common dso_local global i32 0, align 4
@SB_LINEUP = common dso_local global i32 0, align 4
@SB_LINEDOWN = common dso_local global i32 0, align 4
@SB_HORZ = common dso_local global i32 0, align 4
@SB_LINELEFT = common dso_local global i32 0, align 4
@SB_LINERIGHT = common dso_local global i32 0, align 4
@SB_PAGEUP = common dso_local global i32 0, align 4
@SB_PAGEDOWN = common dso_local global i32 0, align 4
@SB_LEFT = common dso_local global i32 0, align 4
@VK_CONTROL = common dso_local global i32 0, align 4
@SB_TOP = common dso_local global i32 0, align 4
@SB_RIGHT = common dso_local global i32 0, align 4
@SB_BOTTOM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @OnKeyScroll(i32 %0, i32 %1, i32 %2, %struct.TYPE_4__* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_4__*, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store %struct.TYPE_4__* %3, %struct.TYPE_4__** %8, align 8
  %9 = load i32, i32* %6, align 4
  switch i32 %9, label %96 [
    i32 128, label %10
    i32 135, label %17
    i32 132, label %24
    i32 129, label %31
    i32 130, label %38
    i32 131, label %48
    i32 133, label %58
    i32 134, label %77
  ]

10:                                               ; preds = %4
  %11 = load i32, i32* %5, align 4
  %12 = load i32, i32* @SB_VERT, align 4
  %13 = load i32, i32* @SB_LINEUP, align 4
  %14 = call i32 @MAKELONG(i32 %13, i32 0)
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %16 = call i32 @OnScroll(i32 %11, i32 %12, i32 %14, i32 5, %struct.TYPE_4__* %15)
  br label %97

17:                                               ; preds = %4
  %18 = load i32, i32* %5, align 4
  %19 = load i32, i32* @SB_VERT, align 4
  %20 = load i32, i32* @SB_LINEDOWN, align 4
  %21 = call i32 @MAKELONG(i32 %20, i32 0)
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %23 = call i32 @OnScroll(i32 %18, i32 %19, i32 %21, i32 5, %struct.TYPE_4__* %22)
  br label %97

24:                                               ; preds = %4
  %25 = load i32, i32* %5, align 4
  %26 = load i32, i32* @SB_HORZ, align 4
  %27 = load i32, i32* @SB_LINELEFT, align 4
  %28 = call i32 @MAKELONG(i32 %27, i32 0)
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %30 = call i32 @OnScroll(i32 %25, i32 %26, i32 %28, i32 5, %struct.TYPE_4__* %29)
  br label %97

31:                                               ; preds = %4
  %32 = load i32, i32* %5, align 4
  %33 = load i32, i32* @SB_HORZ, align 4
  %34 = load i32, i32* @SB_LINERIGHT, align 4
  %35 = call i32 @MAKELONG(i32 %34, i32 0)
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %37 = call i32 @OnScroll(i32 %32, i32 %33, i32 %35, i32 5, %struct.TYPE_4__* %36)
  br label %97

38:                                               ; preds = %4
  %39 = load i32, i32* %5, align 4
  %40 = load i32, i32* @SB_VERT, align 4
  %41 = load i32, i32* @SB_PAGEUP, align 4
  %42 = call i32 @MAKELONG(i32 %41, i32 0)
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %47 = call i32 @OnScroll(i32 %39, i32 %40, i32 %42, i32 %45, %struct.TYPE_4__* %46)
  br label %97

48:                                               ; preds = %4
  %49 = load i32, i32* %5, align 4
  %50 = load i32, i32* @SB_VERT, align 4
  %51 = load i32, i32* @SB_PAGEDOWN, align 4
  %52 = call i32 @MAKELONG(i32 %51, i32 0)
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %57 = call i32 @OnScroll(i32 %49, i32 %50, i32 %52, i32 %55, %struct.TYPE_4__* %56)
  br label %97

58:                                               ; preds = %4
  %59 = load i32, i32* %5, align 4
  %60 = load i32, i32* @SB_HORZ, align 4
  %61 = load i32, i32* @SB_LEFT, align 4
  %62 = call i32 @MAKELONG(i32 %61, i32 0)
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %64 = call i32 @OnScroll(i32 %59, i32 %60, i32 %62, i32 0, %struct.TYPE_4__* %63)
  %65 = load i32, i32* @VK_CONTROL, align 4
  %66 = call i32 @GetKeyState(i32 %65)
  %67 = and i32 %66, 32768
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %76

69:                                               ; preds = %58
  %70 = load i32, i32* %5, align 4
  %71 = load i32, i32* @SB_VERT, align 4
  %72 = load i32, i32* @SB_TOP, align 4
  %73 = call i32 @MAKELONG(i32 %72, i32 0)
  %74 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %75 = call i32 @OnScroll(i32 %70, i32 %71, i32 %73, i32 0, %struct.TYPE_4__* %74)
  br label %76

76:                                               ; preds = %69, %58
  br label %97

77:                                               ; preds = %4
  %78 = load i32, i32* %5, align 4
  %79 = load i32, i32* @SB_HORZ, align 4
  %80 = load i32, i32* @SB_RIGHT, align 4
  %81 = call i32 @MAKELONG(i32 %80, i32 0)
  %82 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %83 = call i32 @OnScroll(i32 %78, i32 %79, i32 %81, i32 0, %struct.TYPE_4__* %82)
  %84 = load i32, i32* @VK_CONTROL, align 4
  %85 = call i32 @GetKeyState(i32 %84)
  %86 = and i32 %85, 32768
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %95

88:                                               ; preds = %77
  %89 = load i32, i32* %5, align 4
  %90 = load i32, i32* @SB_VERT, align 4
  %91 = load i32, i32* @SB_BOTTOM, align 4
  %92 = call i32 @MAKELONG(i32 %91, i32 0)
  %93 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %94 = call i32 @OnScroll(i32 %89, i32 %90, i32 %92, i32 0, %struct.TYPE_4__* %93)
  br label %95

95:                                               ; preds = %88, %77
  br label %97

96:                                               ; preds = %4
  br label %97

97:                                               ; preds = %96, %95, %76, %48, %38, %31, %24, %17, %10
  ret void
}

declare dso_local i32 @OnScroll(i32, i32, i32, i32, %struct.TYPE_4__*) #1

declare dso_local i32 @MAKELONG(i32, i32) #1

declare dso_local i32 @GetKeyState(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
