; ModuleID = '/home/carl/AnghaBench/radare2/libr/core/extr_windows_heap.c_DecodeHeapEntry.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/core/extr_windows_heap.c_DecodeHeapEntry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_9__* }

@R_SYS_BITS_64 = common dso_local global %struct.TYPE_9__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*, %struct.TYPE_9__*, %struct.TYPE_9__*)* @DecodeHeapEntry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @DecodeHeapEntry(%struct.TYPE_8__* %0, %struct.TYPE_9__* %1, %struct.TYPE_9__* %2) #0 {
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca %struct.TYPE_9__*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %4, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %5, align 8
  store %struct.TYPE_9__* %2, %struct.TYPE_9__** %6, align 8
  %7 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %8 = icmp ne %struct.TYPE_9__* %7, null
  br i1 %8, label %9, label %12

9:                                                ; preds = %3
  %10 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %11 = icmp ne %struct.TYPE_9__* %10, null
  br label %12

12:                                               ; preds = %9, %3
  %13 = phi i1 [ false, %3 ], [ %11, %9 ]
  %14 = zext i1 %13 to i32
  %15 = call i32 @r_return_val_if_fail(i32 %14, i32 0)
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_9__*, %struct.TYPE_9__** %17, align 8
  %19 = load %struct.TYPE_9__*, %struct.TYPE_9__** @R_SYS_BITS_64, align 8
  %20 = icmp eq %struct.TYPE_9__* %18, %19
  br i1 %20, label %21, label %29

21:                                               ; preds = %12
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %23 = ptrtoint %struct.TYPE_9__* %22 to i32
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_9__*, %struct.TYPE_9__** %25, align 8
  %27 = sext i32 %23 to i64
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i64 %27
  store %struct.TYPE_9__* %28, %struct.TYPE_9__** %6, align 8
  br label %29

29:                                               ; preds = %21, %12
  %30 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %65

34:                                               ; preds = %29
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %36 = bitcast %struct.TYPE_9__* %35 to i32*
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = and i32 %37, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %65

43:                                               ; preds = %34
  %44 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 0
  %46 = load %struct.TYPE_9__*, %struct.TYPE_9__** %45, align 8
  %47 = load %struct.TYPE_9__*, %struct.TYPE_9__** @R_SYS_BITS_64, align 8
  %48 = icmp eq %struct.TYPE_9__* %46, %47
  br i1 %48, label %49, label %57

49:                                               ; preds = %43
  %50 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %51 = ptrtoint %struct.TYPE_9__* %50 to i32
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 0
  %54 = load %struct.TYPE_9__*, %struct.TYPE_9__** %53, align 8
  %55 = sext i32 %51 to i64
  %56 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %54, i64 %55
  store %struct.TYPE_9__* %56, %struct.TYPE_9__** %5, align 8
  br label %57

57:                                               ; preds = %49, %43
  %58 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %59 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %62 = bitcast %struct.TYPE_9__* %61 to i32*
  %63 = load i32, i32* %62, align 4
  %64 = xor i32 %63, %60
  store i32 %64, i32* %62, align 4
  br label %65

65:                                               ; preds = %57, %34, %29
  %66 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %67 = bitcast %struct.TYPE_9__* %66 to i32*
  %68 = getelementptr inbounds i32, i32* %67, i64 0
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %71 = bitcast %struct.TYPE_9__* %70 to i32*
  %72 = getelementptr inbounds i32, i32* %71, i64 1
  %73 = load i32, i32* %72, align 4
  %74 = xor i32 %69, %73
  %75 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %76 = bitcast %struct.TYPE_9__* %75 to i32*
  %77 = getelementptr inbounds i32, i32* %76, i64 2
  %78 = load i32, i32* %77, align 4
  %79 = xor i32 %74, %78
  %80 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %81 = bitcast %struct.TYPE_9__* %80 to i32*
  %82 = getelementptr inbounds i32, i32* %81, i64 3
  %83 = load i32, i32* %82, align 4
  %84 = xor i32 %79, %83
  %85 = icmp ne i32 %84, 0
  %86 = xor i1 %85, true
  %87 = zext i1 %86 to i32
  ret i32 %87
}

declare dso_local i32 @r_return_val_if_fail(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
