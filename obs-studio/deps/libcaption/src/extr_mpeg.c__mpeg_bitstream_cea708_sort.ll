; ModuleID = '/home/carl/AnghaBench/obs-studio/deps/libcaption/src/extr_mpeg.c__mpeg_bitstream_cea708_sort.c'
source_filename = "/home/carl/AnghaBench/obs-studio/deps/libcaption/src/extr_mpeg.c__mpeg_bitstream_cea708_sort.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64 }
%struct.TYPE_9__ = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @_mpeg_bitstream_cea708_sort(%struct.TYPE_8__* %0) #0 {
  %2 = alloca %struct.TYPE_8__*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_9__, align 8
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca %struct.TYPE_9__*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %2, align 8
  br label %7

7:                                                ; preds = %29, %1
  store i64 1, i64* %3, align 8
  br label %8

8:                                                ; preds = %38, %7
  %9 = load i64, i64* %3, align 8
  %10 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %11 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp ult i64 %9, %12
  br i1 %13, label %14, label %41

14:                                               ; preds = %8
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %16 = load i64, i64* %3, align 8
  %17 = sub i64 %16, 1
  %18 = call %struct.TYPE_9__* @_mpeg_bitstream_cea708_at(%struct.TYPE_8__* %15, i64 %17)
  store %struct.TYPE_9__* %18, %struct.TYPE_9__** %5, align 8
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %20 = load i64, i64* %3, align 8
  %21 = call %struct.TYPE_9__* @_mpeg_bitstream_cea708_at(%struct.TYPE_8__* %19, i64 %20)
  store %struct.TYPE_9__* %21, %struct.TYPE_9__** %6, align 8
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp sgt i64 %24, %27
  br i1 %28, label %29, label %37

29:                                               ; preds = %14
  %30 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %31 = call i32 @memcpy(%struct.TYPE_9__* %4, %struct.TYPE_9__* %30, i32 8)
  %32 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %33 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %34 = call i32 @memcpy(%struct.TYPE_9__* %32, %struct.TYPE_9__* %33, i32 8)
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %36 = call i32 @memcpy(%struct.TYPE_9__* %35, %struct.TYPE_9__* %4, i32 8)
  br label %7

37:                                               ; preds = %14
  br label %38

38:                                               ; preds = %37
  %39 = load i64, i64* %3, align 8
  %40 = add i64 %39, 1
  store i64 %40, i64* %3, align 8
  br label %8

41:                                               ; preds = %8
  ret void
}

declare dso_local %struct.TYPE_9__* @_mpeg_bitstream_cea708_at(%struct.TYPE_8__*, i64) #1

declare dso_local i32 @memcpy(%struct.TYPE_9__*, %struct.TYPE_9__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
