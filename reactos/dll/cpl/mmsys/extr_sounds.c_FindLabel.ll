; ModuleID = '/home/carl/AnghaBench/reactos/dll/cpl/mmsys/extr_sounds.c_FindLabel.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/cpl/mmsys/extr_sounds.c_FindLabel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_12__*, %struct.TYPE_14__*, %struct.TYPE_12__*, %struct.TYPE_12__* }
%struct.TYPE_13__ = type { %struct.TYPE_12__* }
%struct.TYPE_14__ = type { %struct.TYPE_12__* }

@HEAP_ZERO_MEMORY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_12__* @FindLabel(%struct.TYPE_13__* %0, %struct.TYPE_14__* %1, i32* %2) #0 {
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca %struct.TYPE_13__*, align 8
  %6 = alloca %struct.TYPE_14__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_12__*, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %5, align 8
  store %struct.TYPE_14__* %1, %struct.TYPE_14__** %6, align 8
  store i32* %2, i32** %7, align 8
  %9 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %10 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %9, i32 0, i32 0
  %11 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  store %struct.TYPE_12__* %11, %struct.TYPE_12__** %8, align 8
  br label %12

12:                                               ; preds = %30, %3
  %13 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %14 = icmp ne %struct.TYPE_12__* %13, null
  br i1 %14, label %15, label %34

15:                                               ; preds = %12
  %16 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %17 = call i32 @ASSERT(%struct.TYPE_12__* %16)
  %18 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %19 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %18, i32 0, i32 2
  %20 = load %struct.TYPE_12__*, %struct.TYPE_12__** %19, align 8
  %21 = call i32 @ASSERT(%struct.TYPE_12__* %20)
  %22 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %23 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %22, i32 0, i32 2
  %24 = load %struct.TYPE_12__*, %struct.TYPE_12__** %23, align 8
  %25 = load i32*, i32** %7, align 8
  %26 = call i32 @_tcscmp(%struct.TYPE_12__* %24, i32* %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %30, label %28

28:                                               ; preds = %15
  %29 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  store %struct.TYPE_12__* %29, %struct.TYPE_12__** %4, align 8
  br label %95

30:                                               ; preds = %15
  %31 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %32 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %31, i32 0, i32 0
  %33 = load %struct.TYPE_12__*, %struct.TYPE_12__** %32, align 8
  store %struct.TYPE_12__* %33, %struct.TYPE_12__** %8, align 8
  br label %12

34:                                               ; preds = %12
  %35 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %35, i32 0, i32 0
  %37 = load %struct.TYPE_12__*, %struct.TYPE_12__** %36, align 8
  store %struct.TYPE_12__* %37, %struct.TYPE_12__** %8, align 8
  br label %38

38:                                               ; preds = %56, %34
  %39 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %40 = icmp ne %struct.TYPE_12__* %39, null
  br i1 %40, label %41, label %60

41:                                               ; preds = %38
  %42 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %43 = call i32 @ASSERT(%struct.TYPE_12__* %42)
  %44 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %45 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %44, i32 0, i32 2
  %46 = load %struct.TYPE_12__*, %struct.TYPE_12__** %45, align 8
  %47 = call i32 @ASSERT(%struct.TYPE_12__* %46)
  %48 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %49 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %48, i32 0, i32 2
  %50 = load %struct.TYPE_12__*, %struct.TYPE_12__** %49, align 8
  %51 = load i32*, i32** %7, align 8
  %52 = call i32 @_tcscmp(%struct.TYPE_12__* %50, i32* %51)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %56, label %54

54:                                               ; preds = %41
  %55 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  store %struct.TYPE_12__* %55, %struct.TYPE_12__** %4, align 8
  br label %95

56:                                               ; preds = %41
  %57 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %58 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %57, i32 0, i32 0
  %59 = load %struct.TYPE_12__*, %struct.TYPE_12__** %58, align 8
  store %struct.TYPE_12__* %59, %struct.TYPE_12__** %8, align 8
  br label %38

60:                                               ; preds = %38
  %61 = call i32 (...) @GetProcessHeap()
  %62 = load i32, i32* @HEAP_ZERO_MEMORY, align 4
  %63 = call %struct.TYPE_12__* @HeapAlloc(i32 %61, i32 %62, i32 4)
  store %struct.TYPE_12__* %63, %struct.TYPE_12__** %8, align 8
  %64 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %65 = icmp ne %struct.TYPE_12__* %64, null
  br i1 %65, label %67, label %66

66:                                               ; preds = %60
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %4, align 8
  br label %95

67:                                               ; preds = %60
  %68 = load i32*, i32** %7, align 8
  %69 = call %struct.TYPE_12__* @_tcsdup(i32* %68)
  %70 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %71 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %70, i32 0, i32 3
  store %struct.TYPE_12__* %69, %struct.TYPE_12__** %71, align 8
  %72 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %73 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %72, i32 0, i32 2
  store %struct.TYPE_12__* %69, %struct.TYPE_12__** %73, align 8
  %74 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %75 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %74, i32 0, i32 2
  %76 = load %struct.TYPE_12__*, %struct.TYPE_12__** %75, align 8
  %77 = icmp ne %struct.TYPE_12__* %76, null
  br i1 %77, label %82, label %78

78:                                               ; preds = %67
  %79 = call i32 (...) @GetProcessHeap()
  %80 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %81 = call i32 @HeapFree(i32 %79, i32 0, %struct.TYPE_12__* %80)
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %4, align 8
  br label %95

82:                                               ; preds = %67
  %83 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %84 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %85 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %84, i32 0, i32 1
  store %struct.TYPE_14__* %83, %struct.TYPE_14__** %85, align 8
  %86 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %87 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %86, i32 0, i32 0
  %88 = load %struct.TYPE_12__*, %struct.TYPE_12__** %87, align 8
  %89 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %90 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %89, i32 0, i32 0
  store %struct.TYPE_12__* %88, %struct.TYPE_12__** %90, align 8
  %91 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %92 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %93 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %92, i32 0, i32 0
  store %struct.TYPE_12__* %91, %struct.TYPE_12__** %93, align 8
  %94 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  store %struct.TYPE_12__* %94, %struct.TYPE_12__** %4, align 8
  br label %95

95:                                               ; preds = %82, %78, %66, %54, %28
  %96 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  ret %struct.TYPE_12__* %96
}

declare dso_local i32 @ASSERT(%struct.TYPE_12__*) #1

declare dso_local i32 @_tcscmp(%struct.TYPE_12__*, i32*) #1

declare dso_local %struct.TYPE_12__* @HeapAlloc(i32, i32, i32) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local %struct.TYPE_12__* @_tcsdup(i32*) #1

declare dso_local i32 @HeapFree(i32, i32, %struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
