; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/modules/extr_mqtt.c_mqtt_send_if_possible.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/modules/extr_mqtt.c_mqtt_send_if_possible.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.espconn = type { i64 }
%struct.TYPE_9__ = type { i64, %struct.TYPE_7__, i64, i64 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_8__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32 }

@ESPCONN_OK = common dso_local global i32 0, align 4
@MQTT_SEND_TIMEOUT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [10 x i8] c"Sent: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"send_if_poss, queue size: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.espconn*)* @mqtt_send_if_possible to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mqtt_send_if_possible(%struct.espconn* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.espconn*, align 8
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_8__*, align 8
  store %struct.espconn* %0, %struct.espconn** %3, align 8
  %7 = load %struct.espconn*, %struct.espconn** %3, align 8
  %8 = icmp eq %struct.espconn* %7, null
  br i1 %8, label %9, label %11

9:                                                ; preds = %1
  %10 = load i32, i32* @ESPCONN_OK, align 4
  store i32 %10, i32* %2, align 4
  br label %62

11:                                               ; preds = %1
  %12 = load %struct.espconn*, %struct.espconn** %3, align 8
  %13 = getelementptr inbounds %struct.espconn, %struct.espconn* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = inttoptr i64 %14 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %15, %struct.TYPE_9__** %4, align 8
  %16 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %17 = icmp eq %struct.TYPE_9__* %16, null
  br i1 %17, label %18, label %20

18:                                               ; preds = %11
  %19 = load i32, i32* @ESPCONN_OK, align 4
  store i32 %19, i32* %2, align 4
  br label %62

20:                                               ; preds = %11
  %21 = load i32, i32* @ESPCONN_OK, align 4
  store i32 %21, i32* %5, align 4
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %26, label %55

26:                                               ; preds = %20
  %27 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 0
  %30 = call %struct.TYPE_8__* @msg_peek(i32* %29)
  store %struct.TYPE_8__* %30, %struct.TYPE_8__** %6, align 8
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %32 = icmp ne %struct.TYPE_8__* %31, null
  br i1 %32, label %33, label %54

33:                                               ; preds = %26
  %34 = load i64, i64* @MQTT_SEND_TIMEOUT, align 8
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i32 0, i32 0
  store i64 %34, i64* %36, align 8
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @NODE_DBG(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %40)
  %42 = load %struct.espconn*, %struct.espconn** %3, align 8
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @espconn_send(%struct.espconn* %42, i32 %46, i32 %50)
  store i32 %51, i32* %5, align 4
  %52 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %52, i32 0, i32 2
  store i64 0, i64* %53, align 8
  br label %54

54:                                               ; preds = %33, %26
  br label %55

55:                                               ; preds = %54, %20
  %56 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %57 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 0
  %59 = call i32 @msg_size(i32* %58)
  %60 = call i32 @NODE_DBG(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %59)
  %61 = load i32, i32* %5, align 4
  store i32 %61, i32* %2, align 4
  br label %62

62:                                               ; preds = %55, %18, %9
  %63 = load i32, i32* %2, align 4
  ret i32 %63
}

declare dso_local %struct.TYPE_8__* @msg_peek(i32*) #1

declare dso_local i32 @NODE_DBG(i8*, i32) #1

declare dso_local i32 @espconn_send(%struct.espconn*, i32, i32) #1

declare dso_local i32 @msg_size(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
