; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/comctl32/extr_header.c_HEADER_SetFont.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/comctl32/extr_header.c_HEADER_SetFont.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i64, i64 }
%struct.TYPE_5__ = type { i64 }

@SYSTEM_FONT = common dso_local global i32 0, align 4
@VERT_BORDER = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, i64, i64)* @HEADER_SetFont to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @HEADER_SetFont(%struct.TYPE_6__* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_5__, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %10 = load i64, i64* %5, align 8
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 3
  store i64 %10, i64* %12, align 8
  %13 = call i32 @GetDC(i32 0)
  store i32 %13, i32* %9, align 4
  %14 = load i32, i32* %9, align 4
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 3
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %3
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 3
  %22 = load i64, i64* %21, align 8
  br label %26

23:                                               ; preds = %3
  %24 = load i32, i32* @SYSTEM_FONT, align 4
  %25 = call i64 @GetStockObject(i32 %24)
  br label %26

26:                                               ; preds = %23, %19
  %27 = phi i64 [ %22, %19 ], [ %25, %23 ]
  %28 = call i64 @SelectObject(i32 %14, i64 %27)
  store i64 %28, i64* %8, align 8
  %29 = load i32, i32* %9, align 4
  %30 = call i32 @GetTextMetricsW(i32 %29, %struct.TYPE_5__* %7)
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @VERT_BORDER, align 8
  %34 = add nsw i64 %32, %33
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 2
  store i64 %34, i64* %36, align 8
  %37 = load i32, i32* %9, align 4
  %38 = load i64, i64* %8, align 8
  %39 = call i64 @SelectObject(i32 %37, i64 %38)
  %40 = load i32, i32* %9, align 4
  %41 = call i32 @ReleaseDC(i32 0, i32 %40)
  %42 = load i32, i32* @FALSE, align 4
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 1
  store i32 %42, i32* %44, align 4
  %45 = load i64, i64* %6, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %53

47:                                               ; preds = %26
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* @FALSE, align 4
  %52 = call i32 @InvalidateRect(i32 %50, i32* null, i32 %51)
  br label %53

53:                                               ; preds = %47, %26
  ret i32 0
}

declare dso_local i32 @GetDC(i32) #1

declare dso_local i64 @SelectObject(i32, i64) #1

declare dso_local i64 @GetStockObject(i32) #1

declare dso_local i32 @GetTextMetricsW(i32, %struct.TYPE_5__*) #1

declare dso_local i32 @ReleaseDC(i32, i32) #1

declare dso_local i32 @InvalidateRect(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
