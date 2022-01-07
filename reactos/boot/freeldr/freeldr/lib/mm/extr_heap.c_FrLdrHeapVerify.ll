; ModuleID = '/home/carl/AnghaBench/reactos/boot/freeldr/freeldr/lib/mm/extr_heap.c_FrLdrHeapVerify.c'
source_filename = "/home/carl/AnghaBench/reactos/boot/freeldr/freeldr/lib/mm/extr_heap.c_FrLdrHeapVerify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, i64 }

@REDZONE_MARK = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @FrLdrHeapVerify(%struct.TYPE_8__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca %struct.TYPE_9__*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %3, align 8
  %6 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  store %struct.TYPE_8__* %6, %struct.TYPE_8__** %4, align 8
  %7 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %8 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 0
  store %struct.TYPE_9__* %8, %struct.TYPE_9__** %5, align 8
  br label %9

9:                                                ; preds = %47, %1
  %10 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %11 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %55

14:                                               ; preds = %9
  %15 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %46

19:                                               ; preds = %14
  %20 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %21 = call i32* @REDZONE_SIZE(%struct.TYPE_9__* %20)
  %22 = load i32, i32* %21, align 4
  %23 = sext i32 %22 to i64
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = sext i32 %26 to i64
  %28 = mul i64 %27, 4
  %29 = icmp ule i64 %23, %28
  %30 = zext i1 %29 to i32
  %31 = call i32 @ASSERT(i32 %30)
  %32 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %33 = call i64* @REDZONE_LOW(%struct.TYPE_9__* %32)
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @REDZONE_MARK, align 8
  %36 = icmp eq i64 %34, %35
  %37 = zext i1 %36 to i32
  %38 = call i32 @ASSERT(i32 %37)
  %39 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %40 = call i64* @REDZONE_HI(%struct.TYPE_9__* %39)
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @REDZONE_MARK, align 8
  %43 = icmp eq i64 %41, %42
  %44 = zext i1 %43 to i32
  %45 = call i32 @ASSERT(i32 %44)
  br label %47

46:                                               ; preds = %14
  br label %47

47:                                               ; preds = %46, %19
  %48 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %48, i64 1
  %50 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %49, i64 %53
  store %struct.TYPE_9__* %54, %struct.TYPE_9__** %5, align 8
  br label %9

55:                                               ; preds = %9
  %56 = load i32, i32* %2, align 4
  ret i32 %56
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32* @REDZONE_SIZE(%struct.TYPE_9__*) #1

declare dso_local i64* @REDZONE_LOW(%struct.TYPE_9__*) #1

declare dso_local i64* @REDZONE_HI(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
