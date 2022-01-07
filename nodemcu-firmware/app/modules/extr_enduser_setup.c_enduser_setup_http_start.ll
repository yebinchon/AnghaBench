; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/modules/extr_enduser_setup.c_enduser_setup_http_start.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/modules/extr_enduser_setup.c_enduser_setup_http_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }
%struct.tcp_pcb = type { i32 }

@.str = private unnamed_addr constant [25 x i8] c"enduser_setup_http_start\00", align 1
@.str.1 = private unnamed_addr constant [64 x i8] c"http_start failed. Memory allocation failed (http_pcb == NULL).\00", align 1
@ENDUSER_SETUP_ERR_OUT_OF_MEMORY = common dso_local global i32 0, align 4
@ENDUSER_SETUP_ERR_FATAL = common dso_local global i32 0, align 4
@IP_ADDR_ANY = common dso_local global i32 0, align 4
@ERR_OK = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [23 x i8] c"http_start bind failed\00", align 1
@ENDUSER_SETUP_ERR_SOCKET_ALREADY_OPEN = common dso_local global i32 0, align 4
@state = common dso_local global %struct.TYPE_2__* null, align 8
@.str.3 = private unnamed_addr constant [25 x i8] c"http_start listen failed\00", align 1
@enduser_setup_http_connectcb = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [52 x i8] c"enduser_setup_http_start info. Loaded default HTML.\00", align 1
@.str.5 = private unnamed_addr constant [63 x i8] c"http_start failed. Unable to allocate memory for HTTP payload.\00", align 1
@ENDUSER_SETUP_ERR_CONNECTION_NOT_FOUND = common dso_local global i32 0, align 4
@ENDUSER_SETUP_ERR_NONFATAL = common dso_local global i32 0, align 4
@ENDUSER_SETUP_ERR_NO_RETURN = common dso_local global i32 0, align 4
@ESPCONN_ARG = common dso_local global i32 0, align 4
@err = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @enduser_setup_http_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @enduser_setup_http_start() #0 {
  %1 = alloca %struct.tcp_pcb*, align 8
  %2 = alloca i32, align 4
  %3 = call i32 @ENDUSER_SETUP_DEBUG(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %4 = call %struct.tcp_pcb* (...) @tcp_new()
  store %struct.tcp_pcb* %4, %struct.tcp_pcb** %1, align 8
  %5 = load %struct.tcp_pcb*, %struct.tcp_pcb** %1, align 8
  %6 = icmp eq %struct.tcp_pcb* %5, null
  br i1 %6, label %7, label %11

7:                                                ; preds = %0
  %8 = load i32, i32* @ENDUSER_SETUP_ERR_OUT_OF_MEMORY, align 4
  %9 = load i32, i32* @ENDUSER_SETUP_ERR_FATAL, align 4
  %10 = call i32 @ENDUSER_SETUP_ERROR(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.1, i64 0, i64 0), i32 %8, i32 %9)
  br label %11

11:                                               ; preds = %7, %0
  %12 = load %struct.tcp_pcb*, %struct.tcp_pcb** %1, align 8
  %13 = load i32, i32* @IP_ADDR_ANY, align 4
  %14 = call i64 @tcp_bind(%struct.tcp_pcb* %12, i32 %13, i32 80)
  %15 = load i64, i64* @ERR_OK, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %17, label %21

17:                                               ; preds = %11
  %18 = load i32, i32* @ENDUSER_SETUP_ERR_SOCKET_ALREADY_OPEN, align 4
  %19 = load i32, i32* @ENDUSER_SETUP_ERR_FATAL, align 4
  %20 = call i32 @ENDUSER_SETUP_ERROR(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i32 %18, i32 %19)
  br label %21

21:                                               ; preds = %17, %11
  %22 = load %struct.tcp_pcb*, %struct.tcp_pcb** %1, align 8
  %23 = call i32 @tcp_listen(%struct.tcp_pcb* %22)
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** @state, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 1
  store i32 %23, i32* %25, align 4
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** @state, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %36, label %30

30:                                               ; preds = %21
  %31 = load %struct.tcp_pcb*, %struct.tcp_pcb** %1, align 8
  %32 = call i32 @tcp_abort(%struct.tcp_pcb* %31)
  %33 = load i32, i32* @ENDUSER_SETUP_ERR_SOCKET_ALREADY_OPEN, align 4
  %34 = load i32, i32* @ENDUSER_SETUP_ERR_FATAL, align 4
  %35 = call i32 @ENDUSER_SETUP_ERROR(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i32 %33, i32 %34)
  br label %36

36:                                               ; preds = %30, %21
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** @state, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @enduser_setup_http_connectcb, align 4
  %41 = call i32 @tcp_accept(i32 %39, i32 %40)
  %42 = call i32 (...) @enduser_setup_http_load_payload()
  store i32 %42, i32* %2, align 4
  %43 = load i32, i32* %2, align 4
  %44 = icmp eq i32 %43, 1
  br i1 %44, label %45, label %47

45:                                               ; preds = %36
  %46 = call i32 @ENDUSER_SETUP_DEBUG(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.4, i64 0, i64 0))
  br label %55

47:                                               ; preds = %36
  %48 = load i32, i32* %2, align 4
  %49 = icmp eq i32 %48, 2
  br i1 %49, label %50, label %54

50:                                               ; preds = %47
  %51 = load i32, i32* @ENDUSER_SETUP_ERR_OUT_OF_MEMORY, align 4
  %52 = load i32, i32* @ENDUSER_SETUP_ERR_FATAL, align 4
  %53 = call i32 @ENDUSER_SETUP_ERROR(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.5, i64 0, i64 0), i32 %51, i32 %52)
  br label %54

54:                                               ; preds = %50, %47
  br label %55

55:                                               ; preds = %54, %45
  ret i32 0
}

declare dso_local i32 @ENDUSER_SETUP_DEBUG(i8*) #1

declare dso_local %struct.tcp_pcb* @tcp_new(...) #1

declare dso_local i32 @ENDUSER_SETUP_ERROR(i8*, i32, i32) #1

declare dso_local i64 @tcp_bind(%struct.tcp_pcb*, i32, i32) #1

declare dso_local i32 @tcp_listen(%struct.tcp_pcb*) #1

declare dso_local i32 @tcp_abort(%struct.tcp_pcb*) #1

declare dso_local i32 @tcp_accept(i32, i32) #1

declare dso_local i32 @enduser_setup_http_load_payload(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
