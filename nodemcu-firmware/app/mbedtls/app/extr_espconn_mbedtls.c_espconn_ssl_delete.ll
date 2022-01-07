; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/mbedtls/app/extr_espconn_mbedtls.c_espconn_ssl_delete.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/mbedtls/app/extr_espconn_mbedtls.c_espconn_ssl_delete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_10__*, %struct.espconn* }
%struct.TYPE_10__ = type { i32 }
%struct.espconn = type { i64, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }

@ESPCONN_ARG = common dso_local global i32 0, align 4
@ESPCONN_SSL = common dso_local global i32 0, align 4
@ESPCONN_INPROGRESS = common dso_local global i32 0, align 4
@plink_server = common dso_local global %struct.TYPE_11__* null, align 8
@def_private_key = common dso_local global i32 0, align 4
@def_certificate = common dso_local global i32 0, align 4
@ESPCONN_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @espconn_ssl_delete(%struct.espconn* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.espconn*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca %struct.TYPE_10__*, align 8
  store %struct.espconn* %0, %struct.espconn** %3, align 8
  store i32* null, i32** %4, align 8
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %5, align 8
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %6, align 8
  %7 = load %struct.espconn*, %struct.espconn** %3, align 8
  %8 = icmp eq %struct.espconn* %7, null
  br i1 %8, label %9, label %11

9:                                                ; preds = %1
  %10 = load i32, i32* @ESPCONN_ARG, align 4
  store i32 %10, i32* %2, align 4
  br label %57

11:                                               ; preds = %1
  %12 = load %struct.espconn*, %struct.espconn** %3, align 8
  %13 = load i32, i32* @ESPCONN_SSL, align 4
  %14 = call i32 @espconn_get_connection_info(%struct.espconn* %12, i32** %4, i32 %13)
  %15 = load %struct.espconn*, %struct.espconn** %3, align 8
  %16 = getelementptr inbounds %struct.espconn, %struct.espconn* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %11
  %20 = load i32, i32* @ESPCONN_INPROGRESS, align 4
  store i32 %20, i32* %2, align 4
  br label %57

21:                                               ; preds = %11
  %22 = load %struct.TYPE_11__*, %struct.TYPE_11__** @plink_server, align 8
  store %struct.TYPE_11__* %22, %struct.TYPE_11__** %5, align 8
  %23 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %24 = icmp ne %struct.TYPE_11__* %23, null
  br i1 %24, label %25, label %55

25:                                               ; preds = %21
  %26 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %26, i32 0, i32 1
  %28 = load %struct.espconn*, %struct.espconn** %27, align 8
  %29 = load %struct.espconn*, %struct.espconn** %3, align 8
  %30 = icmp eq %struct.espconn* %28, %29
  br i1 %30, label %31, label %55

31:                                               ; preds = %25
  %32 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %32, i32 0, i32 0
  %34 = load %struct.TYPE_10__*, %struct.TYPE_10__** %33, align 8
  store %struct.TYPE_10__* %34, %struct.TYPE_10__** %6, align 8
  %35 = load %struct.espconn*, %struct.espconn** %3, align 8
  %36 = getelementptr inbounds %struct.espconn, %struct.espconn* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i32 0, i32 0
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @espconn_kill_pcb(i32 %40)
  %42 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %42, i32 0, i32 0
  %44 = call i32 @mbedtls_net_free(i32* %43)
  %45 = call i32 @mbedtls_msg_free(%struct.TYPE_10__** %6)
  %46 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %47 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %47, i32 0, i32 0
  store %struct.TYPE_10__* %46, %struct.TYPE_10__** %48, align 8
  %49 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %50 = call i32 @os_free(%struct.TYPE_11__* %49)
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %5, align 8
  %51 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  store %struct.TYPE_11__* %51, %struct.TYPE_11__** @plink_server, align 8
  %52 = call i32 @mbedtls_parame_free(i32* @def_private_key)
  %53 = call i32 @mbedtls_parame_free(i32* @def_certificate)
  %54 = load i32, i32* @ESPCONN_OK, align 4
  store i32 %54, i32* %2, align 4
  br label %57

55:                                               ; preds = %25, %21
  %56 = load i32, i32* @ESPCONN_ARG, align 4
  store i32 %56, i32* %2, align 4
  br label %57

57:                                               ; preds = %55, %31, %19, %9
  %58 = load i32, i32* %2, align 4
  ret i32 %58
}

declare dso_local i32 @espconn_get_connection_info(%struct.espconn*, i32**, i32) #1

declare dso_local i32 @espconn_kill_pcb(i32) #1

declare dso_local i32 @mbedtls_net_free(i32*) #1

declare dso_local i32 @mbedtls_msg_free(%struct.TYPE_10__**) #1

declare dso_local i32 @os_free(%struct.TYPE_11__*) #1

declare dso_local i32 @mbedtls_parame_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
