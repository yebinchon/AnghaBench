; ModuleID = '/home/carl/AnghaBench/obs-studio/plugins/obs-outputs/extr_rtmp-stream.c_send_packet.c'
source_filename = "/home/carl/AnghaBench/obs-studio/plugins/obs-outputs/extr_rtmp-stream.c_send_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtmp_stream = type { i64, %struct.TYPE_4__, i32, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.encoder_packet = type { i32* }

@FIONREAD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rtmp_stream*, %struct.encoder_packet*, i32, i64)* @send_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @send_packet(%struct.rtmp_stream* %0, %struct.encoder_packet* %1, i32 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.rtmp_stream*, align 8
  %7 = alloca %struct.encoder_packet*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.rtmp_stream* %0, %struct.rtmp_stream** %6, align 8
  store %struct.encoder_packet* %1, %struct.encoder_packet** %7, align 8
  store i32 %2, i32* %8, align 4
  store i64 %3, i64* %9, align 8
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %14 = load %struct.rtmp_stream*, %struct.rtmp_stream** %6, align 8
  %15 = getelementptr inbounds %struct.rtmp_stream, %struct.rtmp_stream* %14, i32 0, i32 3
  %16 = load i32, i32* %15, align 8
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %40, label %18

18:                                               ; preds = %4
  %19 = load %struct.rtmp_stream*, %struct.rtmp_stream** %6, align 8
  %20 = getelementptr inbounds %struct.rtmp_stream, %struct.rtmp_stream* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @FIONREAD, align 4
  %25 = call i32 @ioctl(i32 %23, i32 %24, i32* %12)
  store i32 %25, i32* %13, align 4
  %26 = load i32, i32* %13, align 4
  %27 = icmp sge i32 %26, 0
  br i1 %27, label %28, label %39

28:                                               ; preds = %18
  %29 = load i32, i32* %12, align 4
  %30 = icmp sgt i32 %29, 0
  br i1 %30, label %31, label %39

31:                                               ; preds = %28
  %32 = load %struct.rtmp_stream*, %struct.rtmp_stream** %6, align 8
  %33 = load i32, i32* %12, align 4
  %34 = sext i32 %33 to i64
  %35 = call i32 @discard_recv_data(%struct.rtmp_stream* %32, i64 %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %38, label %37

37:                                               ; preds = %31
  store i32 -1, i32* %5, align 4
  br label %81

38:                                               ; preds = %31
  br label %39

39:                                               ; preds = %38, %28, %18
  br label %40

40:                                               ; preds = %39, %4
  %41 = load %struct.encoder_packet*, %struct.encoder_packet** %7, align 8
  %42 = load i32, i32* %8, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %40
  br label %49

45:                                               ; preds = %40
  %46 = load %struct.rtmp_stream*, %struct.rtmp_stream** %6, align 8
  %47 = getelementptr inbounds %struct.rtmp_stream, %struct.rtmp_stream* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  br label %49

49:                                               ; preds = %45, %44
  %50 = phi i32 [ 0, %44 ], [ %48, %45 ]
  %51 = load i32, i32* %8, align 4
  %52 = call i32 @flv_packet_mux(%struct.encoder_packet* %41, i32 %50, i32** %10, i64* %11, i32 %51)
  %53 = load %struct.rtmp_stream*, %struct.rtmp_stream** %6, align 8
  %54 = getelementptr inbounds %struct.rtmp_stream, %struct.rtmp_stream* %53, i32 0, i32 1
  %55 = load i32*, i32** %10, align 8
  %56 = bitcast i32* %55 to i8*
  %57 = load i64, i64* %11, align 8
  %58 = trunc i64 %57 to i32
  %59 = load i64, i64* %9, align 8
  %60 = trunc i64 %59 to i32
  %61 = call i32 @RTMP_Write(%struct.TYPE_4__* %54, i8* %56, i32 %58, i32 %60)
  store i32 %61, i32* %13, align 4
  %62 = load i32*, i32** %10, align 8
  %63 = call i32 @bfree(i32* %62)
  %64 = load i32, i32* %8, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %71

66:                                               ; preds = %49
  %67 = load %struct.encoder_packet*, %struct.encoder_packet** %7, align 8
  %68 = getelementptr inbounds %struct.encoder_packet, %struct.encoder_packet* %67, i32 0, i32 0
  %69 = load i32*, i32** %68, align 8
  %70 = call i32 @bfree(i32* %69)
  br label %74

71:                                               ; preds = %49
  %72 = load %struct.encoder_packet*, %struct.encoder_packet** %7, align 8
  %73 = call i32 @obs_encoder_packet_release(%struct.encoder_packet* %72)
  br label %74

74:                                               ; preds = %71, %66
  %75 = load i64, i64* %11, align 8
  %76 = load %struct.rtmp_stream*, %struct.rtmp_stream** %6, align 8
  %77 = getelementptr inbounds %struct.rtmp_stream, %struct.rtmp_stream* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = add i64 %78, %75
  store i64 %79, i64* %77, align 8
  %80 = load i32, i32* %13, align 4
  store i32 %80, i32* %5, align 4
  br label %81

81:                                               ; preds = %74, %37
  %82 = load i32, i32* %5, align 4
  ret i32 %82
}

declare dso_local i32 @ioctl(i32, i32, i32*) #1

declare dso_local i32 @discard_recv_data(%struct.rtmp_stream*, i64) #1

declare dso_local i32 @flv_packet_mux(%struct.encoder_packet*, i32, i32**, i64*, i32) #1

declare dso_local i32 @RTMP_Write(%struct.TYPE_4__*, i8*, i32, i32) #1

declare dso_local i32 @bfree(i32*) #1

declare dso_local i32 @obs_encoder_packet_release(%struct.encoder_packet*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
