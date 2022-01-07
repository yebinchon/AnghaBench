; ModuleID = '/home/carl/AnghaBench/php-src/ext/mbstring/libmbfl/mbfl/extr_mbfilter.c_mime_header_encoder_result.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/mbstring/libmbfl/mbfl/extr_mbfilter.c_mime_header_encoder_result.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mime_header_encoder_data = type { i32, i32, i8*, i32, %struct.TYPE_11__, i64, i64, %struct.TYPE_12__, %struct.TYPE_9__*, %struct.TYPE_10__* }
%struct.TYPE_11__ = type { i64 }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_9__ = type { i32 (%struct.TYPE_9__*)* }
%struct.TYPE_10__ = type { i32 (%struct.TYPE_10__*)* }

@.str = private unnamed_addr constant [3 x i8] c"?=\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @mime_header_encoder_result(%struct.mime_header_encoder_data* %0, i32* %1) #0 {
  %3 = alloca %struct.mime_header_encoder_data*, align 8
  %4 = alloca i32*, align 8
  store %struct.mime_header_encoder_data* %0, %struct.mime_header_encoder_data** %3, align 8
  store i32* %1, i32** %4, align 8
  %5 = load %struct.mime_header_encoder_data*, %struct.mime_header_encoder_data** %3, align 8
  %6 = getelementptr inbounds %struct.mime_header_encoder_data, %struct.mime_header_encoder_data* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = icmp sge i32 %7, 10
  br i1 %8, label %9, label %31

9:                                                ; preds = %2
  %10 = load %struct.mime_header_encoder_data*, %struct.mime_header_encoder_data** %3, align 8
  %11 = getelementptr inbounds %struct.mime_header_encoder_data, %struct.mime_header_encoder_data* %10, i32 0, i32 9
  %12 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %12, i32 0, i32 0
  %14 = load i32 (%struct.TYPE_10__*)*, i32 (%struct.TYPE_10__*)** %13, align 8
  %15 = load %struct.mime_header_encoder_data*, %struct.mime_header_encoder_data** %3, align 8
  %16 = getelementptr inbounds %struct.mime_header_encoder_data, %struct.mime_header_encoder_data* %15, i32 0, i32 9
  %17 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %18 = call i32 %14(%struct.TYPE_10__* %17)
  %19 = load %struct.mime_header_encoder_data*, %struct.mime_header_encoder_data** %3, align 8
  %20 = getelementptr inbounds %struct.mime_header_encoder_data, %struct.mime_header_encoder_data* %19, i32 0, i32 8
  %21 = load %struct.TYPE_9__*, %struct.TYPE_9__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %21, i32 0, i32 0
  %23 = load i32 (%struct.TYPE_9__*)*, i32 (%struct.TYPE_9__*)** %22, align 8
  %24 = load %struct.mime_header_encoder_data*, %struct.mime_header_encoder_data** %3, align 8
  %25 = getelementptr inbounds %struct.mime_header_encoder_data, %struct.mime_header_encoder_data* %24, i32 0, i32 8
  %26 = load %struct.TYPE_9__*, %struct.TYPE_9__** %25, align 8
  %27 = call i32 %23(%struct.TYPE_9__* %26)
  %28 = load %struct.mime_header_encoder_data*, %struct.mime_header_encoder_data** %3, align 8
  %29 = getelementptr inbounds %struct.mime_header_encoder_data, %struct.mime_header_encoder_data* %28, i32 0, i32 4
  %30 = call i32 @mbfl_memory_device_strncat(%struct.TYPE_11__* %29, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 2)
  br label %82

31:                                               ; preds = %2
  %32 = load %struct.mime_header_encoder_data*, %struct.mime_header_encoder_data** %3, align 8
  %33 = getelementptr inbounds %struct.mime_header_encoder_data, %struct.mime_header_encoder_data* %32, i32 0, i32 7
  %34 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = icmp sgt i32 %35, 0
  br i1 %36, label %37, label %81

37:                                               ; preds = %31
  %38 = load %struct.mime_header_encoder_data*, %struct.mime_header_encoder_data** %3, align 8
  %39 = getelementptr inbounds %struct.mime_header_encoder_data, %struct.mime_header_encoder_data* %38, i32 0, i32 4
  %40 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp sgt i64 %41, 0
  br i1 %42, label %43, label %75

43:                                               ; preds = %37
  %44 = load %struct.mime_header_encoder_data*, %struct.mime_header_encoder_data** %3, align 8
  %45 = getelementptr inbounds %struct.mime_header_encoder_data, %struct.mime_header_encoder_data* %44, i32 0, i32 4
  %46 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load %struct.mime_header_encoder_data*, %struct.mime_header_encoder_data** %3, align 8
  %49 = getelementptr inbounds %struct.mime_header_encoder_data, %struct.mime_header_encoder_data* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = sext i32 %50 to i64
  %52 = sub nsw i64 %47, %51
  %53 = load %struct.mime_header_encoder_data*, %struct.mime_header_encoder_data** %3, align 8
  %54 = getelementptr inbounds %struct.mime_header_encoder_data, %struct.mime_header_encoder_data* %53, i32 0, i32 7
  %55 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = sext i32 %56 to i64
  %58 = add nsw i64 %52, %57
  %59 = icmp sgt i64 %58, 74
  br i1 %59, label %60, label %70

60:                                               ; preds = %43
  %61 = load %struct.mime_header_encoder_data*, %struct.mime_header_encoder_data** %3, align 8
  %62 = getelementptr inbounds %struct.mime_header_encoder_data, %struct.mime_header_encoder_data* %61, i32 0, i32 4
  %63 = load %struct.mime_header_encoder_data*, %struct.mime_header_encoder_data** %3, align 8
  %64 = getelementptr inbounds %struct.mime_header_encoder_data, %struct.mime_header_encoder_data* %63, i32 0, i32 2
  %65 = load i8*, i8** %64, align 8
  %66 = load %struct.mime_header_encoder_data*, %struct.mime_header_encoder_data** %3, align 8
  %67 = getelementptr inbounds %struct.mime_header_encoder_data, %struct.mime_header_encoder_data* %66, i32 0, i32 3
  %68 = load i32, i32* %67, align 8
  %69 = call i32 @mbfl_memory_device_strncat(%struct.TYPE_11__* %62, i8* %65, i32 %68)
  br label %74

70:                                               ; preds = %43
  %71 = load %struct.mime_header_encoder_data*, %struct.mime_header_encoder_data** %3, align 8
  %72 = getelementptr inbounds %struct.mime_header_encoder_data, %struct.mime_header_encoder_data* %71, i32 0, i32 4
  %73 = call i32 @mbfl_memory_device_output(i32 32, %struct.TYPE_11__* %72)
  br label %74

74:                                               ; preds = %70, %60
  br label %75

75:                                               ; preds = %74, %37
  %76 = load %struct.mime_header_encoder_data*, %struct.mime_header_encoder_data** %3, align 8
  %77 = getelementptr inbounds %struct.mime_header_encoder_data, %struct.mime_header_encoder_data* %76, i32 0, i32 4
  %78 = load %struct.mime_header_encoder_data*, %struct.mime_header_encoder_data** %3, align 8
  %79 = getelementptr inbounds %struct.mime_header_encoder_data, %struct.mime_header_encoder_data* %78, i32 0, i32 7
  %80 = call i32 @mbfl_memory_device_devcat(%struct.TYPE_11__* %77, %struct.TYPE_12__* %79)
  br label %81

81:                                               ; preds = %75, %31
  br label %82

82:                                               ; preds = %81, %9
  %83 = load %struct.mime_header_encoder_data*, %struct.mime_header_encoder_data** %3, align 8
  %84 = getelementptr inbounds %struct.mime_header_encoder_data, %struct.mime_header_encoder_data* %83, i32 0, i32 7
  %85 = call i32 @mbfl_memory_device_reset(%struct.TYPE_12__* %84)
  %86 = load %struct.mime_header_encoder_data*, %struct.mime_header_encoder_data** %3, align 8
  %87 = getelementptr inbounds %struct.mime_header_encoder_data, %struct.mime_header_encoder_data* %86, i32 0, i32 6
  store i64 0, i64* %87, align 8
  %88 = load %struct.mime_header_encoder_data*, %struct.mime_header_encoder_data** %3, align 8
  %89 = getelementptr inbounds %struct.mime_header_encoder_data, %struct.mime_header_encoder_data* %88, i32 0, i32 1
  store i32 0, i32* %89, align 4
  %90 = load %struct.mime_header_encoder_data*, %struct.mime_header_encoder_data** %3, align 8
  %91 = getelementptr inbounds %struct.mime_header_encoder_data, %struct.mime_header_encoder_data* %90, i32 0, i32 0
  store i32 0, i32* %91, align 8
  %92 = load %struct.mime_header_encoder_data*, %struct.mime_header_encoder_data** %3, align 8
  %93 = getelementptr inbounds %struct.mime_header_encoder_data, %struct.mime_header_encoder_data* %92, i32 0, i32 5
  store i64 0, i64* %93, align 8
  %94 = load %struct.mime_header_encoder_data*, %struct.mime_header_encoder_data** %3, align 8
  %95 = getelementptr inbounds %struct.mime_header_encoder_data, %struct.mime_header_encoder_data* %94, i32 0, i32 4
  %96 = load i32*, i32** %4, align 8
  %97 = call i32* @mbfl_memory_device_result(%struct.TYPE_11__* %95, i32* %96)
  ret i32* %97
}

declare dso_local i32 @mbfl_memory_device_strncat(%struct.TYPE_11__*, i8*, i32) #1

declare dso_local i32 @mbfl_memory_device_output(i32, %struct.TYPE_11__*) #1

declare dso_local i32 @mbfl_memory_device_devcat(%struct.TYPE_11__*, %struct.TYPE_12__*) #1

declare dso_local i32 @mbfl_memory_device_reset(%struct.TYPE_12__*) #1

declare dso_local i32* @mbfl_memory_device_result(%struct.TYPE_11__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
