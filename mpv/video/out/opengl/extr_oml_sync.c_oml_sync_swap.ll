; ModuleID = '/home/carl/AnghaBench/mpv/video/out/opengl/extr_oml_sync.c_oml_sync_swap.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/opengl/extr_oml_sync.c_oml_sync_swap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.oml_sync = type { i32, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.timespec = type { i64, i32 }

@CLOCK_MONOTONIC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @oml_sync_swap(%struct.oml_sync* %0, i64 %1, i64 %2, i64 %3) #0 {
  %5 = alloca %struct.oml_sync*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.timespec, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store %struct.oml_sync* %0, %struct.oml_sync** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  %15 = load %struct.oml_sync*, %struct.oml_sync** %5, align 8
  %16 = getelementptr inbounds %struct.oml_sync, %struct.oml_sync* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %4
  %20 = load %struct.oml_sync*, %struct.oml_sync** %5, align 8
  %21 = call i32 @oml_sync_reset(%struct.oml_sync* %20)
  br label %22

22:                                               ; preds = %19, %4
  %23 = load %struct.oml_sync*, %struct.oml_sync** %5, align 8
  %24 = getelementptr inbounds %struct.oml_sync, %struct.oml_sync* %23, i32 0, i32 8
  store i64 0, i64* %24, align 8
  %25 = load %struct.oml_sync*, %struct.oml_sync** %5, align 8
  %26 = getelementptr inbounds %struct.oml_sync, %struct.oml_sync* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = add nsw i64 %27, 1
  store i64 %28, i64* %26, align 8
  %29 = load i64, i64* %8, align 8
  %30 = icmp slt i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %22
  br label %131

32:                                               ; preds = %22
  %33 = load %struct.oml_sync*, %struct.oml_sync** %5, align 8
  %34 = getelementptr inbounds %struct.oml_sync, %struct.oml_sync* %33, i32 0, i32 0
  store i32 1, i32* %34, align 8
  %35 = load %struct.oml_sync*, %struct.oml_sync** %5, align 8
  %36 = getelementptr inbounds %struct.oml_sync, %struct.oml_sync* %35, i32 0, i32 2
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %45

39:                                               ; preds = %32
  %40 = load i64, i64* %6, align 8
  %41 = load %struct.oml_sync*, %struct.oml_sync** %5, align 8
  %42 = getelementptr inbounds %struct.oml_sync, %struct.oml_sync* %41, i32 0, i32 2
  %43 = load i64, i64* %42, align 8
  %44 = sub nsw i64 %40, %43
  br label %46

45:                                               ; preds = %32
  br label %46

46:                                               ; preds = %45, %39
  %47 = phi i64 [ %44, %39 ], [ 0, %45 ]
  store i64 %47, i64* %9, align 8
  %48 = load i64, i64* %6, align 8
  %49 = load %struct.oml_sync*, %struct.oml_sync** %5, align 8
  %50 = getelementptr inbounds %struct.oml_sync, %struct.oml_sync* %49, i32 0, i32 2
  store i64 %48, i64* %50, align 8
  %51 = load %struct.oml_sync*, %struct.oml_sync** %5, align 8
  %52 = getelementptr inbounds %struct.oml_sync, %struct.oml_sync* %51, i32 0, i32 3
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %61

55:                                               ; preds = %46
  %56 = load i64, i64* %7, align 8
  %57 = load %struct.oml_sync*, %struct.oml_sync** %5, align 8
  %58 = getelementptr inbounds %struct.oml_sync, %struct.oml_sync* %57, i32 0, i32 3
  %59 = load i64, i64* %58, align 8
  %60 = sub nsw i64 %56, %59
  br label %62

61:                                               ; preds = %46
  br label %62

62:                                               ; preds = %61, %55
  %63 = phi i64 [ %60, %55 ], [ 0, %61 ]
  store i64 %63, i64* %10, align 8
  %64 = load i64, i64* %7, align 8
  %65 = load %struct.oml_sync*, %struct.oml_sync** %5, align 8
  %66 = getelementptr inbounds %struct.oml_sync, %struct.oml_sync* %65, i32 0, i32 3
  store i64 %64, i64* %66, align 8
  %67 = load i64, i64* %8, align 8
  %68 = load %struct.oml_sync*, %struct.oml_sync** %5, align 8
  %69 = getelementptr inbounds %struct.oml_sync, %struct.oml_sync* %68, i32 0, i32 4
  %70 = load i64, i64* %69, align 8
  %71 = sub nsw i64 %67, %70
  store i64 %71, i64* %11, align 8
  %72 = load i64, i64* %8, align 8
  %73 = load %struct.oml_sync*, %struct.oml_sync** %5, align 8
  %74 = getelementptr inbounds %struct.oml_sync, %struct.oml_sync* %73, i32 0, i32 4
  store i64 %72, i64* %74, align 8
  %75 = load i64, i64* %10, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %86

77:                                               ; preds = %62
  %78 = load i64, i64* %9, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %86

80:                                               ; preds = %77
  %81 = load i64, i64* %9, align 8
  %82 = load i64, i64* %10, align 8
  %83 = sdiv i64 %81, %82
  %84 = load %struct.oml_sync*, %struct.oml_sync** %5, align 8
  %85 = getelementptr inbounds %struct.oml_sync, %struct.oml_sync* %84, i32 0, i32 5
  store i64 %83, i64* %85, align 8
  br label %86

86:                                               ; preds = %80, %77, %62
  %87 = load i64, i64* %11, align 8
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %111

89:                                               ; preds = %86
  %90 = load i32, i32* @CLOCK_MONOTONIC, align 4
  %91 = call i64 @clock_gettime(i32 %90, %struct.timespec* %12)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %94

93:                                               ; preds = %89
  br label %131

94:                                               ; preds = %89
  %95 = getelementptr inbounds %struct.timespec, %struct.timespec* %12, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = mul nsw i64 %96, 1000000
  %98 = getelementptr inbounds %struct.timespec, %struct.timespec* %12, i32 0, i32 1
  %99 = load i32, i32* %98, align 8
  %100 = sdiv i32 %99, 1000
  %101 = sext i32 %100 to i64
  %102 = add nsw i64 %97, %101
  store i64 %102, i64* %13, align 8
  %103 = call i64 (...) @mp_time_us()
  %104 = load i64, i64* %13, align 8
  %105 = load i64, i64* %6, align 8
  %106 = sub nsw i64 %104, %105
  %107 = sub nsw i64 %103, %106
  store i64 %107, i64* %14, align 8
  %108 = load i64, i64* %14, align 8
  %109 = load %struct.oml_sync*, %struct.oml_sync** %5, align 8
  %110 = getelementptr inbounds %struct.oml_sync, %struct.oml_sync* %109, i32 0, i32 6
  store i64 %108, i64* %110, align 8
  br label %111

111:                                              ; preds = %94, %86
  %112 = load i64, i64* %8, align 8
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %115, label %114

114:                                              ; preds = %111
  br label %131

115:                                              ; preds = %111
  %116 = load %struct.oml_sync*, %struct.oml_sync** %5, align 8
  %117 = getelementptr inbounds %struct.oml_sync, %struct.oml_sync* %116, i32 0, i32 6
  %118 = load i64, i64* %117, align 8
  %119 = load %struct.oml_sync*, %struct.oml_sync** %5, align 8
  %120 = getelementptr inbounds %struct.oml_sync, %struct.oml_sync* %119, i32 0, i32 1
  %121 = load i64, i64* %120, align 8
  %122 = load i64, i64* %8, align 8
  %123 = sub nsw i64 %121, %122
  %124 = load %struct.oml_sync*, %struct.oml_sync** %5, align 8
  %125 = getelementptr inbounds %struct.oml_sync, %struct.oml_sync* %124, i32 0, i32 5
  %126 = load i64, i64* %125, align 8
  %127 = mul nsw i64 %123, %126
  %128 = add nsw i64 %118, %127
  %129 = load %struct.oml_sync*, %struct.oml_sync** %5, align 8
  %130 = getelementptr inbounds %struct.oml_sync, %struct.oml_sync* %129, i32 0, i32 7
  store i64 %128, i64* %130, align 8
  br label %131

131:                                              ; preds = %115, %114, %93, %31
  ret void
}

declare dso_local i32 @oml_sync_reset(%struct.oml_sync*) #1

declare dso_local i64 @clock_gettime(i32, %struct.timespec*) #1

declare dso_local i64 @mp_time_us(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
