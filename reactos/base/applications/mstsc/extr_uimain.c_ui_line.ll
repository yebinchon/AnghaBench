; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/mstsc/extr_uimain.c_ui_line.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/mstsc/extr_uimain.c_ui_line.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i64, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ui_line(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4, %struct.TYPE_3__* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_3__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store %struct.TYPE_3__* %5, %struct.TYPE_3__** %12, align 8
  %17 = load i32, i32* %7, align 4
  %18 = load i32, i32* %8, align 4
  %19 = load i32, i32* %9, align 4
  %20 = load i32, i32* %10, align 4
  %21 = load i32, i32* %11, align 4
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @bs_line(i32 %17, i32 %18, i32 %19, i32 %20, i32 %21, i32 %24, i64 %27, i32 %30)
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %36, label %53

36:                                               ; preds = %6
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = icmp slt i32 %39, 2
  br i1 %40, label %41, label %53

41:                                               ; preds = %36
  %42 = load i32, i32* %7, align 4
  %43 = icmp eq i32 %42, 12
  br i1 %43, label %44, label %53

44:                                               ; preds = %41
  %45 = load i32, i32* %8, align 4
  %46 = load i32, i32* %9, align 4
  %47 = load i32, i32* %10, align 4
  %48 = load i32, i32* %11, align 4
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @mi_line(i32 %45, i32 %46, i32 %47, i32 %48, i32 %51)
  br label %77

53:                                               ; preds = %41, %36, %6
  %54 = load i32, i32* %8, align 4
  %55 = load i32, i32* %10, align 4
  %56 = call i32 @MIN(i32 %54, i32 %55)
  store i32 %56, i32* %13, align 4
  %57 = load i32, i32* %9, align 4
  %58 = load i32, i32* %11, align 4
  %59 = call i32 @MIN(i32 %57, i32 %58)
  store i32 %59, i32* %14, align 4
  %60 = load i32, i32* %8, align 4
  %61 = load i32, i32* %10, align 4
  %62 = call i32 @MAX(i32 %60, i32 %61)
  %63 = add nsw i32 %62, 1
  %64 = load i32, i32* %13, align 4
  %65 = sub nsw i32 %63, %64
  store i32 %65, i32* %15, align 4
  %66 = load i32, i32* %9, align 4
  %67 = load i32, i32* %11, align 4
  %68 = call i32 @MAX(i32 %66, i32 %67)
  %69 = add nsw i32 %68, 1
  %70 = load i32, i32* %14, align 4
  %71 = sub nsw i32 %69, %70
  store i32 %71, i32* %16, align 4
  %72 = load i32, i32* %13, align 4
  %73 = load i32, i32* %14, align 4
  %74 = load i32, i32* %15, align 4
  %75 = load i32, i32* %16, align 4
  %76 = call i32 @ui_invalidate(i32 %72, i32 %73, i32 %74, i32 %75)
  br label %77

77:                                               ; preds = %53, %44
  ret void
}

declare dso_local i32 @bs_line(i32, i32, i32, i32, i32, i32, i64, i32) #1

declare dso_local i32 @mi_line(i32, i32, i32, i32, i32) #1

declare dso_local i32 @MIN(i32, i32) #1

declare dso_local i32 @MAX(i32, i32) #1

declare dso_local i32 @ui_invalidate(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
