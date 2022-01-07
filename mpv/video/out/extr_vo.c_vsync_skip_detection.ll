; ModuleID = '/home/carl/AnghaBench/mpv/video/out/extr_vo.c_vsync_skip_detection.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/extr_vo.c_vsync_skip_detection.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vo = type { %struct.vo_internal* }
%struct.vo_internal = type { i32, i32, i32, i32*, i32, i32, i32 }

@.str = private unnamed_addr constant [11 x i8] c"vo-delayed\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vo*)* @vsync_skip_detection to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vsync_skip_detection(%struct.vo* %0) #0 {
  %2 = alloca %struct.vo*, align 8
  %3 = alloca %struct.vo_internal*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.vo* %0, %struct.vo** %2, align 8
  %11 = load %struct.vo*, %struct.vo** %2, align 8
  %12 = getelementptr inbounds %struct.vo, %struct.vo* %11, i32 0, i32 0
  %13 = load %struct.vo_internal*, %struct.vo_internal** %12, align 8
  store %struct.vo_internal* %13, %struct.vo_internal** %3, align 8
  store i32 4, i32* %4, align 4
  %14 = load %struct.vo_internal*, %struct.vo_internal** %3, align 8
  %15 = getelementptr inbounds %struct.vo_internal, %struct.vo_internal* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  store i32 %16, i32* %5, align 4
  %17 = load %struct.vo_internal*, %struct.vo_internal** %3, align 8
  %18 = getelementptr inbounds %struct.vo_internal, %struct.vo_internal* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %20

20:                                               ; preds = %55, %1
  %21 = load i32, i32* %9, align 4
  %22 = load %struct.vo_internal*, %struct.vo_internal** %3, align 8
  %23 = getelementptr inbounds %struct.vo_internal, %struct.vo_internal* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 8
  %25 = icmp slt i32 %21, %24
  br i1 %25, label %26, label %58

26:                                               ; preds = %20
  %27 = load i32, i32* %5, align 4
  %28 = load i32, i32* %6, align 4
  %29 = sub nsw i32 %27, %28
  %30 = load i32, i32* %7, align 4
  %31 = add nsw i32 %30, %29
  store i32 %31, i32* %7, align 4
  %32 = load %struct.vo_internal*, %struct.vo_internal** %3, align 8
  %33 = getelementptr inbounds %struct.vo_internal, %struct.vo_internal* %32, i32 0, i32 3
  %34 = load i32*, i32** %33, align 8
  %35 = load i32, i32* %9, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %34, i64 %36
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* %5, align 4
  %40 = sub nsw i32 %39, %38
  store i32 %40, i32* %5, align 4
  %41 = load %struct.vo_internal*, %struct.vo_internal** %3, align 8
  %42 = getelementptr inbounds %struct.vo_internal, %struct.vo_internal* %41, i32 0, i32 4
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* %6, align 4
  %45 = sub nsw i32 %44, %43
  store i32 %45, i32* %6, align 4
  %46 = load i32, i32* %9, align 4
  %47 = load i32, i32* %4, align 4
  %48 = add nsw i32 %47, 1
  %49 = icmp eq i32 %46, %48
  br i1 %49, label %50, label %54

50:                                               ; preds = %26
  %51 = load i32, i32* %7, align 4
  %52 = load i32, i32* %4, align 4
  %53 = sdiv i32 %51, %52
  store i32 %53, i32* %8, align 4
  br label %54

54:                                               ; preds = %50, %26
  br label %55

55:                                               ; preds = %54
  %56 = load i32, i32* %9, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %9, align 4
  br label %20

58:                                               ; preds = %20
  %59 = load i32, i32* %7, align 4
  %60 = load %struct.vo_internal*, %struct.vo_internal** %3, align 8
  %61 = getelementptr inbounds %struct.vo_internal, %struct.vo_internal* %60, i32 0, i32 5
  %62 = load i32, i32* %61, align 4
  %63 = sdiv i32 %59, %62
  store i32 %63, i32* %10, align 4
  %64 = load %struct.vo_internal*, %struct.vo_internal** %3, align 8
  %65 = getelementptr inbounds %struct.vo_internal, %struct.vo_internal* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 8
  %67 = load i32, i32* %4, align 4
  %68 = mul nsw i32 %67, 2
  %69 = icmp sgt i32 %66, %68
  br i1 %69, label %70, label %95

70:                                               ; preds = %58
  %71 = load i32, i32* %10, align 4
  %72 = load i32, i32* %8, align 4
  %73 = sub nsw i32 %71, %72
  %74 = call i32 @llabs(i32 %73)
  %75 = load %struct.vo_internal*, %struct.vo_internal** %3, align 8
  %76 = getelementptr inbounds %struct.vo_internal, %struct.vo_internal* %75, i32 0, i32 4
  %77 = load i32, i32* %76, align 8
  %78 = mul nsw i32 %77, 3
  %79 = sdiv i32 %78, 4
  %80 = icmp sge i32 %74, %79
  br i1 %80, label %81, label %95

81:                                               ; preds = %70
  %82 = load %struct.vo_internal*, %struct.vo_internal** %3, align 8
  %83 = getelementptr inbounds %struct.vo_internal, %struct.vo_internal* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = load %struct.vo_internal*, %struct.vo_internal** %3, align 8
  %86 = getelementptr inbounds %struct.vo_internal, %struct.vo_internal* %85, i32 0, i32 1
  store i32 %84, i32* %86, align 4
  %87 = load %struct.vo_internal*, %struct.vo_internal** %3, align 8
  %88 = getelementptr inbounds %struct.vo_internal, %struct.vo_internal* %87, i32 0, i32 6
  %89 = load i32, i32* %88, align 8
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %88, align 8
  %91 = load %struct.vo_internal*, %struct.vo_internal** %3, align 8
  %92 = getelementptr inbounds %struct.vo_internal, %struct.vo_internal* %91, i32 0, i32 2
  store i32 0, i32* %92, align 8
  %93 = load %struct.vo*, %struct.vo** %2, align 8
  %94 = call i32 @MP_STATS(%struct.vo* %93, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  br label %95

95:                                               ; preds = %81, %70, %58
  %96 = load %struct.vo_internal*, %struct.vo_internal** %3, align 8
  %97 = getelementptr inbounds %struct.vo_internal, %struct.vo_internal* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 8
  %99 = icmp sgt i32 %98, 10
  br i1 %99, label %100, label %107

100:                                              ; preds = %95
  %101 = load i32, i32* %10, align 4
  %102 = sdiv i32 %101, 10
  %103 = load %struct.vo_internal*, %struct.vo_internal** %3, align 8
  %104 = getelementptr inbounds %struct.vo_internal, %struct.vo_internal* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = add nsw i32 %105, %102
  store i32 %106, i32* %104, align 4
  br label %107

107:                                              ; preds = %100, %95
  ret void
}

declare dso_local i32 @llabs(i32) #1

declare dso_local i32 @MP_STATS(%struct.vo*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
