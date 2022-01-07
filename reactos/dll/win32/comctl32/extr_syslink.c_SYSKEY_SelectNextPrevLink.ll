; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/comctl32/extr_syslink.c_SYSKEY_SelectNextPrevLink.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/comctl32/extr_syslink.c_SYSKEY_SelectNextPrevLink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64 }

@TRUE = common dso_local global i64 0, align 8
@FALSE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_8__*, i64)* @SYSKEY_SelectNextPrevLink to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @SYSKEY_SelectNextPrevLink(%struct.TYPE_8__* %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %4, align 8
  store i64 %1, i64* %5, align 8
  %10 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %54

14:                                               ; preds = %2
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %16 = call i32* @SYSLINK_GetFocusLink(%struct.TYPE_8__* %15, i32* %7)
  store i32* %16, i32** %6, align 8
  %17 = load i32*, i32** %6, align 8
  %18 = icmp ne i32* %17, null
  br i1 %18, label %19, label %53

19:                                               ; preds = %14
  %20 = load i64, i64* %5, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %19
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %24 = load i32*, i32** %6, align 8
  %25 = call i32* @SYSLINK_GetPrevLink(%struct.TYPE_8__* %23, i32* %24)
  store i32* %25, i32** %8, align 8
  br label %30

26:                                               ; preds = %19
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %28 = load i32*, i32** %6, align 8
  %29 = call i32* @SYSLINK_GetNextLink(%struct.TYPE_8__* %27, i32* %28)
  store i32* %29, i32** %8, align 8
  br label %30

30:                                               ; preds = %26, %22
  %31 = load i32*, i32** %8, align 8
  %32 = icmp ne i32* %31, null
  br i1 %32, label %33, label %52

33:                                               ; preds = %30
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %35 = load i32*, i32** %8, align 8
  %36 = call i32* @SYSLINK_SetFocusLink(%struct.TYPE_8__* %34, i32* %35)
  store i32* %36, i32** %9, align 8
  %37 = load i32*, i32** %9, align 8
  %38 = icmp ne i32* %37, null
  br i1 %38, label %39, label %47

39:                                               ; preds = %33
  %40 = load i32*, i32** %9, align 8
  %41 = load i32*, i32** %8, align 8
  %42 = icmp ne i32* %40, %41
  br i1 %42, label %43, label %47

43:                                               ; preds = %39
  %44 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %45 = load i32*, i32** %9, align 8
  %46 = call i32 @SYSLINK_RepaintLink(%struct.TYPE_8__* %44, i32* %45)
  br label %47

47:                                               ; preds = %43, %39, %33
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %49 = load i32*, i32** %8, align 8
  %50 = call i32 @SYSLINK_RepaintLink(%struct.TYPE_8__* %48, i32* %49)
  %51 = load i64, i64* @TRUE, align 8
  store i64 %51, i64* %3, align 8
  br label %56

52:                                               ; preds = %30
  br label %53

53:                                               ; preds = %52, %14
  br label %54

54:                                               ; preds = %53, %2
  %55 = load i64, i64* @FALSE, align 8
  store i64 %55, i64* %3, align 8
  br label %56

56:                                               ; preds = %54, %47
  %57 = load i64, i64* %3, align 8
  ret i64 %57
}

declare dso_local i32* @SYSLINK_GetFocusLink(%struct.TYPE_8__*, i32*) #1

declare dso_local i32* @SYSLINK_GetPrevLink(%struct.TYPE_8__*, i32*) #1

declare dso_local i32* @SYSLINK_GetNextLink(%struct.TYPE_8__*, i32*) #1

declare dso_local i32* @SYSLINK_SetFocusLink(%struct.TYPE_8__*, i32*) #1

declare dso_local i32 @SYSLINK_RepaintLink(%struct.TYPE_8__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
