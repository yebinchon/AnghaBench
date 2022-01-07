; ModuleID = '/home/carl/AnghaBench/micropython/extmod/uzlib/extr_tinflate.c_tinf_build_fixed_trees.c'
source_filename = "/home/carl/AnghaBench/micropython/extmod/uzlib/extr_tinflate.c_tinf_build_fixed_trees.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32*, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_4__*, %struct.TYPE_4__*)* @tinf_build_fixed_trees to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tinf_build_fixed_trees(%struct.TYPE_4__* %0, %struct.TYPE_4__* %1) #0 {
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %3, align 8
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %4, align 8
  store i32 0, i32* %5, align 4
  br label %6

6:                                                ; preds = %16, %2
  %7 = load i32, i32* %5, align 4
  %8 = icmp slt i32 %7, 7
  br i1 %8, label %9, label %19

9:                                                ; preds = %6
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load i32*, i32** %11, align 8
  %13 = load i32, i32* %5, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds i32, i32* %12, i64 %14
  store i32 0, i32* %15, align 4
  br label %16

16:                                               ; preds = %9
  %17 = load i32, i32* %5, align 4
  %18 = add nsw i32 %17, 1
  store i32 %18, i32* %5, align 4
  br label %6

19:                                               ; preds = %6
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 7
  store i32 24, i32* %23, align 4
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 8
  store i32 152, i32* %27, align 4
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 9
  store i32 112, i32* %31, align 4
  store i32 0, i32* %5, align 4
  br label %32

32:                                               ; preds = %44, %19
  %33 = load i32, i32* %5, align 4
  %34 = icmp slt i32 %33, 24
  br i1 %34, label %35, label %47

35:                                               ; preds = %32
  %36 = load i32, i32* %5, align 4
  %37 = add nsw i32 256, %36
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 1
  %40 = load i32*, i32** %39, align 8
  %41 = load i32, i32* %5, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i32, i32* %40, i64 %42
  store i32 %37, i32* %43, align 4
  br label %44

44:                                               ; preds = %35
  %45 = load i32, i32* %5, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %5, align 4
  br label %32

47:                                               ; preds = %32
  store i32 0, i32* %5, align 4
  br label %48

48:                                               ; preds = %60, %47
  %49 = load i32, i32* %5, align 4
  %50 = icmp slt i32 %49, 144
  br i1 %50, label %51, label %63

51:                                               ; preds = %48
  %52 = load i32, i32* %5, align 4
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 1
  %55 = load i32*, i32** %54, align 8
  %56 = load i32, i32* %5, align 4
  %57 = add nsw i32 24, %56
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %55, i64 %58
  store i32 %52, i32* %59, align 4
  br label %60

60:                                               ; preds = %51
  %61 = load i32, i32* %5, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %5, align 4
  br label %48

63:                                               ; preds = %48
  store i32 0, i32* %5, align 4
  br label %64

64:                                               ; preds = %77, %63
  %65 = load i32, i32* %5, align 4
  %66 = icmp slt i32 %65, 8
  br i1 %66, label %67, label %80

67:                                               ; preds = %64
  %68 = load i32, i32* %5, align 4
  %69 = add nsw i32 280, %68
  %70 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 1
  %72 = load i32*, i32** %71, align 8
  %73 = load i32, i32* %5, align 4
  %74 = add nsw i32 168, %73
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i32, i32* %72, i64 %75
  store i32 %69, i32* %76, align 4
  br label %77

77:                                               ; preds = %67
  %78 = load i32, i32* %5, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %5, align 4
  br label %64

80:                                               ; preds = %64
  store i32 0, i32* %5, align 4
  br label %81

81:                                               ; preds = %94, %80
  %82 = load i32, i32* %5, align 4
  %83 = icmp slt i32 %82, 112
  br i1 %83, label %84, label %97

84:                                               ; preds = %81
  %85 = load i32, i32* %5, align 4
  %86 = add nsw i32 144, %85
  %87 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 1
  %89 = load i32*, i32** %88, align 8
  %90 = load i32, i32* %5, align 4
  %91 = add nsw i32 176, %90
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i32, i32* %89, i64 %92
  store i32 %86, i32* %93, align 4
  br label %94

94:                                               ; preds = %84
  %95 = load i32, i32* %5, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %5, align 4
  br label %81

97:                                               ; preds = %81
  store i32 0, i32* %5, align 4
  br label %98

98:                                               ; preds = %108, %97
  %99 = load i32, i32* %5, align 4
  %100 = icmp slt i32 %99, 5
  br i1 %100, label %101, label %111

101:                                              ; preds = %98
  %102 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i32 0, i32 0
  %104 = load i32*, i32** %103, align 8
  %105 = load i32, i32* %5, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i32, i32* %104, i64 %106
  store i32 0, i32* %107, align 4
  br label %108

108:                                              ; preds = %101
  %109 = load i32, i32* %5, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %5, align 4
  br label %98

111:                                              ; preds = %98
  %112 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %113 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %112, i32 0, i32 0
  %114 = load i32*, i32** %113, align 8
  %115 = getelementptr inbounds i32, i32* %114, i64 5
  store i32 32, i32* %115, align 4
  store i32 0, i32* %5, align 4
  br label %116

116:                                              ; preds = %127, %111
  %117 = load i32, i32* %5, align 4
  %118 = icmp slt i32 %117, 32
  br i1 %118, label %119, label %130

119:                                              ; preds = %116
  %120 = load i32, i32* %5, align 4
  %121 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %122 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %121, i32 0, i32 1
  %123 = load i32*, i32** %122, align 8
  %124 = load i32, i32* %5, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds i32, i32* %123, i64 %125
  store i32 %120, i32* %126, align 4
  br label %127

127:                                              ; preds = %119
  %128 = load i32, i32* %5, align 4
  %129 = add nsw i32 %128, 1
  store i32 %129, i32* %5, align 4
  br label %116

130:                                              ; preds = %116
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
