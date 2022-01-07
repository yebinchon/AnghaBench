; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/clipbrd/extr_scrollutils.c_OnMouseScroll.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/clipbrd/extr_scrollutils.c_OnMouseScroll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i64, i64, i64, i64 }

@WM_MOUSEWHEEL = common dso_local global i64 0, align 8
@WM_MOUSEHWHEEL = common dso_local global i64 0, align 8
@SB_VERT = common dso_local global i64 0, align 8
@WHEEL_DELTA = common dso_local global i64 0, align 8
@SB_HORZ = common dso_local global i64 0, align 8
@SB_LINEUP = common dso_local global i32 0, align 4
@SB_LINEDOWN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @OnMouseScroll(i32 %0, i64 %1, i32 %2, i32 %3, %struct.TYPE_4__* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_4__*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i64 %1, i64* %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store %struct.TYPE_4__* %4, %struct.TYPE_4__** %10, align 8
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  store i64 %19, i64* %14, align 8
  %20 = load i32, i32* %8, align 4
  %21 = call i64 @GET_WHEEL_DELTA_WPARAM(i32 %20)
  store i64 %21, i64* %15, align 8
  %22 = load i64, i64* %7, align 8
  %23 = load i64, i64* @WM_MOUSEWHEEL, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %29, label %25

25:                                               ; preds = %5
  %26 = load i64, i64* %7, align 8
  %27 = load i64, i64* @WM_MOUSEHWHEEL, align 8
  %28 = icmp eq i64 %26, %27
  br label %29

29:                                               ; preds = %25, %5
  %30 = phi i1 [ true, %5 ], [ %28, %25 ]
  %31 = zext i1 %30 to i32
  %32 = call i32 @assert(i32 %31)
  %33 = load i64, i64* %7, align 8
  %34 = load i64, i64* @WM_MOUSEWHEEL, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %51

36:                                               ; preds = %29
  %37 = load i64, i64* @SB_VERT, align 8
  store i64 %37, i64* %11, align 8
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  store i64 %40, i64* %12, align 8
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 2
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* %15, align 8
  %45 = add nsw i64 %44, %43
  store i64 %45, i64* %15, align 8
  %46 = load i64, i64* %15, align 8
  %47 = load i64, i64* @WHEEL_DELTA, align 8
  %48 = srem i64 %46, %47
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 2
  store i64 %48, i64* %50, align 8
  br label %66

51:                                               ; preds = %29
  %52 = load i64, i64* @SB_HORZ, align 8
  store i64 %52, i64* %11, align 8
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 3
  %55 = load i64, i64* %54, align 8
  store i64 %55, i64* %12, align 8
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 4
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* %15, align 8
  %60 = add nsw i64 %59, %58
  store i64 %60, i64* %15, align 8
  %61 = load i64, i64* %15, align 8
  %62 = load i64, i64* @WHEEL_DELTA, align 8
  %63 = srem i64 %61, %62
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 4
  store i64 %63, i64* %65, align 8
  br label %66

66:                                               ; preds = %51, %36
  %67 = load i64, i64* %14, align 8
  %68 = load i64, i64* %12, align 8
  %69 = icmp sgt i64 %67, %68
  br i1 %69, label %70, label %72

70:                                               ; preds = %66
  %71 = load i64, i64* %12, align 8
  store i64 %71, i64* %14, align 8
  br label %77

72:                                               ; preds = %66
  %73 = load i64, i64* %14, align 8
  %74 = icmp eq i64 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %72
  br label %99

76:                                               ; preds = %72
  br label %77

77:                                               ; preds = %76, %70
  %78 = load i64, i64* %15, align 8
  %79 = icmp sgt i64 %78, 0
  br i1 %79, label %80, label %82

80:                                               ; preds = %77
  %81 = load i32, i32* @SB_LINEUP, align 4
  store i32 %81, i32* %16, align 4
  br label %86

82:                                               ; preds = %77
  %83 = load i32, i32* @SB_LINEDOWN, align 4
  store i32 %83, i32* %16, align 4
  %84 = load i64, i64* %15, align 8
  %85 = sub nsw i64 0, %84
  store i64 %85, i64* %15, align 8
  br label %86

86:                                               ; preds = %82, %80
  %87 = load i64, i64* %14, align 8
  %88 = load i64, i64* %15, align 8
  %89 = mul nsw i64 %87, %88
  %90 = load i64, i64* @WHEEL_DELTA, align 8
  %91 = sdiv i64 %89, %90
  store i64 %91, i64* %13, align 8
  %92 = load i32, i32* %6, align 4
  %93 = load i64, i64* %11, align 8
  %94 = load i32, i32* %16, align 4
  %95 = call i32 @MAKELONG(i32 %94, i32 0)
  %96 = load i64, i64* %13, align 8
  %97 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %98 = call i32 @OnScroll(i32 %92, i64 %93, i32 %95, i64 %96, %struct.TYPE_4__* %97)
  br label %99

99:                                               ; preds = %86, %75
  ret void
}

declare dso_local i64 @GET_WHEEL_DELTA_WPARAM(i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @OnScroll(i32, i64, i32, i64, %struct.TYPE_4__*) #1

declare dso_local i32 @MAKELONG(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
