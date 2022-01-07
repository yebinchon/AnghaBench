; ModuleID = '/home/carl/AnghaBench/obs-studio/deps/libcaption/src/extr_mpeg.c_sei_render_size.c'
source_filename = "/home/carl/AnghaBench/obs-studio/deps/libcaption/src/extr_mpeg.c_sei_render_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.TYPE_9__ = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @sei_render_size(%struct.TYPE_8__* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_9__*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %3, align 8
  %6 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %7 = icmp ne %struct.TYPE_8__* %6, null
  br i1 %7, label %8, label %13

8:                                                ; preds = %1
  %9 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %8, %1
  store i64 0, i64* %2, align 8
  br label %51

14:                                               ; preds = %8
  store i64 2, i64* %4, align 8
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %16 = call %struct.TYPE_9__* @sei_message_head(%struct.TYPE_8__* %15)
  store %struct.TYPE_9__* %16, %struct.TYPE_9__** %5, align 8
  br label %17

17:                                               ; preds = %46, %14
  %18 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %19 = icmp ne %struct.TYPE_9__* %18, null
  br i1 %19, label %20, label %49

20:                                               ; preds = %17
  %21 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = sdiv i32 %23, 255
  %25 = add nsw i32 1, %24
  %26 = sext i32 %25 to i64
  %27 = load i64, i64* %4, align 8
  %28 = add i64 %27, %26
  store i64 %28, i64* %4, align 8
  %29 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = sdiv i32 %31, 255
  %33 = add nsw i32 1, %32
  %34 = sext i32 %33 to i64
  %35 = load i64, i64* %4, align 8
  %36 = add i64 %35, %34
  store i64 %36, i64* %4, align 8
  %37 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = mul nsw i32 %39, 4
  %41 = sdiv i32 %40, 3
  %42 = add nsw i32 1, %41
  %43 = sext i32 %42 to i64
  %44 = load i64, i64* %4, align 8
  %45 = add i64 %44, %43
  store i64 %45, i64* %4, align 8
  br label %46

46:                                               ; preds = %20
  %47 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %48 = call %struct.TYPE_9__* @sei_message_next(%struct.TYPE_9__* %47)
  store %struct.TYPE_9__* %48, %struct.TYPE_9__** %5, align 8
  br label %17

49:                                               ; preds = %17
  %50 = load i64, i64* %4, align 8
  store i64 %50, i64* %2, align 8
  br label %51

51:                                               ; preds = %49, %13
  %52 = load i64, i64* %2, align 8
  ret i64 %52
}

declare dso_local %struct.TYPE_9__* @sei_message_head(%struct.TYPE_8__*) #1

declare dso_local %struct.TYPE_9__* @sei_message_next(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
