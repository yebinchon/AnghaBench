; ModuleID = '/home/carl/AnghaBench/mpv/video/decode/extr_vd_lavc.c_send_packet.c'
source_filename = "/home/carl/AnghaBench/mpv/video/decode/extr_vd_lavc.c_send_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mp_filter = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32, i32, %struct.TYPE_6__*, i64, i32, %struct.TYPE_8__*, i64, %struct.demux_packet**, i64 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_8__ = type { i64 }
%struct.demux_packet = type { i32 }

@EAGAIN = common dso_local global i32 0, align 4
@AVERROR_EOF = common dso_local global i32 0, align 4
@AVDISCARD_ALL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mp_filter*, %struct.demux_packet*)* @send_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @send_packet(%struct.mp_filter* %0, %struct.demux_packet* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mp_filter*, align 8
  %5 = alloca %struct.demux_packet*, align 8
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca %struct.TYPE_8__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.mp_filter* %0, %struct.mp_filter** %4, align 8
  store %struct.demux_packet* %1, %struct.demux_packet** %5, align 8
  %10 = load %struct.mp_filter*, %struct.mp_filter** %4, align 8
  %11 = getelementptr inbounds %struct.mp_filter, %struct.mp_filter* %10, i32 0, i32 0
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  store %struct.TYPE_7__* %12, %struct.TYPE_7__** %6, align 8
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 5
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  store %struct.TYPE_8__* %15, %struct.TYPE_8__** %7, align 8
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 8
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %31

20:                                               ; preds = %2
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 7
  %23 = load %struct.demux_packet**, %struct.demux_packet*** %22, align 8
  %24 = getelementptr inbounds %struct.demux_packet*, %struct.demux_packet** %23, i64 0
  %25 = load %struct.demux_packet*, %struct.demux_packet** %24, align 8
  %26 = load %struct.demux_packet*, %struct.demux_packet** %5, align 8
  %27 = icmp ne %struct.demux_packet* %25, %26
  br i1 %27, label %28, label %31

28:                                               ; preds = %20
  %29 = load i32, i32* @EAGAIN, align 4
  %30 = call i32 @AVERROR(i32 %29)
  store i32 %30, i32* %3, align 4
  br label %121

31:                                               ; preds = %20, %2
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 6
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %31
  %37 = load i32, i32* @EAGAIN, align 4
  %38 = call i32 @AVERROR(i32 %37)
  store i32 %38, i32* %3, align 4
  br label %121

39:                                               ; preds = %31
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 5
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %41, align 8
  %43 = icmp ne %struct.TYPE_8__* %42, null
  br i1 %43, label %46, label %44

44:                                               ; preds = %39
  %45 = load i32, i32* @AVERROR_EOF, align 4
  store i32 %45, i32* %3, align 4
  br label %121

46:                                               ; preds = %39
  %47 = load %struct.mp_filter*, %struct.mp_filter** %4, align 8
  %48 = call i32 @prepare_decoding(%struct.mp_filter* %47)
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @AVDISCARD_ALL, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %55

54:                                               ; preds = %46
  store i32 0, i32* %3, align 4
  br label %121

55:                                               ; preds = %46
  %56 = load %struct.demux_packet*, %struct.demux_packet** %5, align 8
  %57 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 4
  %59 = call i32 @mp_set_av_packet(i32* %8, %struct.demux_packet* %56, i32* %58)
  %60 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %61 = load %struct.demux_packet*, %struct.demux_packet** %5, align 8
  %62 = icmp ne %struct.demux_packet* %61, null
  br i1 %62, label %63, label %64

63:                                               ; preds = %55
  br label %65

64:                                               ; preds = %55
  br label %65

65:                                               ; preds = %64, %63
  %66 = phi i32* [ %8, %63 ], [ null, %64 ]
  %67 = call i32 @avcodec_send_packet(%struct.TYPE_8__* %60, i32* %66)
  store i32 %67, i32* %9, align 4
  %68 = load i32, i32* %9, align 4
  %69 = load i32, i32* @EAGAIN, align 4
  %70 = call i32 @AVERROR(i32 %69)
  %71 = icmp eq i32 %68, %70
  br i1 %71, label %76, label %72

72:                                               ; preds = %65
  %73 = load i32, i32* %9, align 4
  %74 = load i32, i32* @AVERROR_EOF, align 4
  %75 = icmp eq i32 %73, %74
  br i1 %75, label %76, label %78

76:                                               ; preds = %72, %65
  %77 = load i32, i32* %9, align 4
  store i32 %77, i32* %3, align 4
  br label %121

78:                                               ; preds = %72
  %79 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %80 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %79, i32 0, i32 3
  %81 = load i64, i64* %80, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %113

83:                                               ; preds = %78
  %84 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %85 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = icmp slt i32 %86, 32
  br i1 %87, label %88, label %113

88:                                               ; preds = %83
  %89 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %90 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %89, i32 0, i32 2
  %91 = load %struct.TYPE_6__*, %struct.TYPE_6__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = icmp sle i32 %93, 32
  br i1 %94, label %95, label %113

95:                                               ; preds = %88
  %96 = load %struct.demux_packet*, %struct.demux_packet** %5, align 8
  %97 = icmp ne %struct.demux_packet* %96, null
  br i1 %97, label %98, label %101

98:                                               ; preds = %95
  %99 = load %struct.demux_packet*, %struct.demux_packet** %5, align 8
  %100 = call %struct.demux_packet* @demux_copy_packet(%struct.demux_packet* %99)
  br label %102

101:                                              ; preds = %95
  br label %102

102:                                              ; preds = %101, %98
  %103 = phi %struct.demux_packet* [ %100, %98 ], [ null, %101 ]
  store %struct.demux_packet* %103, %struct.demux_packet** %5, align 8
  %104 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %105 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %106 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %109 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = load %struct.demux_packet*, %struct.demux_packet** %5, align 8
  %112 = call i32 @MP_TARRAY_APPEND(%struct.TYPE_7__* %104, i32 %107, i32 %110, %struct.demux_packet* %111)
  br label %113

113:                                              ; preds = %102, %88, %83, %78
  %114 = load i32, i32* %9, align 4
  %115 = icmp slt i32 %114, 0
  br i1 %115, label %116, label %119

116:                                              ; preds = %113
  %117 = load %struct.mp_filter*, %struct.mp_filter** %4, align 8
  %118 = call i32 @handle_err(%struct.mp_filter* %117)
  br label %119

119:                                              ; preds = %116, %113
  %120 = load i32, i32* %9, align 4
  store i32 %120, i32* %3, align 4
  br label %121

121:                                              ; preds = %119, %76, %54, %44, %36, %28
  %122 = load i32, i32* %3, align 4
  ret i32 %122
}

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @prepare_decoding(%struct.mp_filter*) #1

declare dso_local i32 @mp_set_av_packet(i32*, %struct.demux_packet*, i32*) #1

declare dso_local i32 @avcodec_send_packet(%struct.TYPE_8__*, i32*) #1

declare dso_local %struct.demux_packet* @demux_copy_packet(%struct.demux_packet*) #1

declare dso_local i32 @MP_TARRAY_APPEND(%struct.TYPE_7__*, i32, i32, %struct.demux_packet*) #1

declare dso_local i32 @handle_err(%struct.mp_filter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
