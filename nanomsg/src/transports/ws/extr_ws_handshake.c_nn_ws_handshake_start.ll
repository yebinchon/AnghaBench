; ModuleID = '/home/carl/AnghaBench/nanomsg/src/transports/ws/extr_ws_handshake.c_nn_ws_handshake_start.c'
source_filename = "/home/carl/AnghaBench/nanomsg/src/transports/ws/extr_ws_handshake.c_nn_ws_handshake_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nn_ws_handshake = type { i32, i8*, i8*, i32, i32, i64, i64, i32, i32, %struct.nn_pipebase*, %struct.nn_usock*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32*, i32 }
%struct.nn_usock = type { i32 }
%struct.nn_pipebase = type { i32 }

@NN_WS_HANDSHAKE_SRC_USOCK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [152 x i8] c"GET x HTTP/1.1\0D\0AUpgrade: websocket\0D\0AConnection: Upgrade\0D\0AHost: x\0D\0AOrigin: x\0D\0ASec-WebSocket-Key: xxxxxxxxxxxxxxxxxxxxxxxx\0D\0ASec-WebSocket-Version: xx\0D\0A\0D\0A\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"HTTP/1.1 xxx\0D\0A\0D\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nn_ws_handshake_start(%struct.nn_ws_handshake* %0, %struct.nn_usock* %1, %struct.nn_pipebase* %2, i32 %3, i8* %4, i8* %5) #0 {
  %7 = alloca %struct.nn_ws_handshake*, align 8
  %8 = alloca %struct.nn_usock*, align 8
  %9 = alloca %struct.nn_pipebase*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  store %struct.nn_ws_handshake* %0, %struct.nn_ws_handshake** %7, align 8
  store %struct.nn_usock* %1, %struct.nn_usock** %8, align 8
  store %struct.nn_pipebase* %2, %struct.nn_pipebase** %9, align 8
  store i32 %3, i32* %10, align 4
  store i8* %4, i8** %11, align 8
  store i8* %5, i8** %12, align 8
  %13 = load i32, i32* %10, align 4
  %14 = icmp eq i32 %13, 129
  br i1 %14, label %15, label %21

15:                                               ; preds = %6
  %16 = load i8*, i8** %11, align 8
  %17 = call i32 @strlen(i8* %16)
  %18 = icmp sge i32 %17, 1
  %19 = zext i1 %18 to i32
  %20 = call i32 @nn_assert(i32 %19)
  br label %21

21:                                               ; preds = %15, %6
  %22 = load %struct.nn_ws_handshake*, %struct.nn_ws_handshake** %7, align 8
  %23 = getelementptr inbounds %struct.nn_ws_handshake, %struct.nn_ws_handshake* %22, i32 0, i32 10
  %24 = load %struct.nn_usock*, %struct.nn_usock** %23, align 8
  %25 = icmp eq %struct.nn_usock* %24, null
  br i1 %25, label %26, label %32

26:                                               ; preds = %21
  %27 = load %struct.nn_ws_handshake*, %struct.nn_ws_handshake** %7, align 8
  %28 = getelementptr inbounds %struct.nn_ws_handshake, %struct.nn_ws_handshake* %27, i32 0, i32 11
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = icmp eq i32* %30, null
  br label %32

32:                                               ; preds = %26, %21
  %33 = phi i1 [ false, %21 ], [ %31, %26 ]
  %34 = zext i1 %33 to i32
  %35 = call i32 @nn_assert(i32 %34)
  %36 = load i32, i32* @NN_WS_HANDSHAKE_SRC_USOCK, align 4
  %37 = load %struct.nn_ws_handshake*, %struct.nn_ws_handshake** %7, align 8
  %38 = getelementptr inbounds %struct.nn_ws_handshake, %struct.nn_ws_handshake* %37, i32 0, i32 11
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 1
  store i32 %36, i32* %39, align 8
  %40 = load %struct.nn_ws_handshake*, %struct.nn_ws_handshake** %7, align 8
  %41 = getelementptr inbounds %struct.nn_ws_handshake, %struct.nn_ws_handshake* %40, i32 0, i32 4
  %42 = load %struct.nn_ws_handshake*, %struct.nn_ws_handshake** %7, align 8
  %43 = getelementptr inbounds %struct.nn_ws_handshake, %struct.nn_ws_handshake* %42, i32 0, i32 11
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  store i32* %41, i32** %44, align 8
  %45 = load %struct.nn_usock*, %struct.nn_usock** %8, align 8
  %46 = load %struct.nn_ws_handshake*, %struct.nn_ws_handshake** %7, align 8
  %47 = getelementptr inbounds %struct.nn_ws_handshake, %struct.nn_ws_handshake* %46, i32 0, i32 11
  %48 = call i32 @nn_usock_swap_owner(%struct.nn_usock* %45, %struct.TYPE_2__* %47)
  %49 = load %struct.nn_usock*, %struct.nn_usock** %8, align 8
  %50 = load %struct.nn_ws_handshake*, %struct.nn_ws_handshake** %7, align 8
  %51 = getelementptr inbounds %struct.nn_ws_handshake, %struct.nn_ws_handshake* %50, i32 0, i32 10
  store %struct.nn_usock* %49, %struct.nn_usock** %51, align 8
  %52 = load %struct.nn_pipebase*, %struct.nn_pipebase** %9, align 8
  %53 = load %struct.nn_ws_handshake*, %struct.nn_ws_handshake** %7, align 8
  %54 = getelementptr inbounds %struct.nn_ws_handshake, %struct.nn_ws_handshake* %53, i32 0, i32 9
  store %struct.nn_pipebase* %52, %struct.nn_pipebase** %54, align 8
  %55 = load i32, i32* %10, align 4
  %56 = load %struct.nn_ws_handshake*, %struct.nn_ws_handshake** %7, align 8
  %57 = getelementptr inbounds %struct.nn_ws_handshake, %struct.nn_ws_handshake* %56, i32 0, i32 0
  store i32 %55, i32* %57, align 8
  %58 = load i8*, i8** %11, align 8
  %59 = load %struct.nn_ws_handshake*, %struct.nn_ws_handshake** %7, align 8
  %60 = getelementptr inbounds %struct.nn_ws_handshake, %struct.nn_ws_handshake* %59, i32 0, i32 1
  store i8* %58, i8** %60, align 8
  %61 = load i8*, i8** %12, align 8
  %62 = load %struct.nn_ws_handshake*, %struct.nn_ws_handshake** %7, align 8
  %63 = getelementptr inbounds %struct.nn_ws_handshake, %struct.nn_ws_handshake* %62, i32 0, i32 2
  store i8* %61, i8** %63, align 8
  %64 = load %struct.nn_ws_handshake*, %struct.nn_ws_handshake** %7, align 8
  %65 = getelementptr inbounds %struct.nn_ws_handshake, %struct.nn_ws_handshake* %64, i32 0, i32 8
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @memset(i32 %66, i32 0, i32 4)
  %68 = load %struct.nn_ws_handshake*, %struct.nn_ws_handshake** %7, align 8
  %69 = getelementptr inbounds %struct.nn_ws_handshake, %struct.nn_ws_handshake* %68, i32 0, i32 7
  %70 = load i32, i32* %69, align 8
  %71 = call i32 @memset(i32 %70, i32 0, i32 4)
  %72 = load %struct.nn_ws_handshake*, %struct.nn_ws_handshake** %7, align 8
  %73 = getelementptr inbounds %struct.nn_ws_handshake, %struct.nn_ws_handshake* %72, i32 0, i32 6
  store i64 0, i64* %73, align 8
  %74 = load %struct.nn_ws_handshake*, %struct.nn_ws_handshake** %7, align 8
  %75 = getelementptr inbounds %struct.nn_ws_handshake, %struct.nn_ws_handshake* %74, i32 0, i32 5
  store i64 0, i64* %75, align 8
  %76 = load %struct.nn_ws_handshake*, %struct.nn_ws_handshake** %7, align 8
  %77 = getelementptr inbounds %struct.nn_ws_handshake, %struct.nn_ws_handshake* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  switch i32 %78, label %87 [
    i32 128, label %79
    i32 129, label %83
  ]

79:                                               ; preds = %32
  %80 = call i32 @strlen(i8* getelementptr inbounds ([152 x i8], [152 x i8]* @.str, i64 0, i64 0))
  %81 = load %struct.nn_ws_handshake*, %struct.nn_ws_handshake** %7, align 8
  %82 = getelementptr inbounds %struct.nn_ws_handshake, %struct.nn_ws_handshake* %81, i32 0, i32 3
  store i32 %80, i32* %82, align 8
  br label %89

83:                                               ; preds = %32
  %84 = call i32 @strlen(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  %85 = load %struct.nn_ws_handshake*, %struct.nn_ws_handshake** %7, align 8
  %86 = getelementptr inbounds %struct.nn_ws_handshake, %struct.nn_ws_handshake* %85, i32 0, i32 3
  store i32 %84, i32* %86, align 8
  br label %89

87:                                               ; preds = %32
  %88 = call i32 @nn_assert(i32 0)
  br label %89

89:                                               ; preds = %87, %83, %79
  %90 = load %struct.nn_ws_handshake*, %struct.nn_ws_handshake** %7, align 8
  %91 = getelementptr inbounds %struct.nn_ws_handshake, %struct.nn_ws_handshake* %90, i32 0, i32 4
  %92 = call i32 @nn_fsm_start(i32* %91)
  ret void
}

declare dso_local i32 @nn_assert(i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @nn_usock_swap_owner(%struct.nn_usock*, %struct.TYPE_2__*) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @nn_fsm_start(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
