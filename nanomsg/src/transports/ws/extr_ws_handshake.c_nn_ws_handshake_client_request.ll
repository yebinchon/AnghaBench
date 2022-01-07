; ModuleID = '/home/carl/AnghaBench/nanomsg/src/transports/ws/extr_ws_handshake.c_nn_ws_handshake_client_request.c'
source_filename = "/home/carl/AnghaBench/nanomsg/src/transports/ws/extr_ws_handshake.c_nn_ws_handshake_client_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, i8* }
%struct.nn_ws_handshake = type { i8*, i8*, i8*, i32, %struct.TYPE_7__*, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64 }
%struct.nn_iovec = type { i8*, i8* }

@NN_WS_HANDSHAKE_ACCEPT_KEY_LEN = common dso_local global i32 0, align 4
@NN_WS_HANDSHAKE_SP_MAP_LEN = common dso_local global i32 0, align 4
@NN_WS_HANDSHAKE_SP_MAP = common dso_local global %struct.TYPE_8__* null, align 8
@.str = private unnamed_addr constant [149 x i8] c"GET %s HTTP/1.1\0D\0AHost: %s\0D\0AUpgrade: websocket\0D\0AConnection: Upgrade\0D\0ASec-WebSocket-Key: %s\0D\0ASec-WebSocket-Version: 13\0D\0ASec-WebSocket-Protocol: %s\0D\0A\0D\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nn_ws_handshake*)* @nn_ws_handshake_client_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nn_ws_handshake_client_request(%struct.nn_ws_handshake* %0) #0 {
  %2 = alloca %struct.nn_ws_handshake*, align 8
  %3 = alloca %struct.nn_iovec, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca [16 x i32], align 16
  %8 = alloca [25 x i8], align 16
  store %struct.nn_ws_handshake* %0, %struct.nn_ws_handshake** %2, align 8
  %9 = getelementptr inbounds [16 x i32], [16 x i32]* %7, i64 0, i64 0
  %10 = call i32 @nn_random_generate(i32* %9, i32 64)
  %11 = getelementptr inbounds [16 x i32], [16 x i32]* %7, i64 0, i64 0
  %12 = getelementptr inbounds [25 x i8], [25 x i8]* %8, i64 0, i64 0
  %13 = call i32 @nn_base64_encode(i32* %11, i32 64, i8* %12, i32 25)
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* %5, align 4
  %15 = icmp sge i32 %14, 0
  %16 = zext i1 %15 to i32
  %17 = call i32 @nn_assert(i32 %16)
  %18 = getelementptr inbounds [25 x i8], [25 x i8]* %8, i64 0, i64 0
  %19 = call i8* @strlen(i8* %18)
  %20 = ptrtoint i8* %19 to i64
  store i64 %20, i64* %4, align 8
  %21 = load i64, i64* %4, align 8
  %22 = icmp eq i64 %21, 24
  %23 = zext i1 %22 to i32
  %24 = call i32 @nn_assert(i32 %23)
  %25 = getelementptr inbounds [25 x i8], [25 x i8]* %8, i64 0, i64 0
  %26 = load i64, i64* %4, align 8
  %27 = load %struct.nn_ws_handshake*, %struct.nn_ws_handshake** %2, align 8
  %28 = getelementptr inbounds %struct.nn_ws_handshake, %struct.nn_ws_handshake* %27, i32 0, i32 5
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @nn_ws_handshake_hash_key(i8* %25, i64 %26, i32 %29, i32 4)
  store i32 %30, i32* %5, align 4
  %31 = load i32, i32* %5, align 4
  %32 = load i32, i32* @NN_WS_HANDSHAKE_ACCEPT_KEY_LEN, align 4
  %33 = icmp eq i32 %31, %32
  %34 = zext i1 %33 to i32
  %35 = call i32 @nn_assert(i32 %34)
  store i32 0, i32* %6, align 4
  br label %36

36:                                               ; preds = %59, %1
  %37 = load i32, i32* %6, align 4
  %38 = load i32, i32* @NN_WS_HANDSHAKE_SP_MAP_LEN, align 4
  %39 = icmp ult i32 %37, %38
  br i1 %39, label %40, label %62

40:                                               ; preds = %36
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** @NN_WS_HANDSHAKE_SP_MAP, align 8
  %42 = load i32, i32* %6, align 4
  %43 = zext i32 %42 to i64
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load %struct.nn_ws_handshake*, %struct.nn_ws_handshake** %2, align 8
  %48 = getelementptr inbounds %struct.nn_ws_handshake, %struct.nn_ws_handshake* %47, i32 0, i32 4
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 0
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 0
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = icmp eq i64 %46, %55
  br i1 %56, label %57, label %58

57:                                               ; preds = %40
  br label %62

58:                                               ; preds = %40
  br label %59

59:                                               ; preds = %58
  %60 = load i32, i32* %6, align 4
  %61 = add i32 %60, 1
  store i32 %61, i32* %6, align 4
  br label %36

62:                                               ; preds = %57, %36
  %63 = load i32, i32* %6, align 4
  %64 = load i32, i32* @NN_WS_HANDSHAKE_SP_MAP_LEN, align 4
  %65 = icmp ult i32 %63, %64
  %66 = zext i1 %65 to i32
  %67 = call i32 @nn_assert(i32 %66)
  %68 = load %struct.nn_ws_handshake*, %struct.nn_ws_handshake** %2, align 8
  %69 = getelementptr inbounds %struct.nn_ws_handshake, %struct.nn_ws_handshake* %68, i32 0, i32 0
  %70 = load i8*, i8** %69, align 8
  %71 = load %struct.nn_ws_handshake*, %struct.nn_ws_handshake** %2, align 8
  %72 = getelementptr inbounds %struct.nn_ws_handshake, %struct.nn_ws_handshake* %71, i32 0, i32 1
  %73 = load i8*, i8** %72, align 8
  %74 = load %struct.nn_ws_handshake*, %struct.nn_ws_handshake** %2, align 8
  %75 = getelementptr inbounds %struct.nn_ws_handshake, %struct.nn_ws_handshake* %74, i32 0, i32 2
  %76 = load i8*, i8** %75, align 8
  %77 = getelementptr inbounds [25 x i8], [25 x i8]* %8, i64 0, i64 0
  %78 = load %struct.TYPE_8__*, %struct.TYPE_8__** @NN_WS_HANDSHAKE_SP_MAP, align 8
  %79 = load i32, i32* %6, align 4
  %80 = zext i32 %79 to i64
  %81 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %78, i64 %80
  %82 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %81, i32 0, i32 1
  %83 = load i8*, i8** %82, align 8
  %84 = call i32 @sprintf(i8* %70, i8* getelementptr inbounds ([149 x i8], [149 x i8]* @.str, i64 0, i64 0), i8* %73, i8* %76, i8* %77, i8* %83)
  %85 = load %struct.nn_ws_handshake*, %struct.nn_ws_handshake** %2, align 8
  %86 = getelementptr inbounds %struct.nn_ws_handshake, %struct.nn_ws_handshake* %85, i32 0, i32 0
  %87 = load i8*, i8** %86, align 8
  %88 = call i8* @strlen(i8* %87)
  %89 = getelementptr inbounds %struct.nn_iovec, %struct.nn_iovec* %3, i32 0, i32 1
  store i8* %88, i8** %89, align 8
  %90 = load %struct.nn_ws_handshake*, %struct.nn_ws_handshake** %2, align 8
  %91 = getelementptr inbounds %struct.nn_ws_handshake, %struct.nn_ws_handshake* %90, i32 0, i32 0
  %92 = load i8*, i8** %91, align 8
  %93 = getelementptr inbounds %struct.nn_iovec, %struct.nn_iovec* %3, i32 0, i32 0
  store i8* %92, i8** %93, align 8
  %94 = load %struct.nn_ws_handshake*, %struct.nn_ws_handshake** %2, align 8
  %95 = getelementptr inbounds %struct.nn_ws_handshake, %struct.nn_ws_handshake* %94, i32 0, i32 3
  %96 = load i32, i32* %95, align 8
  %97 = call i32 @nn_usock_send(i32 %96, %struct.nn_iovec* %3, i32 1)
  ret void
}

declare dso_local i32 @nn_random_generate(i32*, i32) #1

declare dso_local i32 @nn_base64_encode(i32*, i32, i8*, i32) #1

declare dso_local i32 @nn_assert(i32) #1

declare dso_local i8* @strlen(i8*) #1

declare dso_local i32 @nn_ws_handshake_hash_key(i8*, i64, i32, i32) #1

declare dso_local i32 @sprintf(i8*, i8*, i8*, i8*, i8*, i8*) #1

declare dso_local i32 @nn_usock_send(i32, %struct.nn_iovec*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
