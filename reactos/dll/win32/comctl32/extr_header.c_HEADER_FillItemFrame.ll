; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/comctl32/extr_header.c_HEADER_FillItemFrame.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/comctl32/extr_header.c_HEADER_FillItemFrame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i64 }

@HIS_PRESSED = common dso_local global i32 0, align 4
@HIS_HOT = common dso_local global i32 0, align 4
@HIS_NORMAL = common dso_local global i32 0, align 4
@HP_HEADERITEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_6__*, i32, i32*, %struct.TYPE_5__*, i64)* @HEADER_FillItemFrame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @HEADER_FillItemFrame(%struct.TYPE_6__* %0, i32 %1, i32* %2, %struct.TYPE_5__* %3, i64 %4) #0 {
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_5__*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store %struct.TYPE_5__* %3, %struct.TYPE_5__** %9, align 8
  store i64 %4, i64* %10, align 8
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i64 @GetWindowTheme(i32 %16)
  store i64 %17, i64* %11, align 8
  %18 = load i64, i64* %11, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %51

20:                                               ; preds = %5
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %20
  %26 = load i32, i32* @HIS_PRESSED, align 4
  br label %36

27:                                               ; preds = %20
  %28 = load i64, i64* %10, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %27
  %31 = load i32, i32* @HIS_HOT, align 4
  br label %34

32:                                               ; preds = %27
  %33 = load i32, i32* @HIS_NORMAL, align 4
  br label %34

34:                                               ; preds = %32, %30
  %35 = phi i32 [ %31, %30 ], [ %33, %32 ]
  br label %36

36:                                               ; preds = %34, %25
  %37 = phi i32 [ %26, %25 ], [ %35, %34 ]
  store i32 %37, i32* %12, align 4
  %38 = load i64, i64* %11, align 8
  %39 = load i32, i32* %7, align 4
  %40 = load i32, i32* @HP_HEADERITEM, align 4
  %41 = load i32, i32* %12, align 4
  %42 = load i32*, i32** %8, align 8
  %43 = call i32 @DrawThemeBackground(i64 %38, i32 %39, i32 %40, i32 %41, i32* %42, i32* null)
  %44 = load i64, i64* %11, align 8
  %45 = load i32, i32* %7, align 4
  %46 = load i32, i32* @HP_HEADERITEM, align 4
  %47 = load i32, i32* %12, align 4
  %48 = load i32*, i32** %8, align 8
  %49 = load i32*, i32** %8, align 8
  %50 = call i32 @GetThemeBackgroundContentRect(i64 %44, i32 %45, i32 %46, i32 %47, i32* %48, i32* %49)
  br label %61

51:                                               ; preds = %5
  %52 = load i32, i32* %7, align 4
  %53 = call i32 @GetBkColor(i32 %52)
  %54 = call i32 @CreateSolidBrush(i32 %53)
  store i32 %54, i32* %13, align 4
  %55 = load i32, i32* %7, align 4
  %56 = load i32*, i32** %8, align 8
  %57 = load i32, i32* %13, align 4
  %58 = call i32 @FillRect(i32 %55, i32* %56, i32 %57)
  %59 = load i32, i32* %13, align 4
  %60 = call i32 @DeleteObject(i32 %59)
  br label %61

61:                                               ; preds = %51, %36
  ret void
}

declare dso_local i64 @GetWindowTheme(i32) #1

declare dso_local i32 @DrawThemeBackground(i64, i32, i32, i32, i32*, i32*) #1

declare dso_local i32 @GetThemeBackgroundContentRect(i64, i32, i32, i32, i32*, i32*) #1

declare dso_local i32 @CreateSolidBrush(i32) #1

declare dso_local i32 @GetBkColor(i32) #1

declare dso_local i32 @FillRect(i32, i32*, i32) #1

declare dso_local i32 @DeleteObject(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
