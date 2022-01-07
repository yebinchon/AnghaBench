; ModuleID = '/home/carl/AnghaBench/postgres/contrib/hstore/extr_hstore_io.c_hstoreUniquePairs.c'
source_filename = "/home/carl/AnghaBench/postgres/contrib/hstore/extr_hstore_io.c_hstoreUniquePairs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i64, i32, i32, i64 }

@comparePairs = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hstoreUniquePairs(%struct.TYPE_5__* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_5__*, align 8
  %9 = alloca %struct.TYPE_5__*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %10 = load i32*, i32** %7, align 8
  store i32 0, i32* %10, align 4
  %11 = load i32, i32* %6, align 4
  %12 = icmp slt i32 %11, 2
  br i1 %12, label %13, label %35

13:                                               ; preds = %3
  %14 = load i32, i32* %6, align 4
  %15 = icmp eq i32 %14, 1
  br i1 %15, label %16, label %33

16:                                               ; preds = %13
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 2
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %16
  br label %29

25:                                               ; preds = %16
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  br label %29

29:                                               ; preds = %25, %24
  %30 = phi i32 [ 0, %24 ], [ %28, %25 ]
  %31 = add nsw i32 %19, %30
  %32 = load i32*, i32** %7, align 8
  store i32 %31, i32* %32, align 4
  br label %33

33:                                               ; preds = %29, %13
  %34 = load i32, i32* %6, align 4
  store i32 %34, i32* %4, align 4
  br label %149

35:                                               ; preds = %3
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %37 = bitcast %struct.TYPE_5__* %36 to i8*
  %38 = load i32, i32* %6, align 4
  %39 = load i32, i32* @comparePairs, align 4
  %40 = call i32 @qsort(i8* %37, i32 %38, i32 32, i32 %39)
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i64 1
  store %struct.TYPE_5__* %42, %struct.TYPE_5__** %8, align 8
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  store %struct.TYPE_5__* %43, %struct.TYPE_5__** %9, align 8
  br label %44

44:                                               ; preds = %119, %35
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %47 = ptrtoint %struct.TYPE_5__* %45 to i64
  %48 = ptrtoint %struct.TYPE_5__* %46 to i64
  %49 = sub i64 %47, %48
  %50 = sdiv exact i64 %49, 32
  %51 = load i32, i32* %6, align 4
  %52 = sext i32 %51 to i64
  %53 = icmp slt i64 %50, %52
  br i1 %53, label %54, label %122

54:                                               ; preds = %44
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = icmp eq i32 %57, %60
  br i1 %61, label %62, label %90

62:                                               ; preds = %54
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 4
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 4
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = sext i32 %71 to i64
  %73 = call i64 @memcmp(i32 %65, i32 %68, i64 %72)
  %74 = icmp eq i64 %73, 0
  br i1 %74, label %75, label %90

75:                                               ; preds = %62
  %76 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i32 0, i32 5
  %78 = load i64, i64* %77, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %89

80:                                               ; preds = %75
  %81 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i32 0, i32 4
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @pfree(i32 %83)
  %85 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %86 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %85, i32 0, i32 3
  %87 = load i32, i32* %86, align 8
  %88 = call i32 @pfree(i32 %87)
  br label %89

89:                                               ; preds = %80, %75
  br label %119

90:                                               ; preds = %62, %54
  %91 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %92 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %95 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %94, i32 0, i32 2
  %96 = load i64, i64* %95, align 8
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %99

98:                                               ; preds = %90
  br label %103

99:                                               ; preds = %90
  %100 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %101 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  br label %103

103:                                              ; preds = %99, %98
  %104 = phi i32 [ 0, %98 ], [ %102, %99 ]
  %105 = add nsw i32 %93, %104
  %106 = load i32*, i32** %7, align 8
  %107 = load i32, i32* %106, align 4
  %108 = add nsw i32 %107, %105
  store i32 %108, i32* %106, align 4
  %109 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %110 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %109, i32 1
  store %struct.TYPE_5__* %110, %struct.TYPE_5__** %9, align 8
  %111 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %112 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %113 = icmp ne %struct.TYPE_5__* %111, %112
  br i1 %113, label %114, label %118

114:                                              ; preds = %103
  %115 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %116 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %117 = call i32 @memcpy(%struct.TYPE_5__* %115, %struct.TYPE_5__* %116, i32 32)
  br label %118

118:                                              ; preds = %114, %103
  br label %119

119:                                              ; preds = %118, %89
  %120 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %121 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %120, i32 1
  store %struct.TYPE_5__* %121, %struct.TYPE_5__** %8, align 8
  br label %44

122:                                              ; preds = %44
  %123 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %124 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %127 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %126, i32 0, i32 2
  %128 = load i64, i64* %127, align 8
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %131

130:                                              ; preds = %122
  br label %135

131:                                              ; preds = %122
  %132 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %133 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 4
  br label %135

135:                                              ; preds = %131, %130
  %136 = phi i32 [ 0, %130 ], [ %134, %131 ]
  %137 = add nsw i32 %125, %136
  %138 = load i32*, i32** %7, align 8
  %139 = load i32, i32* %138, align 4
  %140 = add nsw i32 %139, %137
  store i32 %140, i32* %138, align 4
  %141 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %142 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %141, i64 1
  %143 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %144 = ptrtoint %struct.TYPE_5__* %142 to i64
  %145 = ptrtoint %struct.TYPE_5__* %143 to i64
  %146 = sub i64 %144, %145
  %147 = sdiv exact i64 %146, 32
  %148 = trunc i64 %147 to i32
  store i32 %148, i32* %4, align 4
  br label %149

149:                                              ; preds = %135, %33
  %150 = load i32, i32* %4, align 4
  ret i32 %150
}

declare dso_local i32 @qsort(i8*, i32, i32, i32) #1

declare dso_local i64 @memcmp(i32, i32, i64) #1

declare dso_local i32 @pfree(i32) #1

declare dso_local i32 @memcpy(%struct.TYPE_5__*, %struct.TYPE_5__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
