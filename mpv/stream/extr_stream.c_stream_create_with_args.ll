; ModuleID = '/home/carl/AnghaBench/mpv/stream/extr_stream.c_stream_create_with_args.c'
source_filename = "/home/carl/AnghaBench/mpv/stream/extr_stream.c_stream_create_with_args.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stream_open_args = type { i32, i32, %struct.TYPE_2__*, i32, i64 }
%struct.TYPE_2__ = type { i32 }
%struct.stream = type { i32 }
%struct.mp_log = type { i32 }

@STREAM_NO_MATCH = common dso_local global i32 0, align 4
@stream_list = common dso_local global i64* null, align 8
@STREAM_OK = common dso_local global i32 0, align 4
@STREAM_UNSUPPORTED = common dso_local global i32 0, align 4
@STREAM_UNSAFE = common dso_local global i32 0, align 4
@STREAM_SILENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"!stream\00", align 1
@.str.1 = private unnamed_addr constant [137 x i8] c"\0ARefusing to load potentially unsafe URL from a playlist.\0AUse --playlist=file or the --load-unsafe-playlists option to load it anyway.\0A\0A\00", align 1
@.str.2 = private unnamed_addr constant [42 x i8] c"No protocol handler found to open URL %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [70 x i8] c"The protocol is either unsupported, or was disabled at compile-time.\0A\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"Failed to open %s.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @stream_create_with_args(%struct.stream_open_args* %0, %struct.stream** %1) #0 {
  %3 = alloca %struct.stream_open_args*, align 8
  %4 = alloca %struct.stream**, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.mp_log*, align 8
  store %struct.stream_open_args* %0, %struct.stream_open_args** %3, align 8
  store %struct.stream** %1, %struct.stream*** %4, align 8
  %8 = load %struct.stream_open_args*, %struct.stream_open_args** %3, align 8
  %9 = getelementptr inbounds %struct.stream_open_args, %struct.stream_open_args* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @assert(i32 %10)
  %12 = load i32, i32* @STREAM_NO_MATCH, align 4
  store i32 %12, i32* %5, align 4
  %13 = load %struct.stream**, %struct.stream*** %4, align 8
  store %struct.stream* null, %struct.stream** %13, align 8
  %14 = load %struct.stream_open_args*, %struct.stream_open_args** %3, align 8
  %15 = getelementptr inbounds %struct.stream_open_args, %struct.stream_open_args* %14, i32 0, i32 4
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %25

18:                                               ; preds = %2
  %19 = load %struct.stream_open_args*, %struct.stream_open_args** %3, align 8
  %20 = getelementptr inbounds %struct.stream_open_args, %struct.stream_open_args* %19, i32 0, i32 4
  %21 = load i64, i64* %20, align 8
  %22 = load %struct.stream_open_args*, %struct.stream_open_args** %3, align 8
  %23 = load %struct.stream**, %struct.stream*** %4, align 8
  %24 = call i32 @stream_create_instance(i64 %21, %struct.stream_open_args* %22, %struct.stream** %23)
  store i32 %24, i32* %5, align 4
  br label %65

25:                                               ; preds = %2
  store i32 0, i32* %6, align 4
  br label %26

26:                                               ; preds = %61, %25
  %27 = load i64*, i64** @stream_list, align 8
  %28 = load i32, i32* %6, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i64, i64* %27, i64 %29
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %64

33:                                               ; preds = %26
  %34 = load i64*, i64** @stream_list, align 8
  %35 = load i32, i32* %6, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i64, i64* %34, i64 %36
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.stream_open_args*, %struct.stream_open_args** %3, align 8
  %40 = load %struct.stream**, %struct.stream*** %4, align 8
  %41 = call i32 @stream_create_instance(i64 %38, %struct.stream_open_args* %39, %struct.stream** %40)
  store i32 %41, i32* %5, align 4
  %42 = load i32, i32* %5, align 4
  %43 = load i32, i32* @STREAM_OK, align 4
  %44 = icmp eq i32 %42, %43
  br i1 %44, label %45, label %46

45:                                               ; preds = %33
  br label %64

46:                                               ; preds = %33
  %47 = load i32, i32* %5, align 4
  %48 = load i32, i32* @STREAM_NO_MATCH, align 4
  %49 = icmp eq i32 %47, %48
  br i1 %49, label %54, label %50

50:                                               ; preds = %46
  %51 = load i32, i32* %5, align 4
  %52 = load i32, i32* @STREAM_UNSUPPORTED, align 4
  %53 = icmp eq i32 %51, %52
  br i1 %53, label %54, label %55

54:                                               ; preds = %50, %46
  br label %61

55:                                               ; preds = %50
  %56 = load i32, i32* %5, align 4
  %57 = load i32, i32* @STREAM_UNSAFE, align 4
  %58 = icmp eq i32 %56, %57
  br i1 %58, label %59, label %60

59:                                               ; preds = %55
  br label %61

60:                                               ; preds = %55
  br label %64

61:                                               ; preds = %59, %54
  %62 = load i32, i32* %6, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %6, align 4
  br label %26

64:                                               ; preds = %60, %45, %26
  br label %65

65:                                               ; preds = %64, %18
  %66 = load %struct.stream**, %struct.stream*** %4, align 8
  %67 = load %struct.stream*, %struct.stream** %66, align 8
  %68 = icmp ne %struct.stream* %67, null
  br i1 %68, label %121, label %69

69:                                               ; preds = %65
  %70 = load %struct.stream_open_args*, %struct.stream_open_args** %3, align 8
  %71 = getelementptr inbounds %struct.stream_open_args, %struct.stream_open_args* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = load i32, i32* @STREAM_SILENT, align 4
  %74 = and i32 %72, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %121, label %76

76:                                               ; preds = %69
  %77 = load %struct.stream_open_args*, %struct.stream_open_args** %3, align 8
  %78 = getelementptr inbounds %struct.stream_open_args, %struct.stream_open_args* %77, i32 0, i32 3
  %79 = load i32, i32* %78, align 8
  %80 = call i32 @mp_cancel_test(i32 %79)
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %121, label %82

82:                                               ; preds = %76
  %83 = load %struct.stream_open_args*, %struct.stream_open_args** %3, align 8
  %84 = getelementptr inbounds %struct.stream_open_args, %struct.stream_open_args* %83, i32 0, i32 2
  %85 = load %struct.TYPE_2__*, %struct.TYPE_2__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = call %struct.mp_log* @mp_log_new(i32* null, i32 %87, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  store %struct.mp_log* %88, %struct.mp_log** %7, align 8
  %89 = load i32, i32* %5, align 4
  %90 = load i32, i32* @STREAM_UNSAFE, align 4
  %91 = icmp eq i32 %89, %90
  br i1 %91, label %92, label %95

92:                                               ; preds = %82
  %93 = load %struct.mp_log*, %struct.mp_log** %7, align 8
  %94 = call i32 (%struct.mp_log*, i8*, ...) @mp_err(%struct.mp_log* %93, i8* getelementptr inbounds ([137 x i8], [137 x i8]* @.str.1, i64 0, i64 0))
  br label %118

95:                                               ; preds = %82
  %96 = load i32, i32* %5, align 4
  %97 = load i32, i32* @STREAM_NO_MATCH, align 4
  %98 = icmp eq i32 %96, %97
  br i1 %98, label %103, label %99

99:                                               ; preds = %95
  %100 = load i32, i32* %5, align 4
  %101 = load i32, i32* @STREAM_UNSUPPORTED, align 4
  %102 = icmp eq i32 %100, %101
  br i1 %102, label %103, label %111

103:                                              ; preds = %99, %95
  %104 = load %struct.mp_log*, %struct.mp_log** %7, align 8
  %105 = load %struct.stream_open_args*, %struct.stream_open_args** %3, align 8
  %106 = getelementptr inbounds %struct.stream_open_args, %struct.stream_open_args* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = call i32 (%struct.mp_log*, i8*, ...) @mp_err(%struct.mp_log* %104, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0), i32 %107)
  %109 = load %struct.mp_log*, %struct.mp_log** %7, align 8
  %110 = call i32 (%struct.mp_log*, i8*, ...) @mp_err(%struct.mp_log* %109, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.3, i64 0, i64 0))
  br label %117

111:                                              ; preds = %99
  %112 = load %struct.mp_log*, %struct.mp_log** %7, align 8
  %113 = load %struct.stream_open_args*, %struct.stream_open_args** %3, align 8
  %114 = getelementptr inbounds %struct.stream_open_args, %struct.stream_open_args* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = call i32 (%struct.mp_log*, i8*, ...) @mp_err(%struct.mp_log* %112, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0), i32 %115)
  br label %117

117:                                              ; preds = %111, %103
  br label %118

118:                                              ; preds = %117, %92
  %119 = load %struct.mp_log*, %struct.mp_log** %7, align 8
  %120 = call i32 @talloc_free(%struct.mp_log* %119)
  br label %121

121:                                              ; preds = %118, %76, %69, %65
  %122 = load i32, i32* %5, align 4
  ret i32 %122
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @stream_create_instance(i64, %struct.stream_open_args*, %struct.stream**) #1

declare dso_local i32 @mp_cancel_test(i32) #1

declare dso_local %struct.mp_log* @mp_log_new(i32*, i32, i8*) #1

declare dso_local i32 @mp_err(%struct.mp_log*, i8*, ...) #1

declare dso_local i32 @talloc_free(%struct.mp_log*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
