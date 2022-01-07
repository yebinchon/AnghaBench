; ModuleID = '/home/carl/AnghaBench/php-src/ext/mbstring/libmbfl/mbfl/extr_mbfilter.c_collector_strpos.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/mbstring/libmbfl/mbfl/extr_mbfilter.c_collector_strpos.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.collector_strpos_data = type { i64, i64, i64, i64, i64, i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @collector_strpos to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @collector_strpos(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.collector_strpos_data*, align 8
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = bitcast i8* %10 to %struct.collector_strpos_data*
  store %struct.collector_strpos_data* %11, %struct.collector_strpos_data** %9, align 8
  %12 = load %struct.collector_strpos_data*, %struct.collector_strpos_data** %9, align 8
  %13 = getelementptr inbounds %struct.collector_strpos_data, %struct.collector_strpos_data* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load %struct.collector_strpos_data*, %struct.collector_strpos_data** %9, align 8
  %16 = getelementptr inbounds %struct.collector_strpos_data, %struct.collector_strpos_data* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = icmp sge i64 %14, %17
  br i1 %18, label %19, label %137

19:                                               ; preds = %2
  %20 = load i32, i32* %3, align 4
  %21 = load %struct.collector_strpos_data*, %struct.collector_strpos_data** %9, align 8
  %22 = getelementptr inbounds %struct.collector_strpos_data, %struct.collector_strpos_data* %21, i32 0, i32 6
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i64*, i64** %23, align 8
  %25 = load %struct.collector_strpos_data*, %struct.collector_strpos_data** %9, align 8
  %26 = getelementptr inbounds %struct.collector_strpos_data, %struct.collector_strpos_data* %25, i32 0, i32 2
  %27 = load i64, i64* %26, align 8
  %28 = getelementptr inbounds i64, i64* %24, i64 %27
  %29 = load i64, i64* %28, align 8
  %30 = trunc i64 %29 to i32
  %31 = icmp eq i32 %20, %30
  br i1 %31, label %32, label %66

32:                                               ; preds = %19
  %33 = load %struct.collector_strpos_data*, %struct.collector_strpos_data** %9, align 8
  %34 = getelementptr inbounds %struct.collector_strpos_data, %struct.collector_strpos_data* %33, i32 0, i32 2
  %35 = load i64, i64* %34, align 8
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %43

37:                                               ; preds = %32
  %38 = load %struct.collector_strpos_data*, %struct.collector_strpos_data** %9, align 8
  %39 = getelementptr inbounds %struct.collector_strpos_data, %struct.collector_strpos_data* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load %struct.collector_strpos_data*, %struct.collector_strpos_data** %9, align 8
  %42 = getelementptr inbounds %struct.collector_strpos_data, %struct.collector_strpos_data* %41, i32 0, i32 3
  store i64 %40, i64* %42, align 8
  br label %43

43:                                               ; preds = %37, %32
  %44 = load %struct.collector_strpos_data*, %struct.collector_strpos_data** %9, align 8
  %45 = getelementptr inbounds %struct.collector_strpos_data, %struct.collector_strpos_data* %44, i32 0, i32 2
  %46 = load i64, i64* %45, align 8
  %47 = add i64 %46, 1
  store i64 %47, i64* %45, align 8
  %48 = load %struct.collector_strpos_data*, %struct.collector_strpos_data** %9, align 8
  %49 = getelementptr inbounds %struct.collector_strpos_data, %struct.collector_strpos_data* %48, i32 0, i32 2
  %50 = load i64, i64* %49, align 8
  %51 = load %struct.collector_strpos_data*, %struct.collector_strpos_data** %9, align 8
  %52 = getelementptr inbounds %struct.collector_strpos_data, %struct.collector_strpos_data* %51, i32 0, i32 4
  %53 = load i64, i64* %52, align 8
  %54 = icmp uge i64 %50, %53
  br i1 %54, label %55, label %65

55:                                               ; preds = %43
  %56 = load %struct.collector_strpos_data*, %struct.collector_strpos_data** %9, align 8
  %57 = getelementptr inbounds %struct.collector_strpos_data, %struct.collector_strpos_data* %56, i32 0, i32 3
  %58 = load i64, i64* %57, align 8
  %59 = load %struct.collector_strpos_data*, %struct.collector_strpos_data** %9, align 8
  %60 = getelementptr inbounds %struct.collector_strpos_data, %struct.collector_strpos_data* %59, i32 0, i32 5
  store i64 %58, i64* %60, align 8
  %61 = load %struct.collector_strpos_data*, %struct.collector_strpos_data** %9, align 8
  %62 = getelementptr inbounds %struct.collector_strpos_data, %struct.collector_strpos_data* %61, i32 0, i32 2
  %63 = load i64, i64* %62, align 8
  %64 = add i64 %63, -1
  store i64 %64, i64* %62, align 8
  br label %72

65:                                               ; preds = %43
  br label %136

66:                                               ; preds = %19
  %67 = load %struct.collector_strpos_data*, %struct.collector_strpos_data** %9, align 8
  %68 = getelementptr inbounds %struct.collector_strpos_data, %struct.collector_strpos_data* %67, i32 0, i32 2
  %69 = load i64, i64* %68, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %135

71:                                               ; preds = %66
  br label %72

72:                                               ; preds = %71, %55
  %73 = load %struct.collector_strpos_data*, %struct.collector_strpos_data** %9, align 8
  %74 = getelementptr inbounds %struct.collector_strpos_data, %struct.collector_strpos_data* %73, i32 0, i32 6
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 0
  %76 = load i64*, i64** %75, align 8
  %77 = bitcast i64* %76 to i32*
  store i32* %77, i32** %6, align 8
  %78 = load i32*, i32** %6, align 8
  %79 = getelementptr inbounds i32, i32* %78, i32 1
  store i32* %79, i32** %6, align 8
  br label %80

80:                                               ; preds = %133, %72
  %81 = load %struct.collector_strpos_data*, %struct.collector_strpos_data** %9, align 8
  %82 = getelementptr inbounds %struct.collector_strpos_data, %struct.collector_strpos_data* %81, i32 0, i32 3
  %83 = load i64, i64* %82, align 8
  %84 = add nsw i64 %83, 1
  store i64 %84, i64* %82, align 8
  %85 = load i32*, i32** %6, align 8
  store i32* %85, i32** %5, align 8
  %86 = load %struct.collector_strpos_data*, %struct.collector_strpos_data** %9, align 8
  %87 = getelementptr inbounds %struct.collector_strpos_data, %struct.collector_strpos_data* %86, i32 0, i32 6
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 0
  %89 = load i64*, i64** %88, align 8
  %90 = bitcast i64* %89 to i32*
  store i32* %90, i32** %7, align 8
  %91 = load %struct.collector_strpos_data*, %struct.collector_strpos_data** %9, align 8
  %92 = getelementptr inbounds %struct.collector_strpos_data, %struct.collector_strpos_data* %91, i32 0, i32 2
  %93 = load i64, i64* %92, align 8
  %94 = sub i64 %93, 1
  %95 = trunc i64 %94 to i32
  store i32 %95, i32* %8, align 4
  br label %96

96:                                               ; preds = %107, %80
  %97 = load i32, i32* %8, align 4
  %98 = icmp sgt i32 %97, 0
  br i1 %98, label %99, label %105

99:                                               ; preds = %96
  %100 = load i32*, i32** %5, align 8
  %101 = load i32, i32* %100, align 4
  %102 = load i32*, i32** %7, align 8
  %103 = load i32, i32* %102, align 4
  %104 = icmp eq i32 %101, %103
  br label %105

105:                                              ; preds = %99, %96
  %106 = phi i1 [ false, %96 ], [ %104, %99 ]
  br i1 %106, label %107, label %114

107:                                              ; preds = %105
  %108 = load i32, i32* %8, align 4
  %109 = add nsw i32 %108, -1
  store i32 %109, i32* %8, align 4
  %110 = load i32*, i32** %5, align 8
  %111 = getelementptr inbounds i32, i32* %110, i32 1
  store i32* %111, i32** %5, align 8
  %112 = load i32*, i32** %7, align 8
  %113 = getelementptr inbounds i32, i32* %112, i32 1
  store i32* %113, i32** %7, align 8
  br label %96

114:                                              ; preds = %105
  %115 = load i32, i32* %8, align 4
  %116 = icmp sle i32 %115, 0
  br i1 %116, label %117, label %126

117:                                              ; preds = %114
  %118 = load i32*, i32** %7, align 8
  %119 = load i32, i32* %118, align 4
  %120 = load i32, i32* %3, align 4
  %121 = icmp ne i32 %119, %120
  br i1 %121, label %122, label %125

122:                                              ; preds = %117
  %123 = load %struct.collector_strpos_data*, %struct.collector_strpos_data** %9, align 8
  %124 = getelementptr inbounds %struct.collector_strpos_data, %struct.collector_strpos_data* %123, i32 0, i32 2
  store i64 0, i64* %124, align 8
  br label %125

125:                                              ; preds = %122, %117
  br label %134

126:                                              ; preds = %114
  %127 = load i32*, i32** %6, align 8
  %128 = getelementptr inbounds i32, i32* %127, i32 1
  store i32* %128, i32** %6, align 8
  %129 = load %struct.collector_strpos_data*, %struct.collector_strpos_data** %9, align 8
  %130 = getelementptr inbounds %struct.collector_strpos_data, %struct.collector_strpos_data* %129, i32 0, i32 2
  %131 = load i64, i64* %130, align 8
  %132 = add i64 %131, -1
  store i64 %132, i64* %130, align 8
  br label %133

133:                                              ; preds = %126
  br label %80

134:                                              ; preds = %125
  br label %135

135:                                              ; preds = %134, %66
  br label %136

136:                                              ; preds = %135, %65
  br label %137

137:                                              ; preds = %136, %2
  %138 = load %struct.collector_strpos_data*, %struct.collector_strpos_data** %9, align 8
  %139 = getelementptr inbounds %struct.collector_strpos_data, %struct.collector_strpos_data* %138, i32 0, i32 0
  %140 = load i64, i64* %139, align 8
  %141 = add nsw i64 %140, 1
  store i64 %141, i64* %139, align 8
  %142 = load i32, i32* %3, align 4
  ret i32 %142
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
