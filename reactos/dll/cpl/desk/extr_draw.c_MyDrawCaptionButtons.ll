; ModuleID = '/home/carl/AnghaBench/reactos/dll/cpl/desk/extr_draw.c_MyDrawCaptionButtons.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/cpl/desk/extr_draw.c_MyDrawCaptionButtons.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i64, i64 }
%struct.TYPE_5__ = type { i32, i32, i64, i64 }

@DFC_CAPTION = common dso_local global i32 0, align 4
@DFCS_CAPTIONCLOSE = common dso_local global i32 0, align 4
@DFCS_CAPTIONMAX = common dso_local global i32 0, align 4
@DFCS_CAPTIONMIN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @MyDrawCaptionButtons(i32 %0, %struct.TYPE_6__* %1, i64 %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_6__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_5__, align 8
  %13 = alloca %struct.TYPE_5__, align 8
  %14 = alloca %struct.TYPE_5__, align 8
  store i32 %0, i32* %7, align 4
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %8, align 8
  store i64 %2, i64* %9, align 8
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = sub nsw i32 %17, 2
  %19 = load i32, i32* %10, align 4
  %20 = sub nsw i32 %18, %19
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  store i32 %20, i32* %21, align 8
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 2
  %24 = load i64, i64* %23, align 8
  %25 = add nsw i64 %24, 2
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 3
  store i64 %25, i64* %26, align 8
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = sub nsw i32 %29, 2
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 1
  store i32 %30, i32* %31, align 4
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = sub nsw i64 %34, 2
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 2
  store i64 %35, i64* %36, align 8
  %37 = load i32, i32* %7, align 4
  %38 = load i32, i32* @DFC_CAPTION, align 4
  %39 = load i32, i32* @DFCS_CAPTIONCLOSE, align 4
  %40 = load i32*, i32** %11, align 8
  %41 = call i32 @MyDrawFrameControl(i32 %37, %struct.TYPE_5__* %12, i32 %38, i32 %39, i32* %40)
  %42 = load i64, i64* %9, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %89

44:                                               ; preds = %5
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* %10, align 4
  %48 = sub nsw i32 %46, %47
  %49 = sub nsw i32 %48, 2
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  store i32 %49, i32* %50, align 8
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 3
  %52 = load i64, i64* %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 3
  store i64 %52, i64* %53, align 8
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* %10, align 4
  %57 = sub nsw i32 %55, %56
  %58 = sub nsw i32 %57, 2
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 1
  store i32 %58, i32* %59, align 4
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 2
  %61 = load i64, i64* %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 2
  store i64 %61, i64* %62, align 8
  %63 = load i32, i32* %7, align 4
  %64 = load i32, i32* @DFC_CAPTION, align 4
  %65 = load i32, i32* @DFCS_CAPTIONMAX, align 4
  %66 = load i32*, i32** %11, align 8
  %67 = call i32 @MyDrawFrameControl(i32 %63, %struct.TYPE_5__* %13, i32 %64, i32 %65, i32* %66)
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = load i32, i32* %10, align 4
  %71 = sub nsw i32 %69, %70
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  store i32 %71, i32* %72, align 8
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 3
  %74 = load i64, i64* %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 3
  store i64 %74, i64* %75, align 8
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* %10, align 4
  %79 = sub nsw i32 %77, %78
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 1
  store i32 %79, i32* %80, align 4
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 2
  %82 = load i64, i64* %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 2
  store i64 %82, i64* %83, align 8
  %84 = load i32, i32* %7, align 4
  %85 = load i32, i32* @DFC_CAPTION, align 4
  %86 = load i32, i32* @DFCS_CAPTIONMIN, align 4
  %87 = load i32*, i32** %11, align 8
  %88 = call i32 @MyDrawFrameControl(i32 %84, %struct.TYPE_5__* %14, i32 %85, i32 %86, i32* %87)
  br label %89

89:                                               ; preds = %44, %5
  %90 = load i32, i32* %6, align 4
  ret i32 %90
}

declare dso_local i32 @MyDrawFrameControl(i32, %struct.TYPE_5__*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
