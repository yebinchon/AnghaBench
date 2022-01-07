; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/comctl32/extr_comboex.c_COMBOEX_GetListboxText.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/comctl32/extr_comboex.c_COMBOEX_GetListboxText.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64 }

@CP_ACP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_5__*, i32, i64*)* @COMBOEX_GetListboxText to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @COMBOEX_GetListboxText(%struct.TYPE_5__* %0, i32 %1, i64* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64* %2, i64** %7, align 8
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %12 = load i32, i32* %6, align 4
  %13 = call i32* @COMBOEX_FindItem(%struct.TYPE_5__* %11, i32 %12)
  store i32* %13, i32** %8, align 8
  %14 = load i32*, i32** %8, align 8
  %15 = icmp ne i32* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %3
  store i64 0, i64* %4, align 8
  br label %65

17:                                               ; preds = %3
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %19 = load i32*, i32** %8, align 8
  %20 = call i32 @COMBOEX_GetText(%struct.TYPE_5__* %18, i32* %19)
  store i32 %20, i32* %9, align 4
  %21 = load i32, i32* %9, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %38, label %23

23:                                               ; preds = %17
  %24 = load i64*, i64** %7, align 8
  %25 = icmp ne i64* %24, null
  br i1 %25, label %26, label %37

26:                                               ; preds = %23
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %26
  %32 = load i64*, i64** %7, align 8
  %33 = getelementptr inbounds i64, i64* %32, i64 0
  store i64 0, i64* %33, align 8
  br label %36

34:                                               ; preds = %26
  %35 = load i64*, i64** %7, align 8
  store i64 0, i64* %35, align 8
  br label %36

36:                                               ; preds = %34, %31
  br label %37

37:                                               ; preds = %36, %23
  store i64 0, i64* %4, align 8
  br label %65

38:                                               ; preds = %17
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %53

43:                                               ; preds = %38
  %44 = load i64*, i64** %7, align 8
  %45 = icmp ne i64* %44, null
  br i1 %45, label %46, label %50

46:                                               ; preds = %43
  %47 = load i64*, i64** %7, align 8
  %48 = load i32, i32* %9, align 4
  %49 = call i32 @lstrcpyW(i64* %47, i32 %48)
  br label %50

50:                                               ; preds = %46, %43
  %51 = load i32, i32* %9, align 4
  %52 = call i64 @lstrlenW(i32 %51)
  store i64 %52, i64* %4, align 8
  br label %65

53:                                               ; preds = %38
  %54 = load i32, i32* @CP_ACP, align 4
  %55 = load i32, i32* %9, align 4
  %56 = load i64*, i64** %7, align 8
  %57 = call i64 @WideCharToMultiByte(i32 %54, i32 0, i32 %55, i32 -1, i64* %56, i32 1073741824, i32* null, i32* null)
  store i64 %57, i64* %10, align 8
  %58 = load i64, i64* %10, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %53
  %61 = load i64, i64* %10, align 8
  %62 = add nsw i64 %61, -1
  store i64 %62, i64* %10, align 8
  br label %63

63:                                               ; preds = %60, %53
  %64 = load i64, i64* %10, align 8
  store i64 %64, i64* %4, align 8
  br label %65

65:                                               ; preds = %63, %50, %37, %16
  %66 = load i64, i64* %4, align 8
  ret i64 %66
}

declare dso_local i32* @COMBOEX_FindItem(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @COMBOEX_GetText(%struct.TYPE_5__*, i32*) #1

declare dso_local i32 @lstrcpyW(i64*, i32) #1

declare dso_local i64 @lstrlenW(i32) #1

declare dso_local i64 @WideCharToMultiByte(i32, i32, i32, i32, i64*, i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
