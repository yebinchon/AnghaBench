; ModuleID = '/home/carl/AnghaBench/openpilot/selfdrive/visiond/cameras/extr_camera_qcom.c_ops_thread.c'
source_filename = "/home/carl/AnghaBench/openpilot/selfdrive/visiond/cameras/extr_camera_qcom.c_ops_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_8__, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, float }
%struct.TYPE_7__ = type { i32, i64, i32 }

@.str = private unnamed_addr constant [16 x i8] c"camera_settings\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"@inproc://cameraops\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c">tcp://127.0.0.1:8003\00", align 1
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.4 = private unnamed_addr constant [20 x i8] c">inproc://terminate\00", align 1
@do_exit = common dso_local global i32 0, align 4
@CAMERA_MSG_AUTOEXPOSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*)* @ops_thread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @ops_thread(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_7__, align 8
  %13 = alloca [3 x float], align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %16 = load i8*, i8** %2, align 8
  %17 = bitcast i8* %16 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %17, %struct.TYPE_6__** %4, align 8
  %18 = call i32 @set_thread_name(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %19 = call i32* @zsock_new_pull(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  store i32* %19, i32** %5, align 8
  %20 = load i32*, i32** %5, align 8
  %21 = ptrtoint i32* %20 to i32
  %22 = call i32 @assert(i32 %21)
  %23 = call i32* @zsock_new_sub(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0))
  store i32* %23, i32** %6, align 8
  %24 = load i32*, i32** %6, align 8
  %25 = ptrtoint i32* %24 to i32
  %26 = call i32 @assert(i32 %25)
  %27 = call i32* @zsock_new_sub(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0))
  store i32* %27, i32** %7, align 8
  %28 = load i32*, i32** %7, align 8
  %29 = ptrtoint i32* %28 to i32
  %30 = call i32 @assert(i32 %29)
  %31 = load i32*, i32** %5, align 8
  %32 = load i32*, i32** %6, align 8
  %33 = load i32*, i32** %7, align 8
  %34 = call i32* @zpoller_new(i32* %31, i32* %32, i32* %33, i32* null)
  store i32* %34, i32** %8, align 8
  %35 = load i32*, i32** %8, align 8
  %36 = ptrtoint i32* %35 to i32
  %37 = call i32 @assert(i32 %36)
  br label %38

38:                                               ; preds = %144, %1
  %39 = load i32, i32* @do_exit, align 4
  %40 = icmp ne i32 %39, 0
  %41 = xor i1 %40, true
  br i1 %41, label %42, label %145

42:                                               ; preds = %38
  %43 = load i32*, i32** %8, align 8
  %44 = call i64 @zpoller_wait(i32* %43, i32 -1)
  %45 = inttoptr i64 %44 to i32*
  store i32* %45, i32** %9, align 8
  %46 = load i32*, i32** %9, align 8
  %47 = load i32*, i32** %7, align 8
  %48 = icmp eq i32* %46, %47
  br i1 %48, label %52, label %49

49:                                               ; preds = %42
  %50 = load i32*, i32** %9, align 8
  %51 = icmp eq i32* %50, null
  br i1 %51, label %52, label %53

52:                                               ; preds = %49, %42
  br label %145

53:                                               ; preds = %49
  %54 = load i32*, i32** %9, align 8
  %55 = call i8* @zsock_resolve(i32* %54)
  store i8* %55, i8** %10, align 8
  %56 = load i32*, i32** %9, align 8
  %57 = load i32*, i32** %5, align 8
  %58 = icmp eq i32* %56, %57
  br i1 %58, label %59, label %111

59:                                               ; preds = %53
  %60 = call i32 @zmq_msg_init(i32* %11)
  store i32 %60, i32* %3, align 4
  %61 = load i32, i32* %3, align 4
  %62 = icmp eq i32 %61, 0
  %63 = zext i1 %62 to i32
  %64 = call i32 @assert(i32 %63)
  %65 = load i8*, i8** %10, align 8
  %66 = call i32 @zmq_msg_recv(i32* %11, i8* %65, i32 0)
  store i32 %66, i32* %3, align 4
  %67 = load i32, i32* %3, align 4
  %68 = icmp sge i32 %67, 0
  %69 = zext i1 %68 to i32
  %70 = call i32 @assert(i32 %69)
  %71 = call i32 @zmq_msg_size(i32* %11)
  %72 = sext i32 %71 to i64
  %73 = icmp eq i64 %72, 24
  br i1 %73, label %74, label %109

74:                                               ; preds = %59
  %75 = call i32 @zmq_msg_data(i32* %11)
  %76 = call i32 @zmq_msg_size(i32* %11)
  %77 = call i32 @memcpy(%struct.TYPE_7__* %12, i32 %75, i32 %76)
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = load i32, i32* @CAMERA_MSG_AUTOEXPOSE, align 4
  %81 = icmp eq i32 %79, %80
  br i1 %81, label %82, label %102

82:                                               ; preds = %74
  %83 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  %85 = icmp eq i64 %84, 0
  br i1 %85, label %86, label %95

86:                                               ; preds = %82
  %87 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 2
  %90 = load i32, i32* %89, align 8
  %91 = call i32 @do_autoexposure(%struct.TYPE_8__* %88, i32 %90)
  %92 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 0
  %94 = call i32 @do_autofocus(%struct.TYPE_8__* %93)
  br label %101

95:                                               ; preds = %82
  %96 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i32 0, i32 1
  %98 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 2
  %99 = load i32, i32* %98, align 8
  %100 = call i32 @do_autoexposure(%struct.TYPE_8__* %97, i32 %99)
  br label %101

101:                                              ; preds = %95, %86
  br label %108

102:                                              ; preds = %74
  %103 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = icmp eq i32 %104, -1
  br i1 %105, label %106, label %107

106:                                              ; preds = %102
  br label %145

107:                                              ; preds = %102
  br label %108

108:                                              ; preds = %107, %101
  br label %109

109:                                              ; preds = %108, %59
  %110 = call i32 @zmq_msg_close(i32* %11)
  br label %144

111:                                              ; preds = %53
  %112 = load i32*, i32** %9, align 8
  %113 = load i32*, i32** %6, align 8
  %114 = icmp eq i32* %112, %113
  br i1 %114, label %115, label %143

115:                                              ; preds = %111
  %116 = bitcast [3 x float]* %13 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %116, i8 0, i64 12, i1 false)
  %117 = load i8*, i8** %10, align 8
  %118 = getelementptr inbounds [3 x float], [3 x float]* %13, i64 0, i64 0
  %119 = call i32 @acceleration_from_sensor_sock(i8* %117, float* %118)
  store i32 %119, i32* %14, align 4
  %120 = call i32 (...) @nanos_since_boot()
  store i32 %120, i32* %15, align 4
  %121 = load i32, i32* %14, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %142

123:                                              ; preds = %115
  %124 = load i32, i32* %15, align 4
  %125 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %126 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  %129 = sub nsw i32 %124, %128
  %130 = icmp sgt i32 %129, 10000000
  br i1 %130, label %131, label %142

131:                                              ; preds = %123
  %132 = load i32, i32* %15, align 4
  %133 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %134 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %133, i32 0, i32 0
  %135 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %134, i32 0, i32 0
  store i32 %132, i32* %135, align 4
  %136 = getelementptr inbounds [3 x float], [3 x float]* %13, i64 0, i64 2
  %137 = load float, float* %136, align 4
  %138 = fneg float %137
  %139 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %140 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %139, i32 0, i32 0
  %141 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %140, i32 0, i32 1
  store float %138, float* %141, align 4
  br label %142

142:                                              ; preds = %131, %123, %115
  br label %143

143:                                              ; preds = %142, %111
  br label %144

144:                                              ; preds = %143, %109
  br label %38

145:                                              ; preds = %106, %52, %38
  %146 = call i32 @zpoller_destroy(i32** %8)
  %147 = call i32 @zsock_destroy(i32** %5)
  %148 = call i32 @zsock_destroy(i32** %6)
  %149 = call i32 @zsock_destroy(i32** %7)
  ret i8* null
}

declare dso_local i32 @set_thread_name(i8*) #1

declare dso_local i32* @zsock_new_pull(i8*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32* @zsock_new_sub(i8*, i8*) #1

declare dso_local i32* @zpoller_new(i32*, i32*, i32*, i32*) #1

declare dso_local i64 @zpoller_wait(i32*, i32) #1

declare dso_local i8* @zsock_resolve(i32*) #1

declare dso_local i32 @zmq_msg_init(i32*) #1

declare dso_local i32 @zmq_msg_recv(i32*, i8*, i32) #1

declare dso_local i32 @zmq_msg_size(i32*) #1

declare dso_local i32 @memcpy(%struct.TYPE_7__*, i32, i32) #1

declare dso_local i32 @zmq_msg_data(i32*) #1

declare dso_local i32 @do_autoexposure(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @do_autofocus(%struct.TYPE_8__*) #1

declare dso_local i32 @zmq_msg_close(i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @acceleration_from_sensor_sock(i8*, float*) #1

declare dso_local i32 @nanos_since_boot(...) #1

declare dso_local i32 @zpoller_destroy(i32**) #1

declare dso_local i32 @zsock_destroy(i32**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
