; ModuleID = '/home/carl/AnghaBench/obs-studio/plugins/win-capture/extr_cursor-capture.c_copy_from_color.c'
source_filename = "/home/carl/AnghaBench/obs-studio/plugins/win-capture/extr_cursor-capture.c_copy_from_color.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_5__*, i64*, i64*)* @copy_from_color to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @copy_from_color(%struct.TYPE_5__* %0, i64* %1, i64* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca %struct.TYPE_6__, align 8
  %9 = alloca %struct.TYPE_6__, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %5, align 8
  store i64* %1, i64** %6, align 8
  store i64* %2, i64** %7, align 8
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = call i32* @get_bitmap_data(i32 %15, %struct.TYPE_6__* %8)
  store i32* %16, i32** %10, align 8
  %17 = load i32*, i32** %10, align 8
  %18 = icmp ne i32* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %3
  store i32* null, i32** %4, align 8
  br label %60

20:                                               ; preds = %3
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp slt i32 %22, 32
  br i1 %23, label %24, label %27

24:                                               ; preds = %20
  %25 = load i32*, i32** %10, align 8
  %26 = call i32 @bfree(i32* %25)
  store i32* null, i32** %4, align 8
  br label %60

27:                                               ; preds = %20
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32* @get_bitmap_data(i32 %30, %struct.TYPE_6__* %9)
  store i32* %31, i32** %11, align 8
  %32 = load i32*, i32** %11, align 8
  %33 = icmp ne i32* %32, null
  br i1 %33, label %34, label %52

34:                                               ; preds = %27
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 2
  %38 = load i64, i64* %37, align 8
  %39 = mul nsw i64 %36, %38
  store i64 %39, i64* %12, align 8
  %40 = load i32*, i32** %10, align 8
  %41 = load i64, i64* %12, align 8
  %42 = call i32 @bitmap_has_alpha(i32* %40, i64 %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %49, label %44

44:                                               ; preds = %34
  %45 = load i32*, i32** %10, align 8
  %46 = load i32*, i32** %11, align 8
  %47 = load i64, i64* %12, align 8
  %48 = call i32 @apply_mask(i32* %45, i32* %46, i64 %47)
  br label %49

49:                                               ; preds = %44, %34
  %50 = load i32*, i32** %11, align 8
  %51 = call i32 @bfree(i32* %50)
  br label %52

52:                                               ; preds = %49, %27
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 2
  %54 = load i64, i64* %53, align 8
  %55 = load i64*, i64** %6, align 8
  store i64 %54, i64* %55, align 8
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = load i64*, i64** %7, align 8
  store i64 %57, i64* %58, align 8
  %59 = load i32*, i32** %10, align 8
  store i32* %59, i32** %4, align 8
  br label %60

60:                                               ; preds = %52, %24, %19
  %61 = load i32*, i32** %4, align 8
  ret i32* %61
}

declare dso_local i32* @get_bitmap_data(i32, %struct.TYPE_6__*) #1

declare dso_local i32 @bfree(i32*) #1

declare dso_local i32 @bitmap_has_alpha(i32*, i64) #1

declare dso_local i32 @apply_mask(i32*, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
