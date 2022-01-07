; ModuleID = '/home/carl/AnghaBench/php-src/ext/mbstring/libmbfl/mbfl/extr_mbfilter.c_collector_encode_hex_htmlnumericentity.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/mbstring/libmbfl/mbfl/extr_mbfilter.c_collector_encode_hex_htmlnumericentity.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.collector_htmlnumericentity_data = type { i32, i32*, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 (i32, %struct.TYPE_8__*)* }

@mbfl_hexchar_table = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @collector_encode_hex_htmlnumericentity to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @collector_encode_hex_htmlnumericentity(i32 %0, i8* %1) #0 {
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

18:                                               ; preds = %148, %2
  %19 = load i32, i32* %7, align 4
  %20 = load i32, i32* %11, align 4
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %22, label %151

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
  br i1 %34, label %35, label %144

35:                                               ; preds = %22
  %36 = load i32, i32* %3, align 4
  %37 = load i32*, i32** %12, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 1
  %39 = load i32, i32* %38, align 4
  %40 = icmp sle i32 %36, %39
  br i1 %40, label %41, label %144

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
  br i1 %52, label %53, label %143

53:                                               ; preds = %41
  %54 = load %struct.collector_htmlnumericentity_data*, %struct.collector_htmlnumericentity_data** %5, align 8
  %55 = getelementptr inbounds %struct.collector_htmlnumericentity_data, %struct.collector_htmlnumericentity_data* %54, i32 0, i32 2
  %56 = load %struct.TYPE_8__*, %struct.TYPE_8__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 0
  %58 = load i32 (i32, %struct.TYPE_8__*)*, i32 (i32, %struct.TYPE_8__*)** %57, align 8
  %59 = load %struct.collector_htmlnumericentity_data*, %struct.collector_htmlnumericentity_data** %5, align 8
  %60 = getelementptr inbounds %struct.collector_htmlnumericentity_data, %struct.collector_htmlnumericentity_data* %59, i32 0, i32 2
  %61 = load %struct.TYPE_8__*, %struct.TYPE_8__** %60, align 8
  %62 = call i32 %58(i32 38, %struct.TYPE_8__* %61)
  %63 = load %struct.collector_htmlnumericentity_data*, %struct.collector_htmlnumericentity_data** %5, align 8
  %64 = getelementptr inbounds %struct.collector_htmlnumericentity_data, %struct.collector_htmlnumericentity_data* %63, i32 0, i32 2
  %65 = load %struct.TYPE_8__*, %struct.TYPE_8__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 0
  %67 = load i32 (i32, %struct.TYPE_8__*)*, i32 (i32, %struct.TYPE_8__*)** %66, align 8
  %68 = load %struct.collector_htmlnumericentity_data*, %struct.collector_htmlnumericentity_data** %5, align 8
  %69 = getelementptr inbounds %struct.collector_htmlnumericentity_data, %struct.collector_htmlnumericentity_data* %68, i32 0, i32 2
  %70 = load %struct.TYPE_8__*, %struct.TYPE_8__** %69, align 8
  %71 = call i32 %67(i32 35, %struct.TYPE_8__* %70)
  %72 = load %struct.collector_htmlnumericentity_data*, %struct.collector_htmlnumericentity_data** %5, align 8
  %73 = getelementptr inbounds %struct.collector_htmlnumericentity_data, %struct.collector_htmlnumericentity_data* %72, i32 0, i32 2
  %74 = load %struct.TYPE_8__*, %struct.TYPE_8__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %74, i32 0, i32 0
  %76 = load i32 (i32, %struct.TYPE_8__*)*, i32 (i32, %struct.TYPE_8__*)** %75, align 8
  %77 = load %struct.collector_htmlnumericentity_data*, %struct.collector_htmlnumericentity_data** %5, align 8
  %78 = getelementptr inbounds %struct.collector_htmlnumericentity_data, %struct.collector_htmlnumericentity_data* %77, i32 0, i32 2
  %79 = load %struct.TYPE_8__*, %struct.TYPE_8__** %78, align 8
  %80 = call i32 %76(i32 120, %struct.TYPE_8__* %79)
  store i32 16777216, i32* %9, align 4
  %81 = load i32, i32* %9, align 4
  %82 = load i32, i32* %8, align 4
  %83 = srem i32 %82, %81
  store i32 %83, i32* %8, align 4
  br label %84

84:                                               ; preds = %114, %53
  %85 = load i32, i32* %9, align 4
  %86 = icmp sgt i32 %85, 0
  br i1 %86, label %87, label %117

87:                                               ; preds = %84
  %88 = load i32, i32* %8, align 4
  %89 = load i32, i32* %9, align 4
  %90 = sdiv i32 %88, %89
  store i32 %90, i32* %10, align 4
  %91 = load i32, i32* %10, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %96, label %93

93:                                               ; preds = %87
  %94 = load i32, i32* %6, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %114

96:                                               ; preds = %93, %87
  store i32 1, i32* %6, align 4
  %97 = load i32, i32* %9, align 4
  %98 = load i32, i32* %8, align 4
  %99 = srem i32 %98, %97
  store i32 %99, i32* %8, align 4
  %100 = load %struct.collector_htmlnumericentity_data*, %struct.collector_htmlnumericentity_data** %5, align 8
  %101 = getelementptr inbounds %struct.collector_htmlnumericentity_data, %struct.collector_htmlnumericentity_data* %100, i32 0, i32 2
  %102 = load %struct.TYPE_8__*, %struct.TYPE_8__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %102, i32 0, i32 0
  %104 = load i32 (i32, %struct.TYPE_8__*)*, i32 (i32, %struct.TYPE_8__*)** %103, align 8
  %105 = load i32*, i32** @mbfl_hexchar_table, align 8
  %106 = load i32, i32* %10, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i32, i32* %105, i64 %107
  %109 = load i32, i32* %108, align 4
  %110 = load %struct.collector_htmlnumericentity_data*, %struct.collector_htmlnumericentity_data** %5, align 8
  %111 = getelementptr inbounds %struct.collector_htmlnumericentity_data, %struct.collector_htmlnumericentity_data* %110, i32 0, i32 2
  %112 = load %struct.TYPE_8__*, %struct.TYPE_8__** %111, align 8
  %113 = call i32 %104(i32 %109, %struct.TYPE_8__* %112)
  br label %114

114:                                              ; preds = %96, %93
  %115 = load i32, i32* %9, align 4
  %116 = sdiv i32 %115, 16
  store i32 %116, i32* %9, align 4
  br label %84

117:                                              ; preds = %84
  %118 = load i32, i32* %6, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %133, label %120

120:                                              ; preds = %117
  store i32 1, i32* %6, align 4
  %121 = load %struct.collector_htmlnumericentity_data*, %struct.collector_htmlnumericentity_data** %5, align 8
  %122 = getelementptr inbounds %struct.collector_htmlnumericentity_data, %struct.collector_htmlnumericentity_data* %121, i32 0, i32 2
  %123 = load %struct.TYPE_8__*, %struct.TYPE_8__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %123, i32 0, i32 0
  %125 = load i32 (i32, %struct.TYPE_8__*)*, i32 (i32, %struct.TYPE_8__*)** %124, align 8
  %126 = load i32*, i32** @mbfl_hexchar_table, align 8
  %127 = getelementptr inbounds i32, i32* %126, i64 0
  %128 = load i32, i32* %127, align 4
  %129 = load %struct.collector_htmlnumericentity_data*, %struct.collector_htmlnumericentity_data** %5, align 8
  %130 = getelementptr inbounds %struct.collector_htmlnumericentity_data, %struct.collector_htmlnumericentity_data* %129, i32 0, i32 2
  %131 = load %struct.TYPE_8__*, %struct.TYPE_8__** %130, align 8
  %132 = call i32 %125(i32 %128, %struct.TYPE_8__* %131)
  br label %133

133:                                              ; preds = %120, %117
  %134 = load %struct.collector_htmlnumericentity_data*, %struct.collector_htmlnumericentity_data** %5, align 8
  %135 = getelementptr inbounds %struct.collector_htmlnumericentity_data, %struct.collector_htmlnumericentity_data* %134, i32 0, i32 2
  %136 = load %struct.TYPE_8__*, %struct.TYPE_8__** %135, align 8
  %137 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %136, i32 0, i32 0
  %138 = load i32 (i32, %struct.TYPE_8__*)*, i32 (i32, %struct.TYPE_8__*)** %137, align 8
  %139 = load %struct.collector_htmlnumericentity_data*, %struct.collector_htmlnumericentity_data** %5, align 8
  %140 = getelementptr inbounds %struct.collector_htmlnumericentity_data, %struct.collector_htmlnumericentity_data* %139, i32 0, i32 2
  %141 = load %struct.TYPE_8__*, %struct.TYPE_8__** %140, align 8
  %142 = call i32 %138(i32 59, %struct.TYPE_8__* %141)
  br label %143

143:                                              ; preds = %133, %41
  br label %144

144:                                              ; preds = %143, %35, %22
  %145 = load i32, i32* %6, align 4
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %148

147:                                              ; preds = %144
  br label %151

148:                                              ; preds = %144
  %149 = load i32, i32* %7, align 4
  %150 = add nsw i32 %149, 1
  store i32 %150, i32* %7, align 4
  br label %18

151:                                              ; preds = %147, %18
  %152 = load i32, i32* %6, align 4
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %165, label %154

154:                                              ; preds = %151
  %155 = load %struct.collector_htmlnumericentity_data*, %struct.collector_htmlnumericentity_data** %5, align 8
  %156 = getelementptr inbounds %struct.collector_htmlnumericentity_data, %struct.collector_htmlnumericentity_data* %155, i32 0, i32 2
  %157 = load %struct.TYPE_8__*, %struct.TYPE_8__** %156, align 8
  %158 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %157, i32 0, i32 0
  %159 = load i32 (i32, %struct.TYPE_8__*)*, i32 (i32, %struct.TYPE_8__*)** %158, align 8
  %160 = load i32, i32* %3, align 4
  %161 = load %struct.collector_htmlnumericentity_data*, %struct.collector_htmlnumericentity_data** %5, align 8
  %162 = getelementptr inbounds %struct.collector_htmlnumericentity_data, %struct.collector_htmlnumericentity_data* %161, i32 0, i32 2
  %163 = load %struct.TYPE_8__*, %struct.TYPE_8__** %162, align 8
  %164 = call i32 %159(i32 %160, %struct.TYPE_8__* %163)
  br label %165

165:                                              ; preds = %154, %151
  %166 = load i32, i32* %3, align 4
  ret i32 %166
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
