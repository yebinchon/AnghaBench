; ModuleID = '/home/carl/AnghaBench/lwan/src/samples/clock/extr_xdaliclock.c_xdaliclock_update.c'
source_filename = "/home/carl/AnghaBench/lwan/src/samples/clock/extr_xdaliclock.c_xdaliclock_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xdaliclock = type { i64, i32*, i32 }
%struct.tm = type { i32, i32, i32 }
%struct.frame = type { i32 }

@FRAMES_PER_SECOND = common dso_local global i64 0, align 8
@easing = common dso_local global i32* null, align 8
@digit_widths = common dso_local global i64* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xdaliclock_update(%struct.xdaliclock* %0) #0 {
  %2 = alloca %struct.xdaliclock*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.tm*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.frame*, align 8
  store %struct.xdaliclock* %0, %struct.xdaliclock** %2, align 8
  %8 = load %struct.xdaliclock*, %struct.xdaliclock** %2, align 8
  %9 = getelementptr inbounds %struct.xdaliclock, %struct.xdaliclock* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @FRAMES_PER_SECOND, align 8
  %12 = icmp uge i64 %10, %11
  br i1 %12, label %13, label %81

13:                                               ; preds = %1
  %14 = call i32 @time(i32* null)
  store i32 %14, i32* %3, align 4
  %15 = call %struct.tm* @localtime(i32* %3)
  store %struct.tm* %15, %struct.tm** %4, align 8
  %16 = load %struct.xdaliclock*, %struct.xdaliclock** %2, align 8
  %17 = getelementptr inbounds %struct.xdaliclock, %struct.xdaliclock* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 8
  %19 = load %struct.xdaliclock*, %struct.xdaliclock** %2, align 8
  %20 = getelementptr inbounds %struct.xdaliclock, %struct.xdaliclock* %19, i32 0, i32 1
  %21 = load i32*, i32** %20, align 8
  %22 = call i32 @memcpy(i32 %18, i32* %21, i32 4)
  %23 = load %struct.tm*, %struct.tm** %4, align 8
  %24 = getelementptr inbounds %struct.tm, %struct.tm* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = sdiv i32 %25, 10
  %27 = load %struct.xdaliclock*, %struct.xdaliclock** %2, align 8
  %28 = getelementptr inbounds %struct.xdaliclock, %struct.xdaliclock* %27, i32 0, i32 1
  %29 = load i32*, i32** %28, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 0
  store i32 %26, i32* %30, align 4
  %31 = load %struct.tm*, %struct.tm** %4, align 8
  %32 = getelementptr inbounds %struct.tm, %struct.tm* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = srem i32 %33, 10
  %35 = load %struct.xdaliclock*, %struct.xdaliclock** %2, align 8
  %36 = getelementptr inbounds %struct.xdaliclock, %struct.xdaliclock* %35, i32 0, i32 1
  %37 = load i32*, i32** %36, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 1
  store i32 %34, i32* %38, align 4
  %39 = load %struct.xdaliclock*, %struct.xdaliclock** %2, align 8
  %40 = getelementptr inbounds %struct.xdaliclock, %struct.xdaliclock* %39, i32 0, i32 1
  %41 = load i32*, i32** %40, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 2
  store i32 10, i32* %42, align 4
  %43 = load %struct.tm*, %struct.tm** %4, align 8
  %44 = getelementptr inbounds %struct.tm, %struct.tm* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = sdiv i32 %45, 10
  %47 = load %struct.xdaliclock*, %struct.xdaliclock** %2, align 8
  %48 = getelementptr inbounds %struct.xdaliclock, %struct.xdaliclock* %47, i32 0, i32 1
  %49 = load i32*, i32** %48, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 3
  store i32 %46, i32* %50, align 4
  %51 = load %struct.tm*, %struct.tm** %4, align 8
  %52 = getelementptr inbounds %struct.tm, %struct.tm* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = srem i32 %53, 10
  %55 = load %struct.xdaliclock*, %struct.xdaliclock** %2, align 8
  %56 = getelementptr inbounds %struct.xdaliclock, %struct.xdaliclock* %55, i32 0, i32 1
  %57 = load i32*, i32** %56, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 4
  store i32 %54, i32* %58, align 4
  %59 = load %struct.xdaliclock*, %struct.xdaliclock** %2, align 8
  %60 = getelementptr inbounds %struct.xdaliclock, %struct.xdaliclock* %59, i32 0, i32 1
  %61 = load i32*, i32** %60, align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 5
  store i32 10, i32* %62, align 4
  %63 = load %struct.tm*, %struct.tm** %4, align 8
  %64 = getelementptr inbounds %struct.tm, %struct.tm* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 4
  %66 = sdiv i32 %65, 10
  %67 = load %struct.xdaliclock*, %struct.xdaliclock** %2, align 8
  %68 = getelementptr inbounds %struct.xdaliclock, %struct.xdaliclock* %67, i32 0, i32 1
  %69 = load i32*, i32** %68, align 8
  %70 = getelementptr inbounds i32, i32* %69, i64 6
  store i32 %66, i32* %70, align 4
  %71 = load %struct.tm*, %struct.tm** %4, align 8
  %72 = getelementptr inbounds %struct.tm, %struct.tm* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 4
  %74 = srem i32 %73, 10
  %75 = load %struct.xdaliclock*, %struct.xdaliclock** %2, align 8
  %76 = getelementptr inbounds %struct.xdaliclock, %struct.xdaliclock* %75, i32 0, i32 1
  %77 = load i32*, i32** %76, align 8
  %78 = getelementptr inbounds i32, i32* %77, i64 7
  store i32 %74, i32* %78, align 4
  %79 = load %struct.xdaliclock*, %struct.xdaliclock** %2, align 8
  %80 = getelementptr inbounds %struct.xdaliclock, %struct.xdaliclock* %79, i32 0, i32 0
  store i64 0, i64* %80, align 8
  br label %81

81:                                               ; preds = %13, %1
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %82

82:                                               ; preds = %99, %81
  %83 = load i32, i32* %5, align 4
  %84 = icmp slt i32 %83, 8
  br i1 %84, label %85, label %110

85:                                               ; preds = %82
  %86 = load %struct.xdaliclock*, %struct.xdaliclock** %2, align 8
  %87 = load i32, i32* %5, align 4
  %88 = load i32*, i32** @easing, align 8
  %89 = load %struct.xdaliclock*, %struct.xdaliclock** %2, align 8
  %90 = getelementptr inbounds %struct.xdaliclock, %struct.xdaliclock* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = getelementptr inbounds i32, i32* %88, i64 %91
  %93 = load i32, i32* %92, align 4
  %94 = call %struct.frame* @frame_lerp(%struct.xdaliclock* %86, i32 %87, i32 %93)
  store %struct.frame* %94, %struct.frame** %7, align 8
  %95 = load %struct.xdaliclock*, %struct.xdaliclock** %2, align 8
  %96 = load %struct.frame*, %struct.frame** %7, align 8
  %97 = load i32, i32* %6, align 4
  %98 = call i32 @frame_render(%struct.xdaliclock* %95, %struct.frame* %96, i32 %97)
  br label %99

99:                                               ; preds = %85
  %100 = load i64*, i64** @digit_widths, align 8
  %101 = load i32, i32* %5, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %5, align 4
  %103 = sext i32 %101 to i64
  %104 = getelementptr inbounds i64, i64* %100, i64 %103
  %105 = load i64, i64* %104, align 8
  %106 = load i32, i32* %6, align 4
  %107 = sext i32 %106 to i64
  %108 = add nsw i64 %107, %105
  %109 = trunc i64 %108 to i32
  store i32 %109, i32* %6, align 4
  br label %82

110:                                              ; preds = %82
  %111 = load %struct.xdaliclock*, %struct.xdaliclock** %2, align 8
  %112 = getelementptr inbounds %struct.xdaliclock, %struct.xdaliclock* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = add i64 %113, 1
  store i64 %114, i64* %112, align 8
  ret void
}

declare dso_local i32 @time(i32*) #1

declare dso_local %struct.tm* @localtime(i32*) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local %struct.frame* @frame_lerp(%struct.xdaliclock*, i32, i32) #1

declare dso_local i32 @frame_render(%struct.xdaliclock*, %struct.frame*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
