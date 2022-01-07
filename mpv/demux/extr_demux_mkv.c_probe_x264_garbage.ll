; ModuleID = '/home/carl/AnghaBench/mpv/demux/extr_demux_mkv.c_probe_x264_garbage.c'
source_filename = "/home/carl/AnghaBench/mpv/demux/extr_demux_mkv.c_probe_x264_garbage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i32, %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i32, i32, %struct.block_info*, %struct.TYPE_15__** }
%struct.block_info = type { i32, %struct.TYPE_13__**, %struct.TYPE_15__* }
%struct.TYPE_13__ = type { i32, i32 }
%struct.TYPE_15__ = type { %struct.sh_stream* }
%struct.sh_stream = type { i64, %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i32, i64 }
%struct.TYPE_18__ = type { i64, i32, i32, i32 }

@STREAM_VIDEO = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [5 x i8] c"h264\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_17__*)* @probe_x264_garbage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @probe_x264_garbage(%struct.TYPE_17__* %0) #0 {
  %2 = alloca %struct.TYPE_17__*, align 8
  %3 = alloca %struct.TYPE_16__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_15__*, align 8
  %6 = alloca %struct.sh_stream*, align 8
  %7 = alloca %struct.block_info*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_18__, align 8
  %10 = alloca %struct.TYPE_18__, align 8
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %2, align 8
  %11 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %12 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %11, i32 0, i32 1
  %13 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  store %struct.TYPE_16__* %13, %struct.TYPE_16__** %3, align 8
  store i32 0, i32* %4, align 4
  br label %14

14:                                               ; preds = %152, %1
  %15 = load i32, i32* %4, align 4
  %16 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp slt i32 %15, %18
  br i1 %19, label %20, label %155

20:                                               ; preds = %14
  %21 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %21, i32 0, i32 3
  %23 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %22, align 8
  %24 = load i32, i32* %4, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.TYPE_15__*, %struct.TYPE_15__** %23, i64 %25
  %27 = load %struct.TYPE_15__*, %struct.TYPE_15__** %26, align 8
  store %struct.TYPE_15__* %27, %struct.TYPE_15__** %5, align 8
  %28 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %28, i32 0, i32 0
  %30 = load %struct.sh_stream*, %struct.sh_stream** %29, align 8
  store %struct.sh_stream* %30, %struct.sh_stream** %6, align 8
  %31 = load %struct.sh_stream*, %struct.sh_stream** %6, align 8
  %32 = icmp ne %struct.sh_stream* %31, null
  br i1 %32, label %33, label %39

33:                                               ; preds = %20
  %34 = load %struct.sh_stream*, %struct.sh_stream** %6, align 8
  %35 = getelementptr inbounds %struct.sh_stream, %struct.sh_stream* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @STREAM_VIDEO, align 8
  %38 = icmp ne i64 %36, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %33, %20
  br label %152

40:                                               ; preds = %33
  %41 = load %struct.sh_stream*, %struct.sh_stream** %6, align 8
  %42 = getelementptr inbounds %struct.sh_stream, %struct.sh_stream* %41, i32 0, i32 1
  %43 = load %struct.TYPE_14__*, %struct.TYPE_14__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %56

47:                                               ; preds = %40
  %48 = load %struct.sh_stream*, %struct.sh_stream** %6, align 8
  %49 = getelementptr inbounds %struct.sh_stream, %struct.sh_stream* %48, i32 0, i32 1
  %50 = load %struct.TYPE_14__*, %struct.TYPE_14__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = call i64 @strcmp(i64 %52, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %47
  br label %152

56:                                               ; preds = %47, %40
  store %struct.block_info* null, %struct.block_info** %7, align 8
  store i32 0, i32* %8, align 4
  br label %57

57:                                               ; preds = %90, %56
  %58 = load i32, i32* %8, align 4
  %59 = icmp slt i32 %58, 100
  br i1 %59, label %60, label %93

60:                                               ; preds = %57
  %61 = load i32, i32* %8, align 4
  %62 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %63 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = icmp sge i32 %61, %64
  br i1 %65, label %66, label %71

66:                                               ; preds = %60
  %67 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %68 = call i32 @read_next_block_into_queue(%struct.TYPE_17__* %67)
  %69 = icmp slt i32 %68, 1
  br i1 %69, label %70, label %71

70:                                               ; preds = %66
  br label %93

71:                                               ; preds = %66, %60
  %72 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %73 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %72, i32 0, i32 2
  %74 = load %struct.block_info*, %struct.block_info** %73, align 8
  %75 = load i32, i32* %8, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.block_info, %struct.block_info* %74, i64 %76
  %78 = getelementptr inbounds %struct.block_info, %struct.block_info* %77, i32 0, i32 2
  %79 = load %struct.TYPE_15__*, %struct.TYPE_15__** %78, align 8
  %80 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %81 = icmp eq %struct.TYPE_15__* %79, %80
  br i1 %81, label %82, label %89

82:                                               ; preds = %71
  %83 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %84 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %83, i32 0, i32 2
  %85 = load %struct.block_info*, %struct.block_info** %84, align 8
  %86 = load i32, i32* %8, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds %struct.block_info, %struct.block_info* %85, i64 %87
  store %struct.block_info* %88, %struct.block_info** %7, align 8
  br label %93

89:                                               ; preds = %71
  br label %90

90:                                               ; preds = %89
  %91 = load i32, i32* %8, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %8, align 4
  br label %57

93:                                               ; preds = %82, %70, %57
  %94 = load %struct.block_info*, %struct.block_info** %7, align 8
  %95 = icmp ne %struct.block_info* %94, null
  br i1 %95, label %96, label %101

96:                                               ; preds = %93
  %97 = load %struct.block_info*, %struct.block_info** %7, align 8
  %98 = getelementptr inbounds %struct.block_info, %struct.block_info* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = icmp slt i32 %99, 1
  br i1 %100, label %101, label %102

101:                                              ; preds = %96, %93
  br label %152

102:                                              ; preds = %96
  %103 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %9, i32 0, i32 0
  %104 = load %struct.block_info*, %struct.block_info** %7, align 8
  %105 = getelementptr inbounds %struct.block_info, %struct.block_info* %104, i32 0, i32 1
  %106 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %106, i64 0
  %108 = load %struct.TYPE_13__*, %struct.TYPE_13__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = sext i32 %110 to i64
  store i64 %111, i64* %103, align 8
  %112 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %9, i32 0, i32 1
  %113 = load %struct.block_info*, %struct.block_info** %7, align 8
  %114 = getelementptr inbounds %struct.block_info, %struct.block_info* %113, i32 0, i32 1
  %115 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %115, i64 0
  %117 = load %struct.TYPE_13__*, %struct.TYPE_13__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  store i32 %119, i32* %112, align 8
  %120 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %9, i32 0, i32 2
  store i32 0, i32* %120, align 4
  %121 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %9, i32 0, i32 3
  store i32 0, i32* %121, align 8
  %122 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %123 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  call void @demux_mkv_decode(%struct.TYPE_18__* sret %10, i32 %124, %struct.TYPE_15__* %125, %struct.TYPE_18__* byval(%struct.TYPE_18__) align 8 %9, i32 1)
  %126 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %10, i32 0, i32 0
  %127 = load i64, i64* %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %10, i32 0, i32 1
  %129 = load i32, i32* %128, align 8
  %130 = call i32 @new_demux_packet_from(i64 %127, i32 %129)
  %131 = load %struct.sh_stream*, %struct.sh_stream** %6, align 8
  %132 = getelementptr inbounds %struct.sh_stream, %struct.sh_stream* %131, i32 0, i32 1
  %133 = load %struct.TYPE_14__*, %struct.TYPE_14__** %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %133, i32 0, i32 0
  store i32 %130, i32* %134, align 8
  %135 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %136 = load %struct.sh_stream*, %struct.sh_stream** %6, align 8
  %137 = getelementptr inbounds %struct.sh_stream, %struct.sh_stream* %136, i32 0, i32 1
  %138 = load %struct.TYPE_14__*, %struct.TYPE_14__** %137, align 8
  %139 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  %141 = call i32 @talloc_steal(%struct.TYPE_16__* %135, i32 %140)
  %142 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %10, i32 0, i32 0
  %143 = load i64, i64* %142, align 8
  %144 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %9, i32 0, i32 0
  %145 = load i64, i64* %144, align 8
  %146 = icmp ne i64 %143, %145
  br i1 %146, label %147, label %151

147:                                              ; preds = %102
  %148 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %10, i32 0, i32 0
  %149 = load i64, i64* %148, align 8
  %150 = call i32 @talloc_free(i64 %149)
  br label %151

151:                                              ; preds = %147, %102
  br label %152

152:                                              ; preds = %151, %101, %55, %39
  %153 = load i32, i32* %4, align 4
  %154 = add nsw i32 %153, 1
  store i32 %154, i32* %4, align 4
  br label %14

155:                                              ; preds = %14
  ret void
}

declare dso_local i64 @strcmp(i64, i8*) #1

declare dso_local i32 @read_next_block_into_queue(%struct.TYPE_17__*) #1

declare dso_local void @demux_mkv_decode(%struct.TYPE_18__* sret, i32, %struct.TYPE_15__*, %struct.TYPE_18__* byval(%struct.TYPE_18__) align 8, i32) #1

declare dso_local i32 @new_demux_packet_from(i64, i32) #1

declare dso_local i32 @talloc_steal(%struct.TYPE_16__*, i32) #1

declare dso_local i32 @talloc_free(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
