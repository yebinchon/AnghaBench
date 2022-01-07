; ModuleID = '/home/carl/AnghaBench/mpv/common/extr_av_common.c_mp_set_av_packet.c'
source_filename = "/home/carl/AnghaBench/mpv/common/extr_av_common.c_mp_set_av_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i8*, i8*, i32, i32, i32*, i32, i32, i32 }
%struct.demux_packet = type { i32, i32, i32, %struct.TYPE_9__*, i64, i32, i32* }
%struct.TYPE_9__ = type { i32, i32, i32*, i32, i32 }
%struct.TYPE_10__ = type { i64, i64 }

@AV_PKT_FLAG_KEY = common dso_local global i32 0, align 4
@MP_NOPTS_VALUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mp_set_av_packet(%struct.TYPE_11__* %0, %struct.demux_packet* %1, %struct.TYPE_10__* %2) #0 {
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca %struct.demux_packet*, align 8
  %6 = alloca %struct.TYPE_10__*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %4, align 8
  store %struct.demux_packet* %1, %struct.demux_packet** %5, align 8
  store %struct.TYPE_10__* %2, %struct.TYPE_10__** %6, align 8
  %7 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %8 = call i32 @av_init_packet(%struct.TYPE_11__* %7)
  %9 = load %struct.demux_packet*, %struct.demux_packet** %5, align 8
  %10 = icmp ne %struct.demux_packet* %9, null
  br i1 %10, label %11, label %15

11:                                               ; preds = %3
  %12 = load %struct.demux_packet*, %struct.demux_packet** %5, align 8
  %13 = getelementptr inbounds %struct.demux_packet, %struct.demux_packet* %12, i32 0, i32 6
  %14 = load i32*, i32** %13, align 8
  br label %16

15:                                               ; preds = %3
  br label %16

16:                                               ; preds = %15, %11
  %17 = phi i32* [ %14, %11 ], [ null, %15 ]
  %18 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %18, i32 0, i32 5
  store i32* %17, i32** %19, align 8
  %20 = load %struct.demux_packet*, %struct.demux_packet** %5, align 8
  %21 = icmp ne %struct.demux_packet* %20, null
  br i1 %21, label %22, label %26

22:                                               ; preds = %16
  %23 = load %struct.demux_packet*, %struct.demux_packet** %5, align 8
  %24 = getelementptr inbounds %struct.demux_packet, %struct.demux_packet* %23, i32 0, i32 5
  %25 = load i32, i32* %24, align 8
  br label %27

26:                                               ; preds = %16
  br label %27

27:                                               ; preds = %26, %22
  %28 = phi i32 [ %25, %22 ], [ 0, %26 ]
  %29 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %29, i32 0, i32 8
  store i32 %28, i32* %30, align 8
  %31 = load %struct.demux_packet*, %struct.demux_packet** %5, align 8
  %32 = icmp ne %struct.demux_packet* %31, null
  br i1 %32, label %33, label %44

33:                                               ; preds = %27
  %34 = load %struct.demux_packet*, %struct.demux_packet** %5, align 8
  %35 = getelementptr inbounds %struct.demux_packet, %struct.demux_packet* %34, i32 0, i32 4
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %44

38:                                               ; preds = %33
  %39 = load i32, i32* @AV_PKT_FLAG_KEY, align 4
  %40 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %40, i32 0, i32 3
  %42 = load i32, i32* %41, align 8
  %43 = or i32 %42, %39
  store i32 %43, i32* %41, align 8
  br label %44

44:                                               ; preds = %38, %33, %27
  %45 = load %struct.demux_packet*, %struct.demux_packet** %5, align 8
  %46 = icmp ne %struct.demux_packet* %45, null
  br i1 %46, label %47, label %94

47:                                               ; preds = %44
  %48 = load %struct.demux_packet*, %struct.demux_packet** %5, align 8
  %49 = getelementptr inbounds %struct.demux_packet, %struct.demux_packet* %48, i32 0, i32 3
  %50 = load %struct.TYPE_9__*, %struct.TYPE_9__** %49, align 8
  %51 = icmp ne %struct.TYPE_9__* %50, null
  br i1 %51, label %52, label %94

52:                                               ; preds = %47
  %53 = load %struct.demux_packet*, %struct.demux_packet** %5, align 8
  %54 = getelementptr inbounds %struct.demux_packet, %struct.demux_packet* %53, i32 0, i32 3
  %55 = load %struct.TYPE_9__*, %struct.TYPE_9__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %55, i32 0, i32 4
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %59 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %58, i32 0, i32 7
  store i32 %57, i32* %59, align 4
  %60 = load %struct.demux_packet*, %struct.demux_packet** %5, align 8
  %61 = getelementptr inbounds %struct.demux_packet, %struct.demux_packet* %60, i32 0, i32 3
  %62 = load %struct.TYPE_9__*, %struct.TYPE_9__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %62, i32 0, i32 3
  %64 = load i32, i32* %63, align 8
  %65 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %66 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %65, i32 0, i32 6
  store i32 %64, i32* %66, align 8
  %67 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %68 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %67, i32 0, i32 5
  %69 = load i32*, i32** %68, align 8
  %70 = load %struct.demux_packet*, %struct.demux_packet** %5, align 8
  %71 = getelementptr inbounds %struct.demux_packet, %struct.demux_packet* %70, i32 0, i32 3
  %72 = load %struct.TYPE_9__*, %struct.TYPE_9__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %72, i32 0, i32 2
  %74 = load i32*, i32** %73, align 8
  %75 = icmp eq i32* %69, %74
  br i1 %75, label %76, label %84

76:                                               ; preds = %52
  %77 = load %struct.demux_packet*, %struct.demux_packet** %5, align 8
  %78 = getelementptr inbounds %struct.demux_packet, %struct.demux_packet* %77, i32 0, i32 3
  %79 = load %struct.TYPE_9__*, %struct.TYPE_9__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %83 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %82, i32 0, i32 4
  store i32 %81, i32* %83, align 4
  br label %84

84:                                               ; preds = %76, %52
  %85 = load %struct.demux_packet*, %struct.demux_packet** %5, align 8
  %86 = getelementptr inbounds %struct.demux_packet, %struct.demux_packet* %85, i32 0, i32 3
  %87 = load %struct.TYPE_9__*, %struct.TYPE_9__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %91 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %90, i32 0, i32 3
  %92 = load i32, i32* %91, align 8
  %93 = or i32 %92, %89
  store i32 %93, i32* %91, align 8
  br label %94

94:                                               ; preds = %84, %47, %44
  %95 = load %struct.demux_packet*, %struct.demux_packet** %5, align 8
  %96 = icmp ne %struct.demux_packet* %95, null
  br i1 %96, label %97, label %124

97:                                               ; preds = %94
  %98 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %99 = icmp ne %struct.TYPE_10__* %98, null
  br i1 %99, label %100, label %124

100:                                              ; preds = %97
  %101 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %102 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = icmp sgt i64 %103, 0
  br i1 %104, label %105, label %124

105:                                              ; preds = %100
  %106 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %107 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %106, i32 0, i32 1
  %108 = load i64, i64* %107, align 8
  %109 = icmp sgt i64 %108, 0
  br i1 %109, label %110, label %124

110:                                              ; preds = %105
  %111 = load %struct.demux_packet*, %struct.demux_packet** %5, align 8
  %112 = getelementptr inbounds %struct.demux_packet, %struct.demux_packet* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %115 = bitcast %struct.TYPE_10__* %114 to { i64, i64 }*
  %116 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %115, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %115, i32 0, i32 1
  %119 = load i64, i64* %118, align 8
  %120 = call i32 @av_q2d(i64 %117, i64 %119)
  %121 = sdiv i32 %113, %120
  %122 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %123 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %122, i32 0, i32 0
  store i32 %121, i32* %123, align 8
  br label %124

124:                                              ; preds = %110, %105, %100, %97, %94
  %125 = load %struct.demux_packet*, %struct.demux_packet** %5, align 8
  %126 = icmp ne %struct.demux_packet* %125, null
  br i1 %126, label %127, label %131

127:                                              ; preds = %124
  %128 = load %struct.demux_packet*, %struct.demux_packet** %5, align 8
  %129 = getelementptr inbounds %struct.demux_packet, %struct.demux_packet* %128, i32 0, i32 2
  %130 = load i32, i32* %129, align 8
  br label %133

131:                                              ; preds = %124
  %132 = load i32, i32* @MP_NOPTS_VALUE, align 4
  br label %133

133:                                              ; preds = %131, %127
  %134 = phi i32 [ %130, %127 ], [ %132, %131 ]
  %135 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %136 = call i8* @mp_pts_to_av(i32 %134, %struct.TYPE_10__* %135)
  %137 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %138 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %137, i32 0, i32 2
  store i8* %136, i8** %138, align 8
  %139 = load %struct.demux_packet*, %struct.demux_packet** %5, align 8
  %140 = icmp ne %struct.demux_packet* %139, null
  br i1 %140, label %141, label %145

141:                                              ; preds = %133
  %142 = load %struct.demux_packet*, %struct.demux_packet** %5, align 8
  %143 = getelementptr inbounds %struct.demux_packet, %struct.demux_packet* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 4
  br label %147

145:                                              ; preds = %133
  %146 = load i32, i32* @MP_NOPTS_VALUE, align 4
  br label %147

147:                                              ; preds = %145, %141
  %148 = phi i32 [ %144, %141 ], [ %146, %145 ]
  %149 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %150 = call i8* @mp_pts_to_av(i32 %148, %struct.TYPE_10__* %149)
  %151 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %152 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %151, i32 0, i32 1
  store i8* %150, i8** %152, align 8
  ret void
}

declare dso_local i32 @av_init_packet(%struct.TYPE_11__*) #1

declare dso_local i32 @av_q2d(i64, i64) #1

declare dso_local i8* @mp_pts_to_av(i32, %struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
