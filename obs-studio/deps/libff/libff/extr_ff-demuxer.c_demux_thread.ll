; ModuleID = '/home/carl/AnghaBench/obs-studio/deps/libff/libff/extr_ff-demuxer.c_demux_thread.c'
source_filename = "/home/carl/AnghaBench/obs-studio/deps/libff/libff/extr_ff-demuxer.c_demux_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ff_demuxer = type { i32, %struct.TYPE_11__*, %struct.TYPE_11__*, %struct.TYPE_8__, %struct.TYPE_10__*, i32 }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_10__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i64, i64 }
%struct.ff_packet = type { i32, i32 }

@AVERROR_EOF = common dso_local global i32 0, align 4
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"av_read_frame() failed: %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*)* @demux_thread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @demux_thread(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.ff_demuxer*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ff_packet, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_9__*, align 8
  store i8* %0, i8** %2, align 8
  %8 = load i8*, i8** %2, align 8
  %9 = bitcast i8* %8 to %struct.ff_demuxer*
  store %struct.ff_demuxer* %9, %struct.ff_demuxer** %3, align 8
  %10 = bitcast %struct.ff_packet* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %10, i8 0, i64 8, i1 false)
  %11 = load %struct.ff_demuxer*, %struct.ff_demuxer** %3, align 8
  %12 = load %struct.ff_demuxer*, %struct.ff_demuxer** %3, align 8
  %13 = getelementptr inbounds %struct.ff_demuxer, %struct.ff_demuxer* %12, i32 0, i32 4
  %14 = call i32 @open_input(%struct.ff_demuxer* %11, %struct.TYPE_10__** %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %1
  br label %157

17:                                               ; preds = %1
  %18 = load %struct.ff_demuxer*, %struct.ff_demuxer** %3, align 8
  %19 = getelementptr inbounds %struct.ff_demuxer, %struct.ff_demuxer* %18, i32 0, i32 4
  %20 = load %struct.TYPE_10__*, %struct.TYPE_10__** %19, align 8
  %21 = load %struct.ff_demuxer*, %struct.ff_demuxer** %3, align 8
  %22 = getelementptr inbounds %struct.ff_demuxer, %struct.ff_demuxer* %21, i32 0, i32 5
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @av_dump_format(%struct.TYPE_10__* %20, i32 0, i32 %23, i32 0)
  %25 = load %struct.ff_demuxer*, %struct.ff_demuxer** %3, align 8
  %26 = call i32 @find_and_initialize_stream_decoders(%struct.ff_demuxer* %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %17
  br label %157

29:                                               ; preds = %17
  %30 = load %struct.ff_demuxer*, %struct.ff_demuxer** %3, align 8
  %31 = call i32 @ff_demuxer_reset(%struct.ff_demuxer* %30)
  br label %32

32:                                               ; preds = %135, %130, %123, %111, %87, %55, %29
  %33 = load %struct.ff_demuxer*, %struct.ff_demuxer** %3, align 8
  %34 = getelementptr inbounds %struct.ff_demuxer, %struct.ff_demuxer* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = icmp ne i32 %35, 0
  %37 = xor i1 %36, true
  br i1 %37, label %38, label %136

38:                                               ; preds = %32
  %39 = load %struct.ff_demuxer*, %struct.ff_demuxer** %3, align 8
  %40 = call i32 @handle_seek(%struct.ff_demuxer* %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %43, label %42

42:                                               ; preds = %38
  br label %136

43:                                               ; preds = %38
  %44 = load %struct.ff_demuxer*, %struct.ff_demuxer** %3, align 8
  %45 = getelementptr inbounds %struct.ff_demuxer, %struct.ff_demuxer* %44, i32 0, i32 2
  %46 = load %struct.TYPE_11__*, %struct.TYPE_11__** %45, align 8
  %47 = call i64 @ff_decoder_full(%struct.TYPE_11__* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %55, label %49

49:                                               ; preds = %43
  %50 = load %struct.ff_demuxer*, %struct.ff_demuxer** %3, align 8
  %51 = getelementptr inbounds %struct.ff_demuxer, %struct.ff_demuxer* %50, i32 0, i32 1
  %52 = load %struct.TYPE_11__*, %struct.TYPE_11__** %51, align 8
  %53 = call i64 @ff_decoder_full(%struct.TYPE_11__* %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %49, %43
  %56 = call i32 @av_usleep(i32 10000)
  br label %32

57:                                               ; preds = %49
  %58 = load %struct.ff_demuxer*, %struct.ff_demuxer** %3, align 8
  %59 = getelementptr inbounds %struct.ff_demuxer, %struct.ff_demuxer* %58, i32 0, i32 4
  %60 = load %struct.TYPE_10__*, %struct.TYPE_10__** %59, align 8
  %61 = getelementptr inbounds %struct.ff_packet, %struct.ff_packet* %5, i32 0, i32 0
  %62 = call i32 @av_read_frame(%struct.TYPE_10__* %60, i32* %61)
  store i32 %62, i32* %4, align 4
  %63 = load i32, i32* %4, align 4
  %64 = icmp slt i32 %63, 0
  br i1 %64, label %65, label %117

65:                                               ; preds = %57
  store i32 0, i32* %6, align 4
  %66 = load i32, i32* %4, align 4
  %67 = load i32, i32* @AVERROR_EOF, align 4
  %68 = icmp eq i32 %66, %67
  br i1 %68, label %69, label %70

69:                                               ; preds = %65
  store i32 1, i32* %6, align 4
  br label %98

70:                                               ; preds = %65
  %71 = load %struct.ff_demuxer*, %struct.ff_demuxer** %3, align 8
  %72 = getelementptr inbounds %struct.ff_demuxer, %struct.ff_demuxer* %71, i32 0, i32 4
  %73 = load %struct.TYPE_10__*, %struct.TYPE_10__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %73, i32 0, i32 0
  %75 = load %struct.TYPE_9__*, %struct.TYPE_9__** %74, align 8
  %76 = icmp ne %struct.TYPE_9__* %75, null
  br i1 %76, label %77, label %97

77:                                               ; preds = %70
  %78 = load %struct.ff_demuxer*, %struct.ff_demuxer** %3, align 8
  %79 = getelementptr inbounds %struct.ff_demuxer, %struct.ff_demuxer* %78, i32 0, i32 4
  %80 = load %struct.TYPE_10__*, %struct.TYPE_10__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %80, i32 0, i32 0
  %82 = load %struct.TYPE_9__*, %struct.TYPE_9__** %81, align 8
  store %struct.TYPE_9__* %82, %struct.TYPE_9__** %7, align 8
  %83 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %84 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = icmp eq i64 %85, 0
  br i1 %86, label %87, label %89

87:                                               ; preds = %77
  %88 = call i32 @av_usleep(i32 100000)
  br label %32

89:                                               ; preds = %77
  %90 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %91 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %90, i32 0, i32 1
  %92 = load i64, i64* %91, align 8
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %95

94:                                               ; preds = %89
  store i32 1, i32* %6, align 4
  br label %95

95:                                               ; preds = %94, %89
  br label %96

96:                                               ; preds = %95
  br label %97

97:                                               ; preds = %96, %70
  br label %98

98:                                               ; preds = %97, %69
  %99 = load i32, i32* %6, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %112

101:                                              ; preds = %98
  %102 = load %struct.ff_demuxer*, %struct.ff_demuxer** %3, align 8
  %103 = getelementptr inbounds %struct.ff_demuxer, %struct.ff_demuxer* %102, i32 0, i32 3
  %104 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %110

107:                                              ; preds = %101
  %108 = load %struct.ff_demuxer*, %struct.ff_demuxer** %3, align 8
  %109 = call i32 @seek_beginning(%struct.ff_demuxer* %108)
  br label %111

110:                                              ; preds = %101
  br label %136

111:                                              ; preds = %107
  br label %32

112:                                              ; preds = %98
  %113 = load i32, i32* @AV_LOG_ERROR, align 4
  %114 = load i32, i32* %4, align 4
  %115 = call i32 @av_err2str(i32 %114)
  %116 = call i32 @av_log(i32* null, i32 %113, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %115)
  br label %136

117:                                              ; preds = %57
  %118 = load %struct.ff_demuxer*, %struct.ff_demuxer** %3, align 8
  %119 = getelementptr inbounds %struct.ff_demuxer, %struct.ff_demuxer* %118, i32 0, i32 1
  %120 = load %struct.TYPE_11__*, %struct.TYPE_11__** %119, align 8
  %121 = call i64 @ff_decoder_accept(%struct.TYPE_11__* %120, %struct.ff_packet* %5)
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %124

123:                                              ; preds = %117
  br label %32

124:                                              ; preds = %117
  %125 = load %struct.ff_demuxer*, %struct.ff_demuxer** %3, align 8
  %126 = getelementptr inbounds %struct.ff_demuxer, %struct.ff_demuxer* %125, i32 0, i32 2
  %127 = load %struct.TYPE_11__*, %struct.TYPE_11__** %126, align 8
  %128 = call i64 @ff_decoder_accept(%struct.TYPE_11__* %127, %struct.ff_packet* %5)
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %131

130:                                              ; preds = %124
  br label %32

131:                                              ; preds = %124
  %132 = getelementptr inbounds %struct.ff_packet, %struct.ff_packet* %5, i32 0, i32 0
  %133 = call i32 @av_free_packet(i32* %132)
  br label %134

134:                                              ; preds = %131
  br label %135

135:                                              ; preds = %134
  br label %32

136:                                              ; preds = %112, %110, %42, %32
  %137 = load %struct.ff_demuxer*, %struct.ff_demuxer** %3, align 8
  %138 = getelementptr inbounds %struct.ff_demuxer, %struct.ff_demuxer* %137, i32 0, i32 2
  %139 = load %struct.TYPE_11__*, %struct.TYPE_11__** %138, align 8
  %140 = icmp ne %struct.TYPE_11__* %139, null
  br i1 %140, label %141, label %146

141:                                              ; preds = %136
  %142 = load %struct.ff_demuxer*, %struct.ff_demuxer** %3, align 8
  %143 = getelementptr inbounds %struct.ff_demuxer, %struct.ff_demuxer* %142, i32 0, i32 2
  %144 = load %struct.TYPE_11__*, %struct.TYPE_11__** %143, align 8
  %145 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %144, i32 0, i32 0
  store i32 1, i32* %145, align 4
  br label %146

146:                                              ; preds = %141, %136
  %147 = load %struct.ff_demuxer*, %struct.ff_demuxer** %3, align 8
  %148 = getelementptr inbounds %struct.ff_demuxer, %struct.ff_demuxer* %147, i32 0, i32 1
  %149 = load %struct.TYPE_11__*, %struct.TYPE_11__** %148, align 8
  %150 = icmp ne %struct.TYPE_11__* %149, null
  br i1 %150, label %151, label %156

151:                                              ; preds = %146
  %152 = load %struct.ff_demuxer*, %struct.ff_demuxer** %3, align 8
  %153 = getelementptr inbounds %struct.ff_demuxer, %struct.ff_demuxer* %152, i32 0, i32 1
  %154 = load %struct.TYPE_11__*, %struct.TYPE_11__** %153, align 8
  %155 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %154, i32 0, i32 0
  store i32 1, i32* %155, align 4
  br label %156

156:                                              ; preds = %151, %146
  br label %157

157:                                              ; preds = %156, %28, %16
  %158 = load %struct.ff_demuxer*, %struct.ff_demuxer** %3, align 8
  %159 = getelementptr inbounds %struct.ff_demuxer, %struct.ff_demuxer* %158, i32 0, i32 0
  store i32 1, i32* %159, align 8
  ret i8* null
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @open_input(%struct.ff_demuxer*, %struct.TYPE_10__**) #2

declare dso_local i32 @av_dump_format(%struct.TYPE_10__*, i32, i32, i32) #2

declare dso_local i32 @find_and_initialize_stream_decoders(%struct.ff_demuxer*) #2

declare dso_local i32 @ff_demuxer_reset(%struct.ff_demuxer*) #2

declare dso_local i32 @handle_seek(%struct.ff_demuxer*) #2

declare dso_local i64 @ff_decoder_full(%struct.TYPE_11__*) #2

declare dso_local i32 @av_usleep(i32) #2

declare dso_local i32 @av_read_frame(%struct.TYPE_10__*, i32*) #2

declare dso_local i32 @seek_beginning(%struct.ff_demuxer*) #2

declare dso_local i32 @av_log(i32*, i32, i8*, i32) #2

declare dso_local i32 @av_err2str(i32) #2

declare dso_local i64 @ff_decoder_accept(%struct.TYPE_11__*, %struct.ff_packet*) #2

declare dso_local i32 @av_free_packet(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
