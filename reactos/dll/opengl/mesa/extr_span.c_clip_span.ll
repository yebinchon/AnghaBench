; ModuleID = '/home/carl/AnghaBench/reactos/dll/opengl/mesa/extr_span.c_clip_span.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/opengl/mesa/extr_span.c_clip_span.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*, i64, i64, i64, i64*)* @clip_span to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @clip_span(%struct.TYPE_5__* %0, i64 %1, i64 %2, i64 %3, i64* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_5__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i64, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %7, align 8
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store i64* %4, i64** %11, align 8
  %13 = load i64, i64* %10, align 8
  %14 = icmp slt i64 %13, 0
  br i1 %14, label %23, label %15

15:                                               ; preds = %5
  %16 = load i64, i64* %10, align 8
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp sge i64 %16, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %15, %5
  store i32 0, i32* %6, align 4
  br label %82

24:                                               ; preds = %15
  %25 = load i64, i64* %9, align 8
  %26 = icmp sge i64 %25, 0
  br i1 %26, label %27, label %38

27:                                               ; preds = %24
  %28 = load i64, i64* %9, align 8
  %29 = load i64, i64* %8, align 8
  %30 = add nsw i64 %28, %29
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = icmp sle i64 %30, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %27
  store i32 1, i32* %6, align 4
  br label %82

38:                                               ; preds = %27, %24
  %39 = load i64, i64* %9, align 8
  %40 = load i64, i64* %8, align 8
  %41 = add nsw i64 %39, %40
  %42 = icmp sle i64 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %38
  store i32 0, i32* %6, align 4
  br label %82

44:                                               ; preds = %38
  %45 = load i64, i64* %9, align 8
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 0
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = icmp sge i64 %45, %50
  br i1 %51, label %52, label %53

52:                                               ; preds = %44
  store i32 0, i32* %6, align 4
  br label %82

53:                                               ; preds = %44
  store i64 0, i64* %12, align 8
  br label %54

54:                                               ; preds = %78, %53
  %55 = load i64, i64* %12, align 8
  %56 = load i64, i64* %8, align 8
  %57 = icmp slt i64 %55, %56
  br i1 %57, label %58, label %81

58:                                               ; preds = %54
  %59 = load i64, i64* %9, align 8
  %60 = load i64, i64* %12, align 8
  %61 = add nsw i64 %59, %60
  %62 = icmp slt i64 %61, 0
  br i1 %62, label %73, label %63

63:                                               ; preds = %58
  %64 = load i64, i64* %9, align 8
  %65 = load i64, i64* %12, align 8
  %66 = add nsw i64 %64, %65
  %67 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 0
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = icmp sge i64 %66, %71
  br i1 %72, label %73, label %77

73:                                               ; preds = %63, %58
  %74 = load i64*, i64** %11, align 8
  %75 = load i64, i64* %12, align 8
  %76 = getelementptr inbounds i64, i64* %74, i64 %75
  store i64 0, i64* %76, align 8
  br label %77

77:                                               ; preds = %73, %63
  br label %78

78:                                               ; preds = %77
  %79 = load i64, i64* %12, align 8
  %80 = add nsw i64 %79, 1
  store i64 %80, i64* %12, align 8
  br label %54

81:                                               ; preds = %54
  store i32 1, i32* %6, align 4
  br label %82

82:                                               ; preds = %81, %52, %43, %37, %23
  %83 = load i32, i32* %6, align 4
  ret i32 %83
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
