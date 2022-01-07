; ModuleID = '/home/carl/AnghaBench/mimikatz/mimidrv/extr_kkll_m_notify.c_kkll_m_notify_search.c'
source_filename = "/home/carl/AnghaBench/mimikatz/mimidrv/extr_kkll_m_notify.c_kkll_m_notify_search.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_9__, %struct.TYPE_8__, i32, i32 }
%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_8__ = type { i32, i32 }

@STATUS_NOT_FOUND = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kkll_m_notify_search(%struct.TYPE_10__* %0, i32 %1, i64* %2, i32* %3, %struct.TYPE_9__** %4) #0 {
  %6 = alloca %struct.TYPE_10__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_9__**, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_10__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i64* %2, i64** %8, align 8
  store i32* %3, i32** %9, align 8
  store %struct.TYPE_9__** %4, %struct.TYPE_9__*** %10, align 8
  %17 = load i32, i32* @STATUS_NOT_FOUND, align 4
  store i32 %17, i32* %11, align 4
  %18 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %19 = load i32, i32* %7, align 4
  %20 = call %struct.TYPE_10__* @kkll_m_memory_getGenericFromBuild(%struct.TYPE_10__* %18, i32 %19)
  store %struct.TYPE_10__* %20, %struct.TYPE_10__** %12, align 8
  %21 = icmp ne %struct.TYPE_10__* %20, null
  br i1 %21, label %22, label %77

22:                                               ; preds = %5
  %23 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %24 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @RtlInitUnicodeString(i32* %13, i32 %25)
  %27 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %28 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @RtlInitUnicodeString(i32* %14, i32 %29)
  %31 = call i64 @MmGetSystemRoutineAddress(i32* %13)
  store i64 %31, i64* %15, align 8
  %32 = call i64 @MmGetSystemRoutineAddress(i32* %14)
  store i64 %32, i64* %16, align 8
  %33 = load i64, i64* %15, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %76

35:                                               ; preds = %22
  %36 = load i64, i64* %16, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %76

38:                                               ; preds = %35
  %39 = load i64*, i64** %8, align 8
  %40 = load i64, i64* %15, align 8
  %41 = load i64, i64* %16, align 8
  %42 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %43 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %47 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %51 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @kkll_m_memory_genericPointerSearch(i64* %39, i64 %40, i64 %41, i32 %45, i32 %49, i32 %53)
  store i32 %54, i32* %11, align 4
  %55 = load i32, i32* %11, align 4
  %56 = call i64 @NT_SUCCESS(i32 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %75

58:                                               ; preds = %38
  %59 = load i32*, i32** %9, align 8
  %60 = icmp ne i32* %59, null
  br i1 %60, label %61, label %67

61:                                               ; preds = %58
  %62 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %63 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load i32*, i32** %9, align 8
  store i32 %65, i32* %66, align 4
  br label %67

67:                                               ; preds = %61, %58
  %68 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %10, align 8
  %69 = icmp ne %struct.TYPE_9__** %68, null
  br i1 %69, label %70, label %74

70:                                               ; preds = %67
  %71 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %72 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %71, i32 0, i32 0
  %73 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %10, align 8
  store %struct.TYPE_9__* %72, %struct.TYPE_9__** %73, align 8
  br label %74

74:                                               ; preds = %70, %67
  br label %75

75:                                               ; preds = %74, %38
  br label %76

76:                                               ; preds = %75, %35, %22
  br label %77

77:                                               ; preds = %76, %5
  %78 = load i32, i32* %11, align 4
  ret i32 %78
}

declare dso_local %struct.TYPE_10__* @kkll_m_memory_getGenericFromBuild(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @RtlInitUnicodeString(i32*, i32) #1

declare dso_local i64 @MmGetSystemRoutineAddress(i32*) #1

declare dso_local i32 @kkll_m_memory_genericPointerSearch(i64*, i64, i64, i32, i32, i32) #1

declare dso_local i64 @NT_SUCCESS(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
