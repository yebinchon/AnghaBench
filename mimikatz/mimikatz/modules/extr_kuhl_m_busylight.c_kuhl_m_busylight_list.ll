; ModuleID = '/home/carl/AnghaBench/mimikatz/mimikatz/modules/extr_kuhl_m_busylight.c_kuhl_m_busylight_list.c'
source_filename = "/home/carl/AnghaBench/mimikatz/mimikatz/modules/extr_kuhl_m_busylight.c_kuhl_m_busylight_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__*, i32, %struct.TYPE_5__* }
%struct.TYPE_4__ = type { i32, i32 }

@isBusyLight = common dso_local global i64 0, align 8
@kuhl_m_busylight_devices = common dso_local global %struct.TYPE_5__* null, align 8
@.str = private unnamed_addr constant [12 x i32] [i32 91, i32 37, i32 51, i32 117, i32 93, i32 32, i32 37, i32 115, i32 32, i32 40, i32 32, i32 0], align 4
@kuhl_m_busylight_capabilities_to_String = common dso_local global i32* null, align 8
@.str.1 = private unnamed_addr constant [5 x i32] [i32 37, i32 115, i32 44, i32 32, i32 0], align 4
@.str.2 = private unnamed_addr constant [3 x i32] [i32 41, i32 10, i32 0], align 4
@.str.3 = private unnamed_addr constant [14 x i32] [i32 78, i32 111, i32 32, i32 66, i32 117, i32 115, i32 121, i32 76, i32 105, i32 103, i32 104, i32 116, i32 10, i32 0], align 4
@STATUS_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kuhl_m_busylight_list(i32 %0, i32** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32**, align 8
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32** %1, i32*** %4, align 8
  %7 = load i64, i64* @isBusyLight, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %57

9:                                                ; preds = %2
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** @kuhl_m_busylight_devices, align 8
  store %struct.TYPE_5__* %10, %struct.TYPE_5__** %5, align 8
  br label %11

11:                                               ; preds = %52, %9
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %13 = icmp ne %struct.TYPE_5__* %12, null
  br i1 %13, label %14, label %56

14:                                               ; preds = %11
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = call i32 (i8*, ...) @kprintf(i8* bitcast ([12 x i32]* @.str to i8*), i32 %17, i32 %22)
  store i32 0, i32* %6, align 4
  br label %24

24:                                               ; preds = %47, %14
  %25 = load i32, i32* %6, align 4
  %26 = load i32*, i32** @kuhl_m_busylight_capabilities_to_String, align 8
  %27 = call i32 @ARRAYSIZE(i32* %26)
  %28 = icmp slt i32 %25, %27
  br i1 %28, label %29, label %50

29:                                               ; preds = %24
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* %6, align 4
  %36 = ashr i32 %34, %35
  %37 = and i32 %36, 1
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %46

39:                                               ; preds = %29
  %40 = load i32*, i32** @kuhl_m_busylight_capabilities_to_String, align 8
  %41 = load i32, i32* %6, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i32, i32* %40, i64 %42
  %44 = load i32, i32* %43, align 4
  %45 = call i32 (i8*, ...) @kprintf(i8* bitcast ([5 x i32]* @.str.1 to i8*), i32 %44)
  br label %46

46:                                               ; preds = %39, %29
  br label %47

47:                                               ; preds = %46
  %48 = load i32, i32* %6, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %6, align 4
  br label %24

50:                                               ; preds = %24
  %51 = call i32 (i8*, ...) @kprintf(i8* bitcast ([3 x i32]* @.str.2 to i8*))
  br label %52

52:                                               ; preds = %50
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 2
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %54, align 8
  store %struct.TYPE_5__* %55, %struct.TYPE_5__** %5, align 8
  br label %11

56:                                               ; preds = %11
  br label %59

57:                                               ; preds = %2
  %58 = call i32 @PRINT_ERROR(i8* bitcast ([14 x i32]* @.str.3 to i8*))
  br label %59

59:                                               ; preds = %57, %56
  %60 = load i32, i32* @STATUS_SUCCESS, align 4
  ret i32 %60
}

declare dso_local i32 @kprintf(i8*, ...) #1

declare dso_local i32 @ARRAYSIZE(i32*) #1

declare dso_local i32 @PRINT_ERROR(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
