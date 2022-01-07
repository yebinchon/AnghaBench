; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/fontview/extr_display.c_Display_InitClass.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/fontview/extr_display.c_Display_InitClass.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32*, i32, i32*, i32, i32, i32*, i32, i64, i64, i32, i32 }

@CS_DBLCLKS = common dso_local global i32 0, align 4
@DisplayProc = common dso_local global i32 0, align 4
@IDC_ARROW = common dso_local global i32 0, align 4
@WHITE_BRUSH = common dso_local global i32 0, align 4
@g_szFontDisplayClassName = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @Display_InitClass(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_3__, align 8
  store i32 %0, i32* %3, align 4
  %5 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 0
  store i32 4, i32* %5, align 8
  %6 = load i32, i32* @CS_DBLCLKS, align 4
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 11
  store i32 %6, i32* %7, align 4
  %8 = load i32, i32* @DisplayProc, align 4
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 10
  store i32 %8, i32* %9, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 9
  store i64 0, i64* %10, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 8
  store i64 0, i64* %11, align 8
  %12 = load i32, i32* %3, align 4
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 7
  store i32 %12, i32* %13, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 6
  store i32* null, i32** %14, align 8
  %15 = load i32, i32* @IDC_ARROW, align 4
  %16 = call i32 @LoadCursor(i32* null, i32 %15)
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 5
  store i32 %16, i32* %17, align 4
  %18 = load i32, i32* @WHITE_BRUSH, align 4
  %19 = call i32 @GetStockObject(i32 %18)
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 4
  store i32 %19, i32* %20, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 3
  store i32* null, i32** %21, align 8
  %22 = load i32, i32* @g_szFontDisplayClassName, align 4
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 2
  store i32 %22, i32* %23, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 1
  store i32* null, i32** %24, align 8
  %25 = call i32 @RegisterClassExW(%struct.TYPE_3__* %4)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %29, label %27

27:                                               ; preds = %1
  %28 = load i32, i32* @FALSE, align 4
  store i32 %28, i32* %2, align 4
  br label %31

29:                                               ; preds = %1
  %30 = load i32, i32* @TRUE, align 4
  store i32 %30, i32* %2, align 4
  br label %31

31:                                               ; preds = %29, %27
  %32 = load i32, i32* %2, align 4
  ret i32 %32
}

declare dso_local i32 @LoadCursor(i32*, i32) #1

declare dso_local i32 @GetStockObject(i32) #1

declare dso_local i32 @RegisterClassExW(%struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
