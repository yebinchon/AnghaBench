; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/modules/extr_mqtt.c_socket_dns_found.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/modules/extr_mqtt.c_socket_dns_found.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64 }
%struct.TYPE_9__ = type { i32 }
%struct.espconn = type { %struct.TYPE_8__, i64 }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }

@.str = private unnamed_addr constant [25 x i8] c"enter socket_dns_found.\0A\00", align 1
@ESPCONN_OK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"pesp_conn null.\0A\00", align 1
@dns_reconn_count = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [11 x i8] c"DNS Fail!\0A\00", align 1
@MQTT_CONN_FAIL_DNS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [15 x i8] c"DNS retry %d!\0A\00", align 1
@host_ip = common dso_local global %struct.TYPE_10__ zeroinitializer, align 8
@socket_dns_foundcb = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [16 x i8] c"TCP ip is set: \00", align 1
@IPSTR = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.6 = private unnamed_addr constant [25 x i8] c"leave socket_dns_found.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.TYPE_9__*, i8*)* @socket_dns_found to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @socket_dns_found(i8* %0, %struct.TYPE_9__* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.espconn*, align 8
  %10 = alloca %struct.espconn*, align 8
  %11 = alloca i32*, align 8
  store i8* %0, i8** %5, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %6, align 8
  store i8* %2, i8** %7, align 8
  %12 = call i32 (i8*, ...) @NODE_DBG(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %13 = load i32, i32* @ESPCONN_OK, align 4
  store i32 %13, i32* %8, align 4
  %14 = load i8*, i8** %7, align 8
  %15 = bitcast i8* %14 to %struct.espconn*
  store %struct.espconn* %15, %struct.espconn** %9, align 8
  %16 = load %struct.espconn*, %struct.espconn** %9, align 8
  %17 = icmp eq %struct.espconn* %16, null
  br i1 %17, label %18, label %20

18:                                               ; preds = %3
  %19 = call i32 (i8*, ...) @NODE_DBG(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %85

20:                                               ; preds = %3
  %21 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %22 = icmp eq %struct.TYPE_9__* %21, null
  br i1 %22, label %23, label %56

23:                                               ; preds = %20
  %24 = load i32, i32* @dns_reconn_count, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* @dns_reconn_count, align 4
  %26 = load i32, i32* @dns_reconn_count, align 4
  %27 = icmp sge i32 %26, 5
  br i1 %27, label %28, label %49

28:                                               ; preds = %23
  %29 = call i32 (i8*, ...) @NODE_DBG(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  %30 = load i8*, i8** %7, align 8
  %31 = bitcast i8* %30 to %struct.espconn*
  store %struct.espconn* %31, %struct.espconn** %10, align 8
  %32 = load %struct.espconn*, %struct.espconn** %10, align 8
  %33 = icmp ne %struct.espconn* %32, null
  br i1 %33, label %34, label %46

34:                                               ; preds = %28
  %35 = load %struct.espconn*, %struct.espconn** %10, align 8
  %36 = getelementptr inbounds %struct.espconn, %struct.espconn* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = inttoptr i64 %37 to i32*
  store i32* %38, i32** %11, align 8
  %39 = load i32*, i32** %11, align 8
  %40 = icmp ne i32* %39, null
  br i1 %40, label %41, label %45

41:                                               ; preds = %34
  %42 = load i32*, i32** %11, align 8
  %43 = load i32, i32* @MQTT_CONN_FAIL_DNS, align 4
  %44 = call i32 @mqtt_connack_fail(i32* %42, i32 %43)
  br label %45

45:                                               ; preds = %41, %34
  br label %46

46:                                               ; preds = %45, %28
  %47 = load i8*, i8** %7, align 8
  %48 = call i32 @mqtt_socket_disconnected(i8* %47)
  store i32 -1, i32* %4, align 4
  br label %85

49:                                               ; preds = %23
  %50 = load i32, i32* @dns_reconn_count, align 4
  %51 = call i32 (i8*, ...) @NODE_DBG(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i32 %50)
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @host_ip, i32 0, i32 0), align 8
  %52 = load %struct.espconn*, %struct.espconn** %9, align 8
  %53 = load i8*, i8** %5, align 8
  %54 = load i32, i32* @socket_dns_foundcb, align 4
  %55 = call i32 @espconn_gethostbyname(%struct.espconn* %52, i8* %53, %struct.TYPE_10__* @host_ip, i32 %54)
  store i32 %55, i32* %4, align 4
  br label %85

56:                                               ; preds = %20
  %57 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %58 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %82

61:                                               ; preds = %56
  store i32 0, i32* @dns_reconn_count, align 4
  %62 = load %struct.espconn*, %struct.espconn** %9, align 8
  %63 = getelementptr inbounds %struct.espconn, %struct.espconn* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i32 0, i32 0
  %65 = load %struct.TYPE_7__*, %struct.TYPE_7__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %69 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %68, i32 0, i32 0
  %70 = call i32 @memcpy(i32 %67, i32* %69, i32 4)
  %71 = call i32 (i8*, ...) @NODE_DBG(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0))
  %72 = load i32, i32* @IPSTR, align 4
  %73 = sext i32 %72 to i64
  %74 = inttoptr i64 %73 to i8*
  %75 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %76 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %75, i32 0, i32 0
  %77 = call i32 @IP2STR(i32* %76)
  %78 = call i32 (i8*, ...) @NODE_DBG(i8* %74, i32 %77)
  %79 = call i32 (i8*, ...) @NODE_DBG(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  %80 = load %struct.espconn*, %struct.espconn** %9, align 8
  %81 = call i32 @socket_connect(%struct.espconn* %80)
  store i32 %81, i32* %8, align 4
  br label %82

82:                                               ; preds = %61, %56
  %83 = call i32 (i8*, ...) @NODE_DBG(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.6, i64 0, i64 0))
  %84 = load i32, i32* %8, align 4
  store i32 %84, i32* %4, align 4
  br label %85

85:                                               ; preds = %82, %49, %46, %18
  %86 = load i32, i32* %4, align 4
  ret i32 %86
}

declare dso_local i32 @NODE_DBG(i8*, ...) #1

declare dso_local i32 @mqtt_connack_fail(i32*, i32) #1

declare dso_local i32 @mqtt_socket_disconnected(i8*) #1

declare dso_local i32 @espconn_gethostbyname(%struct.espconn*, i8*, %struct.TYPE_10__*, i32) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i32 @IP2STR(i32*) #1

declare dso_local i32 @socket_connect(%struct.espconn*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
