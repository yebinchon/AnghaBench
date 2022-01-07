; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/modules/extr_enduser_setup.c_enduser_setup_dns_start.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/modules/extr_enduser_setup.c_enduser_setup_dns_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.espconn* }
%struct.espconn = type { i32, i32, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.espconn* }

@.str = private unnamed_addr constant [24 x i8] c"enduser_setup_dns_start\00", align 1
@state = common dso_local global %struct.TYPE_4__* null, align 8
@.str.1 = private unnamed_addr constant [75 x i8] c"dns_start failed. Appears to already be started (espconn_dns_udp != NULL).\00", align 1
@ENDUSER_SETUP_ERR_ALREADY_INITIALIZED = common dso_local global i32 0, align 4
@ENDUSER_SETUP_ERR_FATAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [70 x i8] c"dns_start failed. Memory allocation failed (espconn_dns_udp == NULL).\00", align 1
@ENDUSER_SETUP_ERR_OUT_OF_MEMORY = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [62 x i8] c"dns_start failed. Memory allocation failed (esp_udp == NULL).\00", align 1
@ESPCONN_UDP = common dso_local global i32 0, align 4
@ESPCONN_NONE = common dso_local global i32 0, align 4
@enduser_setup_dns_recv_callback = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [64 x i8] c"dns_start failed. Couldn't add receive callback, unknown error.\00", align 1
@ENDUSER_SETUP_ERR_UNKOWN_ERROR = common dso_local global i32 0, align 4
@ESPCONN_ISCONN = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [85 x i8] c"dns_start failed. Couldn't create connection, already listening for that connection.\00", align 1
@ENDUSER_SETUP_ERR_SOCKET_ALREADY_OPEN = common dso_local global i32 0, align 4
@ESPCONN_MEM = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [61 x i8] c"dns_start failed. Couldn't create connection, out of memory.\00", align 1
@.str.7 = private unnamed_addr constant [61 x i8] c"dns_start failed. Couldn't create connection, unknown error.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @enduser_setup_dns_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @enduser_setup_dns_start() #0 {
  %1 = alloca %struct.espconn*, align 8
  %2 = alloca i64, align 8
  %3 = call i32 @ENDUSER_SETUP_DEBUG(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %4 = load %struct.TYPE_4__*, %struct.TYPE_4__** @state, align 8
  %5 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 0
  %6 = load %struct.espconn*, %struct.espconn** %5, align 8
  %7 = icmp ne %struct.espconn* %6, null
  br i1 %7, label %8, label %12

8:                                                ; preds = %0
  %9 = load i32, i32* @ENDUSER_SETUP_ERR_ALREADY_INITIALIZED, align 4
  %10 = load i32, i32* @ENDUSER_SETUP_ERR_FATAL, align 4
  %11 = call i32 @ENDUSER_SETUP_ERROR(i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.1, i64 0, i64 0), i32 %9, i32 %10)
  br label %12

12:                                               ; preds = %8, %0
  %13 = call i64 @malloc(i32 24)
  %14 = inttoptr i64 %13 to %struct.espconn*
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** @state, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  store %struct.espconn* %14, %struct.espconn** %16, align 8
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** @state, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load %struct.espconn*, %struct.espconn** %18, align 8
  %20 = icmp eq %struct.espconn* %19, null
  br i1 %20, label %21, label %25

21:                                               ; preds = %12
  %22 = load i32, i32* @ENDUSER_SETUP_ERR_OUT_OF_MEMORY, align 4
  %23 = load i32, i32* @ENDUSER_SETUP_ERR_FATAL, align 4
  %24 = call i32 @ENDUSER_SETUP_ERROR(i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.2, i64 0, i64 0), i32 %22, i32 %23)
  br label %25

25:                                               ; preds = %21, %12
  %26 = call i64 @malloc(i32 24)
  %27 = inttoptr i64 %26 to %struct.espconn*
  store %struct.espconn* %27, %struct.espconn** %1, align 8
  %28 = load %struct.espconn*, %struct.espconn** %1, align 8
  %29 = icmp eq %struct.espconn* %28, null
  br i1 %29, label %30, label %34

30:                                               ; preds = %25
  %31 = load i32, i32* @ENDUSER_SETUP_ERR_OUT_OF_MEMORY, align 4
  %32 = load i32, i32* @ENDUSER_SETUP_ERR_FATAL, align 4
  %33 = call i32 @ENDUSER_SETUP_ERROR(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.3, i64 0, i64 0), i32 %31, i32 %32)
  br label %34

34:                                               ; preds = %30, %25
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** @state, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load %struct.espconn*, %struct.espconn** %36, align 8
  %38 = call i32 @memset(%struct.espconn* %37, i32 0, i32 24)
  %39 = load %struct.espconn*, %struct.espconn** %1, align 8
  %40 = call i32 @memset(%struct.espconn* %39, i32 0, i32 24)
  %41 = load %struct.espconn*, %struct.espconn** %1, align 8
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** @state, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = load %struct.espconn*, %struct.espconn** %43, align 8
  %45 = getelementptr inbounds %struct.espconn, %struct.espconn* %44, i32 0, i32 3
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 0
  store %struct.espconn* %41, %struct.espconn** %46, align 8
  %47 = load i32, i32* @ESPCONN_UDP, align 4
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** @state, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = load %struct.espconn*, %struct.espconn** %49, align 8
  %51 = getelementptr inbounds %struct.espconn, %struct.espconn* %50, i32 0, i32 2
  store i32 %47, i32* %51, align 8
  %52 = load i32, i32* @ESPCONN_NONE, align 4
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** @state, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  %55 = load %struct.espconn*, %struct.espconn** %54, align 8
  %56 = getelementptr inbounds %struct.espconn, %struct.espconn* %55, i32 0, i32 1
  store i32 %52, i32* %56, align 4
  %57 = load %struct.espconn*, %struct.espconn** %1, align 8
  %58 = getelementptr inbounds %struct.espconn, %struct.espconn* %57, i32 0, i32 0
  store i32 53, i32* %58, align 8
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** @state, align 8
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  %61 = load %struct.espconn*, %struct.espconn** %60, align 8
  %62 = load i32, i32* @enduser_setup_dns_recv_callback, align 4
  %63 = call i64 @espconn_regist_recvcb(%struct.espconn* %61, i32 %62)
  store i64 %63, i64* %2, align 8
  %64 = load i64, i64* %2, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %70

66:                                               ; preds = %34
  %67 = load i32, i32* @ENDUSER_SETUP_ERR_UNKOWN_ERROR, align 4
  %68 = load i32, i32* @ENDUSER_SETUP_ERR_FATAL, align 4
  %69 = call i32 @ENDUSER_SETUP_ERROR(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.4, i64 0, i64 0), i32 %67, i32 %68)
  br label %70

70:                                               ; preds = %66, %34
  %71 = load %struct.TYPE_4__*, %struct.TYPE_4__** @state, align 8
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 0
  %73 = load %struct.espconn*, %struct.espconn** %72, align 8
  %74 = call i64 @espconn_create(%struct.espconn* %73)
  store i64 %74, i64* %2, align 8
  %75 = load i64, i64* %2, align 8
  %76 = load i64, i64* @ESPCONN_ISCONN, align 8
  %77 = icmp eq i64 %75, %76
  br i1 %77, label %78, label %82

78:                                               ; preds = %70
  %79 = load i32, i32* @ENDUSER_SETUP_ERR_SOCKET_ALREADY_OPEN, align 4
  %80 = load i32, i32* @ENDUSER_SETUP_ERR_FATAL, align 4
  %81 = call i32 @ENDUSER_SETUP_ERROR(i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str.5, i64 0, i64 0), i32 %79, i32 %80)
  br label %99

82:                                               ; preds = %70
  %83 = load i64, i64* %2, align 8
  %84 = load i64, i64* @ESPCONN_MEM, align 8
  %85 = icmp eq i64 %83, %84
  br i1 %85, label %86, label %90

86:                                               ; preds = %82
  %87 = load i32, i32* @ENDUSER_SETUP_ERR_OUT_OF_MEMORY, align 4
  %88 = load i32, i32* @ENDUSER_SETUP_ERR_FATAL, align 4
  %89 = call i32 @ENDUSER_SETUP_ERROR(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.6, i64 0, i64 0), i32 %87, i32 %88)
  br label %98

90:                                               ; preds = %82
  %91 = load i64, i64* %2, align 8
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %97

93:                                               ; preds = %90
  %94 = load i32, i32* @ENDUSER_SETUP_ERR_UNKOWN_ERROR, align 4
  %95 = load i32, i32* @ENDUSER_SETUP_ERR_FATAL, align 4
  %96 = call i32 @ENDUSER_SETUP_ERROR(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.7, i64 0, i64 0), i32 %94, i32 %95)
  br label %97

97:                                               ; preds = %93, %90
  br label %98

98:                                               ; preds = %97, %86
  br label %99

99:                                               ; preds = %98, %78
  ret i32 0
}

declare dso_local i32 @ENDUSER_SETUP_DEBUG(i8*) #1

declare dso_local i32 @ENDUSER_SETUP_ERROR(i8*, i32, i32) #1

declare dso_local i64 @malloc(i32) #1

declare dso_local i32 @memset(%struct.espconn*, i32, i32) #1

declare dso_local i64 @espconn_regist_recvcb(%struct.espconn*, i32) #1

declare dso_local i64 @espconn_create(%struct.espconn*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
