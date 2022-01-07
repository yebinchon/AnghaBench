; ModuleID = '/home/carl/AnghaBench/php-src/ext/mbstring/libmbfl/mbfl/extr_mbfilter.c_collector_encode_htmlnumericentity.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/mbstring/libmbfl/mbfl/extr_mbfilter.c_collector_encode_htmlnumericentity.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.collector_htmlnumericentity_data = type { i32, i32*, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 (i32, %struct.TYPE_7__*)* }

@mbfl_hexchar_table = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @collector_encode_htmlnumericentity to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @collector_encode_htmlnumericentity(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.collector_htmlnumericentity_data*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %13 = load i8*, i8** %4, align 8
  %14 = bitcast i8* %13 to %struct.collector_htmlnumericentity_data*
  store %struct.collector_htmlnumericentity_data* %14, %struct.collector_htmlnumericentity_data** %5, align 8
  %15 = load %struct.collector_htmlnumericentity_data*, %struct.collector_htmlnumericentity_data** %5, align 8
  %16 = getelementptr inbounds %struct.collector_htmlnumericentity_data, %struct.collector_htmlnumericentity_data* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  store i32 %17, i32* %11, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %18

18:                                               ; preds = %139, %2
  %19 = load i32, i32* %7, align 4
  %20 = load i32, i32* %11, align 4
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %22, label %142

22:                                               ; preds = %18
  %23 = load %struct.collector_htmlnumericentity_data*, %struct.collector_htmlnumericentity_data** %5, align 8
  %24 = getelementptr inbounds %struct.collector_htmlnumericentity_data, %struct.collector_htmlnumericentity_data* %23, i32 0, i32 1
  %25 = load i32*, i32** %24, align 8
  %26 = load i32, i32* %7, align 4
  %27 = mul nsw i32 %26, 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i32, i32* %25, i64 %28
  store i32* %29, i32** %12, align 8
  %30 = load i32, i32* %3, align 4
  %31 = load i32*, i32** %12, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 0
  %33 = load i32, i32* %32, align 4
  %34 = icmp sge i32 %30, %33
  br i1 %34, label %35, label %135

35:                                               ; preds = %22
  %36 = load i32, i32* %3, align 4
  %37 = load i32*, i32** %12, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 1
  %39 = load i32, i32* %38, align 4
  %40 = icmp sle i32 %36, %39
  br i1 %40, label %41, label %135

41:                                               ; preds = %35
  %42 = load i32, i32* %3, align 4
  %43 = load i32*, i32** %12, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 2
  %45 = load i32, i32* %44, align 4
  %46 = add nsw i32 %42, %45
  %47 = load i32*, i32** %12, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 3
  %49 = load i32, i32* %48, align 4
  %50 = and i32 %46, %49
  store i32 %50, i32* %8, align 4
  %51 = load i32, i32* %8, align 4
  %52 = icmp sge i32 %51, 0
  br i1 %52, label %53, label %134

53:                                               ; preds = %41
  %54 = load %struct.collector_htmlnumericentity_data*, %struct.collector_htmlnumericentity_data** %5, align 8
  %55 = getelementptr inbounds %struct.collector_htmlnumericentity_data, %struct.collector_htmlnumericentity_data* %54, i32 0, i32 2
  %56 = load %struct.TYPE_7__*, %struct.TYPE_7__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 0
  %58 = load i32 (i32, %struct.TYPE_7__*)*, i32 (i32, %struct.TYPE_7__*)** %57, align 8
  %59 = load %struct.collector_htmlnumericentity_data*, %struct.collector_htmlnumericentity_data** %5, align 8
  %60 = getelementptr inbounds %struct.collector_htmlnumericentity_data, %struct.collector_htmlnumericentity_data* %59, i32 0, i32 2
  %61 = load %struct.TYPE_7__*, %struct.TYPE_7__** %60, align 8
  %62 = call i32 %58(i32 38, %struct.TYPE_7__* %61)
  %63 = load %struct.collector_htmlnumericentity_data*, %struct.collector_htmlnumericentity_data** %5, align 8
  %64 = getelementptr inbounds %struct.collector_htmlnumericentity_data, %struct.collector_htmlnumericentity_data* %63, i32 0, i32 2
  %65 = load %struct.TYPE_7__*, %struct.TYPE_7__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 0
  %67 = load i32 (i32, %struct.TYPE_7__*)*, i32 (i32, %struct.TYPE_7__*)** %66, align 8
  %68 = load %struct.collector_htmlnumericentity_data*, %struct.collector_htmlnumericentity_data** %5, align 8
  %69 = getelementptr inbounds %struct.collector_htmlnumericentity_data, %struct.collector_htmlnumericentity_data* %68, i32 0, i32 2
  %70 = load %struct.TYPE_7__*, %struct.TYPE_7__** %69, align 8
  %71 = call i32 %67(i32 35, %struct.TYPE_7__* %70)
  store i32 100000000, i32* %9, align 4
  %72 = load i32, i32* %9, align 4
  %73 = load i32, i32* %8, align 4
  %74 = srem i32 %73, %72
  store i32 %74, i32* %8, align 4
  br label %75

75:                                               ; preds = %105, %53
  %76 = load i32, i32* %9, align 4
  %77 = icmp sgt i32 %76, 0
  br i1 %77, label %78, label %108

78:                                               ; preds = %75
  %79 = load i32, i32* %8, align 4
  %80 = load i32, i32* %9, align 4
  %81 = sdiv i32 %79, %80
  store i32 %81, i32* %10, align 4
  %82 = load i32, i32* %10, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %87, label %84

84:                                               ; preds = %78
  %85 = load i32, i32* %6, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %105

87:                                               ; preds = %84, %78
  store i32 1, i32* %6, align 4
  %88 = load i32, i32* %9, align 4
  %89 = load i32, i32* %8, align 4
  %90 = srem i32 %89, %88
  store i32 %90, i32* %8, align 4
  %91 = load %struct.collector_htmlnumericentity_data*, %struct.collector_htmlnumericentity_data** %5, align 8
  %92 = getelementptr inbounds %struct.collector_htmlnumericentity_data, %struct.collector_htmlnumericentity_data* %91, i32 0, i32 2
  %93 = load %struct.TYPE_7__*, %struct.TYPE_7__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %93, i32 0, i32 0
  %95 = load i32 (i32, %struct.TYPE_7__*)*, i32 (i32, %struct.TYPE_7__*)** %94, align 8
  %96 = load i32*, i32** @mbfl_hexchar_table, align 8
  %97 = load i32, i32* %10, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i32, i32* %96, i64 %98
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.collector_htmlnumericentity_data*, %struct.collector_htmlnumericentity_data** %5, align 8
  %102 = getelementptr inbounds %struct.collector_htmlnumericentity_data, %struct.collector_htmlnumericentity_data* %101, i32 0, i32 2
  %103 = load %struct.TYPE_7__*, %struct.TYPE_7__** %102, align 8
  %104 = call i32 %95(i32 %100, %struct.TYPE_7__* %103)
  br label %105

105:                                              ; preds = %87, %84
  %106 = load i32, i32* %9, align 4
  %107 = sdiv i32 %106, 10
  store i32 %107, i32* %9, align 4
  br label %75

108:                                              ; preds = %75
  %109 = load i32, i32* %6, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %124, label %111

111:                                              ; preds = %108
  store i32 1, i32* %6, align 4
  %112 = load %struct.collector_htmlnumericentity_data*, %struct.collector_htmlnumericentity_data** %5, align 8
  %113 = getelementptr inbounds %struct.collector_htmlnumericentity_data, %struct.collector_htmlnumericentity_data* %112, i32 0, i32 2
  %114 = load %struct.TYPE_7__*, %struct.TYPE_7__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %114, i32 0, i32 0
  %116 = load i32 (i32, %struct.TYPE_7__*)*, i32 (i32, %struct.TYPE_7__*)** %115, align 8
  %117 = load i32*, i32** @mbfl_hexchar_table, align 8
  %118 = getelementptr inbounds i32, i32* %117, i64 0
  %119 = load i32, i32* %118, align 4
  %120 = load %struct.collector_htmlnumericentity_data*, %struct.collector_htmlnumericentity_data** %5, align 8
  %121 = getelementptr inbounds %struct.collector_htmlnumericentity_data, %struct.collector_htmlnumericentity_data* %120, i32 0, i32 2
  %122 = load %struct.TYPE_7__*, %struct.TYPE_7__** %121, align 8
  %123 = call i32 %116(i32 %119, %struct.TYPE_7__* %122)
  br label %124

124:                                              ; preds = %111, %108
  %125 = load %struct.collector_htmlnumericentity_data*, %struct.collector_htmlnumericentity_data** %5, align 8
  %126 = getelementptr inbounds %struct.collector_htmlnumericentity_data, %struct.collector_htmlnumericentity_data* %125, i32 0, i32 2
  %127 = load %struct.TYPE_7__*, %struct.TYPE_7__** %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %127, i32 0, i32 0
  %129 = load i32 (i32, %struct.TYPE_7__*)*, i32 (i32, %struct.TYPE_7__*)** %128, align 8
  %130 = load %struct.collector_htmlnumericentity_data*, %struct.collector_htmlnumericentity_data** %5, align 8
  %131 = getelementptr inbounds %struct.collector_htmlnumericentity_data, %struct.collector_htmlnumericentity_data* %130, i32 0, i32 2
  %132 = load %struct.TYPE_7__*, %struct.TYPE_7__** %131, align 8
  %133 = call i32 %129(i32 59, %struct.TYPE_7__* %132)
  br label %134

134:                                              ; preds = %124, %41
  br label %135

135:                                              ; preds = %134, %35, %22
  %136 = load i32, i32* %6, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %139

138:                                              ; preds = %135
  br label %142

139:                                              ; preds = %135
  %140 = load i32, i32* %7, align 4
  %141 = add nsw i32 %140, 1
  store i32 %141, i32* %7, align 4
  br label %18

142:                                              ; preds = %138, %18
  %143 = load i32, i32* %6, align 4
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %156, label %145

145:                                              ; preds = %142
  %146 = load %struct.collector_htmlnumericentity_data*, %struct.collector_htmlnumericentity_data** %5, align 8
  %147 = getelementptr inbounds %struct.collector_htmlnumericentity_data, %struct.collector_htmlnumericentity_data* %146, i32 0, i32 2
  %148 = load %struct.TYPE_7__*, %struct.TYPE_7__** %147, align 8
  %149 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %148, i32 0, i32 0
  %150 = load i32 (i32, %struct.TYPE_7__*)*, i32 (i32, %struct.TYPE_7__*)** %149, align 8
  %151 = load i32, i32* %3, align 4
  %152 = load %struct.collector_htmlnumericentity_data*, %struct.collector_htmlnumericentity_data** %5, align 8
  %153 = getelementptr inbounds %struct.collector_htmlnumericentity_data, %struct.collector_htmlnumericentity_data* %152, i32 0, i32 2
  %154 = load %struct.TYPE_7__*, %struct.TYPE_7__** %153, align 8
  %155 = call i32 %150(i32 %151, %struct.TYPE_7__* %154)
  br label %156

156:                                              ; preds = %145, %142
  %157 = load i32, i32* %3, align 4
  ret i32 %157
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
