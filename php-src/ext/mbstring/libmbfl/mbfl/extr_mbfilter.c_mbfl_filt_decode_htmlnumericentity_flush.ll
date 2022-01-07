; ModuleID = '/home/carl/AnghaBench/php-src/ext/mbstring/libmbfl/mbfl/extr_mbfilter.c_mbfl_filt_decode_htmlnumericentity_flush.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/mbstring/libmbfl/mbfl/extr_mbfilter.c_mbfl_filt_decode_htmlnumericentity_flush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.collector_htmlnumericentity_data = type { i32, i32, i32, %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i32 (i32, %struct.TYPE_14__*)* }

@mbfl_hexchar_table = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbfl_filt_decode_htmlnumericentity_flush(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.collector_htmlnumericentity_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  %8 = load i32*, i32** %2, align 8
  %9 = bitcast i32* %8 to %struct.collector_htmlnumericentity_data*
  store %struct.collector_htmlnumericentity_data* %9, %struct.collector_htmlnumericentity_data** %3, align 8
  %10 = load %struct.collector_htmlnumericentity_data*, %struct.collector_htmlnumericentity_data** %3, align 8
  %11 = getelementptr inbounds %struct.collector_htmlnumericentity_data, %struct.collector_htmlnumericentity_data* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %218

14:                                               ; preds = %1
  %15 = load %struct.collector_htmlnumericentity_data*, %struct.collector_htmlnumericentity_data** %3, align 8
  %16 = getelementptr inbounds %struct.collector_htmlnumericentity_data, %struct.collector_htmlnumericentity_data* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  switch i32 %17, label %216 [
    i32 1, label %18
    i32 2, label %28
    i32 3, label %47
    i32 4, label %113
    i32 5, label %141
  ]

18:                                               ; preds = %14
  %19 = load %struct.collector_htmlnumericentity_data*, %struct.collector_htmlnumericentity_data** %3, align 8
  %20 = getelementptr inbounds %struct.collector_htmlnumericentity_data, %struct.collector_htmlnumericentity_data* %19, i32 0, i32 3
  %21 = load %struct.TYPE_14__*, %struct.TYPE_14__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %21, i32 0, i32 0
  %23 = load i32 (i32, %struct.TYPE_14__*)*, i32 (i32, %struct.TYPE_14__*)** %22, align 8
  %24 = load %struct.collector_htmlnumericentity_data*, %struct.collector_htmlnumericentity_data** %3, align 8
  %25 = getelementptr inbounds %struct.collector_htmlnumericentity_data, %struct.collector_htmlnumericentity_data* %24, i32 0, i32 3
  %26 = load %struct.TYPE_14__*, %struct.TYPE_14__** %25, align 8
  %27 = call i32 %23(i32 38, %struct.TYPE_14__* %26)
  br label %217

28:                                               ; preds = %14
  %29 = load %struct.collector_htmlnumericentity_data*, %struct.collector_htmlnumericentity_data** %3, align 8
  %30 = getelementptr inbounds %struct.collector_htmlnumericentity_data, %struct.collector_htmlnumericentity_data* %29, i32 0, i32 3
  %31 = load %struct.TYPE_14__*, %struct.TYPE_14__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %31, i32 0, i32 0
  %33 = load i32 (i32, %struct.TYPE_14__*)*, i32 (i32, %struct.TYPE_14__*)** %32, align 8
  %34 = load %struct.collector_htmlnumericentity_data*, %struct.collector_htmlnumericentity_data** %3, align 8
  %35 = getelementptr inbounds %struct.collector_htmlnumericentity_data, %struct.collector_htmlnumericentity_data* %34, i32 0, i32 3
  %36 = load %struct.TYPE_14__*, %struct.TYPE_14__** %35, align 8
  %37 = call i32 %33(i32 38, %struct.TYPE_14__* %36)
  %38 = load %struct.collector_htmlnumericentity_data*, %struct.collector_htmlnumericentity_data** %3, align 8
  %39 = getelementptr inbounds %struct.collector_htmlnumericentity_data, %struct.collector_htmlnumericentity_data* %38, i32 0, i32 3
  %40 = load %struct.TYPE_14__*, %struct.TYPE_14__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %40, i32 0, i32 0
  %42 = load i32 (i32, %struct.TYPE_14__*)*, i32 (i32, %struct.TYPE_14__*)** %41, align 8
  %43 = load %struct.collector_htmlnumericentity_data*, %struct.collector_htmlnumericentity_data** %3, align 8
  %44 = getelementptr inbounds %struct.collector_htmlnumericentity_data, %struct.collector_htmlnumericentity_data* %43, i32 0, i32 3
  %45 = load %struct.TYPE_14__*, %struct.TYPE_14__** %44, align 8
  %46 = call i32 %42(i32 35, %struct.TYPE_14__* %45)
  br label %217

47:                                               ; preds = %14
  %48 = load %struct.collector_htmlnumericentity_data*, %struct.collector_htmlnumericentity_data** %3, align 8
  %49 = getelementptr inbounds %struct.collector_htmlnumericentity_data, %struct.collector_htmlnumericentity_data* %48, i32 0, i32 3
  %50 = load %struct.TYPE_14__*, %struct.TYPE_14__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %50, i32 0, i32 0
  %52 = load i32 (i32, %struct.TYPE_14__*)*, i32 (i32, %struct.TYPE_14__*)** %51, align 8
  %53 = load %struct.collector_htmlnumericentity_data*, %struct.collector_htmlnumericentity_data** %3, align 8
  %54 = getelementptr inbounds %struct.collector_htmlnumericentity_data, %struct.collector_htmlnumericentity_data* %53, i32 0, i32 3
  %55 = load %struct.TYPE_14__*, %struct.TYPE_14__** %54, align 8
  %56 = call i32 %52(i32 38, %struct.TYPE_14__* %55)
  %57 = load %struct.collector_htmlnumericentity_data*, %struct.collector_htmlnumericentity_data** %3, align 8
  %58 = getelementptr inbounds %struct.collector_htmlnumericentity_data, %struct.collector_htmlnumericentity_data* %57, i32 0, i32 3
  %59 = load %struct.TYPE_14__*, %struct.TYPE_14__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %59, i32 0, i32 0
  %61 = load i32 (i32, %struct.TYPE_14__*)*, i32 (i32, %struct.TYPE_14__*)** %60, align 8
  %62 = load %struct.collector_htmlnumericentity_data*, %struct.collector_htmlnumericentity_data** %3, align 8
  %63 = getelementptr inbounds %struct.collector_htmlnumericentity_data, %struct.collector_htmlnumericentity_data* %62, i32 0, i32 3
  %64 = load %struct.TYPE_14__*, %struct.TYPE_14__** %63, align 8
  %65 = call i32 %61(i32 35, %struct.TYPE_14__* %64)
  %66 = load %struct.collector_htmlnumericentity_data*, %struct.collector_htmlnumericentity_data** %3, align 8
  %67 = getelementptr inbounds %struct.collector_htmlnumericentity_data, %struct.collector_htmlnumericentity_data* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  store i32 %68, i32* %5, align 4
  store i32 1, i32* %6, align 4
  %69 = load %struct.collector_htmlnumericentity_data*, %struct.collector_htmlnumericentity_data** %3, align 8
  %70 = getelementptr inbounds %struct.collector_htmlnumericentity_data, %struct.collector_htmlnumericentity_data* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 8
  store i32 %71, i32* %4, align 4
  br label %72

72:                                               ; preds = %75, %47
  %73 = load i32, i32* %4, align 4
  %74 = icmp sgt i32 %73, 0
  br i1 %74, label %75, label %80

75:                                               ; preds = %72
  %76 = load i32, i32* %6, align 4
  %77 = mul nsw i32 %76, 10
  store i32 %77, i32* %6, align 4
  %78 = load i32, i32* %4, align 4
  %79 = add nsw i32 %78, -1
  store i32 %79, i32* %4, align 4
  br label %72

80:                                               ; preds = %72
  %81 = load i32, i32* %6, align 4
  %82 = load i32, i32* %5, align 4
  %83 = srem i32 %82, %81
  store i32 %83, i32* %5, align 4
  %84 = load i32, i32* %6, align 4
  %85 = sdiv i32 %84, 10
  store i32 %85, i32* %6, align 4
  br label %86

86:                                               ; preds = %89, %80
  %87 = load i32, i32* %6, align 4
  %88 = icmp sgt i32 %87, 0
  br i1 %88, label %89, label %112

89:                                               ; preds = %86
  %90 = load i32, i32* %5, align 4
  %91 = load i32, i32* %6, align 4
  %92 = sdiv i32 %90, %91
  store i32 %92, i32* %7, align 4
  %93 = load i32, i32* %6, align 4
  %94 = load i32, i32* %5, align 4
  %95 = srem i32 %94, %93
  store i32 %95, i32* %5, align 4
  %96 = load i32, i32* %6, align 4
  %97 = sdiv i32 %96, 10
  store i32 %97, i32* %6, align 4
  %98 = load %struct.collector_htmlnumericentity_data*, %struct.collector_htmlnumericentity_data** %3, align 8
  %99 = getelementptr inbounds %struct.collector_htmlnumericentity_data, %struct.collector_htmlnumericentity_data* %98, i32 0, i32 3
  %100 = load %struct.TYPE_14__*, %struct.TYPE_14__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %100, i32 0, i32 0
  %102 = load i32 (i32, %struct.TYPE_14__*)*, i32 (i32, %struct.TYPE_14__*)** %101, align 8
  %103 = load i32*, i32** @mbfl_hexchar_table, align 8
  %104 = load i32, i32* %7, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i32, i32* %103, i64 %105
  %107 = load i32, i32* %106, align 4
  %108 = load %struct.collector_htmlnumericentity_data*, %struct.collector_htmlnumericentity_data** %3, align 8
  %109 = getelementptr inbounds %struct.collector_htmlnumericentity_data, %struct.collector_htmlnumericentity_data* %108, i32 0, i32 3
  %110 = load %struct.TYPE_14__*, %struct.TYPE_14__** %109, align 8
  %111 = call i32 %102(i32 %107, %struct.TYPE_14__* %110)
  br label %86

112:                                              ; preds = %86
  br label %217

113:                                              ; preds = %14
  %114 = load %struct.collector_htmlnumericentity_data*, %struct.collector_htmlnumericentity_data** %3, align 8
  %115 = getelementptr inbounds %struct.collector_htmlnumericentity_data, %struct.collector_htmlnumericentity_data* %114, i32 0, i32 3
  %116 = load %struct.TYPE_14__*, %struct.TYPE_14__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %116, i32 0, i32 0
  %118 = load i32 (i32, %struct.TYPE_14__*)*, i32 (i32, %struct.TYPE_14__*)** %117, align 8
  %119 = load %struct.collector_htmlnumericentity_data*, %struct.collector_htmlnumericentity_data** %3, align 8
  %120 = getelementptr inbounds %struct.collector_htmlnumericentity_data, %struct.collector_htmlnumericentity_data* %119, i32 0, i32 3
  %121 = load %struct.TYPE_14__*, %struct.TYPE_14__** %120, align 8
  %122 = call i32 %118(i32 38, %struct.TYPE_14__* %121)
  %123 = load %struct.collector_htmlnumericentity_data*, %struct.collector_htmlnumericentity_data** %3, align 8
  %124 = getelementptr inbounds %struct.collector_htmlnumericentity_data, %struct.collector_htmlnumericentity_data* %123, i32 0, i32 3
  %125 = load %struct.TYPE_14__*, %struct.TYPE_14__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %125, i32 0, i32 0
  %127 = load i32 (i32, %struct.TYPE_14__*)*, i32 (i32, %struct.TYPE_14__*)** %126, align 8
  %128 = load %struct.collector_htmlnumericentity_data*, %struct.collector_htmlnumericentity_data** %3, align 8
  %129 = getelementptr inbounds %struct.collector_htmlnumericentity_data, %struct.collector_htmlnumericentity_data* %128, i32 0, i32 3
  %130 = load %struct.TYPE_14__*, %struct.TYPE_14__** %129, align 8
  %131 = call i32 %127(i32 35, %struct.TYPE_14__* %130)
  %132 = load %struct.collector_htmlnumericentity_data*, %struct.collector_htmlnumericentity_data** %3, align 8
  %133 = getelementptr inbounds %struct.collector_htmlnumericentity_data, %struct.collector_htmlnumericentity_data* %132, i32 0, i32 3
  %134 = load %struct.TYPE_14__*, %struct.TYPE_14__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %134, i32 0, i32 0
  %136 = load i32 (i32, %struct.TYPE_14__*)*, i32 (i32, %struct.TYPE_14__*)** %135, align 8
  %137 = load %struct.collector_htmlnumericentity_data*, %struct.collector_htmlnumericentity_data** %3, align 8
  %138 = getelementptr inbounds %struct.collector_htmlnumericentity_data, %struct.collector_htmlnumericentity_data* %137, i32 0, i32 3
  %139 = load %struct.TYPE_14__*, %struct.TYPE_14__** %138, align 8
  %140 = call i32 %136(i32 120, %struct.TYPE_14__* %139)
  br label %217

141:                                              ; preds = %14
  %142 = load %struct.collector_htmlnumericentity_data*, %struct.collector_htmlnumericentity_data** %3, align 8
  %143 = getelementptr inbounds %struct.collector_htmlnumericentity_data, %struct.collector_htmlnumericentity_data* %142, i32 0, i32 3
  %144 = load %struct.TYPE_14__*, %struct.TYPE_14__** %143, align 8
  %145 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %144, i32 0, i32 0
  %146 = load i32 (i32, %struct.TYPE_14__*)*, i32 (i32, %struct.TYPE_14__*)** %145, align 8
  %147 = load %struct.collector_htmlnumericentity_data*, %struct.collector_htmlnumericentity_data** %3, align 8
  %148 = getelementptr inbounds %struct.collector_htmlnumericentity_data, %struct.collector_htmlnumericentity_data* %147, i32 0, i32 3
  %149 = load %struct.TYPE_14__*, %struct.TYPE_14__** %148, align 8
  %150 = call i32 %146(i32 38, %struct.TYPE_14__* %149)
  %151 = load %struct.collector_htmlnumericentity_data*, %struct.collector_htmlnumericentity_data** %3, align 8
  %152 = getelementptr inbounds %struct.collector_htmlnumericentity_data, %struct.collector_htmlnumericentity_data* %151, i32 0, i32 3
  %153 = load %struct.TYPE_14__*, %struct.TYPE_14__** %152, align 8
  %154 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %153, i32 0, i32 0
  %155 = load i32 (i32, %struct.TYPE_14__*)*, i32 (i32, %struct.TYPE_14__*)** %154, align 8
  %156 = load %struct.collector_htmlnumericentity_data*, %struct.collector_htmlnumericentity_data** %3, align 8
  %157 = getelementptr inbounds %struct.collector_htmlnumericentity_data, %struct.collector_htmlnumericentity_data* %156, i32 0, i32 3
  %158 = load %struct.TYPE_14__*, %struct.TYPE_14__** %157, align 8
  %159 = call i32 %155(i32 35, %struct.TYPE_14__* %158)
  %160 = load %struct.collector_htmlnumericentity_data*, %struct.collector_htmlnumericentity_data** %3, align 8
  %161 = getelementptr inbounds %struct.collector_htmlnumericentity_data, %struct.collector_htmlnumericentity_data* %160, i32 0, i32 3
  %162 = load %struct.TYPE_14__*, %struct.TYPE_14__** %161, align 8
  %163 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %162, i32 0, i32 0
  %164 = load i32 (i32, %struct.TYPE_14__*)*, i32 (i32, %struct.TYPE_14__*)** %163, align 8
  %165 = load %struct.collector_htmlnumericentity_data*, %struct.collector_htmlnumericentity_data** %3, align 8
  %166 = getelementptr inbounds %struct.collector_htmlnumericentity_data, %struct.collector_htmlnumericentity_data* %165, i32 0, i32 3
  %167 = load %struct.TYPE_14__*, %struct.TYPE_14__** %166, align 8
  %168 = call i32 %164(i32 120, %struct.TYPE_14__* %167)
  %169 = load %struct.collector_htmlnumericentity_data*, %struct.collector_htmlnumericentity_data** %3, align 8
  %170 = getelementptr inbounds %struct.collector_htmlnumericentity_data, %struct.collector_htmlnumericentity_data* %169, i32 0, i32 1
  %171 = load i32, i32* %170, align 4
  store i32 %171, i32* %5, align 4
  store i32 1, i32* %6, align 4
  %172 = load %struct.collector_htmlnumericentity_data*, %struct.collector_htmlnumericentity_data** %3, align 8
  %173 = getelementptr inbounds %struct.collector_htmlnumericentity_data, %struct.collector_htmlnumericentity_data* %172, i32 0, i32 2
  %174 = load i32, i32* %173, align 8
  store i32 %174, i32* %4, align 4
  br label %175

175:                                              ; preds = %178, %141
  %176 = load i32, i32* %4, align 4
  %177 = icmp sgt i32 %176, 0
  br i1 %177, label %178, label %183

178:                                              ; preds = %175
  %179 = load i32, i32* %6, align 4
  %180 = mul nsw i32 %179, 16
  store i32 %180, i32* %6, align 4
  %181 = load i32, i32* %4, align 4
  %182 = add nsw i32 %181, -1
  store i32 %182, i32* %4, align 4
  br label %175

183:                                              ; preds = %175
  %184 = load i32, i32* %6, align 4
  %185 = load i32, i32* %5, align 4
  %186 = srem i32 %185, %184
  store i32 %186, i32* %5, align 4
  %187 = load i32, i32* %6, align 4
  %188 = sdiv i32 %187, 16
  store i32 %188, i32* %6, align 4
  br label %189

189:                                              ; preds = %192, %183
  %190 = load i32, i32* %6, align 4
  %191 = icmp sgt i32 %190, 0
  br i1 %191, label %192, label %215

192:                                              ; preds = %189
  %193 = load i32, i32* %5, align 4
  %194 = load i32, i32* %6, align 4
  %195 = sdiv i32 %193, %194
  store i32 %195, i32* %7, align 4
  %196 = load i32, i32* %6, align 4
  %197 = load i32, i32* %5, align 4
  %198 = srem i32 %197, %196
  store i32 %198, i32* %5, align 4
  %199 = load i32, i32* %6, align 4
  %200 = sdiv i32 %199, 16
  store i32 %200, i32* %6, align 4
  %201 = load %struct.collector_htmlnumericentity_data*, %struct.collector_htmlnumericentity_data** %3, align 8
  %202 = getelementptr inbounds %struct.collector_htmlnumericentity_data, %struct.collector_htmlnumericentity_data* %201, i32 0, i32 3
  %203 = load %struct.TYPE_14__*, %struct.TYPE_14__** %202, align 8
  %204 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %203, i32 0, i32 0
  %205 = load i32 (i32, %struct.TYPE_14__*)*, i32 (i32, %struct.TYPE_14__*)** %204, align 8
  %206 = load i32*, i32** @mbfl_hexchar_table, align 8
  %207 = load i32, i32* %7, align 4
  %208 = sext i32 %207 to i64
  %209 = getelementptr inbounds i32, i32* %206, i64 %208
  %210 = load i32, i32* %209, align 4
  %211 = load %struct.collector_htmlnumericentity_data*, %struct.collector_htmlnumericentity_data** %3, align 8
  %212 = getelementptr inbounds %struct.collector_htmlnumericentity_data, %struct.collector_htmlnumericentity_data* %211, i32 0, i32 3
  %213 = load %struct.TYPE_14__*, %struct.TYPE_14__** %212, align 8
  %214 = call i32 %205(i32 %210, %struct.TYPE_14__* %213)
  br label %189

215:                                              ; preds = %189
  br label %217

216:                                              ; preds = %14
  br label %217

217:                                              ; preds = %216, %215, %113, %112, %28, %18
  br label %218

218:                                              ; preds = %217, %1
  %219 = load %struct.collector_htmlnumericentity_data*, %struct.collector_htmlnumericentity_data** %3, align 8
  %220 = getelementptr inbounds %struct.collector_htmlnumericentity_data, %struct.collector_htmlnumericentity_data* %219, i32 0, i32 0
  store i32 0, i32* %220, align 8
  %221 = load %struct.collector_htmlnumericentity_data*, %struct.collector_htmlnumericentity_data** %3, align 8
  %222 = getelementptr inbounds %struct.collector_htmlnumericentity_data, %struct.collector_htmlnumericentity_data* %221, i32 0, i32 1
  store i32 0, i32* %222, align 4
  %223 = load %struct.collector_htmlnumericentity_data*, %struct.collector_htmlnumericentity_data** %3, align 8
  %224 = getelementptr inbounds %struct.collector_htmlnumericentity_data, %struct.collector_htmlnumericentity_data* %223, i32 0, i32 2
  store i32 0, i32* %224, align 8
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
