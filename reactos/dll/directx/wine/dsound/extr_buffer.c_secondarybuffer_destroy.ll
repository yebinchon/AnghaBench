; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/dsound/extr_buffer.c_secondarybuffer_destroy.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/dsound/extr_buffer.c_secondarybuffer_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64, %struct.TYPE_9__*, %struct.TYPE_9__*, %struct.TYPE_9__*, %struct.TYPE_9__*, %struct.TYPE_9__*, i32, %struct.TYPE_10__*, i64, i32 }
%struct.TYPE_10__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }

@DSDDESC_USESYSTEMMEMORY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"(%p) released\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @secondarybuffer_destroy(%struct.TYPE_9__* %0) #0 {
  %2 = alloca %struct.TYPE_9__*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %2, align 8
  %3 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %4 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %3, i32 0, i32 7
  %5 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %6 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %7 = call i32 @DirectSoundDevice_RemoveBuffer(%struct.TYPE_10__* %5, %struct.TYPE_9__* %6)
  %8 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %9 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %8, i32 0, i32 9
  %10 = call i32 @RtlDeleteResource(i32* %9)
  %11 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %12 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %11, i32 0, i32 8
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %1
  %16 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %17 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 8
  %18 = load i64, i64* %17, align 8
  %19 = call i32 @IDsDriverBuffer_Release(i64 %18)
  br label %20

20:                                               ; preds = %15, %1
  %21 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %22 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %21, i32 0, i32 8
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %35

25:                                               ; preds = %20
  %26 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i32 0, i32 7
  %28 = load %struct.TYPE_10__*, %struct.TYPE_10__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @DSDDESC_USESYSTEMMEMORY, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %65

35:                                               ; preds = %25, %20
  %36 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i32 0, i32 4
  %38 = load %struct.TYPE_9__*, %struct.TYPE_9__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = add nsw i64 %40, -1
  store i64 %41, i64* %39, align 8
  %42 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %43 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %42, i32 0, i32 6
  %44 = call i32 @list_remove(i32* %43)
  %45 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %45, i32 0, i32 4
  %47 = load %struct.TYPE_9__*, %struct.TYPE_9__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = icmp eq i64 %49, 0
  br i1 %50, label %51, label %64

51:                                               ; preds = %35
  %52 = call i32 (...) @GetProcessHeap()
  %53 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %53, i32 0, i32 4
  %55 = load %struct.TYPE_9__*, %struct.TYPE_9__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %55, i32 0, i32 5
  %57 = load %struct.TYPE_9__*, %struct.TYPE_9__** %56, align 8
  %58 = call i32 @HeapFree(i32 %52, i32 0, %struct.TYPE_9__* %57)
  %59 = call i32 (...) @GetProcessHeap()
  %60 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %61 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %60, i32 0, i32 4
  %62 = load %struct.TYPE_9__*, %struct.TYPE_9__** %61, align 8
  %63 = call i32 @HeapFree(i32 %59, i32 0, %struct.TYPE_9__* %62)
  br label %64

64:                                               ; preds = %51, %35
  br label %65

65:                                               ; preds = %64, %25
  %66 = call i32 (...) @GetProcessHeap()
  %67 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %68 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %67, i32 0, i32 3
  %69 = load %struct.TYPE_9__*, %struct.TYPE_9__** %68, align 8
  %70 = call i32 @HeapFree(i32 %66, i32 0, %struct.TYPE_9__* %69)
  %71 = call i32 (...) @GetProcessHeap()
  %72 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %73 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %72, i32 0, i32 2
  %74 = load %struct.TYPE_9__*, %struct.TYPE_9__** %73, align 8
  %75 = call i32 @HeapFree(i32 %71, i32 0, %struct.TYPE_9__* %74)
  %76 = call i32 (...) @GetProcessHeap()
  %77 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %78 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %77, i32 0, i32 1
  %79 = load %struct.TYPE_9__*, %struct.TYPE_9__** %78, align 8
  %80 = call i32 @HeapFree(i32 %76, i32 0, %struct.TYPE_9__* %79)
  %81 = call i32 (...) @GetProcessHeap()
  %82 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %83 = call i32 @HeapFree(i32 %81, i32 0, %struct.TYPE_9__* %82)
  %84 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %85 = call i32 @TRACE(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), %struct.TYPE_9__* %84)
  ret void
}

declare dso_local i32 @DirectSoundDevice_RemoveBuffer(%struct.TYPE_10__*, %struct.TYPE_9__*) #1

declare dso_local i32 @RtlDeleteResource(i32*) #1

declare dso_local i32 @IDsDriverBuffer_Release(i64) #1

declare dso_local i32 @list_remove(i32*) #1

declare dso_local i32 @HeapFree(i32, i32, %struct.TYPE_9__*) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i32 @TRACE(i8*, %struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
