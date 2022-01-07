; ModuleID = '/home/carl/AnghaBench/poco/Foundation/wcelibcex-1.0/src/extr_wce_localtime.c___wceex_offtime.c'
source_filename = "/home/carl/AnghaBench/poco/Foundation/wcelibcex-1.0/src/extr_wce_localtime.c___wceex_offtime.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tm = type { i32, i32, i32, i32, i32, i64, i32, i64, i64 }

@__wceex_offtime.tm = internal global %struct.tm zeroinitializer, align 8
@SECS_PER_DAY = common dso_local global i64 0, align 8
@SECS_PER_HOUR = common dso_local global i64 0, align 8
@SECS_PER_MIN = common dso_local global i64 0, align 8
@EPOCH_WDAY = common dso_local global i64 0, align 8
@DAYS_PER_WEEK = common dso_local global i64 0, align 8
@EPOCH_YEAR = common dso_local global i32 0, align 4
@year_lengths = common dso_local global i64* null, align 8
@TM_YEAR_BASE = common dso_local global i64 0, align 8
@mon_lengths = common dso_local global i32** null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.tm* @__wceex_offtime(i64* %0, i64 %1) #0 {
  %3 = alloca i64*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.tm*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  store i64* %0, i64** %3, align 8
  store i64 %1, i64* %4, align 8
  store %struct.tm* @__wceex_offtime.tm, %struct.tm** %5, align 8
  %11 = load i64*, i64** %3, align 8
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @SECS_PER_DAY, align 8
  %14 = sdiv i64 %12, %13
  store i64 %14, i64* %6, align 8
  %15 = load i64*, i64** %3, align 8
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @SECS_PER_DAY, align 8
  %18 = srem i64 %16, %17
  store i64 %18, i64* %7, align 8
  %19 = load i64, i64* %4, align 8
  %20 = load i64, i64* %7, align 8
  %21 = add nsw i64 %20, %19
  store i64 %21, i64* %7, align 8
  br label %22

22:                                               ; preds = %25, %2
  %23 = load i64, i64* %7, align 8
  %24 = icmp slt i64 %23, 0
  br i1 %24, label %25, label %31

25:                                               ; preds = %22
  %26 = load i64, i64* @SECS_PER_DAY, align 8
  %27 = load i64, i64* %7, align 8
  %28 = add nsw i64 %27, %26
  store i64 %28, i64* %7, align 8
  %29 = load i64, i64* %6, align 8
  %30 = add nsw i64 %29, -1
  store i64 %30, i64* %6, align 8
  br label %22

31:                                               ; preds = %22
  br label %32

32:                                               ; preds = %36, %31
  %33 = load i64, i64* %7, align 8
  %34 = load i64, i64* @SECS_PER_DAY, align 8
  %35 = icmp sge i64 %33, %34
  br i1 %35, label %36, label %42

36:                                               ; preds = %32
  %37 = load i64, i64* @SECS_PER_DAY, align 8
  %38 = load i64, i64* %7, align 8
  %39 = sub nsw i64 %38, %37
  store i64 %39, i64* %7, align 8
  %40 = load i64, i64* %6, align 8
  %41 = add nsw i64 %40, 1
  store i64 %41, i64* %6, align 8
  br label %32

42:                                               ; preds = %32
  %43 = load i64, i64* %7, align 8
  %44 = load i64, i64* @SECS_PER_HOUR, align 8
  %45 = sdiv i64 %43, %44
  %46 = trunc i64 %45 to i32
  %47 = load %struct.tm*, %struct.tm** %5, align 8
  %48 = getelementptr inbounds %struct.tm, %struct.tm* %47, i32 0, i32 0
  store i32 %46, i32* %48, align 8
  %49 = load i64, i64* %7, align 8
  %50 = load i64, i64* @SECS_PER_HOUR, align 8
  %51 = srem i64 %49, %50
  store i64 %51, i64* %7, align 8
  %52 = load i64, i64* %7, align 8
  %53 = load i64, i64* @SECS_PER_MIN, align 8
  %54 = sdiv i64 %52, %53
  %55 = trunc i64 %54 to i32
  %56 = load %struct.tm*, %struct.tm** %5, align 8
  %57 = getelementptr inbounds %struct.tm, %struct.tm* %56, i32 0, i32 1
  store i32 %55, i32* %57, align 4
  %58 = load i64, i64* %7, align 8
  %59 = load i64, i64* @SECS_PER_MIN, align 8
  %60 = srem i64 %58, %59
  %61 = trunc i64 %60 to i32
  %62 = load %struct.tm*, %struct.tm** %5, align 8
  %63 = getelementptr inbounds %struct.tm, %struct.tm* %62, i32 0, i32 2
  store i32 %61, i32* %63, align 8
  %64 = load i64, i64* @EPOCH_WDAY, align 8
  %65 = load i64, i64* %6, align 8
  %66 = add nsw i64 %64, %65
  %67 = load i64, i64* @DAYS_PER_WEEK, align 8
  %68 = srem i64 %66, %67
  %69 = trunc i64 %68 to i32
  %70 = load %struct.tm*, %struct.tm** %5, align 8
  %71 = getelementptr inbounds %struct.tm, %struct.tm* %70, i32 0, i32 3
  store i32 %69, i32* %71, align 4
  %72 = load %struct.tm*, %struct.tm** %5, align 8
  %73 = getelementptr inbounds %struct.tm, %struct.tm* %72, i32 0, i32 3
  %74 = load i32, i32* %73, align 4
  %75 = icmp slt i32 %74, 0
  br i1 %75, label %76, label %84

76:                                               ; preds = %42
  %77 = load i64, i64* @DAYS_PER_WEEK, align 8
  %78 = load %struct.tm*, %struct.tm** %5, align 8
  %79 = getelementptr inbounds %struct.tm, %struct.tm* %78, i32 0, i32 3
  %80 = load i32, i32* %79, align 4
  %81 = sext i32 %80 to i64
  %82 = add nsw i64 %81, %77
  %83 = trunc i64 %82 to i32
  store i32 %83, i32* %79, align 4
  br label %84

84:                                               ; preds = %76, %42
  %85 = load i32, i32* @EPOCH_YEAR, align 4
  store i32 %85, i32* %8, align 4
  %86 = load i64, i64* %6, align 8
  %87 = icmp sge i64 %86, 0
  br i1 %87, label %88, label %111

88:                                               ; preds = %84
  br label %89

89:                                               ; preds = %100, %88
  %90 = load i32, i32* %8, align 4
  %91 = call i32 @isleap(i32 %90)
  store i32 %91, i32* %9, align 4
  %92 = load i64, i64* %6, align 8
  %93 = load i64*, i64** @year_lengths, align 8
  %94 = load i32, i32* %9, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i64, i64* %93, i64 %95
  %97 = load i64, i64* %96, align 8
  %98 = icmp slt i64 %92, %97
  br i1 %98, label %99, label %100

99:                                               ; preds = %89
  br label %110

100:                                              ; preds = %89
  %101 = load i32, i32* %8, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %8, align 4
  %103 = load i64, i64* %6, align 8
  %104 = load i64*, i64** @year_lengths, align 8
  %105 = load i32, i32* %9, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i64, i64* %104, i64 %106
  %108 = load i64, i64* %107, align 8
  %109 = sub nsw i64 %103, %108
  store i64 %109, i64* %6, align 8
  br label %89

110:                                              ; preds = %99
  br label %128

111:                                              ; preds = %84
  br label %112

112:                                              ; preds = %124, %111
  %113 = load i32, i32* %8, align 4
  %114 = add nsw i32 %113, -1
  store i32 %114, i32* %8, align 4
  %115 = load i32, i32* %8, align 4
  %116 = call i32 @isleap(i32 %115)
  store i32 %116, i32* %9, align 4
  %117 = load i64, i64* %6, align 8
  %118 = load i64*, i64** @year_lengths, align 8
  %119 = load i32, i32* %9, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds i64, i64* %118, i64 %120
  %122 = load i64, i64* %121, align 8
  %123 = add nsw i64 %117, %122
  store i64 %123, i64* %6, align 8
  br label %124

124:                                              ; preds = %112
  %125 = load i64, i64* %6, align 8
  %126 = icmp slt i64 %125, 0
  br i1 %126, label %112, label %127

127:                                              ; preds = %124
  br label %128

128:                                              ; preds = %127, %110
  %129 = load i32, i32* %8, align 4
  %130 = sext i32 %129 to i64
  %131 = load i64, i64* @TM_YEAR_BASE, align 8
  %132 = sub nsw i64 %130, %131
  %133 = load %struct.tm*, %struct.tm** %5, align 8
  %134 = getelementptr inbounds %struct.tm, %struct.tm* %133, i32 0, i32 8
  store i64 %132, i64* %134, align 8
  %135 = load i64, i64* %6, align 8
  %136 = trunc i64 %135 to i32
  %137 = load %struct.tm*, %struct.tm** %5, align 8
  %138 = getelementptr inbounds %struct.tm, %struct.tm* %137, i32 0, i32 4
  store i32 %136, i32* %138, align 8
  %139 = load i32**, i32*** @mon_lengths, align 8
  %140 = load i32, i32* %9, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds i32*, i32** %139, i64 %141
  %143 = load i32*, i32** %142, align 8
  store i32* %143, i32** %10, align 8
  %144 = load %struct.tm*, %struct.tm** %5, align 8
  %145 = getelementptr inbounds %struct.tm, %struct.tm* %144, i32 0, i32 5
  store i64 0, i64* %145, align 8
  br label %146

146:                                              ; preds = %166, %128
  %147 = load i64, i64* %6, align 8
  %148 = load i32*, i32** %10, align 8
  %149 = load %struct.tm*, %struct.tm** %5, align 8
  %150 = getelementptr inbounds %struct.tm, %struct.tm* %149, i32 0, i32 5
  %151 = load i64, i64* %150, align 8
  %152 = getelementptr inbounds i32, i32* %148, i64 %151
  %153 = load i32, i32* %152, align 4
  %154 = sext i32 %153 to i64
  %155 = icmp sge i64 %147, %154
  br i1 %155, label %156, label %171

156:                                              ; preds = %146
  %157 = load i64, i64* %6, align 8
  %158 = load i32*, i32** %10, align 8
  %159 = load %struct.tm*, %struct.tm** %5, align 8
  %160 = getelementptr inbounds %struct.tm, %struct.tm* %159, i32 0, i32 5
  %161 = load i64, i64* %160, align 8
  %162 = getelementptr inbounds i32, i32* %158, i64 %161
  %163 = load i32, i32* %162, align 4
  %164 = sext i32 %163 to i64
  %165 = sub nsw i64 %157, %164
  store i64 %165, i64* %6, align 8
  br label %166

166:                                              ; preds = %156
  %167 = load %struct.tm*, %struct.tm** %5, align 8
  %168 = getelementptr inbounds %struct.tm, %struct.tm* %167, i32 0, i32 5
  %169 = load i64, i64* %168, align 8
  %170 = add i64 %169, 1
  store i64 %170, i64* %168, align 8
  br label %146

171:                                              ; preds = %146
  %172 = load i64, i64* %6, align 8
  %173 = add nsw i64 %172, 1
  %174 = trunc i64 %173 to i32
  %175 = load %struct.tm*, %struct.tm** %5, align 8
  %176 = getelementptr inbounds %struct.tm, %struct.tm* %175, i32 0, i32 6
  store i32 %174, i32* %176, align 8
  %177 = load %struct.tm*, %struct.tm** %5, align 8
  %178 = getelementptr inbounds %struct.tm, %struct.tm* %177, i32 0, i32 7
  store i64 0, i64* %178, align 8
  %179 = load %struct.tm*, %struct.tm** %5, align 8
  ret %struct.tm* %179
}

declare dso_local i32 @isleap(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
