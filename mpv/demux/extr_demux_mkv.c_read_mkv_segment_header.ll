; ModuleID = '/home/carl/AnghaBench/mpv/demux/extr_demux_mkv.c_read_mkv_segment_header.c'
source_filename = "/home/carl/AnghaBench/mpv/demux/extr_demux_mkv.c_read_mkv_segment_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { %struct.TYPE_14__*, %struct.TYPE_15__* }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_15__ = type { i32 }

@MATROSKA_ID_SEGMENT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [19 x i8] c"segment not found\0A\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"+ a segment...\0A\00", align 1
@EBML_UINT_INVALID = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [14 x i8] c"  (skipping)\0A\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"Failed to seek in file\0A\00", align 1
@.str.4 = private unnamed_addr constant [35 x i8] c"End of file, no further segments.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_16__*, i64*)* @read_mkv_segment_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_mkv_segment_header(%struct.TYPE_16__* %0, i64* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_16__*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca %struct.TYPE_15__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %4, align 8
  store i64* %1, i64** %5, align 8
  %9 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %9, i32 0, i32 1
  %11 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  store %struct.TYPE_15__* %11, %struct.TYPE_15__** %6, align 8
  store i32 0, i32* %7, align 4
  %12 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %15 = icmp ne %struct.TYPE_14__* %14, null
  br i1 %15, label %16, label %22

16:                                               ; preds = %2
  %17 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_14__*, %struct.TYPE_14__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %7, align 4
  br label %22

22:                                               ; preds = %16, %2
  br label %23

23:                                               ; preds = %87, %22
  %24 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = icmp ne i32 %26, 0
  %28 = xor i1 %27, true
  br i1 %28, label %29, label %88

29:                                               ; preds = %23
  %30 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %31 = call i64 @ebml_read_id(%struct.TYPE_15__* %30)
  %32 = load i64, i64* @MATROSKA_ID_SEGMENT, align 8
  %33 = icmp ne i64 %31, %32
  br i1 %33, label %34, label %37

34:                                               ; preds = %29
  %35 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %36 = call i32 @MP_VERBOSE(%struct.TYPE_16__* %35, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %91

37:                                               ; preds = %29
  %38 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %39 = call i32 @MP_DBG(%struct.TYPE_16__* %38, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  %40 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %41 = call i64 @ebml_read_length(%struct.TYPE_15__* %40)
  store i64 %41, i64* %8, align 8
  %42 = load i64, i64* %8, align 8
  %43 = load i64, i64* @EBML_UINT_INVALID, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %46

45:                                               ; preds = %37
  br label %51

46:                                               ; preds = %37
  %47 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %48 = call i64 @stream_tell(%struct.TYPE_15__* %47)
  %49 = load i64, i64* %8, align 8
  %50 = add nsw i64 %48, %49
  br label %51

51:                                               ; preds = %46, %45
  %52 = phi i64 [ 0, %45 ], [ %50, %46 ]
  %53 = load i64*, i64** %5, align 8
  store i64 %52, i64* %53, align 8
  %54 = load i32, i32* %7, align 4
  %55 = icmp sle i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %51
  store i32 1, i32* %3, align 4
  br label %91

57:                                               ; preds = %51
  %58 = load i32, i32* %7, align 4
  %59 = add nsw i32 %58, -1
  store i32 %59, i32* %7, align 4
  %60 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %61 = call i32 @MP_DBG(%struct.TYPE_16__* %60, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
  %62 = load i64*, i64** %5, align 8
  %63 = load i64, i64* %62, align 8
  %64 = icmp sle i64 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %57
  br label %88

66:                                               ; preds = %57
  %67 = load i64*, i64** %5, align 8
  %68 = load i64, i64* %67, align 8
  %69 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %70 = call i64 @stream_get_size(%struct.TYPE_15__* %69)
  %71 = icmp sge i64 %68, %70
  br i1 %71, label %72, label %73

72:                                               ; preds = %66
  store i32 0, i32* %3, align 4
  br label %91

73:                                               ; preds = %66
  %74 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %75 = load i64*, i64** %5, align 8
  %76 = load i64, i64* %75, align 8
  %77 = call i32 @stream_seek(%struct.TYPE_15__* %74, i64 %76)
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %82, label %79

79:                                               ; preds = %73
  %80 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %81 = call i32 @MP_WARN(%struct.TYPE_16__* %80, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %91

82:                                               ; preds = %73
  %83 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %84 = call i32 @read_ebml_header(%struct.TYPE_16__* %83)
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %87, label %86

86:                                               ; preds = %82
  store i32 0, i32* %3, align 4
  br label %91

87:                                               ; preds = %82
  br label %23

88:                                               ; preds = %65, %23
  %89 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %90 = call i32 @MP_VERBOSE(%struct.TYPE_16__* %89, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %91

91:                                               ; preds = %88, %86, %79, %72, %56, %34
  %92 = load i32, i32* %3, align 4
  ret i32 %92
}

declare dso_local i64 @ebml_read_id(%struct.TYPE_15__*) #1

declare dso_local i32 @MP_VERBOSE(%struct.TYPE_16__*, i8*) #1

declare dso_local i32 @MP_DBG(%struct.TYPE_16__*, i8*) #1

declare dso_local i64 @ebml_read_length(%struct.TYPE_15__*) #1

declare dso_local i64 @stream_tell(%struct.TYPE_15__*) #1

declare dso_local i64 @stream_get_size(%struct.TYPE_15__*) #1

declare dso_local i32 @stream_seek(%struct.TYPE_15__*, i64) #1

declare dso_local i32 @MP_WARN(%struct.TYPE_16__*, i8*) #1

declare dso_local i32 @read_ebml_header(%struct.TYPE_16__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
