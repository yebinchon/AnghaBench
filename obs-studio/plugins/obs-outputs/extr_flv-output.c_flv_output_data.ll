; ModuleID = '/home/carl/AnghaBench/obs-studio/plugins/obs-outputs/extr_flv-output.c_flv_output_data.c'
source_filename = "/home/carl/AnghaBench/obs-studio/plugins/obs-outputs/extr_flv-output.c_flv_output_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.encoder_packet = type { i64, i64, i32 }
%struct.flv_output = type { i32, i32, i32, i32, i64 }

@OBS_OUTPUT_ENCODE_ERROR = common dso_local global i32 0, align 4
@OBS_ENCODER_VIDEO = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.encoder_packet*)* @flv_output_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @flv_output_data(i8* %0, %struct.encoder_packet* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.encoder_packet*, align 8
  %5 = alloca %struct.flv_output*, align 8
  %6 = alloca %struct.encoder_packet, align 8
  store i8* %0, i8** %3, align 8
  store %struct.encoder_packet* %1, %struct.encoder_packet** %4, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = bitcast i8* %7 to %struct.flv_output*
  store %struct.flv_output* %8, %struct.flv_output** %5, align 8
  %9 = load %struct.flv_output*, %struct.flv_output** %5, align 8
  %10 = getelementptr inbounds %struct.flv_output, %struct.flv_output* %9, i32 0, i32 2
  %11 = call i32 @pthread_mutex_lock(i32* %10)
  %12 = load %struct.flv_output*, %struct.flv_output** %5, align 8
  %13 = call i32 @active(%struct.flv_output* %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %2
  br label %81

16:                                               ; preds = %2
  %17 = load %struct.encoder_packet*, %struct.encoder_packet** %4, align 8
  %18 = icmp ne %struct.encoder_packet* %17, null
  br i1 %18, label %23, label %19

19:                                               ; preds = %16
  %20 = load %struct.flv_output*, %struct.flv_output** %5, align 8
  %21 = load i32, i32* @OBS_OUTPUT_ENCODE_ERROR, align 4
  %22 = call i32 @flv_output_actual_stop(%struct.flv_output* %20, i32 %21)
  br label %81

23:                                               ; preds = %16
  %24 = load %struct.flv_output*, %struct.flv_output** %5, align 8
  %25 = call i64 @stopping(%struct.flv_output* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %39

27:                                               ; preds = %23
  %28 = load %struct.encoder_packet*, %struct.encoder_packet** %4, align 8
  %29 = getelementptr inbounds %struct.encoder_packet, %struct.encoder_packet* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.flv_output*, %struct.flv_output** %5, align 8
  %32 = getelementptr inbounds %struct.flv_output, %struct.flv_output* %31, i32 0, i32 4
  %33 = load i64, i64* %32, align 8
  %34 = icmp sge i64 %30, %33
  br i1 %34, label %35, label %38

35:                                               ; preds = %27
  %36 = load %struct.flv_output*, %struct.flv_output** %5, align 8
  %37 = call i32 @flv_output_actual_stop(%struct.flv_output* %36, i32 0)
  br label %81

38:                                               ; preds = %27
  br label %39

39:                                               ; preds = %38, %23
  %40 = load %struct.flv_output*, %struct.flv_output** %5, align 8
  %41 = getelementptr inbounds %struct.flv_output, %struct.flv_output* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %49, label %44

44:                                               ; preds = %39
  %45 = load %struct.flv_output*, %struct.flv_output** %5, align 8
  %46 = call i32 @write_headers(%struct.flv_output* %45)
  %47 = load %struct.flv_output*, %struct.flv_output** %5, align 8
  %48 = getelementptr inbounds %struct.flv_output, %struct.flv_output* %47, i32 0, i32 0
  store i32 1, i32* %48, align 8
  br label %49

49:                                               ; preds = %44, %39
  %50 = load %struct.encoder_packet*, %struct.encoder_packet** %4, align 8
  %51 = getelementptr inbounds %struct.encoder_packet, %struct.encoder_packet* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @OBS_ENCODER_VIDEO, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %76

55:                                               ; preds = %49
  %56 = load %struct.flv_output*, %struct.flv_output** %5, align 8
  %57 = getelementptr inbounds %struct.flv_output, %struct.flv_output* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %70, label %60

60:                                               ; preds = %55
  %61 = load %struct.encoder_packet*, %struct.encoder_packet** %4, align 8
  %62 = load %struct.encoder_packet*, %struct.encoder_packet** %4, align 8
  %63 = getelementptr inbounds %struct.encoder_packet, %struct.encoder_packet* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 8
  %65 = call i32 @get_ms_time(%struct.encoder_packet* %61, i32 %64)
  %66 = load %struct.flv_output*, %struct.flv_output** %5, align 8
  %67 = getelementptr inbounds %struct.flv_output, %struct.flv_output* %66, i32 0, i32 3
  store i32 %65, i32* %67, align 4
  %68 = load %struct.flv_output*, %struct.flv_output** %5, align 8
  %69 = getelementptr inbounds %struct.flv_output, %struct.flv_output* %68, i32 0, i32 1
  store i32 1, i32* %69, align 4
  br label %70

70:                                               ; preds = %60, %55
  %71 = load %struct.encoder_packet*, %struct.encoder_packet** %4, align 8
  %72 = call i32 @obs_parse_avc_packet(%struct.encoder_packet* %6, %struct.encoder_packet* %71)
  %73 = load %struct.flv_output*, %struct.flv_output** %5, align 8
  %74 = call i32 @write_packet(%struct.flv_output* %73, %struct.encoder_packet* %6, i32 0)
  %75 = call i32 @obs_encoder_packet_release(%struct.encoder_packet* %6)
  br label %80

76:                                               ; preds = %49
  %77 = load %struct.flv_output*, %struct.flv_output** %5, align 8
  %78 = load %struct.encoder_packet*, %struct.encoder_packet** %4, align 8
  %79 = call i32 @write_packet(%struct.flv_output* %77, %struct.encoder_packet* %78, i32 0)
  br label %80

80:                                               ; preds = %76, %70
  br label %81

81:                                               ; preds = %80, %35, %19, %15
  %82 = load %struct.flv_output*, %struct.flv_output** %5, align 8
  %83 = getelementptr inbounds %struct.flv_output, %struct.flv_output* %82, i32 0, i32 2
  %84 = call i32 @pthread_mutex_unlock(i32* %83)
  ret void
}

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare dso_local i32 @active(%struct.flv_output*) #1

declare dso_local i32 @flv_output_actual_stop(%struct.flv_output*, i32) #1

declare dso_local i64 @stopping(%struct.flv_output*) #1

declare dso_local i32 @write_headers(%struct.flv_output*) #1

declare dso_local i32 @get_ms_time(%struct.encoder_packet*, i32) #1

declare dso_local i32 @obs_parse_avc_packet(%struct.encoder_packet*, %struct.encoder_packet*) #1

declare dso_local i32 @write_packet(%struct.flv_output*, %struct.encoder_packet*, i32) #1

declare dso_local i32 @obs_encoder_packet_release(%struct.encoder_packet*) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
