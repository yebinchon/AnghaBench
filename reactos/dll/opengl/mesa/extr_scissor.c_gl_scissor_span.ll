; ModuleID = '/home/carl/AnghaBench/reactos/dll/opengl/mesa/extr_scissor.c_gl_scissor_span.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/opengl/mesa/extr_scissor.c_gl_scissor_span.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64, i64, i64, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @gl_scissor_span(%struct.TYPE_5__* %0, i64 %1, i64 %2, i64 %3, i64* %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_5__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %7, align 8
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store i64* %4, i64** %11, align 8
  %15 = load i64, i64* %10, align 8
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp slt i64 %15, %20
  br i1 %21, label %49, label %22

22:                                               ; preds = %5
  %23 = load i64, i64* %10, align 8
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = icmp sgt i64 %23, %28
  br i1 %29, label %49, label %30

30:                                               ; preds = %22
  %31 = load i64, i64* %9, align 8
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 2
  %36 = load i64, i64* %35, align 8
  %37 = icmp sgt i64 %31, %36
  br i1 %37, label %49, label %38

38:                                               ; preds = %30
  %39 = load i64, i64* %9, align 8
  %40 = load i64, i64* %8, align 8
  %41 = add nsw i64 %39, %40
  %42 = sub nsw i64 %41, 1
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 0
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 3
  %47 = load i64, i64* %46, align 8
  %48 = icmp slt i64 %42, %47
  br i1 %48, label %49, label %50

49:                                               ; preds = %38, %30, %22, %5
  store i64 0, i64* %6, align 8
  br label %91

50:                                               ; preds = %38
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 0
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 3
  %55 = load i64, i64* %54, align 8
  store i64 %55, i64* %13, align 8
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 0
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 2
  %60 = load i64, i64* %59, align 8
  store i64 %60, i64* %14, align 8
  store i64 0, i64* %12, align 8
  br label %61

61:                                               ; preds = %71, %50
  %62 = load i64, i64* %9, align 8
  %63 = load i64, i64* %12, align 8
  %64 = add nsw i64 %62, %63
  %65 = load i64, i64* %13, align 8
  %66 = icmp slt i64 %64, %65
  br i1 %66, label %67, label %74

67:                                               ; preds = %61
  %68 = load i64*, i64** %11, align 8
  %69 = load i64, i64* %12, align 8
  %70 = getelementptr inbounds i64, i64* %68, i64 %69
  store i64 0, i64* %70, align 8
  br label %71

71:                                               ; preds = %67
  %72 = load i64, i64* %12, align 8
  %73 = add nsw i64 %72, 1
  store i64 %73, i64* %12, align 8
  br label %61

74:                                               ; preds = %61
  %75 = load i64, i64* %8, align 8
  %76 = sub nsw i64 %75, 1
  store i64 %76, i64* %12, align 8
  br label %77

77:                                               ; preds = %87, %74
  %78 = load i64, i64* %9, align 8
  %79 = load i64, i64* %12, align 8
  %80 = add nsw i64 %78, %79
  %81 = load i64, i64* %14, align 8
  %82 = icmp sgt i64 %80, %81
  br i1 %82, label %83, label %90

83:                                               ; preds = %77
  %84 = load i64*, i64** %11, align 8
  %85 = load i64, i64* %12, align 8
  %86 = getelementptr inbounds i64, i64* %84, i64 %85
  store i64 0, i64* %86, align 8
  br label %87

87:                                               ; preds = %83
  %88 = load i64, i64* %12, align 8
  %89 = add nsw i64 %88, -1
  store i64 %89, i64* %12, align 8
  br label %77

90:                                               ; preds = %77
  store i64 1, i64* %6, align 8
  br label %91

91:                                               ; preds = %90, %49
  %92 = load i64, i64* %6, align 8
  ret i64 %92
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
