; ModuleID = '/home/carl/AnghaBench/mimikatz/modules/extr_kull_m_busylight.c_kull_m_busylight_device_send_raw.c'
source_filename = "/home/carl/AnghaBench/mimikatz/modules/extr_kull_m_busylight.c_kull_m_busylight_device_send_raw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }

@FALSE = common dso_local global i32 0, align 4
@INVALID_HANDLE_VALUE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [32 x i32] [i32 91, i32 100, i32 101, i32 118, i32 105, i32 99, i32 101, i32 32, i32 37, i32 117, i32 93, i32 32, i32 87, i32 114, i32 105, i32 116, i32 101, i32 70, i32 105, i32 108, i32 101, i32 32, i32 40, i32 48, i32 120, i32 37, i32 48, i32 56, i32 120, i32 41, i32 10, i32 0], align 4
@.str.1 = private unnamed_addr constant [53 x i32] [i32 91, i32 100, i32 101, i32 118, i32 105, i32 99, i32 101, i32 32, i32 37, i32 117, i32 93, i32 32, i32 83, i32 105, i32 122, i32 101, i32 32, i32 105, i32 115, i32 32, i32 110, i32 111, i32 116, i32 32, i32 118, i32 97, i32 108, i32 105, i32 100, i32 101, i32 32, i32 40, i32 115, i32 105, i32 122, i32 32, i32 61, i32 32, i32 37, i32 117, i32 44, i32 32, i32 109, i32 97, i32 120, i32 32, i32 61, i32 32, i32 37, i32 117, i32 41, i32 10, i32 0], align 4
@.str.2 = private unnamed_addr constant [40 x i32] [i32 91, i32 100, i32 101, i32 118, i32 105, i32 99, i32 101, i32 32, i32 37, i32 117, i32 93, i32 32, i32 73, i32 110, i32 118, i32 97, i32 108, i32 105, i32 100, i32 32, i32 68, i32 101, i32 118, i32 105, i32 99, i32 101, i32 47, i32 66, i32 117, i32 115, i32 121, i32 32, i32 72, i32 97, i32 110, i32 100, i32 108, i32 101, i32 10, i32 0], align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kull_m_busylight_device_send_raw(%struct.TYPE_5__* %0, i32 %1, i64 %2) #0 {
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 %2, i64* %6, align 8
  %9 = load i32, i32* @FALSE, align 4
  store i32 %9, i32* %7, align 4
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %11 = icmp ne %struct.TYPE_5__* %10, null
  br i1 %11, label %12, label %57

12:                                               ; preds = %3
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %57

17:                                               ; preds = %12
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @INVALID_HANDLE_VALUE, align 8
  %22 = icmp ne i64 %20, %21
  br i1 %22, label %23, label %57

23:                                               ; preds = %17
  %24 = load i64, i64* %6, align 8
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 2
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp sle i64 %24, %28
  br i1 %29, label %30, label %46

30:                                               ; preds = %23
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i32, i32* %5, align 4
  %35 = load i64, i64* %6, align 8
  %36 = call i32 @WriteFile(i64 %33, i32 %34, i64 %35, i64* %8, i32* null)
  store i32 %36, i32* %7, align 4
  %37 = load i32, i32* %7, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %45, label %39

39:                                               ; preds = %30
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = call i32 (...) @GetLastError()
  %44 = call i32 (i8*, i32, ...) @PRINT_ERROR(i8* bitcast ([32 x i32]* @.str to i8*), i32 %42, i32 %43)
  br label %45

45:                                               ; preds = %39, %30
  br label %56

46:                                               ; preds = %23
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = load i64, i64* %6, align 8
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 2
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = call i32 (i8*, i32, ...) @PRINT_ERROR(i8* bitcast ([53 x i32]* @.str.1 to i8*), i32 %49, i64 %50, i64 %54)
  br label %56

56:                                               ; preds = %46, %45
  br label %62

57:                                               ; preds = %17, %12, %3
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  %61 = call i32 (i8*, i32, ...) @PRINT_ERROR(i8* bitcast ([40 x i32]* @.str.2 to i8*), i32 %60)
  br label %62

62:                                               ; preds = %57, %56
  %63 = load i32, i32* %7, align 4
  ret i32 %63
}

declare dso_local i32 @WriteFile(i64, i32, i64, i64*, i32*) #1

declare dso_local i32 @PRINT_ERROR(i8*, i32, ...) #1

declare dso_local i32 @GetLastError(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
