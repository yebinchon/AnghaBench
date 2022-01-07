; ModuleID = '/home/carl/AnghaBench/obs-studio/plugins/obs-outputs/librtmp/extr_rtmp.c_RTMP_SendClientBW.c'
source_filename = "/home/carl/AnghaBench/obs-studio/plugins/obs-outputs/librtmp/extr_rtmp.c_RTMP_SendClientBW.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i8, i32 }
%struct.TYPE_6__ = type { i32, i8*, i32, i64, i64, i64, i32, i32 }

@RTMP_PACKET_SIZE_LARGE = common dso_local global i32 0, align 4
@RTMP_PACKET_TYPE_CLIENT_BW = common dso_local global i32 0, align 4
@RTMP_MAX_HEADER_SIZE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @RTMP_SendClientBW(%struct.TYPE_7__* %0) #0 {
  %2 = alloca %struct.TYPE_7__*, align 8
  %3 = alloca %struct.TYPE_6__, align 8
  %4 = alloca [256 x i8], align 16
  %5 = alloca i8*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %2, align 8
  %6 = getelementptr inbounds [256 x i8], [256 x i8]* %4, i64 0, i64 0
  %7 = getelementptr inbounds i8, i8* %6, i64 256
  store i8* %7, i8** %5, align 8
  %8 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %3, i32 0, i32 0
  store i32 2, i32* %8, align 8
  %9 = load i32, i32* @RTMP_PACKET_SIZE_LARGE, align 4
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %3, i32 0, i32 7
  store i32 %9, i32* %10, align 4
  %11 = load i32, i32* @RTMP_PACKET_TYPE_CLIENT_BW, align 4
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %3, i32 0, i32 6
  store i32 %11, i32* %12, align 8
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %3, i32 0, i32 5
  store i64 0, i64* %13, align 8
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %3, i32 0, i32 4
  store i64 0, i64* %14, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %3, i32 0, i32 3
  store i64 0, i64* %15, align 8
  %16 = getelementptr inbounds [256 x i8], [256 x i8]* %4, i64 0, i64 0
  %17 = load i32, i32* @RTMP_MAX_HEADER_SIZE, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i8, i8* %16, i64 %18
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %3, i32 0, i32 1
  store i8* %19, i8** %20, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %3, i32 0, i32 2
  store i32 5, i32* %21, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %3, i32 0, i32 1
  %23 = load i8*, i8** %22, align 8
  %24 = load i8*, i8** %5, align 8
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @AMF_EncodeInt32(i8* %23, i8* %24, i32 %27)
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 0
  %31 = load i8, i8* %30, align 4
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %3, i32 0, i32 1
  %33 = load i8*, i8** %32, align 8
  %34 = getelementptr inbounds i8, i8* %33, i64 4
  store i8 %31, i8* %34, align 1
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %36 = load i32, i32* @FALSE, align 4
  %37 = call i32 @RTMP_SendPacket(%struct.TYPE_7__* %35, %struct.TYPE_6__* %3, i32 %36)
  ret i32 %37
}

declare dso_local i32 @AMF_EncodeInt32(i8*, i8*, i32) #1

declare dso_local i32 @RTMP_SendPacket(%struct.TYPE_7__*, %struct.TYPE_6__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
