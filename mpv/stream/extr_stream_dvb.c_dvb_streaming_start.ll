; ModuleID = '/home/carl/AnghaBench/mpv/stream/extr_stream_dvb.c_dvb_streaming_start.c'
source_filename = "/home/carl/AnghaBench/mpv/stream/extr_stream_dvb.c_dvb_streaming_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { %struct.TYPE_18__* }
%struct.TYPE_18__ = type { %struct.TYPE_15__*, i32, %struct.TYPE_17__* }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_17__ = type { i64, %struct.TYPE_14__* }
%struct.TYPE_14__ = type { %struct.TYPE_19__* }
%struct.TYPE_19__ = type { i32, i32, %struct.TYPE_20__* }
%struct.TYPE_20__ = type { i32, i32 }

@.str = private unnamed_addr constant [46 x i8] c"\0D\0Advb_streaming_start(PROG: %s, ADAPTER: %d)\0A\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"\0A\0ADVBIN: no such channel \22%s\22\0A\0A\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"Tuning to channel \22%s\22...\0A\00", align 1
@.str.3 = private unnamed_addr constant [37 x i8] c"PROGRAM NUMBER %d: name=%s, freq=%u\0A\00", align 1
@.str.4 = private unnamed_addr constant [39 x i8] c"ERROR, COULDN'T SET CHANNEL  %i: \22%s\22\0A\00", align 1
@.str.5 = private unnamed_addr constant [42 x i8] c"SUCCESSFUL EXIT from dvb_streaming_start\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_16__*, i8*)* @dvb_streaming_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dvb_streaming_start(%struct.TYPE_16__* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_16__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_20__*, align 8
  %8 = alloca %struct.TYPE_18__*, align 8
  %9 = alloca %struct.TYPE_17__*, align 8
  %10 = alloca %struct.TYPE_19__*, align 8
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.TYPE_20__* null, %struct.TYPE_20__** %7, align 8
  %11 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %11, i32 0, i32 0
  %13 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  store %struct.TYPE_18__* %13, %struct.TYPE_18__** %8, align 8
  %14 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %15 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %14, i32 0, i32 2
  %16 = load %struct.TYPE_17__*, %struct.TYPE_17__** %15, align 8
  store %struct.TYPE_17__* %16, %struct.TYPE_17__** %9, align 8
  %17 = load i8*, i8** %5, align 8
  %18 = icmp eq i8* %17, null
  br i1 %18, label %19, label %20

19:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %139

20:                                               ; preds = %2
  %21 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %22 = load i8*, i8** %5, align 8
  %23 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %24 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = call i32 (%struct.TYPE_16__*, i8*, ...) @MP_VERBOSE(%struct.TYPE_16__* %21, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i8* %22, i32 %25)
  %27 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %28 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %27, i32 0, i32 1
  %29 = load %struct.TYPE_14__*, %struct.TYPE_14__** %28, align 8
  %30 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %31 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %29, i64 %32
  %34 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %33, i32 0, i32 0
  %35 = load %struct.TYPE_19__*, %struct.TYPE_19__** %34, align 8
  store %struct.TYPE_19__* %35, %struct.TYPE_19__** %10, align 8
  store i32 0, i32* %6, align 4
  br label %36

36:                                               ; preds = %62, %20
  %37 = load i32, i32* %6, align 4
  %38 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %39 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = icmp slt i32 %37, %40
  br i1 %41, label %42, label %65

42:                                               ; preds = %36
  %43 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %44 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %43, i32 0, i32 2
  %45 = load %struct.TYPE_20__*, %struct.TYPE_20__** %44, align 8
  %46 = load i32, i32* %6, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %45, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load i8*, i8** %5, align 8
  %52 = call i32 @strcmp(i32 %50, i8* %51)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %61, label %54

54:                                               ; preds = %42
  %55 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %56 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %55, i32 0, i32 2
  %57 = load %struct.TYPE_20__*, %struct.TYPE_20__** %56, align 8
  %58 = load i32, i32* %6, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %57, i64 %59
  store %struct.TYPE_20__* %60, %struct.TYPE_20__** %7, align 8
  br label %65

61:                                               ; preds = %42
  br label %62

62:                                               ; preds = %61
  %63 = load i32, i32* %6, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %6, align 4
  br label %36

65:                                               ; preds = %54, %36
  %66 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %67 = icmp eq %struct.TYPE_20__* %66, null
  br i1 %67, label %68, label %72

68:                                               ; preds = %65
  %69 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %70 = load i8*, i8** %5, align 8
  %71 = call i32 (%struct.TYPE_16__*, i8*, ...) @MP_ERR(%struct.TYPE_16__* %69, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i8* %70)
  store i32 0, i32* %3, align 4
  br label %139

72:                                               ; preds = %65
  %73 = load i32, i32* %6, align 4
  %74 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %75 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %74, i32 0, i32 1
  store i32 %73, i32* %75, align 4
  %76 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %77 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %80 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = add nsw i32 %78, %81
  %83 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %84 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %83, i32 0, i32 0
  %85 = load %struct.TYPE_15__*, %struct.TYPE_15__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = add nsw i32 %82, %87
  %89 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %90 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = srem i32 %88, %91
  %93 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %94 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %93, i32 0, i32 1
  store i32 %92, i32* %94, align 4
  %95 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %96 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %95, i32 0, i32 2
  %97 = load %struct.TYPE_20__*, %struct.TYPE_20__** %96, align 8
  %98 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %99 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %97, i64 %101
  store %struct.TYPE_20__* %102, %struct.TYPE_20__** %7, align 8
  %103 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %104 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %105 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = call i32 @MP_INFO(%struct.TYPE_16__* %103, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i32 %106)
  %108 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %109 = load i32, i32* %6, align 4
  %110 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %111 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %114 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = call i32 (%struct.TYPE_16__*, i8*, ...) @MP_VERBOSE(%struct.TYPE_16__* %108, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0), i32 %109, i32 %112, i32 %115)
  %117 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %118 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %119 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %122 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 4
  %124 = sext i32 %123 to i64
  %125 = call i32 @dvb_set_channel(%struct.TYPE_16__* %117, i64 %120, i64 %124)
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %136, label %127

127:                                              ; preds = %72
  %128 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %129 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %130 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 4
  %132 = load i8*, i8** %5, align 8
  %133 = call i32 (%struct.TYPE_16__*, i8*, ...) @MP_ERR(%struct.TYPE_16__* %128, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i64 0, i64 0), i32 %131, i8* %132)
  %134 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %135 = call i32 @dvbin_close(%struct.TYPE_16__* %134)
  store i32 0, i32* %3, align 4
  br label %139

136:                                              ; preds = %72
  %137 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %138 = call i32 (%struct.TYPE_16__*, i8*, ...) @MP_VERBOSE(%struct.TYPE_16__* %137, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.5, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %139

139:                                              ; preds = %136, %127, %68, %19
  %140 = load i32, i32* %3, align 4
  ret i32 %140
}

declare dso_local i32 @MP_VERBOSE(%struct.TYPE_16__*, i8*, ...) #1

declare dso_local i32 @strcmp(i32, i8*) #1

declare dso_local i32 @MP_ERR(%struct.TYPE_16__*, i8*, ...) #1

declare dso_local i32 @MP_INFO(%struct.TYPE_16__*, i8*, i32) #1

declare dso_local i32 @dvb_set_channel(%struct.TYPE_16__*, i64, i64) #1

declare dso_local i32 @dvbin_close(%struct.TYPE_16__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
