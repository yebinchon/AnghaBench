; ModuleID = '/home/carl/AnghaBench/openpilot/panda/board/extr_safety.h_update_sample.c'
source_filename = "/home/carl/AnghaBench/openpilot/panda/board/extr_safety.h_update_sample.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sample_t = type { i32*, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @update_sample(%struct.sample_t* %0, i32 %1) #0 {
  %3 = alloca %struct.sample_t*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.sample_t* %0, %struct.sample_t** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 2, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  %9 = sub nsw i32 %8, 1
  store i32 %9, i32* %6, align 4
  br label %10

10:                                               ; preds = %28, %2
  %11 = load i32, i32* %6, align 4
  %12 = icmp sgt i32 %11, 0
  br i1 %12, label %13, label %31

13:                                               ; preds = %10
  %14 = load %struct.sample_t*, %struct.sample_t** %3, align 8
  %15 = getelementptr inbounds %struct.sample_t, %struct.sample_t* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  %17 = load i32, i32* %6, align 4
  %18 = sub nsw i32 %17, 1
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i32, i32* %16, i64 %19
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.sample_t*, %struct.sample_t** %3, align 8
  %23 = getelementptr inbounds %struct.sample_t, %struct.sample_t* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = load i32, i32* %6, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i32, i32* %24, i64 %26
  store i32 %21, i32* %27, align 4
  br label %28

28:                                               ; preds = %13
  %29 = load i32, i32* %6, align 4
  %30 = add nsw i32 %29, -1
  store i32 %30, i32* %6, align 4
  br label %10

31:                                               ; preds = %10
  %32 = load i32, i32* %4, align 4
  %33 = load %struct.sample_t*, %struct.sample_t** %3, align 8
  %34 = getelementptr inbounds %struct.sample_t, %struct.sample_t* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 0
  store i32 %32, i32* %36, align 4
  %37 = load %struct.sample_t*, %struct.sample_t** %3, align 8
  %38 = getelementptr inbounds %struct.sample_t, %struct.sample_t* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 0
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.sample_t*, %struct.sample_t** %3, align 8
  %43 = getelementptr inbounds %struct.sample_t, %struct.sample_t* %42, i32 0, i32 1
  store i32 %41, i32* %43, align 8
  %44 = load %struct.sample_t*, %struct.sample_t** %3, align 8
  %45 = getelementptr inbounds %struct.sample_t, %struct.sample_t* %44, i32 0, i32 0
  %46 = load i32*, i32** %45, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 0
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.sample_t*, %struct.sample_t** %3, align 8
  %50 = getelementptr inbounds %struct.sample_t, %struct.sample_t* %49, i32 0, i32 2
  store i32 %48, i32* %50, align 4
  store i32 1, i32* %7, align 4
  br label %51

51:                                               ; preds = %100, %31
  %52 = load i32, i32* %7, align 4
  %53 = load i32, i32* %5, align 4
  %54 = icmp slt i32 %52, %53
  br i1 %54, label %55, label %103

55:                                               ; preds = %51
  %56 = load %struct.sample_t*, %struct.sample_t** %3, align 8
  %57 = getelementptr inbounds %struct.sample_t, %struct.sample_t* %56, i32 0, i32 0
  %58 = load i32*, i32** %57, align 8
  %59 = load i32, i32* %7, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i32, i32* %58, i64 %60
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.sample_t*, %struct.sample_t** %3, align 8
  %64 = getelementptr inbounds %struct.sample_t, %struct.sample_t* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 8
  %66 = icmp slt i32 %62, %65
  br i1 %66, label %67, label %77

67:                                               ; preds = %55
  %68 = load %struct.sample_t*, %struct.sample_t** %3, align 8
  %69 = getelementptr inbounds %struct.sample_t, %struct.sample_t* %68, i32 0, i32 0
  %70 = load i32*, i32** %69, align 8
  %71 = load i32, i32* %7, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i32, i32* %70, i64 %72
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.sample_t*, %struct.sample_t** %3, align 8
  %76 = getelementptr inbounds %struct.sample_t, %struct.sample_t* %75, i32 0, i32 1
  store i32 %74, i32* %76, align 8
  br label %77

77:                                               ; preds = %67, %55
  %78 = load %struct.sample_t*, %struct.sample_t** %3, align 8
  %79 = getelementptr inbounds %struct.sample_t, %struct.sample_t* %78, i32 0, i32 0
  %80 = load i32*, i32** %79, align 8
  %81 = load i32, i32* %7, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i32, i32* %80, i64 %82
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.sample_t*, %struct.sample_t** %3, align 8
  %86 = getelementptr inbounds %struct.sample_t, %struct.sample_t* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 4
  %88 = icmp sgt i32 %84, %87
  br i1 %88, label %89, label %99

89:                                               ; preds = %77
  %90 = load %struct.sample_t*, %struct.sample_t** %3, align 8
  %91 = getelementptr inbounds %struct.sample_t, %struct.sample_t* %90, i32 0, i32 0
  %92 = load i32*, i32** %91, align 8
  %93 = load i32, i32* %7, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i32, i32* %92, i64 %94
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.sample_t*, %struct.sample_t** %3, align 8
  %98 = getelementptr inbounds %struct.sample_t, %struct.sample_t* %97, i32 0, i32 2
  store i32 %96, i32* %98, align 4
  br label %99

99:                                               ; preds = %89, %77
  br label %100

100:                                              ; preds = %99
  %101 = load i32, i32* %7, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %7, align 4
  br label %51

103:                                              ; preds = %51
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
