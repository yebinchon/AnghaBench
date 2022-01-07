; ModuleID = '/home/carl/AnghaBench/mpv/demux/extr_demux_mf.c_demux_mf_read_packet.c'
source_filename = "/home/carl/AnghaBench/mpv/demux/extr_demux_mf.c_demux_mf_read_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.demuxer = type { i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i64, i64, i8**, %struct.TYPE_7__*, %struct.stream** }
%struct.TYPE_7__ = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.stream = type { i32 }
%struct.demux_packet = type { i32, i32, i32, i32 }
%struct.TYPE_9__ = type { i32, i64 }

@MF_MAX_FILE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.demuxer*, %struct.demux_packet**)* @demux_mf_read_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @demux_mf_read_packet(%struct.demuxer* %0, %struct.demux_packet** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.demuxer*, align 8
  %5 = alloca %struct.demux_packet**, align 8
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca %struct.stream*, align 8
  %8 = alloca %struct.stream*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.TYPE_9__, align 8
  %11 = alloca %struct.demux_packet*, align 8
  store %struct.demuxer* %0, %struct.demuxer** %4, align 8
  store %struct.demux_packet** %1, %struct.demux_packet*** %5, align 8
  %12 = load %struct.demuxer*, %struct.demuxer** %4, align 8
  %13 = getelementptr inbounds %struct.demuxer, %struct.demuxer* %12, i32 0, i32 1
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  store %struct.TYPE_8__* %14, %struct.TYPE_8__** %6, align 8
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = icmp uge i64 %17, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %137

23:                                               ; preds = %2
  store %struct.stream* null, %struct.stream** %7, align 8
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 4
  %26 = load %struct.stream**, %struct.stream*** %25, align 8
  %27 = icmp ne %struct.stream** %26, null
  br i1 %27, label %28, label %37

28:                                               ; preds = %23
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 4
  %31 = load %struct.stream**, %struct.stream*** %30, align 8
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = getelementptr inbounds %struct.stream*, %struct.stream** %31, i64 %34
  %36 = load %struct.stream*, %struct.stream** %35, align 8
  store %struct.stream* %36, %struct.stream** %7, align 8
  br label %37

37:                                               ; preds = %28, %23
  %38 = load %struct.stream*, %struct.stream** %7, align 8
  store %struct.stream* %38, %struct.stream** %8, align 8
  %39 = load %struct.stream*, %struct.stream** %8, align 8
  %40 = icmp ne %struct.stream* %39, null
  br i1 %40, label %59, label %41

41:                                               ; preds = %37
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 2
  %44 = load i8**, i8*** %43, align 8
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = getelementptr inbounds i8*, i8** %44, i64 %47
  %49 = load i8*, i8** %48, align 8
  store i8* %49, i8** %9, align 8
  %50 = load i8*, i8** %9, align 8
  %51 = icmp ne i8* %50, null
  br i1 %51, label %52, label %58

52:                                               ; preds = %41
  %53 = load i8*, i8** %9, align 8
  %54 = load %struct.demuxer*, %struct.demuxer** %4, align 8
  %55 = getelementptr inbounds %struct.demuxer, %struct.demuxer* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = call %struct.stream* @stream_open(i8* %53, i32 %56)
  store %struct.stream* %57, %struct.stream** %8, align 8
  br label %58

58:                                               ; preds = %52, %41
  br label %59

59:                                               ; preds = %58, %37
  %60 = load %struct.stream*, %struct.stream** %8, align 8
  %61 = icmp ne %struct.stream* %60, null
  br i1 %61, label %62, label %122

62:                                               ; preds = %59
  %63 = load %struct.stream*, %struct.stream** %8, align 8
  %64 = call i32 @stream_seek(%struct.stream* %63, i32 0)
  %65 = load %struct.stream*, %struct.stream** %8, align 8
  %66 = load i32, i32* @MF_MAX_FILE_SIZE, align 4
  %67 = call { i32, i64 } @stream_read_complete(%struct.stream* %65, i32* null, i32 %66)
  %68 = bitcast %struct.TYPE_9__* %10 to { i32, i64 }*
  %69 = getelementptr inbounds { i32, i64 }, { i32, i64 }* %68, i32 0, i32 0
  %70 = extractvalue { i32, i64 } %67, 0
  store i32 %70, i32* %69, align 8
  %71 = getelementptr inbounds { i32, i64 }, { i32, i64 }* %68, i32 0, i32 1
  %72 = extractvalue { i32, i64 } %67, 1
  store i64 %72, i64* %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %118

76:                                               ; preds = %62
  %77 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = call %struct.demux_packet* @new_demux_packet(i64 %78)
  store %struct.demux_packet* %79, %struct.demux_packet** %11, align 8
  %80 = load %struct.demux_packet*, %struct.demux_packet** %11, align 8
  %81 = icmp ne %struct.demux_packet* %80, null
  br i1 %81, label %82, label %117

82:                                               ; preds = %76
  %83 = load %struct.demux_packet*, %struct.demux_packet** %11, align 8
  %84 = getelementptr inbounds %struct.demux_packet, %struct.demux_packet* %83, i32 0, i32 3
  %85 = load i32, i32* %84, align 4
  %86 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 1
  %89 = load i64, i64* %88, align 8
  %90 = call i32 @memcpy(i32 %85, i32 %87, i64 %89)
  %91 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %92 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %95 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %94, i32 0, i32 3
  %96 = load %struct.TYPE_7__*, %struct.TYPE_7__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %96, i32 0, i32 1
  %98 = load %struct.TYPE_6__*, %struct.TYPE_6__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = sext i32 %100 to i64
  %102 = udiv i64 %93, %101
  %103 = trunc i64 %102 to i32
  %104 = load %struct.demux_packet*, %struct.demux_packet** %11, align 8
  %105 = getelementptr inbounds %struct.demux_packet, %struct.demux_packet* %104, i32 0, i32 0
  store i32 %103, i32* %105, align 4
  %106 = load %struct.demux_packet*, %struct.demux_packet** %11, align 8
  %107 = getelementptr inbounds %struct.demux_packet, %struct.demux_packet* %106, i32 0, i32 1
  store i32 1, i32* %107, align 4
  %108 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %109 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %108, i32 0, i32 3
  %110 = load %struct.TYPE_7__*, %struct.TYPE_7__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = load %struct.demux_packet*, %struct.demux_packet** %11, align 8
  %114 = getelementptr inbounds %struct.demux_packet, %struct.demux_packet* %113, i32 0, i32 2
  store i32 %112, i32* %114, align 4
  %115 = load %struct.demux_packet*, %struct.demux_packet** %11, align 8
  %116 = load %struct.demux_packet**, %struct.demux_packet*** %5, align 8
  store %struct.demux_packet* %115, %struct.demux_packet** %116, align 8
  br label %117

117:                                              ; preds = %82, %76
  br label %118

118:                                              ; preds = %117, %62
  %119 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = call i32 @talloc_free(i32 %120)
  br label %122

122:                                              ; preds = %118, %59
  %123 = load %struct.stream*, %struct.stream** %8, align 8
  %124 = icmp ne %struct.stream* %123, null
  br i1 %124, label %125, label %132

125:                                              ; preds = %122
  %126 = load %struct.stream*, %struct.stream** %8, align 8
  %127 = load %struct.stream*, %struct.stream** %7, align 8
  %128 = icmp ne %struct.stream* %126, %127
  br i1 %128, label %129, label %132

129:                                              ; preds = %125
  %130 = load %struct.stream*, %struct.stream** %8, align 8
  %131 = call i32 @free_stream(%struct.stream* %130)
  br label %132

132:                                              ; preds = %129, %125, %122
  %133 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %134 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %133, i32 0, i32 0
  %135 = load i64, i64* %134, align 8
  %136 = add i64 %135, 1
  store i64 %136, i64* %134, align 8
  store i32 1, i32* %3, align 4
  br label %137

137:                                              ; preds = %132, %22
  %138 = load i32, i32* %3, align 4
  ret i32 %138
}

declare dso_local %struct.stream* @stream_open(i8*, i32) #1

declare dso_local i32 @stream_seek(%struct.stream*, i32) #1

declare dso_local { i32, i64 } @stream_read_complete(%struct.stream*, i32*, i32) #1

declare dso_local %struct.demux_packet* @new_demux_packet(i64) #1

declare dso_local i32 @memcpy(i32, i32, i64) #1

declare dso_local i32 @talloc_free(i32) #1

declare dso_local i32 @free_stream(%struct.stream*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
