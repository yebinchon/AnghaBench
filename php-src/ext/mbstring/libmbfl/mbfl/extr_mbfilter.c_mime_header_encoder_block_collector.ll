; ModuleID = '/home/carl/AnghaBench/php-src/ext/mbstring/libmbfl/mbfl/extr_mbfilter.c_mime_header_encoder_block_collector.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/mbstring/libmbfl/mbfl/extr_mbfilter.c_mime_header_encoder_block_collector.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mime_header_encoder_data = type { i32, i64, i64, i64, i8*, i32, i8*, i32, %struct.TYPE_12__*, %struct.TYPE_13__, %struct.TYPE_12__*, %struct.TYPE_12__*, %struct.TYPE_12__* }
%struct.TYPE_13__ = type { i64 }
%struct.TYPE_12__ = type { i32 (i32, %struct.TYPE_12__*)*, i32 (%struct.TYPE_12__*)* }

@.str = private unnamed_addr constant [3 x i8] c"?=\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @mime_header_encoder_block_collector to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mime_header_encoder_block_collector(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.mime_header_encoder_data*, align 8
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = bitcast i8* %7 to %struct.mime_header_encoder_data*
  store %struct.mime_header_encoder_data* %8, %struct.mime_header_encoder_data** %6, align 8
  %9 = load %struct.mime_header_encoder_data*, %struct.mime_header_encoder_data** %6, align 8
  %10 = getelementptr inbounds %struct.mime_header_encoder_data, %struct.mime_header_encoder_data* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  switch i32 %11, label %165 [
    i32 1, label %12
  ]

12:                                               ; preds = %2
  %13 = load %struct.mime_header_encoder_data*, %struct.mime_header_encoder_data** %6, align 8
  %14 = getelementptr inbounds %struct.mime_header_encoder_data, %struct.mime_header_encoder_data* %13, i32 0, i32 9
  %15 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load %struct.mime_header_encoder_data*, %struct.mime_header_encoder_data** %6, align 8
  %18 = getelementptr inbounds %struct.mime_header_encoder_data, %struct.mime_header_encoder_data* %17, i32 0, i32 1
  store i64 %16, i64* %18, align 8
  %19 = load %struct.mime_header_encoder_data*, %struct.mime_header_encoder_data** %6, align 8
  %20 = getelementptr inbounds %struct.mime_header_encoder_data, %struct.mime_header_encoder_data* %19, i32 0, i32 8
  %21 = load %struct.TYPE_12__*, %struct.TYPE_12__** %20, align 8
  %22 = load %struct.mime_header_encoder_data*, %struct.mime_header_encoder_data** %6, align 8
  %23 = getelementptr inbounds %struct.mime_header_encoder_data, %struct.mime_header_encoder_data* %22, i32 0, i32 12
  %24 = load %struct.TYPE_12__*, %struct.TYPE_12__** %23, align 8
  %25 = call i32 @mbfl_convert_filter_copy(%struct.TYPE_12__* %21, %struct.TYPE_12__* %24)
  %26 = load %struct.mime_header_encoder_data*, %struct.mime_header_encoder_data** %6, align 8
  %27 = getelementptr inbounds %struct.mime_header_encoder_data, %struct.mime_header_encoder_data* %26, i32 0, i32 10
  %28 = load %struct.TYPE_12__*, %struct.TYPE_12__** %27, align 8
  %29 = load %struct.mime_header_encoder_data*, %struct.mime_header_encoder_data** %6, align 8
  %30 = getelementptr inbounds %struct.mime_header_encoder_data, %struct.mime_header_encoder_data* %29, i32 0, i32 11
  %31 = load %struct.TYPE_12__*, %struct.TYPE_12__** %30, align 8
  %32 = call i32 @mbfl_convert_filter_copy(%struct.TYPE_12__* %28, %struct.TYPE_12__* %31)
  %33 = load %struct.mime_header_encoder_data*, %struct.mime_header_encoder_data** %6, align 8
  %34 = getelementptr inbounds %struct.mime_header_encoder_data, %struct.mime_header_encoder_data* %33, i32 0, i32 8
  %35 = load %struct.TYPE_12__*, %struct.TYPE_12__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %35, i32 0, i32 0
  %37 = load i32 (i32, %struct.TYPE_12__*)*, i32 (i32, %struct.TYPE_12__*)** %36, align 8
  %38 = load i32, i32* %3, align 4
  %39 = load %struct.mime_header_encoder_data*, %struct.mime_header_encoder_data** %6, align 8
  %40 = getelementptr inbounds %struct.mime_header_encoder_data, %struct.mime_header_encoder_data* %39, i32 0, i32 8
  %41 = load %struct.TYPE_12__*, %struct.TYPE_12__** %40, align 8
  %42 = call i32 %37(i32 %38, %struct.TYPE_12__* %41)
  %43 = load %struct.mime_header_encoder_data*, %struct.mime_header_encoder_data** %6, align 8
  %44 = getelementptr inbounds %struct.mime_header_encoder_data, %struct.mime_header_encoder_data* %43, i32 0, i32 8
  %45 = load %struct.TYPE_12__*, %struct.TYPE_12__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %45, i32 0, i32 1
  %47 = load i32 (%struct.TYPE_12__*)*, i32 (%struct.TYPE_12__*)** %46, align 8
  %48 = load %struct.mime_header_encoder_data*, %struct.mime_header_encoder_data** %6, align 8
  %49 = getelementptr inbounds %struct.mime_header_encoder_data, %struct.mime_header_encoder_data* %48, i32 0, i32 8
  %50 = load %struct.TYPE_12__*, %struct.TYPE_12__** %49, align 8
  %51 = call i32 %47(%struct.TYPE_12__* %50)
  %52 = load %struct.mime_header_encoder_data*, %struct.mime_header_encoder_data** %6, align 8
  %53 = getelementptr inbounds %struct.mime_header_encoder_data, %struct.mime_header_encoder_data* %52, i32 0, i32 10
  %54 = load %struct.TYPE_12__*, %struct.TYPE_12__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %54, i32 0, i32 1
  %56 = load i32 (%struct.TYPE_12__*)*, i32 (%struct.TYPE_12__*)** %55, align 8
  %57 = load %struct.mime_header_encoder_data*, %struct.mime_header_encoder_data** %6, align 8
  %58 = getelementptr inbounds %struct.mime_header_encoder_data, %struct.mime_header_encoder_data* %57, i32 0, i32 10
  %59 = load %struct.TYPE_12__*, %struct.TYPE_12__** %58, align 8
  %60 = call i32 %56(%struct.TYPE_12__* %59)
  %61 = load %struct.mime_header_encoder_data*, %struct.mime_header_encoder_data** %6, align 8
  %62 = getelementptr inbounds %struct.mime_header_encoder_data, %struct.mime_header_encoder_data* %61, i32 0, i32 9
  %63 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load %struct.mime_header_encoder_data*, %struct.mime_header_encoder_data** %6, align 8
  %66 = getelementptr inbounds %struct.mime_header_encoder_data, %struct.mime_header_encoder_data* %65, i32 0, i32 2
  %67 = load i64, i64* %66, align 8
  %68 = sub i64 %64, %67
  %69 = load %struct.mime_header_encoder_data*, %struct.mime_header_encoder_data** %6, align 8
  %70 = getelementptr inbounds %struct.mime_header_encoder_data, %struct.mime_header_encoder_data* %69, i32 0, i32 3
  %71 = load i64, i64* %70, align 8
  %72 = add i64 %68, %71
  store i64 %72, i64* %5, align 8
  %73 = load %struct.mime_header_encoder_data*, %struct.mime_header_encoder_data** %6, align 8
  %74 = getelementptr inbounds %struct.mime_header_encoder_data, %struct.mime_header_encoder_data* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = load %struct.mime_header_encoder_data*, %struct.mime_header_encoder_data** %6, align 8
  %77 = getelementptr inbounds %struct.mime_header_encoder_data, %struct.mime_header_encoder_data* %76, i32 0, i32 9
  %78 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %77, i32 0, i32 0
  store i64 %75, i64* %78, align 8
  %79 = load %struct.mime_header_encoder_data*, %struct.mime_header_encoder_data** %6, align 8
  %80 = getelementptr inbounds %struct.mime_header_encoder_data, %struct.mime_header_encoder_data* %79, i32 0, i32 12
  %81 = load %struct.TYPE_12__*, %struct.TYPE_12__** %80, align 8
  %82 = load %struct.mime_header_encoder_data*, %struct.mime_header_encoder_data** %6, align 8
  %83 = getelementptr inbounds %struct.mime_header_encoder_data, %struct.mime_header_encoder_data* %82, i32 0, i32 8
  %84 = load %struct.TYPE_12__*, %struct.TYPE_12__** %83, align 8
  %85 = call i32 @mbfl_convert_filter_copy(%struct.TYPE_12__* %81, %struct.TYPE_12__* %84)
  %86 = load %struct.mime_header_encoder_data*, %struct.mime_header_encoder_data** %6, align 8
  %87 = getelementptr inbounds %struct.mime_header_encoder_data, %struct.mime_header_encoder_data* %86, i32 0, i32 11
  %88 = load %struct.TYPE_12__*, %struct.TYPE_12__** %87, align 8
  %89 = load %struct.mime_header_encoder_data*, %struct.mime_header_encoder_data** %6, align 8
  %90 = getelementptr inbounds %struct.mime_header_encoder_data, %struct.mime_header_encoder_data* %89, i32 0, i32 10
  %91 = load %struct.TYPE_12__*, %struct.TYPE_12__** %90, align 8
  %92 = call i32 @mbfl_convert_filter_copy(%struct.TYPE_12__* %88, %struct.TYPE_12__* %91)
  %93 = load i64, i64* %5, align 8
  %94 = icmp uge i64 %93, 74
  br i1 %94, label %95, label %153

95:                                               ; preds = %12
  %96 = load %struct.mime_header_encoder_data*, %struct.mime_header_encoder_data** %6, align 8
  %97 = getelementptr inbounds %struct.mime_header_encoder_data, %struct.mime_header_encoder_data* %96, i32 0, i32 8
  %98 = load %struct.TYPE_12__*, %struct.TYPE_12__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %98, i32 0, i32 1
  %100 = load i32 (%struct.TYPE_12__*)*, i32 (%struct.TYPE_12__*)** %99, align 8
  %101 = load %struct.mime_header_encoder_data*, %struct.mime_header_encoder_data** %6, align 8
  %102 = getelementptr inbounds %struct.mime_header_encoder_data, %struct.mime_header_encoder_data* %101, i32 0, i32 8
  %103 = load %struct.TYPE_12__*, %struct.TYPE_12__** %102, align 8
  %104 = call i32 %100(%struct.TYPE_12__* %103)
  %105 = load %struct.mime_header_encoder_data*, %struct.mime_header_encoder_data** %6, align 8
  %106 = getelementptr inbounds %struct.mime_header_encoder_data, %struct.mime_header_encoder_data* %105, i32 0, i32 10
  %107 = load %struct.TYPE_12__*, %struct.TYPE_12__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %107, i32 0, i32 1
  %109 = load i32 (%struct.TYPE_12__*)*, i32 (%struct.TYPE_12__*)** %108, align 8
  %110 = load %struct.mime_header_encoder_data*, %struct.mime_header_encoder_data** %6, align 8
  %111 = getelementptr inbounds %struct.mime_header_encoder_data, %struct.mime_header_encoder_data* %110, i32 0, i32 10
  %112 = load %struct.TYPE_12__*, %struct.TYPE_12__** %111, align 8
  %113 = call i32 %109(%struct.TYPE_12__* %112)
  %114 = load %struct.mime_header_encoder_data*, %struct.mime_header_encoder_data** %6, align 8
  %115 = getelementptr inbounds %struct.mime_header_encoder_data, %struct.mime_header_encoder_data* %114, i32 0, i32 9
  %116 = call i32 @mbfl_memory_device_strncat(%struct.TYPE_13__* %115, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 2)
  %117 = load %struct.mime_header_encoder_data*, %struct.mime_header_encoder_data** %6, align 8
  %118 = getelementptr inbounds %struct.mime_header_encoder_data, %struct.mime_header_encoder_data* %117, i32 0, i32 9
  %119 = load %struct.mime_header_encoder_data*, %struct.mime_header_encoder_data** %6, align 8
  %120 = getelementptr inbounds %struct.mime_header_encoder_data, %struct.mime_header_encoder_data* %119, i32 0, i32 4
  %121 = load i8*, i8** %120, align 8
  %122 = load %struct.mime_header_encoder_data*, %struct.mime_header_encoder_data** %6, align 8
  %123 = getelementptr inbounds %struct.mime_header_encoder_data, %struct.mime_header_encoder_data* %122, i32 0, i32 5
  %124 = load i32, i32* %123, align 8
  %125 = call i32 @mbfl_memory_device_strncat(%struct.TYPE_13__* %118, i8* %121, i32 %124)
  %126 = load %struct.mime_header_encoder_data*, %struct.mime_header_encoder_data** %6, align 8
  %127 = getelementptr inbounds %struct.mime_header_encoder_data, %struct.mime_header_encoder_data* %126, i32 0, i32 9
  %128 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %127, i32 0, i32 0
  %129 = load i64, i64* %128, align 8
  %130 = load %struct.mime_header_encoder_data*, %struct.mime_header_encoder_data** %6, align 8
  %131 = getelementptr inbounds %struct.mime_header_encoder_data, %struct.mime_header_encoder_data* %130, i32 0, i32 2
  store i64 %129, i64* %131, align 8
  %132 = load %struct.mime_header_encoder_data*, %struct.mime_header_encoder_data** %6, align 8
  %133 = getelementptr inbounds %struct.mime_header_encoder_data, %struct.mime_header_encoder_data* %132, i32 0, i32 3
  store i64 0, i64* %133, align 8
  %134 = load %struct.mime_header_encoder_data*, %struct.mime_header_encoder_data** %6, align 8
  %135 = getelementptr inbounds %struct.mime_header_encoder_data, %struct.mime_header_encoder_data* %134, i32 0, i32 9
  %136 = load %struct.mime_header_encoder_data*, %struct.mime_header_encoder_data** %6, align 8
  %137 = getelementptr inbounds %struct.mime_header_encoder_data, %struct.mime_header_encoder_data* %136, i32 0, i32 6
  %138 = load i8*, i8** %137, align 8
  %139 = load %struct.mime_header_encoder_data*, %struct.mime_header_encoder_data** %6, align 8
  %140 = getelementptr inbounds %struct.mime_header_encoder_data, %struct.mime_header_encoder_data* %139, i32 0, i32 7
  %141 = load i32, i32* %140, align 8
  %142 = call i32 @mbfl_memory_device_strncat(%struct.TYPE_13__* %135, i8* %138, i32 %141)
  %143 = load %struct.mime_header_encoder_data*, %struct.mime_header_encoder_data** %6, align 8
  %144 = getelementptr inbounds %struct.mime_header_encoder_data, %struct.mime_header_encoder_data* %143, i32 0, i32 8
  %145 = load %struct.TYPE_12__*, %struct.TYPE_12__** %144, align 8
  %146 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %145, i32 0, i32 0
  %147 = load i32 (i32, %struct.TYPE_12__*)*, i32 (i32, %struct.TYPE_12__*)** %146, align 8
  %148 = load i32, i32* %3, align 4
  %149 = load %struct.mime_header_encoder_data*, %struct.mime_header_encoder_data** %6, align 8
  %150 = getelementptr inbounds %struct.mime_header_encoder_data, %struct.mime_header_encoder_data* %149, i32 0, i32 8
  %151 = load %struct.TYPE_12__*, %struct.TYPE_12__** %150, align 8
  %152 = call i32 %147(i32 %148, %struct.TYPE_12__* %151)
  store i32 %152, i32* %3, align 4
  br label %164

153:                                              ; preds = %12
  %154 = load %struct.mime_header_encoder_data*, %struct.mime_header_encoder_data** %6, align 8
  %155 = getelementptr inbounds %struct.mime_header_encoder_data, %struct.mime_header_encoder_data* %154, i32 0, i32 8
  %156 = load %struct.TYPE_12__*, %struct.TYPE_12__** %155, align 8
  %157 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %156, i32 0, i32 0
  %158 = load i32 (i32, %struct.TYPE_12__*)*, i32 (i32, %struct.TYPE_12__*)** %157, align 8
  %159 = load i32, i32* %3, align 4
  %160 = load %struct.mime_header_encoder_data*, %struct.mime_header_encoder_data** %6, align 8
  %161 = getelementptr inbounds %struct.mime_header_encoder_data, %struct.mime_header_encoder_data* %160, i32 0, i32 8
  %162 = load %struct.TYPE_12__*, %struct.TYPE_12__** %161, align 8
  %163 = call i32 %158(i32 %159, %struct.TYPE_12__* %162)
  store i32 %163, i32* %3, align 4
  br label %164

164:                                              ; preds = %153, %95
  br label %187

165:                                              ; preds = %2
  %166 = load %struct.mime_header_encoder_data*, %struct.mime_header_encoder_data** %6, align 8
  %167 = getelementptr inbounds %struct.mime_header_encoder_data, %struct.mime_header_encoder_data* %166, i32 0, i32 9
  %168 = load %struct.mime_header_encoder_data*, %struct.mime_header_encoder_data** %6, align 8
  %169 = getelementptr inbounds %struct.mime_header_encoder_data, %struct.mime_header_encoder_data* %168, i32 0, i32 6
  %170 = load i8*, i8** %169, align 8
  %171 = load %struct.mime_header_encoder_data*, %struct.mime_header_encoder_data** %6, align 8
  %172 = getelementptr inbounds %struct.mime_header_encoder_data, %struct.mime_header_encoder_data* %171, i32 0, i32 7
  %173 = load i32, i32* %172, align 8
  %174 = call i32 @mbfl_memory_device_strncat(%struct.TYPE_13__* %167, i8* %170, i32 %173)
  %175 = load %struct.mime_header_encoder_data*, %struct.mime_header_encoder_data** %6, align 8
  %176 = getelementptr inbounds %struct.mime_header_encoder_data, %struct.mime_header_encoder_data* %175, i32 0, i32 8
  %177 = load %struct.TYPE_12__*, %struct.TYPE_12__** %176, align 8
  %178 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %177, i32 0, i32 0
  %179 = load i32 (i32, %struct.TYPE_12__*)*, i32 (i32, %struct.TYPE_12__*)** %178, align 8
  %180 = load i32, i32* %3, align 4
  %181 = load %struct.mime_header_encoder_data*, %struct.mime_header_encoder_data** %6, align 8
  %182 = getelementptr inbounds %struct.mime_header_encoder_data, %struct.mime_header_encoder_data* %181, i32 0, i32 8
  %183 = load %struct.TYPE_12__*, %struct.TYPE_12__** %182, align 8
  %184 = call i32 %179(i32 %180, %struct.TYPE_12__* %183)
  store i32 %184, i32* %3, align 4
  %185 = load %struct.mime_header_encoder_data*, %struct.mime_header_encoder_data** %6, align 8
  %186 = getelementptr inbounds %struct.mime_header_encoder_data, %struct.mime_header_encoder_data* %185, i32 0, i32 0
  store i32 1, i32* %186, align 8
  br label %187

187:                                              ; preds = %165, %164
  %188 = load i32, i32* %3, align 4
  ret i32 %188
}

declare dso_local i32 @mbfl_convert_filter_copy(%struct.TYPE_12__*, %struct.TYPE_12__*) #1

declare dso_local i32 @mbfl_memory_device_strncat(%struct.TYPE_13__*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
