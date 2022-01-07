; ModuleID = '/home/carl/AnghaBench/mongoose/examples/PIC32/http_server/firmware/src/extr_app.c_APP_Tasks.c'
source_filename = "/home/carl/AnghaBench/mongoose/examples/PIC32/http_server/firmware/src/extr_app.c_APP_Tasks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32*, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.mg_connection = type { i32 }

@APP_Tasks.dwLastIP = internal global [2 x %struct.TYPE_4__] [%struct.TYPE_4__ { i32 -1, i32* null, i32 0 }, %struct.TYPE_4__ { i32 -1, i32* null, i32 0 }], align 16
@appData = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@sysObj = common dso_local global %struct.TYPE_5__ zeroinitializer, align 4
@.str = private unnamed_addr constant [44 x i8] c" APP: TCP/IP stack initialization failed!\0D\0A\00", align 1
@SYS_STATUS_READY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [46 x i8] c"    Interface %s on host %s - NBNS disabled\0D\0A\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c" IP Address: \00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"%d.%d.%d.%d \0D\0A\00", align 1
@.str.4 = private unnamed_addr constant [34 x i8] c"Starting listening on port 8000\0D\0A\00", align 1
@mgr = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [5 x i8] c"8000\00", align 1
@ev_handler = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [28 x i8] c"Failed to create listener\0A\0D\00", align 1
@.str.7 = private unnamed_addr constant [19 x i8] c"Listener started\0D\0A\00", align 1
@.str.8 = private unnamed_addr constant [17 x i8] c"Server stopped\0A\0D\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @APP_Tasks() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.TYPE_4__, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.mg_connection*, align 8
  %9 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @appData, i32 0, i32 0), align 4
  switch i32 %9, label %126 [
    i32 129, label %10
    i32 128, label %43
    i32 130, label %109
    i32 131, label %121
    i32 133, label %123
    i32 132, label %125
  ]

10:                                               ; preds = %0
  %11 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @sysObj, i32 0, i32 0), align 4
  %12 = call i32 @TCPIP_STACK_Status(i32 %11)
  store i32 %12, i32* %1, align 4
  %13 = load i32, i32* %1, align 4
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %10
  %16 = call i32 @SYS_CONSOLE_MESSAGE(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  store i32 133, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @appData, i32 0, i32 0), align 4
  br label %42

17:                                               ; preds = %10
  %18 = load i32, i32* %1, align 4
  %19 = load i32, i32* @SYS_STATUS_READY, align 4
  %20 = icmp eq i32 %18, %19
  br i1 %20, label %21, label %41

21:                                               ; preds = %17
  %22 = call i32 (...) @TCPIP_STACK_NumberOfNetworksGet()
  store i32 %22, i32* %7, align 4
  store i32 0, i32* %6, align 4
  br label %23

23:                                               ; preds = %37, %21
  %24 = load i32, i32* %6, align 4
  %25 = load i32, i32* %7, align 4
  %26 = icmp slt i32 %24, %25
  br i1 %26, label %27, label %40

27:                                               ; preds = %23
  %28 = load i32, i32* %6, align 4
  %29 = call i32 @TCPIP_STACK_IndexToNet(i32 %28)
  store i32 %29, i32* %5, align 4
  %30 = load i32, i32* %5, align 4
  %31 = call i8* @TCPIP_STACK_NetNameGet(i32 %30)
  store i8* %31, i8** %2, align 8
  %32 = load i32, i32* %5, align 4
  %33 = call i8* @TCPIP_STACK_NetBIOSName(i32 %32)
  store i8* %33, i8** %3, align 8
  %34 = load i8*, i8** %2, align 8
  %35 = load i8*, i8** %3, align 8
  %36 = call i32 (i8*, ...) @SYS_CONSOLE_PRINT(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0), i8* %34, i8* %35)
  br label %37

37:                                               ; preds = %27
  %38 = load i32, i32* %6, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %6, align 4
  br label %23

40:                                               ; preds = %23
  store i32 128, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @appData, i32 0, i32 0), align 4
  br label %41

41:                                               ; preds = %40, %17
  br label %42

42:                                               ; preds = %41, %15
  br label %127

43:                                               ; preds = %0
  %44 = call i32 (...) @TCPIP_STACK_NumberOfNetworksGet()
  store i32 %44, i32* %7, align 4
  store i32 0, i32* %6, align 4
  br label %45

45:                                               ; preds = %105, %43
  %46 = load i32, i32* %6, align 4
  %47 = load i32, i32* %7, align 4
  %48 = icmp slt i32 %46, %47
  br i1 %48, label %49, label %108

49:                                               ; preds = %45
  %50 = load i32, i32* %6, align 4
  %51 = call i32 @TCPIP_STACK_IndexToNet(i32 %50)
  store i32 %51, i32* %5, align 4
  %52 = load i32, i32* %5, align 4
  %53 = call i32 @TCPIP_STACK_NetAddress(i32 %52)
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 2
  store i32 %53, i32* %54, align 8
  %55 = load i32, i32* %6, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds [2 x %struct.TYPE_4__], [2 x %struct.TYPE_4__]* @APP_Tasks.dwLastIP, i64 0, i64 %56
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 2
  %61 = load i32, i32* %60, align 8
  %62 = icmp ne i32 %59, %61
  br i1 %62, label %63, label %104

63:                                               ; preds = %49
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 2
  %65 = load i32, i32* %64, align 8
  %66 = load i32, i32* %6, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds [2 x %struct.TYPE_4__], [2 x %struct.TYPE_4__]* @APP_Tasks.dwLastIP, i64 0, i64 %67
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 2
  store i32 %65, i32* %69, align 8
  %70 = load i32, i32* %5, align 4
  %71 = call i8* @TCPIP_STACK_NetNameGet(i32 %70)
  %72 = call i32 @SYS_CONSOLE_MESSAGE(i8* %71)
  %73 = call i32 @SYS_CONSOLE_MESSAGE(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 1
  %75 = load i32*, i32** %74, align 8
  %76 = getelementptr inbounds i32, i32* %75, i64 0
  %77 = load i32, i32* %76, align 4
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 1
  %79 = load i32*, i32** %78, align 8
  %80 = getelementptr inbounds i32, i32* %79, i64 1
  %81 = load i32, i32* %80, align 4
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 1
  %83 = load i32*, i32** %82, align 8
  %84 = getelementptr inbounds i32, i32* %83, i64 2
  %85 = load i32, i32* %84, align 4
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 1
  %87 = load i32*, i32** %86, align 8
  %88 = getelementptr inbounds i32, i32* %87, i64 3
  %89 = load i32, i32* %88, align 4
  %90 = call i32 (i8*, ...) @SYS_CONSOLE_PRINT(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i32 %77, i32 %81, i32 %85, i32 %89)
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 1
  %92 = load i32*, i32** %91, align 8
  %93 = getelementptr inbounds i32, i32* %92, i64 0
  %94 = load i32, i32* %93, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %103

96:                                               ; preds = %63
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 1
  %98 = load i32*, i32** %97, align 8
  %99 = getelementptr inbounds i32, i32* %98, i64 0
  %100 = load i32, i32* %99, align 4
  %101 = icmp ne i32 %100, 169
  br i1 %101, label %102, label %103

102:                                              ; preds = %96
  store i32 130, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @appData, i32 0, i32 0), align 4
  br label %103

103:                                              ; preds = %102, %96, %63
  br label %104

104:                                              ; preds = %103, %49
  br label %105

105:                                              ; preds = %104
  %106 = load i32, i32* %6, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %6, align 4
  br label %45

108:                                              ; preds = %45
  br label %127

109:                                              ; preds = %0
  %110 = call i32 (i8*, ...) @SYS_CONSOLE_PRINT(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0))
  %111 = load i32, i32* @ev_handler, align 4
  %112 = call %struct.mg_connection* @mg_bind(i32* @mgr, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i32 %111)
  store %struct.mg_connection* %112, %struct.mg_connection** %8, align 8
  %113 = load %struct.mg_connection*, %struct.mg_connection** %8, align 8
  %114 = icmp eq %struct.mg_connection* %113, null
  br i1 %114, label %115, label %117

115:                                              ; preds = %109
  %116 = call i32 (i8*, ...) @SYS_CONSOLE_PRINT(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6, i64 0, i64 0))
  store i32 133, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @appData, i32 0, i32 0), align 4
  br label %127

117:                                              ; preds = %109
  %118 = load %struct.mg_connection*, %struct.mg_connection** %8, align 8
  %119 = call i32 @mg_set_protocol_http_websocket(%struct.mg_connection* %118)
  %120 = call i32 (i8*, ...) @SYS_CONSOLE_PRINT(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.7, i64 0, i64 0))
  store i32 131, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @appData, i32 0, i32 0), align 4
  br label %127

121:                                              ; preds = %0
  %122 = call i32 @mg_mgr_poll(i32* @mgr, i32 1000)
  br label %127

123:                                              ; preds = %0
  %124 = call i32 (i8*, ...) @SYS_CONSOLE_PRINT(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.8, i64 0, i64 0))
  store i32 132, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @appData, i32 0, i32 0), align 4
  br label %127

125:                                              ; preds = %0
  br label %127

126:                                              ; preds = %0
  br label %127

127:                                              ; preds = %126, %125, %123, %121, %117, %115, %108, %42
  ret void
}

declare dso_local i32 @TCPIP_STACK_Status(i32) #1

declare dso_local i32 @SYS_CONSOLE_MESSAGE(i8*) #1

declare dso_local i32 @TCPIP_STACK_NumberOfNetworksGet(...) #1

declare dso_local i32 @TCPIP_STACK_IndexToNet(i32) #1

declare dso_local i8* @TCPIP_STACK_NetNameGet(i32) #1

declare dso_local i8* @TCPIP_STACK_NetBIOSName(i32) #1

declare dso_local i32 @SYS_CONSOLE_PRINT(i8*, ...) #1

declare dso_local i32 @TCPIP_STACK_NetAddress(i32) #1

declare dso_local %struct.mg_connection* @mg_bind(i32*, i8*, i32) #1

declare dso_local i32 @mg_set_protocol_http_websocket(%struct.mg_connection*) #1

declare dso_local i32 @mg_mgr_poll(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
