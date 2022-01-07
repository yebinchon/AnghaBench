; ModuleID = '/home/carl/AnghaBench/mimikatz/modules/extr_kull_m_busylight.c_kull_m_busylight_device_read_raw.c'
source_filename = "/home/carl/AnghaBench/mimikatz/modules/extr_kull_m_busylight.c_kull_m_busylight_device_read_raw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }

@FALSE = common dso_local global i64 0, align 8
@INVALID_HANDLE_VALUE = common dso_local global i64 0, align 8
@LPTR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i32] [i32 91, i32 100, i32 101, i32 118, i32 105, i32 99, i32 101, i32 32, i32 37, i32 117, i32 93, i32 32, i32 82, i32 101, i32 97, i32 100, i32 70, i32 105, i32 108, i32 101, i32 32, i32 40, i32 48, i32 120, i32 37, i32 48, i32 56, i32 120, i32 41, i32 10, i32 0], align 4
@.str.1 = private unnamed_addr constant [42 x i32] [i32 91, i32 100, i32 101, i32 118, i32 105, i32 99, i32 101, i32 32, i32 37, i32 117, i32 93, i32 32, i32 37, i32 117, i32 32, i32 98, i32 121, i32 116, i32 101, i32 40, i32 115, i32 41, i32 32, i32 114, i32 101, i32 97, i32 100, i32 101, i32 100, i32 44, i32 32, i32 37, i32 117, i32 32, i32 119, i32 97, i32 110, i32 116, i32 101, i32 100, i32 10, i32 0], align 4
@.str.2 = private unnamed_addr constant [40 x i32] [i32 91, i32 100, i32 101, i32 118, i32 105, i32 99, i32 101, i32 32, i32 37, i32 117, i32 93, i32 32, i32 73, i32 110, i32 118, i32 97, i32 108, i32 105, i32 100, i32 32, i32 68, i32 101, i32 118, i32 105, i32 99, i32 101, i32 47, i32 66, i32 117, i32 115, i32 121, i32 32, i32 72, i32 97, i32 110, i32 100, i32 108, i32 101, i32 10, i32 0], align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @kull_m_busylight_device_read_raw(%struct.TYPE_5__* %0, i32* %1, i64* %2) #0 {
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store i32* %1, i32** %5, align 8
  store i64* %2, i64** %6, align 8
  %9 = load i64, i64* @FALSE, align 8
  store i64 %9, i64* %7, align 8
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %11 = icmp ne %struct.TYPE_5__* %10, null
  br i1 %11, label %12, label %75

12:                                               ; preds = %3
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %75

17:                                               ; preds = %12
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @INVALID_HANDLE_VALUE, align 8
  %22 = icmp ne i64 %20, %21
  br i1 %22, label %23, label %75

23:                                               ; preds = %17
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 2
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  store i64 %27, i64* %8, align 8
  %28 = load i32, i32* @LPTR, align 4
  %29 = load i64, i64* %8, align 8
  %30 = call i32 @LocalAlloc(i32 %28, i64 %29)
  %31 = load i32*, i32** %5, align 8
  store i32 %30, i32* %31, align 4
  %32 = icmp ne i32 %30, 0
  br i1 %32, label %33, label %74

33:                                               ; preds = %23
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i32*, i32** %5, align 8
  %38 = load i32, i32* %37, align 4
  %39 = load i64, i64* %8, align 8
  %40 = load i64*, i64** %6, align 8
  %41 = call i64 @ReadFile(i64 %36, i32 %38, i64 %39, i64* %40, i32* null)
  store i64 %41, i64* %7, align 8
  %42 = load i64, i64* %7, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %52

44:                                               ; preds = %33
  %45 = load i64, i64* %7, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %73

47:                                               ; preds = %44
  %48 = load i64*, i64** %6, align 8
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* %8, align 8
  %51 = icmp ne i64 %49, %50
  br i1 %51, label %52, label %73

52:                                               ; preds = %47, %33
  %53 = load i64, i64* %7, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %62, label %55

55:                                               ; preds = %52
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = sext i32 %58 to i64
  %60 = call i32 (...) @GetLastError()
  %61 = call i32 (i8*, i64, ...) @PRINT_ERROR(i8* bitcast ([31 x i32]* @.str to i8*), i64 %59, i32 %60)
  br label %67

62:                                               ; preds = %52
  %63 = load i64*, i64** %6, align 8
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* %8, align 8
  %66 = call i32 (i8*, i64, ...) @PRINT_ERROR(i8* bitcast ([42 x i32]* @.str.1 to i8*), i64 %64, i64 %65)
  br label %67

67:                                               ; preds = %62, %55
  %68 = load i32*, i32** %5, align 8
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @LocalFree(i32 %69)
  %71 = load i32*, i32** %5, align 8
  store i32 %70, i32* %71, align 4
  %72 = load i64*, i64** %6, align 8
  store i64 0, i64* %72, align 8
  br label %73

73:                                               ; preds = %67, %47, %44
  br label %74

74:                                               ; preds = %73, %23
  br label %81

75:                                               ; preds = %17, %12, %3
  %76 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 8
  %79 = sext i32 %78 to i64
  %80 = call i32 (i8*, i64, ...) @PRINT_ERROR(i8* bitcast ([40 x i32]* @.str.2 to i8*), i64 %79)
  br label %81

81:                                               ; preds = %75, %74
  %82 = load i64, i64* %7, align 8
  ret i64 %82
}

declare dso_local i32 @LocalAlloc(i32, i64) #1

declare dso_local i64 @ReadFile(i64, i32, i64, i64*, i32*) #1

declare dso_local i32 @PRINT_ERROR(i8*, i64, ...) #1

declare dso_local i32 @GetLastError(...) #1

declare dso_local i32 @LocalFree(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
