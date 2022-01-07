; ModuleID = '/home/carl/AnghaBench/php-src/ext/mbstring/libmbfl/mbfl/extr_mbfilter.c_collector_decode_htmlnumericentity.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/mbstring/libmbfl/mbfl/extr_mbfilter.c_collector_decode_htmlnumericentity.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.collector_htmlnumericentity_data = type { i32, i32, i32, i32, i32*, %struct.TYPE_24__* }
%struct.TYPE_24__ = type { i32 (i32, %struct.TYPE_24__*)* }

@mbfl_hexchar_table = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @collector_decode_htmlnumericentity to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @collector_decode_htmlnumericentity(i32 %0, i8* %1) #0 {
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
  switch i32 %17, label %596 [
    i32 1, label %18
    i32 2, label %47
    i32 3, label %101
    i32 4, label %277
    i32 5, label %367
  ]

18:                                               ; preds = %2
  %19 = load i32, i32* %3, align 4
  %20 = icmp eq i32 %19, 35
  br i1 %20, label %21, label %24

21:                                               ; preds = %18
  %22 = load %struct.collector_htmlnumericentity_data*, %struct.collector_htmlnumericentity_data** %5, align 8
  %23 = getelementptr inbounds %struct.collector_htmlnumericentity_data, %struct.collector_htmlnumericentity_data* %22, i32 0, i32 0
  store i32 2, i32* %23, align 8
  br label %46

24:                                               ; preds = %18
  %25 = load %struct.collector_htmlnumericentity_data*, %struct.collector_htmlnumericentity_data** %5, align 8
  %26 = getelementptr inbounds %struct.collector_htmlnumericentity_data, %struct.collector_htmlnumericentity_data* %25, i32 0, i32 0
  store i32 0, i32* %26, align 8
  %27 = load %struct.collector_htmlnumericentity_data*, %struct.collector_htmlnumericentity_data** %5, align 8
  %28 = getelementptr inbounds %struct.collector_htmlnumericentity_data, %struct.collector_htmlnumericentity_data* %27, i32 0, i32 5
  %29 = load %struct.TYPE_24__*, %struct.TYPE_24__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %29, i32 0, i32 0
  %31 = load i32 (i32, %struct.TYPE_24__*)*, i32 (i32, %struct.TYPE_24__*)** %30, align 8
  %32 = load %struct.collector_htmlnumericentity_data*, %struct.collector_htmlnumericentity_data** %5, align 8
  %33 = getelementptr inbounds %struct.collector_htmlnumericentity_data, %struct.collector_htmlnumericentity_data* %32, i32 0, i32 5
  %34 = load %struct.TYPE_24__*, %struct.TYPE_24__** %33, align 8
  %35 = call i32 %31(i32 38, %struct.TYPE_24__* %34)
  %36 = load %struct.collector_htmlnumericentity_data*, %struct.collector_htmlnumericentity_data** %5, align 8
  %37 = getelementptr inbounds %struct.collector_htmlnumericentity_data, %struct.collector_htmlnumericentity_data* %36, i32 0, i32 5
  %38 = load %struct.TYPE_24__*, %struct.TYPE_24__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %38, i32 0, i32 0
  %40 = load i32 (i32, %struct.TYPE_24__*)*, i32 (i32, %struct.TYPE_24__*)** %39, align 8
  %41 = load i32, i32* %3, align 4
  %42 = load %struct.collector_htmlnumericentity_data*, %struct.collector_htmlnumericentity_data** %5, align 8
  %43 = getelementptr inbounds %struct.collector_htmlnumericentity_data, %struct.collector_htmlnumericentity_data* %42, i32 0, i32 5
  %44 = load %struct.TYPE_24__*, %struct.TYPE_24__** %43, align 8
  %45 = call i32 %40(i32 %41, %struct.TYPE_24__* %44)
  br label %46

46:                                               ; preds = %24, %21
  br label %614

47:                                               ; preds = %2
  %48 = load i32, i32* %3, align 4
  %49 = icmp eq i32 %48, 120
  br i1 %49, label %50, label %53

50:                                               ; preds = %47
  %51 = load %struct.collector_htmlnumericentity_data*, %struct.collector_htmlnumericentity_data** %5, align 8
  %52 = getelementptr inbounds %struct.collector_htmlnumericentity_data, %struct.collector_htmlnumericentity_data* %51, i32 0, i32 0
  store i32 4, i32* %52, align 8
  br label %100

53:                                               ; preds = %47
  %54 = load i32, i32* %3, align 4
  %55 = icmp sge i32 %54, 48
  br i1 %55, label %56, label %68

56:                                               ; preds = %53
  %57 = load i32, i32* %3, align 4
  %58 = icmp sle i32 %57, 57
  br i1 %58, label %59, label %68

59:                                               ; preds = %56
  %60 = load i32, i32* %3, align 4
  %61 = sub nsw i32 %60, 48
  %62 = load %struct.collector_htmlnumericentity_data*, %struct.collector_htmlnumericentity_data** %5, align 8
  %63 = getelementptr inbounds %struct.collector_htmlnumericentity_data, %struct.collector_htmlnumericentity_data* %62, i32 0, i32 1
  store i32 %61, i32* %63, align 4
  %64 = load %struct.collector_htmlnumericentity_data*, %struct.collector_htmlnumericentity_data** %5, align 8
  %65 = getelementptr inbounds %struct.collector_htmlnumericentity_data, %struct.collector_htmlnumericentity_data* %64, i32 0, i32 0
  store i32 3, i32* %65, align 8
  %66 = load %struct.collector_htmlnumericentity_data*, %struct.collector_htmlnumericentity_data** %5, align 8
  %67 = getelementptr inbounds %struct.collector_htmlnumericentity_data, %struct.collector_htmlnumericentity_data* %66, i32 0, i32 2
  store i32 1, i32* %67, align 8
  br label %99

68:                                               ; preds = %56, %53
  %69 = load %struct.collector_htmlnumericentity_data*, %struct.collector_htmlnumericentity_data** %5, align 8
  %70 = getelementptr inbounds %struct.collector_htmlnumericentity_data, %struct.collector_htmlnumericentity_data* %69, i32 0, i32 0
  store i32 0, i32* %70, align 8
  %71 = load %struct.collector_htmlnumericentity_data*, %struct.collector_htmlnumericentity_data** %5, align 8
  %72 = getelementptr inbounds %struct.collector_htmlnumericentity_data, %struct.collector_htmlnumericentity_data* %71, i32 0, i32 5
  %73 = load %struct.TYPE_24__*, %struct.TYPE_24__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %73, i32 0, i32 0
  %75 = load i32 (i32, %struct.TYPE_24__*)*, i32 (i32, %struct.TYPE_24__*)** %74, align 8
  %76 = load %struct.collector_htmlnumericentity_data*, %struct.collector_htmlnumericentity_data** %5, align 8
  %77 = getelementptr inbounds %struct.collector_htmlnumericentity_data, %struct.collector_htmlnumericentity_data* %76, i32 0, i32 5
  %78 = load %struct.TYPE_24__*, %struct.TYPE_24__** %77, align 8
  %79 = call i32 %75(i32 38, %struct.TYPE_24__* %78)
  %80 = load %struct.collector_htmlnumericentity_data*, %struct.collector_htmlnumericentity_data** %5, align 8
  %81 = getelementptr inbounds %struct.collector_htmlnumericentity_data, %struct.collector_htmlnumericentity_data* %80, i32 0, i32 5
  %82 = load %struct.TYPE_24__*, %struct.TYPE_24__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %82, i32 0, i32 0
  %84 = load i32 (i32, %struct.TYPE_24__*)*, i32 (i32, %struct.TYPE_24__*)** %83, align 8
  %85 = load %struct.collector_htmlnumericentity_data*, %struct.collector_htmlnumericentity_data** %5, align 8
  %86 = getelementptr inbounds %struct.collector_htmlnumericentity_data, %struct.collector_htmlnumericentity_data* %85, i32 0, i32 5
  %87 = load %struct.TYPE_24__*, %struct.TYPE_24__** %86, align 8
  %88 = call i32 %84(i32 35, %struct.TYPE_24__* %87)
  %89 = load %struct.collector_htmlnumericentity_data*, %struct.collector_htmlnumericentity_data** %5, align 8
  %90 = getelementptr inbounds %struct.collector_htmlnumericentity_data, %struct.collector_htmlnumericentity_data* %89, i32 0, i32 5
  %91 = load %struct.TYPE_24__*, %struct.TYPE_24__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %91, i32 0, i32 0
  %93 = load i32 (i32, %struct.TYPE_24__*)*, i32 (i32, %struct.TYPE_24__*)** %92, align 8
  %94 = load i32, i32* %3, align 4
  %95 = load %struct.collector_htmlnumericentity_data*, %struct.collector_htmlnumericentity_data** %5, align 8
  %96 = getelementptr inbounds %struct.collector_htmlnumericentity_data, %struct.collector_htmlnumericentity_data* %95, i32 0, i32 5
  %97 = load %struct.TYPE_24__*, %struct.TYPE_24__** %96, align 8
  %98 = call i32 %93(i32 %94, %struct.TYPE_24__* %97)
  br label %99

99:                                               ; preds = %68, %59
  br label %100

100:                                              ; preds = %99, %50
  br label %614

101:                                              ; preds = %2
  store i32 0, i32* %8, align 4
  store i32 0, i32* %6, align 4
  %102 = load i32, i32* %3, align 4
  %103 = icmp sge i32 %102, 48
  br i1 %103, label %104, label %134

104:                                              ; preds = %101
  %105 = load i32, i32* %3, align 4
  %106 = icmp sle i32 %105, 57
  br i1 %106, label %107, label %134

107:                                              ; preds = %104
  %108 = load %struct.collector_htmlnumericentity_data*, %struct.collector_htmlnumericentity_data** %5, align 8
  %109 = getelementptr inbounds %struct.collector_htmlnumericentity_data, %struct.collector_htmlnumericentity_data* %108, i32 0, i32 2
  %110 = load i32, i32* %109, align 8
  %111 = icmp sgt i32 %110, 9
  br i1 %111, label %112, label %118

112:                                              ; preds = %107
  %113 = load %struct.collector_htmlnumericentity_data*, %struct.collector_htmlnumericentity_data** %5, align 8
  %114 = getelementptr inbounds %struct.collector_htmlnumericentity_data, %struct.collector_htmlnumericentity_data* %113, i32 0, i32 0
  store i32 0, i32* %114, align 8
  %115 = load %struct.collector_htmlnumericentity_data*, %struct.collector_htmlnumericentity_data** %5, align 8
  %116 = getelementptr inbounds %struct.collector_htmlnumericentity_data, %struct.collector_htmlnumericentity_data* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  store i32 %117, i32* %8, align 4
  store i32 1, i32* %6, align 4
  br label %133

118:                                              ; preds = %107
  %119 = load %struct.collector_htmlnumericentity_data*, %struct.collector_htmlnumericentity_data** %5, align 8
  %120 = getelementptr inbounds %struct.collector_htmlnumericentity_data, %struct.collector_htmlnumericentity_data* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  %122 = mul nsw i32 %121, 10
  %123 = load i32, i32* %3, align 4
  %124 = add nsw i32 %122, %123
  %125 = sub nsw i32 %124, 48
  store i32 %125, i32* %8, align 4
  %126 = load i32, i32* %8, align 4
  %127 = load %struct.collector_htmlnumericentity_data*, %struct.collector_htmlnumericentity_data** %5, align 8
  %128 = getelementptr inbounds %struct.collector_htmlnumericentity_data, %struct.collector_htmlnumericentity_data* %127, i32 0, i32 1
  store i32 %126, i32* %128, align 4
  %129 = load %struct.collector_htmlnumericentity_data*, %struct.collector_htmlnumericentity_data** %5, align 8
  %130 = getelementptr inbounds %struct.collector_htmlnumericentity_data, %struct.collector_htmlnumericentity_data* %129, i32 0, i32 2
  %131 = load i32, i32* %130, align 8
  %132 = add nsw i32 %131, 1
  store i32 %132, i32* %130, align 8
  br label %133

133:                                              ; preds = %118, %112
  br label %200

134:                                              ; preds = %104, %101
  %135 = load %struct.collector_htmlnumericentity_data*, %struct.collector_htmlnumericentity_data** %5, align 8
  %136 = getelementptr inbounds %struct.collector_htmlnumericentity_data, %struct.collector_htmlnumericentity_data* %135, i32 0, i32 0
  store i32 0, i32* %136, align 8
  %137 = load %struct.collector_htmlnumericentity_data*, %struct.collector_htmlnumericentity_data** %5, align 8
  %138 = getelementptr inbounds %struct.collector_htmlnumericentity_data, %struct.collector_htmlnumericentity_data* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 4
  store i32 %139, i32* %8, align 4
  store i32 1, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %140 = load %struct.collector_htmlnumericentity_data*, %struct.collector_htmlnumericentity_data** %5, align 8
  %141 = getelementptr inbounds %struct.collector_htmlnumericentity_data, %struct.collector_htmlnumericentity_data* %140, i32 0, i32 3
  %142 = load i32, i32* %141, align 4
  store i32 %142, i32* %11, align 4
  br label %143

143:                                              ; preds = %196, %134
  %144 = load i32, i32* %7, align 4
  %145 = load i32, i32* %11, align 4
  %146 = icmp slt i32 %144, %145
  br i1 %146, label %147, label %199

147:                                              ; preds = %143
  %148 = load %struct.collector_htmlnumericentity_data*, %struct.collector_htmlnumericentity_data** %5, align 8
  %149 = getelementptr inbounds %struct.collector_htmlnumericentity_data, %struct.collector_htmlnumericentity_data* %148, i32 0, i32 4
  %150 = load i32*, i32** %149, align 8
  %151 = load i32, i32* %7, align 4
  %152 = mul nsw i32 %151, 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds i32, i32* %150, i64 %153
  store i32* %154, i32** %12, align 8
  %155 = load i32, i32* %8, align 4
  %156 = load i32*, i32** %12, align 8
  %157 = getelementptr inbounds i32, i32* %156, i64 2
  %158 = load i32, i32* %157, align 4
  %159 = sub nsw i32 %155, %158
  store i32 %159, i32* %10, align 4
  %160 = load i32, i32* %10, align 4
  %161 = load i32*, i32** %12, align 8
  %162 = getelementptr inbounds i32, i32* %161, i64 0
  %163 = load i32, i32* %162, align 4
  %164 = icmp sge i32 %160, %163
  br i1 %164, label %165, label %196

165:                                              ; preds = %147
  %166 = load i32, i32* %10, align 4
  %167 = load i32*, i32** %12, align 8
  %168 = getelementptr inbounds i32, i32* %167, i64 1
  %169 = load i32, i32* %168, align 4
  %170 = icmp sle i32 %166, %169
  br i1 %170, label %171, label %196

171:                                              ; preds = %165
  store i32 0, i32* %6, align 4
  %172 = load %struct.collector_htmlnumericentity_data*, %struct.collector_htmlnumericentity_data** %5, align 8
  %173 = getelementptr inbounds %struct.collector_htmlnumericentity_data, %struct.collector_htmlnumericentity_data* %172, i32 0, i32 5
  %174 = load %struct.TYPE_24__*, %struct.TYPE_24__** %173, align 8
  %175 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %174, i32 0, i32 0
  %176 = load i32 (i32, %struct.TYPE_24__*)*, i32 (i32, %struct.TYPE_24__*)** %175, align 8
  %177 = load i32, i32* %10, align 4
  %178 = load %struct.collector_htmlnumericentity_data*, %struct.collector_htmlnumericentity_data** %5, align 8
  %179 = getelementptr inbounds %struct.collector_htmlnumericentity_data, %struct.collector_htmlnumericentity_data* %178, i32 0, i32 5
  %180 = load %struct.TYPE_24__*, %struct.TYPE_24__** %179, align 8
  %181 = call i32 %176(i32 %177, %struct.TYPE_24__* %180)
  %182 = load i32, i32* %3, align 4
  %183 = icmp ne i32 %182, 59
  br i1 %183, label %184, label %195

184:                                              ; preds = %171
  %185 = load %struct.collector_htmlnumericentity_data*, %struct.collector_htmlnumericentity_data** %5, align 8
  %186 = getelementptr inbounds %struct.collector_htmlnumericentity_data, %struct.collector_htmlnumericentity_data* %185, i32 0, i32 5
  %187 = load %struct.TYPE_24__*, %struct.TYPE_24__** %186, align 8
  %188 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %187, i32 0, i32 0
  %189 = load i32 (i32, %struct.TYPE_24__*)*, i32 (i32, %struct.TYPE_24__*)** %188, align 8
  %190 = load i32, i32* %3, align 4
  %191 = load %struct.collector_htmlnumericentity_data*, %struct.collector_htmlnumericentity_data** %5, align 8
  %192 = getelementptr inbounds %struct.collector_htmlnumericentity_data, %struct.collector_htmlnumericentity_data* %191, i32 0, i32 5
  %193 = load %struct.TYPE_24__*, %struct.TYPE_24__** %192, align 8
  %194 = call i32 %189(i32 %190, %struct.TYPE_24__* %193)
  br label %195

195:                                              ; preds = %184, %171
  br label %199

196:                                              ; preds = %165, %147
  %197 = load i32, i32* %7, align 4
  %198 = add nsw i32 %197, 1
  store i32 %198, i32* %7, align 4
  br label %143

199:                                              ; preds = %195, %143
  br label %200

200:                                              ; preds = %199, %133
  %201 = load i32, i32* %6, align 4
  %202 = icmp ne i32 %201, 0
  br i1 %202, label %203, label %276

203:                                              ; preds = %200
  %204 = load %struct.collector_htmlnumericentity_data*, %struct.collector_htmlnumericentity_data** %5, align 8
  %205 = getelementptr inbounds %struct.collector_htmlnumericentity_data, %struct.collector_htmlnumericentity_data* %204, i32 0, i32 5
  %206 = load %struct.TYPE_24__*, %struct.TYPE_24__** %205, align 8
  %207 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %206, i32 0, i32 0
  %208 = load i32 (i32, %struct.TYPE_24__*)*, i32 (i32, %struct.TYPE_24__*)** %207, align 8
  %209 = load %struct.collector_htmlnumericentity_data*, %struct.collector_htmlnumericentity_data** %5, align 8
  %210 = getelementptr inbounds %struct.collector_htmlnumericentity_data, %struct.collector_htmlnumericentity_data* %209, i32 0, i32 5
  %211 = load %struct.TYPE_24__*, %struct.TYPE_24__** %210, align 8
  %212 = call i32 %208(i32 38, %struct.TYPE_24__* %211)
  %213 = load %struct.collector_htmlnumericentity_data*, %struct.collector_htmlnumericentity_data** %5, align 8
  %214 = getelementptr inbounds %struct.collector_htmlnumericentity_data, %struct.collector_htmlnumericentity_data* %213, i32 0, i32 5
  %215 = load %struct.TYPE_24__*, %struct.TYPE_24__** %214, align 8
  %216 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %215, i32 0, i32 0
  %217 = load i32 (i32, %struct.TYPE_24__*)*, i32 (i32, %struct.TYPE_24__*)** %216, align 8
  %218 = load %struct.collector_htmlnumericentity_data*, %struct.collector_htmlnumericentity_data** %5, align 8
  %219 = getelementptr inbounds %struct.collector_htmlnumericentity_data, %struct.collector_htmlnumericentity_data* %218, i32 0, i32 5
  %220 = load %struct.TYPE_24__*, %struct.TYPE_24__** %219, align 8
  %221 = call i32 %217(i32 35, %struct.TYPE_24__* %220)
  store i32 1, i32* %9, align 4
  %222 = load %struct.collector_htmlnumericentity_data*, %struct.collector_htmlnumericentity_data** %5, align 8
  %223 = getelementptr inbounds %struct.collector_htmlnumericentity_data, %struct.collector_htmlnumericentity_data* %222, i32 0, i32 2
  %224 = load i32, i32* %223, align 8
  store i32 %224, i32* %7, align 4
  br label %225

225:                                              ; preds = %228, %203
  %226 = load i32, i32* %7, align 4
  %227 = icmp sgt i32 %226, 0
  br i1 %227, label %228, label %233

228:                                              ; preds = %225
  %229 = load i32, i32* %9, align 4
  %230 = mul nsw i32 %229, 10
  store i32 %230, i32* %9, align 4
  %231 = load i32, i32* %7, align 4
  %232 = add nsw i32 %231, -1
  store i32 %232, i32* %7, align 4
  br label %225

233:                                              ; preds = %225
  %234 = load i32, i32* %9, align 4
  %235 = load i32, i32* %8, align 4
  %236 = srem i32 %235, %234
  store i32 %236, i32* %8, align 4
  %237 = load i32, i32* %9, align 4
  %238 = sdiv i32 %237, 10
  store i32 %238, i32* %9, align 4
  br label %239

239:                                              ; preds = %242, %233
  %240 = load i32, i32* %9, align 4
  %241 = icmp sgt i32 %240, 0
  br i1 %241, label %242, label %265

242:                                              ; preds = %239
  %243 = load i32, i32* %8, align 4
  %244 = load i32, i32* %9, align 4
  %245 = sdiv i32 %243, %244
  store i32 %245, i32* %10, align 4
  %246 = load i32, i32* %9, align 4
  %247 = load i32, i32* %8, align 4
  %248 = srem i32 %247, %246
  store i32 %248, i32* %8, align 4
  %249 = load i32, i32* %9, align 4
  %250 = sdiv i32 %249, 10
  store i32 %250, i32* %9, align 4
  %251 = load %struct.collector_htmlnumericentity_data*, %struct.collector_htmlnumericentity_data** %5, align 8
  %252 = getelementptr inbounds %struct.collector_htmlnumericentity_data, %struct.collector_htmlnumericentity_data* %251, i32 0, i32 5
  %253 = load %struct.TYPE_24__*, %struct.TYPE_24__** %252, align 8
  %254 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %253, i32 0, i32 0
  %255 = load i32 (i32, %struct.TYPE_24__*)*, i32 (i32, %struct.TYPE_24__*)** %254, align 8
  %256 = load i32*, i32** @mbfl_hexchar_table, align 8
  %257 = load i32, i32* %10, align 4
  %258 = sext i32 %257 to i64
  %259 = getelementptr inbounds i32, i32* %256, i64 %258
  %260 = load i32, i32* %259, align 4
  %261 = load %struct.collector_htmlnumericentity_data*, %struct.collector_htmlnumericentity_data** %5, align 8
  %262 = getelementptr inbounds %struct.collector_htmlnumericentity_data, %struct.collector_htmlnumericentity_data* %261, i32 0, i32 5
  %263 = load %struct.TYPE_24__*, %struct.TYPE_24__** %262, align 8
  %264 = call i32 %255(i32 %260, %struct.TYPE_24__* %263)
  br label %239

265:                                              ; preds = %239
  %266 = load %struct.collector_htmlnumericentity_data*, %struct.collector_htmlnumericentity_data** %5, align 8
  %267 = getelementptr inbounds %struct.collector_htmlnumericentity_data, %struct.collector_htmlnumericentity_data* %266, i32 0, i32 5
  %268 = load %struct.TYPE_24__*, %struct.TYPE_24__** %267, align 8
  %269 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %268, i32 0, i32 0
  %270 = load i32 (i32, %struct.TYPE_24__*)*, i32 (i32, %struct.TYPE_24__*)** %269, align 8
  %271 = load i32, i32* %3, align 4
  %272 = load %struct.collector_htmlnumericentity_data*, %struct.collector_htmlnumericentity_data** %5, align 8
  %273 = getelementptr inbounds %struct.collector_htmlnumericentity_data, %struct.collector_htmlnumericentity_data* %272, i32 0, i32 5
  %274 = load %struct.TYPE_24__*, %struct.TYPE_24__** %273, align 8
  %275 = call i32 %270(i32 %271, %struct.TYPE_24__* %274)
  br label %276

276:                                              ; preds = %265, %200
  br label %614

277:                                              ; preds = %2
  %278 = load i32, i32* %3, align 4
  %279 = icmp sge i32 %278, 48
  br i1 %279, label %280, label %292

280:                                              ; preds = %277
  %281 = load i32, i32* %3, align 4
  %282 = icmp sle i32 %281, 57
  br i1 %282, label %283, label %292

283:                                              ; preds = %280
  %284 = load i32, i32* %3, align 4
  %285 = sub nsw i32 %284, 48
  %286 = load %struct.collector_htmlnumericentity_data*, %struct.collector_htmlnumericentity_data** %5, align 8
  %287 = getelementptr inbounds %struct.collector_htmlnumericentity_data, %struct.collector_htmlnumericentity_data* %286, i32 0, i32 1
  store i32 %285, i32* %287, align 4
  %288 = load %struct.collector_htmlnumericentity_data*, %struct.collector_htmlnumericentity_data** %5, align 8
  %289 = getelementptr inbounds %struct.collector_htmlnumericentity_data, %struct.collector_htmlnumericentity_data* %288, i32 0, i32 0
  store i32 5, i32* %289, align 8
  %290 = load %struct.collector_htmlnumericentity_data*, %struct.collector_htmlnumericentity_data** %5, align 8
  %291 = getelementptr inbounds %struct.collector_htmlnumericentity_data, %struct.collector_htmlnumericentity_data* %290, i32 0, i32 2
  store i32 1, i32* %291, align 8
  br label %366

292:                                              ; preds = %280, %277
  %293 = load i32, i32* %3, align 4
  %294 = icmp sge i32 %293, 65
  br i1 %294, label %295, label %308

295:                                              ; preds = %292
  %296 = load i32, i32* %3, align 4
  %297 = icmp sle i32 %296, 70
  br i1 %297, label %298, label %308

298:                                              ; preds = %295
  %299 = load i32, i32* %3, align 4
  %300 = sub nsw i32 %299, 65
  %301 = add nsw i32 %300, 10
  %302 = load %struct.collector_htmlnumericentity_data*, %struct.collector_htmlnumericentity_data** %5, align 8
  %303 = getelementptr inbounds %struct.collector_htmlnumericentity_data, %struct.collector_htmlnumericentity_data* %302, i32 0, i32 1
  store i32 %301, i32* %303, align 4
  %304 = load %struct.collector_htmlnumericentity_data*, %struct.collector_htmlnumericentity_data** %5, align 8
  %305 = getelementptr inbounds %struct.collector_htmlnumericentity_data, %struct.collector_htmlnumericentity_data* %304, i32 0, i32 0
  store i32 5, i32* %305, align 8
  %306 = load %struct.collector_htmlnumericentity_data*, %struct.collector_htmlnumericentity_data** %5, align 8
  %307 = getelementptr inbounds %struct.collector_htmlnumericentity_data, %struct.collector_htmlnumericentity_data* %306, i32 0, i32 2
  store i32 1, i32* %307, align 8
  br label %365

308:                                              ; preds = %295, %292
  %309 = load i32, i32* %3, align 4
  %310 = icmp sge i32 %309, 97
  br i1 %310, label %311, label %324

311:                                              ; preds = %308
  %312 = load i32, i32* %3, align 4
  %313 = icmp sle i32 %312, 102
  br i1 %313, label %314, label %324

314:                                              ; preds = %311
  %315 = load i32, i32* %3, align 4
  %316 = sub nsw i32 %315, 97
  %317 = add nsw i32 %316, 10
  %318 = load %struct.collector_htmlnumericentity_data*, %struct.collector_htmlnumericentity_data** %5, align 8
  %319 = getelementptr inbounds %struct.collector_htmlnumericentity_data, %struct.collector_htmlnumericentity_data* %318, i32 0, i32 1
  store i32 %317, i32* %319, align 4
  %320 = load %struct.collector_htmlnumericentity_data*, %struct.collector_htmlnumericentity_data** %5, align 8
  %321 = getelementptr inbounds %struct.collector_htmlnumericentity_data, %struct.collector_htmlnumericentity_data* %320, i32 0, i32 0
  store i32 5, i32* %321, align 8
  %322 = load %struct.collector_htmlnumericentity_data*, %struct.collector_htmlnumericentity_data** %5, align 8
  %323 = getelementptr inbounds %struct.collector_htmlnumericentity_data, %struct.collector_htmlnumericentity_data* %322, i32 0, i32 2
  store i32 1, i32* %323, align 8
  br label %364

324:                                              ; preds = %311, %308
  %325 = load %struct.collector_htmlnumericentity_data*, %struct.collector_htmlnumericentity_data** %5, align 8
  %326 = getelementptr inbounds %struct.collector_htmlnumericentity_data, %struct.collector_htmlnumericentity_data* %325, i32 0, i32 0
  store i32 0, i32* %326, align 8
  %327 = load %struct.collector_htmlnumericentity_data*, %struct.collector_htmlnumericentity_data** %5, align 8
  %328 = getelementptr inbounds %struct.collector_htmlnumericentity_data, %struct.collector_htmlnumericentity_data* %327, i32 0, i32 5
  %329 = load %struct.TYPE_24__*, %struct.TYPE_24__** %328, align 8
  %330 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %329, i32 0, i32 0
  %331 = load i32 (i32, %struct.TYPE_24__*)*, i32 (i32, %struct.TYPE_24__*)** %330, align 8
  %332 = load %struct.collector_htmlnumericentity_data*, %struct.collector_htmlnumericentity_data** %5, align 8
  %333 = getelementptr inbounds %struct.collector_htmlnumericentity_data, %struct.collector_htmlnumericentity_data* %332, i32 0, i32 5
  %334 = load %struct.TYPE_24__*, %struct.TYPE_24__** %333, align 8
  %335 = call i32 %331(i32 38, %struct.TYPE_24__* %334)
  %336 = load %struct.collector_htmlnumericentity_data*, %struct.collector_htmlnumericentity_data** %5, align 8
  %337 = getelementptr inbounds %struct.collector_htmlnumericentity_data, %struct.collector_htmlnumericentity_data* %336, i32 0, i32 5
  %338 = load %struct.TYPE_24__*, %struct.TYPE_24__** %337, align 8
  %339 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %338, i32 0, i32 0
  %340 = load i32 (i32, %struct.TYPE_24__*)*, i32 (i32, %struct.TYPE_24__*)** %339, align 8
  %341 = load %struct.collector_htmlnumericentity_data*, %struct.collector_htmlnumericentity_data** %5, align 8
  %342 = getelementptr inbounds %struct.collector_htmlnumericentity_data, %struct.collector_htmlnumericentity_data* %341, i32 0, i32 5
  %343 = load %struct.TYPE_24__*, %struct.TYPE_24__** %342, align 8
  %344 = call i32 %340(i32 35, %struct.TYPE_24__* %343)
  %345 = load %struct.collector_htmlnumericentity_data*, %struct.collector_htmlnumericentity_data** %5, align 8
  %346 = getelementptr inbounds %struct.collector_htmlnumericentity_data, %struct.collector_htmlnumericentity_data* %345, i32 0, i32 5
  %347 = load %struct.TYPE_24__*, %struct.TYPE_24__** %346, align 8
  %348 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %347, i32 0, i32 0
  %349 = load i32 (i32, %struct.TYPE_24__*)*, i32 (i32, %struct.TYPE_24__*)** %348, align 8
  %350 = load %struct.collector_htmlnumericentity_data*, %struct.collector_htmlnumericentity_data** %5, align 8
  %351 = getelementptr inbounds %struct.collector_htmlnumericentity_data, %struct.collector_htmlnumericentity_data* %350, i32 0, i32 5
  %352 = load %struct.TYPE_24__*, %struct.TYPE_24__** %351, align 8
  %353 = call i32 %349(i32 120, %struct.TYPE_24__* %352)
  %354 = load %struct.collector_htmlnumericentity_data*, %struct.collector_htmlnumericentity_data** %5, align 8
  %355 = getelementptr inbounds %struct.collector_htmlnumericentity_data, %struct.collector_htmlnumericentity_data* %354, i32 0, i32 5
  %356 = load %struct.TYPE_24__*, %struct.TYPE_24__** %355, align 8
  %357 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %356, i32 0, i32 0
  %358 = load i32 (i32, %struct.TYPE_24__*)*, i32 (i32, %struct.TYPE_24__*)** %357, align 8
  %359 = load i32, i32* %3, align 4
  %360 = load %struct.collector_htmlnumericentity_data*, %struct.collector_htmlnumericentity_data** %5, align 8
  %361 = getelementptr inbounds %struct.collector_htmlnumericentity_data, %struct.collector_htmlnumericentity_data* %360, i32 0, i32 5
  %362 = load %struct.TYPE_24__*, %struct.TYPE_24__** %361, align 8
  %363 = call i32 %358(i32 %359, %struct.TYPE_24__* %362)
  br label %364

364:                                              ; preds = %324, %314
  br label %365

365:                                              ; preds = %364, %298
  br label %366

366:                                              ; preds = %365, %283
  br label %614

367:                                              ; preds = %2
  store i32 0, i32* %8, align 4
  store i32 0, i32* %6, align 4
  %368 = load i32, i32* %3, align 4
  %369 = icmp sge i32 %368, 48
  br i1 %369, label %370, label %373

370:                                              ; preds = %367
  %371 = load i32, i32* %3, align 4
  %372 = icmp sle i32 %371, 57
  br i1 %372, label %385, label %373

373:                                              ; preds = %370, %367
  %374 = load i32, i32* %3, align 4
  %375 = icmp sge i32 %374, 65
  br i1 %375, label %376, label %379

376:                                              ; preds = %373
  %377 = load i32, i32* %3, align 4
  %378 = icmp sle i32 %377, 70
  br i1 %378, label %385, label %379

379:                                              ; preds = %376, %373
  %380 = load i32, i32* %3, align 4
  %381 = icmp sge i32 %380, 97
  br i1 %381, label %382, label %444

382:                                              ; preds = %379
  %383 = load i32, i32* %3, align 4
  %384 = icmp sle i32 %383, 102
  br i1 %384, label %385, label %444

385:                                              ; preds = %382, %376, %370
  %386 = load %struct.collector_htmlnumericentity_data*, %struct.collector_htmlnumericentity_data** %5, align 8
  %387 = getelementptr inbounds %struct.collector_htmlnumericentity_data, %struct.collector_htmlnumericentity_data* %386, i32 0, i32 2
  %388 = load i32, i32* %387, align 8
  %389 = icmp sgt i32 %388, 9
  br i1 %389, label %390, label %396

390:                                              ; preds = %385
  %391 = load %struct.collector_htmlnumericentity_data*, %struct.collector_htmlnumericentity_data** %5, align 8
  %392 = getelementptr inbounds %struct.collector_htmlnumericentity_data, %struct.collector_htmlnumericentity_data* %391, i32 0, i32 0
  store i32 0, i32* %392, align 8
  %393 = load %struct.collector_htmlnumericentity_data*, %struct.collector_htmlnumericentity_data** %5, align 8
  %394 = getelementptr inbounds %struct.collector_htmlnumericentity_data, %struct.collector_htmlnumericentity_data* %393, i32 0, i32 1
  %395 = load i32, i32* %394, align 4
  store i32 %395, i32* %8, align 4
  store i32 1, i32* %6, align 4
  br label %443

396:                                              ; preds = %385
  %397 = load i32, i32* %3, align 4
  %398 = icmp sge i32 %397, 48
  br i1 %398, label %399, label %410

399:                                              ; preds = %396
  %400 = load i32, i32* %3, align 4
  %401 = icmp sle i32 %400, 57
  br i1 %401, label %402, label %410

402:                                              ; preds = %399
  %403 = load %struct.collector_htmlnumericentity_data*, %struct.collector_htmlnumericentity_data** %5, align 8
  %404 = getelementptr inbounds %struct.collector_htmlnumericentity_data, %struct.collector_htmlnumericentity_data* %403, i32 0, i32 1
  %405 = load i32, i32* %404, align 4
  %406 = mul nsw i32 %405, 16
  %407 = load i32, i32* %3, align 4
  %408 = sub nsw i32 %407, 48
  %409 = add nsw i32 %406, %408
  store i32 %409, i32* %8, align 4
  br label %435

410:                                              ; preds = %399, %396
  %411 = load i32, i32* %3, align 4
  %412 = icmp sge i32 %411, 65
  br i1 %412, label %413, label %425

413:                                              ; preds = %410
  %414 = load i32, i32* %3, align 4
  %415 = icmp sle i32 %414, 70
  br i1 %415, label %416, label %425

416:                                              ; preds = %413
  %417 = load %struct.collector_htmlnumericentity_data*, %struct.collector_htmlnumericentity_data** %5, align 8
  %418 = getelementptr inbounds %struct.collector_htmlnumericentity_data, %struct.collector_htmlnumericentity_data* %417, i32 0, i32 1
  %419 = load i32, i32* %418, align 4
  %420 = mul nsw i32 %419, 16
  %421 = load i32, i32* %3, align 4
  %422 = sub nsw i32 %421, 65
  %423 = add nsw i32 %422, 10
  %424 = add nsw i32 %420, %423
  store i32 %424, i32* %8, align 4
  br label %434

425:                                              ; preds = %413, %410
  %426 = load %struct.collector_htmlnumericentity_data*, %struct.collector_htmlnumericentity_data** %5, align 8
  %427 = getelementptr inbounds %struct.collector_htmlnumericentity_data, %struct.collector_htmlnumericentity_data* %426, i32 0, i32 1
  %428 = load i32, i32* %427, align 4
  %429 = mul nsw i32 %428, 16
  %430 = load i32, i32* %3, align 4
  %431 = sub nsw i32 %430, 97
  %432 = add nsw i32 %431, 10
  %433 = add nsw i32 %429, %432
  store i32 %433, i32* %8, align 4
  br label %434

434:                                              ; preds = %425, %416
  br label %435

435:                                              ; preds = %434, %402
  %436 = load i32, i32* %8, align 4
  %437 = load %struct.collector_htmlnumericentity_data*, %struct.collector_htmlnumericentity_data** %5, align 8
  %438 = getelementptr inbounds %struct.collector_htmlnumericentity_data, %struct.collector_htmlnumericentity_data* %437, i32 0, i32 1
  store i32 %436, i32* %438, align 4
  %439 = load %struct.collector_htmlnumericentity_data*, %struct.collector_htmlnumericentity_data** %5, align 8
  %440 = getelementptr inbounds %struct.collector_htmlnumericentity_data, %struct.collector_htmlnumericentity_data* %439, i32 0, i32 2
  %441 = load i32, i32* %440, align 8
  %442 = add nsw i32 %441, 1
  store i32 %442, i32* %440, align 8
  br label %443

443:                                              ; preds = %435, %390
  br label %510

444:                                              ; preds = %382, %379
  %445 = load %struct.collector_htmlnumericentity_data*, %struct.collector_htmlnumericentity_data** %5, align 8
  %446 = getelementptr inbounds %struct.collector_htmlnumericentity_data, %struct.collector_htmlnumericentity_data* %445, i32 0, i32 0
  store i32 0, i32* %446, align 8
  %447 = load %struct.collector_htmlnumericentity_data*, %struct.collector_htmlnumericentity_data** %5, align 8
  %448 = getelementptr inbounds %struct.collector_htmlnumericentity_data, %struct.collector_htmlnumericentity_data* %447, i32 0, i32 1
  %449 = load i32, i32* %448, align 4
  store i32 %449, i32* %8, align 4
  store i32 1, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %450 = load %struct.collector_htmlnumericentity_data*, %struct.collector_htmlnumericentity_data** %5, align 8
  %451 = getelementptr inbounds %struct.collector_htmlnumericentity_data, %struct.collector_htmlnumericentity_data* %450, i32 0, i32 3
  %452 = load i32, i32* %451, align 4
  store i32 %452, i32* %11, align 4
  br label %453

453:                                              ; preds = %506, %444
  %454 = load i32, i32* %7, align 4
  %455 = load i32, i32* %11, align 4
  %456 = icmp slt i32 %454, %455
  br i1 %456, label %457, label %509

457:                                              ; preds = %453
  %458 = load %struct.collector_htmlnumericentity_data*, %struct.collector_htmlnumericentity_data** %5, align 8
  %459 = getelementptr inbounds %struct.collector_htmlnumericentity_data, %struct.collector_htmlnumericentity_data* %458, i32 0, i32 4
  %460 = load i32*, i32** %459, align 8
  %461 = load i32, i32* %7, align 4
  %462 = mul nsw i32 %461, 4
  %463 = sext i32 %462 to i64
  %464 = getelementptr inbounds i32, i32* %460, i64 %463
  store i32* %464, i32** %12, align 8
  %465 = load i32, i32* %8, align 4
  %466 = load i32*, i32** %12, align 8
  %467 = getelementptr inbounds i32, i32* %466, i64 2
  %468 = load i32, i32* %467, align 4
  %469 = sub nsw i32 %465, %468
  store i32 %469, i32* %10, align 4
  %470 = load i32, i32* %10, align 4
  %471 = load i32*, i32** %12, align 8
  %472 = getelementptr inbounds i32, i32* %471, i64 0
  %473 = load i32, i32* %472, align 4
  %474 = icmp sge i32 %470, %473
  br i1 %474, label %475, label %506

475:                                              ; preds = %457
  %476 = load i32, i32* %10, align 4
  %477 = load i32*, i32** %12, align 8
  %478 = getelementptr inbounds i32, i32* %477, i64 1
  %479 = load i32, i32* %478, align 4
  %480 = icmp sle i32 %476, %479
  br i1 %480, label %481, label %506

481:                                              ; preds = %475
  store i32 0, i32* %6, align 4
  %482 = load %struct.collector_htmlnumericentity_data*, %struct.collector_htmlnumericentity_data** %5, align 8
  %483 = getelementptr inbounds %struct.collector_htmlnumericentity_data, %struct.collector_htmlnumericentity_data* %482, i32 0, i32 5
  %484 = load %struct.TYPE_24__*, %struct.TYPE_24__** %483, align 8
  %485 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %484, i32 0, i32 0
  %486 = load i32 (i32, %struct.TYPE_24__*)*, i32 (i32, %struct.TYPE_24__*)** %485, align 8
  %487 = load i32, i32* %10, align 4
  %488 = load %struct.collector_htmlnumericentity_data*, %struct.collector_htmlnumericentity_data** %5, align 8
  %489 = getelementptr inbounds %struct.collector_htmlnumericentity_data, %struct.collector_htmlnumericentity_data* %488, i32 0, i32 5
  %490 = load %struct.TYPE_24__*, %struct.TYPE_24__** %489, align 8
  %491 = call i32 %486(i32 %487, %struct.TYPE_24__* %490)
  %492 = load i32, i32* %3, align 4
  %493 = icmp ne i32 %492, 59
  br i1 %493, label %494, label %505

494:                                              ; preds = %481
  %495 = load %struct.collector_htmlnumericentity_data*, %struct.collector_htmlnumericentity_data** %5, align 8
  %496 = getelementptr inbounds %struct.collector_htmlnumericentity_data, %struct.collector_htmlnumericentity_data* %495, i32 0, i32 5
  %497 = load %struct.TYPE_24__*, %struct.TYPE_24__** %496, align 8
  %498 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %497, i32 0, i32 0
  %499 = load i32 (i32, %struct.TYPE_24__*)*, i32 (i32, %struct.TYPE_24__*)** %498, align 8
  %500 = load i32, i32* %3, align 4
  %501 = load %struct.collector_htmlnumericentity_data*, %struct.collector_htmlnumericentity_data** %5, align 8
  %502 = getelementptr inbounds %struct.collector_htmlnumericentity_data, %struct.collector_htmlnumericentity_data* %501, i32 0, i32 5
  %503 = load %struct.TYPE_24__*, %struct.TYPE_24__** %502, align 8
  %504 = call i32 %499(i32 %500, %struct.TYPE_24__* %503)
  br label %505

505:                                              ; preds = %494, %481
  br label %509

506:                                              ; preds = %475, %457
  %507 = load i32, i32* %7, align 4
  %508 = add nsw i32 %507, 1
  store i32 %508, i32* %7, align 4
  br label %453

509:                                              ; preds = %505, %453
  br label %510

510:                                              ; preds = %509, %443
  %511 = load i32, i32* %6, align 4
  %512 = icmp ne i32 %511, 0
  br i1 %512, label %513, label %595

513:                                              ; preds = %510
  %514 = load %struct.collector_htmlnumericentity_data*, %struct.collector_htmlnumericentity_data** %5, align 8
  %515 = getelementptr inbounds %struct.collector_htmlnumericentity_data, %struct.collector_htmlnumericentity_data* %514, i32 0, i32 5
  %516 = load %struct.TYPE_24__*, %struct.TYPE_24__** %515, align 8
  %517 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %516, i32 0, i32 0
  %518 = load i32 (i32, %struct.TYPE_24__*)*, i32 (i32, %struct.TYPE_24__*)** %517, align 8
  %519 = load %struct.collector_htmlnumericentity_data*, %struct.collector_htmlnumericentity_data** %5, align 8
  %520 = getelementptr inbounds %struct.collector_htmlnumericentity_data, %struct.collector_htmlnumericentity_data* %519, i32 0, i32 5
  %521 = load %struct.TYPE_24__*, %struct.TYPE_24__** %520, align 8
  %522 = call i32 %518(i32 38, %struct.TYPE_24__* %521)
  %523 = load %struct.collector_htmlnumericentity_data*, %struct.collector_htmlnumericentity_data** %5, align 8
  %524 = getelementptr inbounds %struct.collector_htmlnumericentity_data, %struct.collector_htmlnumericentity_data* %523, i32 0, i32 5
  %525 = load %struct.TYPE_24__*, %struct.TYPE_24__** %524, align 8
  %526 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %525, i32 0, i32 0
  %527 = load i32 (i32, %struct.TYPE_24__*)*, i32 (i32, %struct.TYPE_24__*)** %526, align 8
  %528 = load %struct.collector_htmlnumericentity_data*, %struct.collector_htmlnumericentity_data** %5, align 8
  %529 = getelementptr inbounds %struct.collector_htmlnumericentity_data, %struct.collector_htmlnumericentity_data* %528, i32 0, i32 5
  %530 = load %struct.TYPE_24__*, %struct.TYPE_24__** %529, align 8
  %531 = call i32 %527(i32 35, %struct.TYPE_24__* %530)
  %532 = load %struct.collector_htmlnumericentity_data*, %struct.collector_htmlnumericentity_data** %5, align 8
  %533 = getelementptr inbounds %struct.collector_htmlnumericentity_data, %struct.collector_htmlnumericentity_data* %532, i32 0, i32 5
  %534 = load %struct.TYPE_24__*, %struct.TYPE_24__** %533, align 8
  %535 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %534, i32 0, i32 0
  %536 = load i32 (i32, %struct.TYPE_24__*)*, i32 (i32, %struct.TYPE_24__*)** %535, align 8
  %537 = load %struct.collector_htmlnumericentity_data*, %struct.collector_htmlnumericentity_data** %5, align 8
  %538 = getelementptr inbounds %struct.collector_htmlnumericentity_data, %struct.collector_htmlnumericentity_data* %537, i32 0, i32 5
  %539 = load %struct.TYPE_24__*, %struct.TYPE_24__** %538, align 8
  %540 = call i32 %536(i32 120, %struct.TYPE_24__* %539)
  store i32 1, i32* %9, align 4
  %541 = load %struct.collector_htmlnumericentity_data*, %struct.collector_htmlnumericentity_data** %5, align 8
  %542 = getelementptr inbounds %struct.collector_htmlnumericentity_data, %struct.collector_htmlnumericentity_data* %541, i32 0, i32 2
  %543 = load i32, i32* %542, align 8
  store i32 %543, i32* %7, align 4
  br label %544

544:                                              ; preds = %547, %513
  %545 = load i32, i32* %7, align 4
  %546 = icmp sgt i32 %545, 0
  br i1 %546, label %547, label %552

547:                                              ; preds = %544
  %548 = load i32, i32* %9, align 4
  %549 = mul nsw i32 %548, 16
  store i32 %549, i32* %9, align 4
  %550 = load i32, i32* %7, align 4
  %551 = add nsw i32 %550, -1
  store i32 %551, i32* %7, align 4
  br label %544

552:                                              ; preds = %544
  %553 = load i32, i32* %9, align 4
  %554 = load i32, i32* %8, align 4
  %555 = srem i32 %554, %553
  store i32 %555, i32* %8, align 4
  %556 = load i32, i32* %9, align 4
  %557 = sdiv i32 %556, 16
  store i32 %557, i32* %9, align 4
  br label %558

558:                                              ; preds = %561, %552
  %559 = load i32, i32* %9, align 4
  %560 = icmp sgt i32 %559, 0
  br i1 %560, label %561, label %584

561:                                              ; preds = %558
  %562 = load i32, i32* %8, align 4
  %563 = load i32, i32* %9, align 4
  %564 = sdiv i32 %562, %563
  store i32 %564, i32* %10, align 4
  %565 = load i32, i32* %9, align 4
  %566 = load i32, i32* %8, align 4
  %567 = srem i32 %566, %565
  store i32 %567, i32* %8, align 4
  %568 = load i32, i32* %9, align 4
  %569 = sdiv i32 %568, 16
  store i32 %569, i32* %9, align 4
  %570 = load %struct.collector_htmlnumericentity_data*, %struct.collector_htmlnumericentity_data** %5, align 8
  %571 = getelementptr inbounds %struct.collector_htmlnumericentity_data, %struct.collector_htmlnumericentity_data* %570, i32 0, i32 5
  %572 = load %struct.TYPE_24__*, %struct.TYPE_24__** %571, align 8
  %573 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %572, i32 0, i32 0
  %574 = load i32 (i32, %struct.TYPE_24__*)*, i32 (i32, %struct.TYPE_24__*)** %573, align 8
  %575 = load i32*, i32** @mbfl_hexchar_table, align 8
  %576 = load i32, i32* %10, align 4
  %577 = sext i32 %576 to i64
  %578 = getelementptr inbounds i32, i32* %575, i64 %577
  %579 = load i32, i32* %578, align 4
  %580 = load %struct.collector_htmlnumericentity_data*, %struct.collector_htmlnumericentity_data** %5, align 8
  %581 = getelementptr inbounds %struct.collector_htmlnumericentity_data, %struct.collector_htmlnumericentity_data* %580, i32 0, i32 5
  %582 = load %struct.TYPE_24__*, %struct.TYPE_24__** %581, align 8
  %583 = call i32 %574(i32 %579, %struct.TYPE_24__* %582)
  br label %558

584:                                              ; preds = %558
  %585 = load %struct.collector_htmlnumericentity_data*, %struct.collector_htmlnumericentity_data** %5, align 8
  %586 = getelementptr inbounds %struct.collector_htmlnumericentity_data, %struct.collector_htmlnumericentity_data* %585, i32 0, i32 5
  %587 = load %struct.TYPE_24__*, %struct.TYPE_24__** %586, align 8
  %588 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %587, i32 0, i32 0
  %589 = load i32 (i32, %struct.TYPE_24__*)*, i32 (i32, %struct.TYPE_24__*)** %588, align 8
  %590 = load i32, i32* %3, align 4
  %591 = load %struct.collector_htmlnumericentity_data*, %struct.collector_htmlnumericentity_data** %5, align 8
  %592 = getelementptr inbounds %struct.collector_htmlnumericentity_data, %struct.collector_htmlnumericentity_data* %591, i32 0, i32 5
  %593 = load %struct.TYPE_24__*, %struct.TYPE_24__** %592, align 8
  %594 = call i32 %589(i32 %590, %struct.TYPE_24__* %593)
  br label %595

595:                                              ; preds = %584, %510
  br label %614

596:                                              ; preds = %2
  %597 = load i32, i32* %3, align 4
  %598 = icmp eq i32 %597, 38
  br i1 %598, label %599, label %602

599:                                              ; preds = %596
  %600 = load %struct.collector_htmlnumericentity_data*, %struct.collector_htmlnumericentity_data** %5, align 8
  %601 = getelementptr inbounds %struct.collector_htmlnumericentity_data, %struct.collector_htmlnumericentity_data* %600, i32 0, i32 0
  store i32 1, i32* %601, align 8
  br label %613

602:                                              ; preds = %596
  %603 = load %struct.collector_htmlnumericentity_data*, %struct.collector_htmlnumericentity_data** %5, align 8
  %604 = getelementptr inbounds %struct.collector_htmlnumericentity_data, %struct.collector_htmlnumericentity_data* %603, i32 0, i32 5
  %605 = load %struct.TYPE_24__*, %struct.TYPE_24__** %604, align 8
  %606 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %605, i32 0, i32 0
  %607 = load i32 (i32, %struct.TYPE_24__*)*, i32 (i32, %struct.TYPE_24__*)** %606, align 8
  %608 = load i32, i32* %3, align 4
  %609 = load %struct.collector_htmlnumericentity_data*, %struct.collector_htmlnumericentity_data** %5, align 8
  %610 = getelementptr inbounds %struct.collector_htmlnumericentity_data, %struct.collector_htmlnumericentity_data* %609, i32 0, i32 5
  %611 = load %struct.TYPE_24__*, %struct.TYPE_24__** %610, align 8
  %612 = call i32 %607(i32 %608, %struct.TYPE_24__* %611)
  br label %613

613:                                              ; preds = %602, %599
  br label %614

614:                                              ; preds = %613, %595, %366, %276, %100, %46
  %615 = load i32, i32* %3, align 4
  ret i32 %615
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
