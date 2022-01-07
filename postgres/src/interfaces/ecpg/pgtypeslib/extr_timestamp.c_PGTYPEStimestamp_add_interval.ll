; ModuleID = '/home/carl/AnghaBench/postgres/src/interfaces/ecpg/pgtypeslib/extr_timestamp.c_PGTYPEStimestamp_add_interval.c'
source_filename = "/home/carl/AnghaBench/postgres/src/interfaces/ecpg/pgtypeslib/extr_timestamp.c_PGTYPEStimestamp_add_interval.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i64 }
%struct.tm = type { i32, i32, i64 }

@MONTHS_PER_YEAR = common dso_local global i32 0, align 4
@day_tab = common dso_local global i64** null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @PGTYPEStimestamp_add_interval(i32* %0, %struct.TYPE_3__* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.tm, align 8
  %9 = alloca %struct.tm*, align 8
  %10 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %6, align 8
  store i32* %2, i32** %7, align 8
  %11 = load i32*, i32** %5, align 8
  %12 = load i32, i32* %11, align 4
  %13 = call i64 @TIMESTAMP_NOT_FINITE(i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %3
  %16 = load i32*, i32** %5, align 8
  %17 = load i32, i32* %16, align 4
  %18 = load i32*, i32** %7, align 8
  store i32 %17, i32* %18, align 4
  br label %148

19:                                               ; preds = %3
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %136

24:                                               ; preds = %19
  store %struct.tm* %8, %struct.tm** %9, align 8
  %25 = load i32*, i32** %5, align 8
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.tm*, %struct.tm** %9, align 8
  %28 = call i64 @timestamp2tm(i32 %26, i32* null, %struct.tm* %27, i32* %10, i32* null)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %24
  store i32 -1, i32* %4, align 4
  br label %149

31:                                               ; preds = %24
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.tm*, %struct.tm** %9, align 8
  %36 = getelementptr inbounds %struct.tm, %struct.tm* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = sext i32 %37 to i64
  %39 = add nsw i64 %38, %34
  %40 = trunc i64 %39 to i32
  store i32 %40, i32* %36, align 8
  %41 = load %struct.tm*, %struct.tm** %9, align 8
  %42 = getelementptr inbounds %struct.tm, %struct.tm* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* @MONTHS_PER_YEAR, align 4
  %45 = icmp sgt i32 %43, %44
  br i1 %45, label %46, label %66

46:                                               ; preds = %31
  %47 = load %struct.tm*, %struct.tm** %9, align 8
  %48 = getelementptr inbounds %struct.tm, %struct.tm* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = sub nsw i32 %49, 1
  %51 = load i32, i32* @MONTHS_PER_YEAR, align 4
  %52 = sdiv i32 %50, %51
  %53 = load %struct.tm*, %struct.tm** %9, align 8
  %54 = getelementptr inbounds %struct.tm, %struct.tm* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = add nsw i32 %55, %52
  store i32 %56, i32* %54, align 4
  %57 = load %struct.tm*, %struct.tm** %9, align 8
  %58 = getelementptr inbounds %struct.tm, %struct.tm* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = sub nsw i32 %59, 1
  %61 = load i32, i32* @MONTHS_PER_YEAR, align 4
  %62 = srem i32 %60, %61
  %63 = add nsw i32 %62, 1
  %64 = load %struct.tm*, %struct.tm** %9, align 8
  %65 = getelementptr inbounds %struct.tm, %struct.tm* %64, i32 0, i32 0
  store i32 %63, i32* %65, align 8
  br label %92

66:                                               ; preds = %31
  %67 = load %struct.tm*, %struct.tm** %9, align 8
  %68 = getelementptr inbounds %struct.tm, %struct.tm* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = icmp slt i32 %69, 1
  br i1 %70, label %71, label %91

71:                                               ; preds = %66
  %72 = load %struct.tm*, %struct.tm** %9, align 8
  %73 = getelementptr inbounds %struct.tm, %struct.tm* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = load i32, i32* @MONTHS_PER_YEAR, align 4
  %76 = sdiv i32 %74, %75
  %77 = sub nsw i32 %76, 1
  %78 = load %struct.tm*, %struct.tm** %9, align 8
  %79 = getelementptr inbounds %struct.tm, %struct.tm* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = add nsw i32 %80, %77
  store i32 %81, i32* %79, align 4
  %82 = load %struct.tm*, %struct.tm** %9, align 8
  %83 = getelementptr inbounds %struct.tm, %struct.tm* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = load i32, i32* @MONTHS_PER_YEAR, align 4
  %86 = srem i32 %84, %85
  %87 = load i32, i32* @MONTHS_PER_YEAR, align 4
  %88 = add nsw i32 %86, %87
  %89 = load %struct.tm*, %struct.tm** %9, align 8
  %90 = getelementptr inbounds %struct.tm, %struct.tm* %89, i32 0, i32 0
  store i32 %88, i32* %90, align 8
  br label %91

91:                                               ; preds = %71, %66
  br label %92

92:                                               ; preds = %91, %46
  %93 = load %struct.tm*, %struct.tm** %9, align 8
  %94 = getelementptr inbounds %struct.tm, %struct.tm* %93, i32 0, i32 2
  %95 = load i64, i64* %94, align 8
  %96 = load i64**, i64*** @day_tab, align 8
  %97 = load %struct.tm*, %struct.tm** %9, align 8
  %98 = getelementptr inbounds %struct.tm, %struct.tm* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = call i64 @isleap(i32 %99)
  %101 = getelementptr inbounds i64*, i64** %96, i64 %100
  %102 = load i64*, i64** %101, align 8
  %103 = load %struct.tm*, %struct.tm** %9, align 8
  %104 = getelementptr inbounds %struct.tm, %struct.tm* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = sub nsw i32 %105, 1
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i64, i64* %102, i64 %107
  %109 = load i64, i64* %108, align 8
  %110 = icmp sgt i64 %95, %109
  br i1 %110, label %111, label %128

111:                                              ; preds = %92
  %112 = load i64**, i64*** @day_tab, align 8
  %113 = load %struct.tm*, %struct.tm** %9, align 8
  %114 = getelementptr inbounds %struct.tm, %struct.tm* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = call i64 @isleap(i32 %115)
  %117 = getelementptr inbounds i64*, i64** %112, i64 %116
  %118 = load i64*, i64** %117, align 8
  %119 = load %struct.tm*, %struct.tm** %9, align 8
  %120 = getelementptr inbounds %struct.tm, %struct.tm* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = sub nsw i32 %121, 1
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds i64, i64* %118, i64 %123
  %125 = load i64, i64* %124, align 8
  %126 = load %struct.tm*, %struct.tm** %9, align 8
  %127 = getelementptr inbounds %struct.tm, %struct.tm* %126, i32 0, i32 2
  store i64 %125, i64* %127, align 8
  br label %128

128:                                              ; preds = %111, %92
  %129 = load %struct.tm*, %struct.tm** %9, align 8
  %130 = load i32, i32* %10, align 4
  %131 = load i32*, i32** %5, align 8
  %132 = call i64 @tm2timestamp(%struct.tm* %129, i32 %130, i32* null, i32* %131)
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %135

134:                                              ; preds = %128
  store i32 -1, i32* %4, align 4
  br label %149

135:                                              ; preds = %128
  br label %136

136:                                              ; preds = %135, %19
  %137 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %138 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %137, i32 0, i32 1
  %139 = load i64, i64* %138, align 8
  %140 = load i32*, i32** %5, align 8
  %141 = load i32, i32* %140, align 4
  %142 = sext i32 %141 to i64
  %143 = add nsw i64 %142, %139
  %144 = trunc i64 %143 to i32
  store i32 %144, i32* %140, align 4
  %145 = load i32*, i32** %5, align 8
  %146 = load i32, i32* %145, align 4
  %147 = load i32*, i32** %7, align 8
  store i32 %146, i32* %147, align 4
  br label %148

148:                                              ; preds = %136, %15
  store i32 0, i32* %4, align 4
  br label %149

149:                                              ; preds = %148, %134, %30
  %150 = load i32, i32* %4, align 4
  ret i32 %150
}

declare dso_local i64 @TIMESTAMP_NOT_FINITE(i32) #1

declare dso_local i64 @timestamp2tm(i32, i32*, %struct.tm*, i32*, i32*) #1

declare dso_local i64 @isleap(i32) #1

declare dso_local i64 @tm2timestamp(%struct.tm*, i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
