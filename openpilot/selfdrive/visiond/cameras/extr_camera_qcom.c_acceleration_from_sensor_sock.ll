; ModuleID = '/home/carl/AnghaBench/openpilot/selfdrive/visiond/cameras/extr_camera_qcom.c_acceleration_from_sensor_sock.c'
source_filename = "/home/carl/AnghaBench/openpilot/selfdrive/visiond/cameras/extr_camera_qcom.c_acceleration_from_sensor_sock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.capn = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.cereal_Event = type { i64, i32 }
%struct.cereal_SensorEventData = type { i64, i32 }
%struct.cereal_SensorEventData_SensorVec = type { i32 }

@cereal_Event_sensorEvents = common dso_local global i64 0, align 8
@cereal_SensorEventData_acceleration = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, float*)* @acceleration_from_sensor_sock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @acceleration_from_sensor_sock(i8* %0, float* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca float*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.capn, align 4
  %8 = alloca %struct.TYPE_3__, align 4
  %9 = alloca %struct.cereal_Event, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.cereal_SensorEventData, align 8
  %15 = alloca %struct.cereal_SensorEventData_SensorVec, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store float* %1, float** %4, align 8
  %18 = call i32 @zmq_msg_init(i32* %6)
  store i32 %18, i32* %5, align 4
  %19 = load i32, i32* %5, align 4
  %20 = icmp eq i32 %19, 0
  %21 = zext i1 %20 to i32
  %22 = call i32 @assert(i32 %21)
  %23 = load i8*, i8** %3, align 8
  %24 = call i32 @zmq_msg_recv(i32* %6, i8* %23, i32 0)
  store i32 %24, i32* %5, align 4
  %25 = load i32, i32* %5, align 4
  %26 = icmp sge i32 %25, 0
  %27 = zext i1 %26 to i32
  %28 = call i32 @assert(i32 %27)
  %29 = call i32 @zmq_msg_data(i32* %6)
  %30 = call i32 @zmq_msg_size(i32* %6)
  %31 = call i32 @capn_init_mem(%struct.capn* %7, i32 %29, i32 %30, i32 0)
  %32 = call i32 @capn_root(%struct.capn* %7)
  %33 = call i32 @capn_getp(i32 %32, i32 0, i32 1)
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  store i32 %33, i32* %34, align 4
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @cereal_read_Event(%struct.cereal_Event* %9, i32 %36)
  store i32 0, i32* %10, align 4
  %38 = getelementptr inbounds %struct.cereal_Event, %struct.cereal_Event* %9, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @cereal_Event_sensorEvents, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %92

42:                                               ; preds = %2
  %43 = getelementptr inbounds %struct.cereal_Event, %struct.cereal_Event* %9, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  store i32 %44, i32* %11, align 4
  %45 = load i32, i32* %11, align 4
  %46 = call i32 @capn_len(i32 %45)
  store i32 %46, i32* %12, align 4
  store i32 0, i32* %13, align 4
  br label %47

47:                                               ; preds = %88, %42
  %48 = load i32, i32* %13, align 4
  %49 = load i32, i32* %12, align 4
  %50 = icmp slt i32 %48, %49
  br i1 %50, label %51, label %91

51:                                               ; preds = %47
  %52 = load i32, i32* %11, align 4
  %53 = load i32, i32* %13, align 4
  %54 = call i32 @cereal_get_SensorEventData(%struct.cereal_SensorEventData* %14, i32 %52, i32 %53)
  %55 = getelementptr inbounds %struct.cereal_SensorEventData, %struct.cereal_SensorEventData* %14, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @cereal_SensorEventData_acceleration, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %59, label %87

59:                                               ; preds = %51
  %60 = getelementptr inbounds %struct.cereal_SensorEventData, %struct.cereal_SensorEventData* %14, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @cereal_read_SensorEventData_SensorVec(%struct.cereal_SensorEventData_SensorVec* %15, i32 %61)
  %63 = getelementptr inbounds %struct.cereal_SensorEventData_SensorVec, %struct.cereal_SensorEventData_SensorVec* %15, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @capn_len(i32 %64)
  store i32 %65, i32* %16, align 4
  %66 = load i32, i32* %16, align 4
  %67 = icmp slt i32 %66, 3
  br i1 %67, label %68, label %69

68:                                               ; preds = %59
  br label %88

69:                                               ; preds = %59
  store i32 0, i32* %17, align 4
  br label %70

70:                                               ; preds = %83, %69
  %71 = load i32, i32* %17, align 4
  %72 = icmp slt i32 %71, 3
  br i1 %72, label %73, label %86

73:                                               ; preds = %70
  %74 = getelementptr inbounds %struct.cereal_SensorEventData_SensorVec, %struct.cereal_SensorEventData_SensorVec* %15, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* %17, align 4
  %77 = call i32 @capn_get32(i32 %75, i32 %76)
  %78 = call float @capn_to_f32(i32 %77)
  %79 = load float*, float** %4, align 8
  %80 = load i32, i32* %17, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds float, float* %79, i64 %81
  store float %78, float* %82, align 4
  br label %83

83:                                               ; preds = %73
  %84 = load i32, i32* %17, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %17, align 4
  br label %70

86:                                               ; preds = %70
  store i32 1, i32* %10, align 4
  br label %91

87:                                               ; preds = %51
  br label %88

88:                                               ; preds = %87, %68
  %89 = load i32, i32* %13, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %13, align 4
  br label %47

91:                                               ; preds = %86, %47
  br label %92

92:                                               ; preds = %91, %2
  %93 = call i32 @capn_free(%struct.capn* %7)
  %94 = call i32 @zmq_msg_close(i32* %6)
  %95 = load i32, i32* %10, align 4
  ret i32 %95
}

declare dso_local i32 @zmq_msg_init(i32*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @zmq_msg_recv(i32*, i8*, i32) #1

declare dso_local i32 @capn_init_mem(%struct.capn*, i32, i32, i32) #1

declare dso_local i32 @zmq_msg_data(i32*) #1

declare dso_local i32 @zmq_msg_size(i32*) #1

declare dso_local i32 @capn_getp(i32, i32, i32) #1

declare dso_local i32 @capn_root(%struct.capn*) #1

declare dso_local i32 @cereal_read_Event(%struct.cereal_Event*, i32) #1

declare dso_local i32 @capn_len(i32) #1

declare dso_local i32 @cereal_get_SensorEventData(%struct.cereal_SensorEventData*, i32, i32) #1

declare dso_local i32 @cereal_read_SensorEventData_SensorVec(%struct.cereal_SensorEventData_SensorVec*, i32) #1

declare dso_local float @capn_to_f32(i32) #1

declare dso_local i32 @capn_get32(i32, i32) #1

declare dso_local i32 @capn_free(%struct.capn*) #1

declare dso_local i32 @zmq_msg_close(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
