; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/taskmgr/extr_perfpage.c_AdjustFrameSize.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/taskmgr/extr_perfpage.c_AdjustFrameSize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32 }

@SWP_NOACTIVATE = common dso_local global i32 0, align 4
@SWP_NOOWNERZORDER = common dso_local global i32 0, align 4
@SWP_NOZORDER = common dso_local global i32 0, align 4
@SWP_NOSIZE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @AdjustFrameSize(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_3__, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %16 = load i32, i32* %6, align 4
  %17 = call i32 @GetClientRect(i32 %16, %struct.TYPE_3__* %11)
  %18 = load i32, i32* %6, align 4
  %19 = load i32, i32* %7, align 4
  %20 = ptrtoint %struct.TYPE_3__* %11 to i64
  %21 = trunc i64 %20 to i32
  %22 = call i32 @MapWindowPoints(i32 %18, i32 %19, i32 %21, i32 4)
  %23 = load i32, i32* %10, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %74

25:                                               ; preds = %5
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %12, align 4
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %13, align 4
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = sub nsw i32 %31, %33
  store i32 %34, i32* %14, align 4
  %35 = load i32, i32* %10, align 4
  switch i32 %35, label %54 [
    i32 1, label %36
    i32 2, label %37
    i32 3, label %42
    i32 4, label %46
  ]

36:                                               ; preds = %25
  br label %54

37:                                               ; preds = %25
  %38 = load i32, i32* %9, align 4
  %39 = sdiv i32 %38, 2
  %40 = load i32, i32* %13, align 4
  %41 = add nsw i32 %40, %39
  store i32 %41, i32* %13, align 4
  br label %54

42:                                               ; preds = %25
  %43 = load i32, i32* %8, align 4
  %44 = load i32, i32* %14, align 4
  %45 = add nsw i32 %44, %43
  store i32 %45, i32* %14, align 4
  br label %54

46:                                               ; preds = %25
  %47 = load i32, i32* %9, align 4
  %48 = sdiv i32 %47, 2
  %49 = load i32, i32* %13, align 4
  %50 = add nsw i32 %49, %48
  store i32 %50, i32* %13, align 4
  %51 = load i32, i32* %8, align 4
  %52 = load i32, i32* %14, align 4
  %53 = add nsw i32 %52, %51
  store i32 %53, i32* %14, align 4
  br label %54

54:                                               ; preds = %25, %46, %42, %37, %36
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 3
  %56 = load i32, i32* %55, align 4
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = sub nsw i32 %56, %58
  %60 = load i32, i32* %9, align 4
  %61 = sdiv i32 %60, 2
  %62 = add nsw i32 %59, %61
  store i32 %62, i32* %15, align 4
  %63 = load i32, i32* %6, align 4
  %64 = load i32, i32* %12, align 4
  %65 = load i32, i32* %13, align 4
  %66 = load i32, i32* %14, align 4
  %67 = load i32, i32* %15, align 4
  %68 = load i32, i32* @SWP_NOACTIVATE, align 4
  %69 = load i32, i32* @SWP_NOOWNERZORDER, align 4
  %70 = or i32 %68, %69
  %71 = load i32, i32* @SWP_NOZORDER, align 4
  %72 = or i32 %70, %71
  %73 = call i32 @SetWindowPos(i32 %63, i32* null, i32 %64, i32 %65, i32 %66, i32 %67, i32 %72)
  br label %94

74:                                               ; preds = %5
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* %8, align 4
  %78 = add nsw i32 %76, %77
  store i32 %78, i32* %12, align 4
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* %9, align 4
  %82 = add nsw i32 %80, %81
  store i32 %82, i32* %13, align 4
  %83 = load i32, i32* %6, align 4
  %84 = load i32, i32* %12, align 4
  %85 = load i32, i32* %13, align 4
  %86 = load i32, i32* @SWP_NOACTIVATE, align 4
  %87 = load i32, i32* @SWP_NOOWNERZORDER, align 4
  %88 = or i32 %86, %87
  %89 = load i32, i32* @SWP_NOSIZE, align 4
  %90 = or i32 %88, %89
  %91 = load i32, i32* @SWP_NOZORDER, align 4
  %92 = or i32 %90, %91
  %93 = call i32 @SetWindowPos(i32 %83, i32* null, i32 %84, i32 %85, i32 0, i32 0, i32 %92)
  br label %94

94:                                               ; preds = %74, %54
  %95 = load i32, i32* %6, align 4
  %96 = load i32, i32* @TRUE, align 4
  %97 = call i32 @InvalidateRect(i32 %95, i32* null, i32 %96)
  ret void
}

declare dso_local i32 @GetClientRect(i32, %struct.TYPE_3__*) #1

declare dso_local i32 @MapWindowPoints(i32, i32, i32, i32) #1

declare dso_local i32 @SetWindowPos(i32, i32*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @InvalidateRect(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
