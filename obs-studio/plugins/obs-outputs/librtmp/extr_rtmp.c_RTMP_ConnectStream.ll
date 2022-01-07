; ModuleID = '/home/carl/AnghaBench/obs-studio/plugins/obs-outputs/librtmp/extr_rtmp.c_RTMP_ConnectStream.c'
source_filename = "/home/carl/AnghaBench/obs-studio/plugins/obs-outputs/librtmp/extr_rtmp.c_RTMP_ConnectStream.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32, i64, %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_13__ = type { i64, i32, i32 }

@RTMP_PACKET_TYPE_AUDIO = common dso_local global i64 0, align 8
@RTMP_PACKET_TYPE_VIDEO = common dso_local global i64 0, align 8
@RTMP_PACKET_TYPE_INFO = common dso_local global i64 0, align 8
@RTMP_LOGWARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"Received FLV packet before play()! Ignoring.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @RTMP_ConnectStream(%struct.TYPE_14__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_14__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_13__, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = bitcast %struct.TYPE_13__* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %6, i8 0, i64 16, i1 false)
  %7 = load i32, i32* %4, align 4
  %8 = icmp sgt i32 %7, 0
  br i1 %8, label %9, label %14

9:                                                ; preds = %2
  %10 = load i32, i32* %4, align 4
  %11 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %11, i32 0, i32 2
  %13 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %12, i32 0, i32 0
  store i32 %10, i32* %13, align 8
  br label %14

14:                                               ; preds = %9, %2
  %15 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %15, i32 0, i32 1
  store i64 0, i64* %16, align 8
  br label %17

17:                                               ; preds = %63, %55, %39, %14
  %18 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %30, label %22

22:                                               ; preds = %17
  %23 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %24 = call i64 @RTMP_IsConnected(%struct.TYPE_14__* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %22
  %27 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %28 = call i64 @RTMP_ReadPacket(%struct.TYPE_14__* %27, %struct.TYPE_13__* %5)
  %29 = icmp ne i64 %28, 0
  br label %30

30:                                               ; preds = %26, %22, %17
  %31 = phi i1 [ false, %22 ], [ false, %17 ], [ %29, %26 ]
  br i1 %31, label %32, label %64

32:                                               ; preds = %30
  %33 = call i64 @RTMPPacket_IsReady(%struct.TYPE_13__* %5)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %63

35:                                               ; preds = %32
  %36 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %5, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %35
  br label %17

40:                                               ; preds = %35
  %41 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %5, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @RTMP_PACKET_TYPE_AUDIO, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %55, label %45

45:                                               ; preds = %40
  %46 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %5, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @RTMP_PACKET_TYPE_VIDEO, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %55, label %50

50:                                               ; preds = %45
  %51 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %5, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @RTMP_PACKET_TYPE_INFO, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %59

55:                                               ; preds = %50, %45, %40
  %56 = load i32, i32* @RTMP_LOGWARNING, align 4
  %57 = call i32 @RTMP_Log(i32 %56, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  %58 = call i32 @RTMPPacket_Free(%struct.TYPE_13__* %5)
  br label %17

59:                                               ; preds = %50
  %60 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %61 = call i32 @RTMP_ClientPacket(%struct.TYPE_14__* %60, %struct.TYPE_13__* %5)
  %62 = call i32 @RTMPPacket_Free(%struct.TYPE_13__* %5)
  br label %63

63:                                               ; preds = %59, %32
  br label %17

64:                                               ; preds = %30
  %65 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %66 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  ret i32 %67
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i64 @RTMP_IsConnected(%struct.TYPE_14__*) #2

declare dso_local i64 @RTMP_ReadPacket(%struct.TYPE_14__*, %struct.TYPE_13__*) #2

declare dso_local i64 @RTMPPacket_IsReady(%struct.TYPE_13__*) #2

declare dso_local i32 @RTMP_Log(i32, i8*) #2

declare dso_local i32 @RTMPPacket_Free(%struct.TYPE_13__*) #2

declare dso_local i32 @RTMP_ClientPacket(%struct.TYPE_14__*, %struct.TYPE_13__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
