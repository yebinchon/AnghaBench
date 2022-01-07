; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/websocket/extr_websocketclient.c_connect_callback.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/websocket/extr_websocketclient.c_connect_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i8*, i8* }
%struct.espconn = type { i64 }
%struct.TYPE_9__ = type { i32, i64, i32, i32, i32, %struct.TYPE_10__*, i32 }

@.str = private unnamed_addr constant [11 x i8] c"Connected\0A\00", align 1
@ws_initReceiveCallback = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"Upgrade\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"websocket\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"Connection\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"Sec-WebSocket-Key\00", align 1
@.str.5 = private unnamed_addr constant [22 x i8] c"Sec-WebSocket-Version\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"13\00", align 1
@EMPTY_HEADERS = common dso_local global %struct.TYPE_10__* null, align 8
@WS_INIT_REQUEST_LENGTH = common dso_local global i64 0, align 8
@DEFAULT_HEADERS = common dso_local global %struct.TYPE_10__* null, align 8
@WS_INIT_REQUEST = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [12 x i8] c"request: %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @connect_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @connect_callback(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.espconn*, align 8
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca [5 x %struct.TYPE_10__], align 16
  %7 = alloca %struct.TYPE_10__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %11 = call i32 (i8*, ...) @NODE_DBG(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %12 = load i8*, i8** %2, align 8
  %13 = bitcast i8* %12 to %struct.espconn*
  store %struct.espconn* %13, %struct.espconn** %3, align 8
  %14 = load %struct.espconn*, %struct.espconn** %3, align 8
  %15 = getelementptr inbounds %struct.espconn, %struct.espconn* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = inttoptr i64 %16 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %17, %struct.TYPE_9__** %4, align 8
  %18 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 0
  store i32 3, i32* %19, align 8
  %20 = load %struct.espconn*, %struct.espconn** %3, align 8
  %21 = load i32, i32* @ws_initReceiveCallback, align 4
  %22 = call i32 @espconn_regist_recvcb(%struct.espconn* %20, i32 %21)
  %23 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %23, i32 0, i32 6
  %25 = call i32 @generateSecKeys(i8** %5, i32* %24)
  %26 = getelementptr inbounds [5 x %struct.TYPE_10__], [5 x %struct.TYPE_10__]* %6, i64 0, i64 0
  %27 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %26, i32 0, i32 0
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8** %27, align 16
  %28 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %26, i32 0, i32 1
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i8** %28, align 8
  %29 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %26, i64 1
  %30 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %29, i32 0, i32 0
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i8** %30, align 16
  %31 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %29, i32 0, i32 1
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8** %31, align 8
  %32 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %29, i64 1
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %32, i32 0, i32 0
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0), i8** %33, align 16
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %32, i32 0, i32 1
  %35 = load i8*, i8** %5, align 8
  store i8* %35, i8** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %32, i64 1
  %37 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %36, i32 0, i32 0
  store i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0), i8** %37, align 16
  %38 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %36, i32 0, i32 1
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i8** %38, align 8
  %39 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %36, i64 1
  %40 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %39, i32 0, i32 0
  store i8* null, i8** %40, align 16
  %41 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %39, i32 0, i32 1
  store i8* null, i8** %41, align 8
  %42 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %42, i32 0, i32 5
  %44 = load %struct.TYPE_10__*, %struct.TYPE_10__** %43, align 8
  %45 = icmp ne %struct.TYPE_10__* %44, null
  br i1 %45, label %46, label %50

46:                                               ; preds = %1
  %47 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %47, i32 0, i32 5
  %49 = load %struct.TYPE_10__*, %struct.TYPE_10__** %48, align 8
  br label %52

50:                                               ; preds = %1
  %51 = load %struct.TYPE_10__*, %struct.TYPE_10__** @EMPTY_HEADERS, align 8
  br label %52

52:                                               ; preds = %50, %46
  %53 = phi %struct.TYPE_10__* [ %49, %46 ], [ %51, %50 ]
  store %struct.TYPE_10__* %53, %struct.TYPE_10__** %7, align 8
  %54 = load i64, i64* @WS_INIT_REQUEST_LENGTH, align 8
  %55 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %56 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %55, i32 0, i32 4
  %57 = load i32, i32* %56, align 8
  %58 = call i64 @strlen(i32 %57)
  %59 = add nsw i64 %54, %58
  %60 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %61 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %60, i32 0, i32 3
  %62 = load i32, i32* %61, align 4
  %63 = call i64 @strlen(i32 %62)
  %64 = add nsw i64 %59, %63
  %65 = load %struct.TYPE_10__*, %struct.TYPE_10__** @DEFAULT_HEADERS, align 8
  %66 = call i64 @headers_length(%struct.TYPE_10__* %65)
  %67 = add nsw i64 %64, %66
  %68 = getelementptr inbounds [5 x %struct.TYPE_10__], [5 x %struct.TYPE_10__]* %6, i64 0, i64 0
  %69 = call i64 @headers_length(%struct.TYPE_10__* %68)
  %70 = add nsw i64 %67, %69
  %71 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %72 = call i64 @headers_length(%struct.TYPE_10__* %71)
  %73 = add nsw i64 %70, %72
  %74 = add nsw i64 %73, 2
  %75 = call i8* @llvm.stacksave()
  store i8* %75, i8** %8, align 8
  %76 = alloca i8, i64 %74, align 16
  store i64 %74, i64* %9, align 8
  %77 = load i32, i32* @WS_INIT_REQUEST, align 4
  %78 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %79 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %78, i32 0, i32 4
  %80 = load i32, i32* %79, align 8
  %81 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %82 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %81, i32 0, i32 3
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %85 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 8
  %87 = call i32 @os_sprintf(i8* %76, i32 %77, i32 %80, i32 %83, i32 %86)
  store i32 %87, i32* %10, align 4
  %88 = load i32, i32* %10, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i8, i8* %76, i64 %89
  %91 = getelementptr inbounds [5 x %struct.TYPE_10__], [5 x %struct.TYPE_10__]* %6, i64 0, i64 0
  %92 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %93 = load %struct.TYPE_10__*, %struct.TYPE_10__** @DEFAULT_HEADERS, align 8
  %94 = call i8* @sprintf_headers(i8* %90, %struct.TYPE_10__* %91, %struct.TYPE_10__* %92, %struct.TYPE_10__* %93, i32 0)
  %95 = ptrtoint i8* %94 to i64
  %96 = ptrtoint i8* %76 to i64
  %97 = sub i64 %95, %96
  %98 = trunc i64 %97 to i32
  store i32 %98, i32* %10, align 4
  %99 = load i8*, i8** %5, align 8
  %100 = call i32 @os_free(i8* %99)
  %101 = call i32 (i8*, ...) @NODE_DBG(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 0), i8* %76)
  %102 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %103 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %102, i32 0, i32 1
  %104 = load i64, i64* %103, align 8
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %111

106:                                              ; preds = %52
  %107 = load %struct.espconn*, %struct.espconn** %3, align 8
  %108 = bitcast i8* %76 to i32*
  %109 = load i32, i32* %10, align 4
  %110 = call i32 @espconn_secure_send(%struct.espconn* %107, i32* %108, i32 %109)
  br label %116

111:                                              ; preds = %52
  %112 = load %struct.espconn*, %struct.espconn** %3, align 8
  %113 = bitcast i8* %76 to i32*
  %114 = load i32, i32* %10, align 4
  %115 = call i32 @espconn_send(%struct.espconn* %112, i32* %113, i32 %114)
  br label %116

116:                                              ; preds = %111, %106
  %117 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %117)
  ret void
}

declare dso_local i32 @NODE_DBG(i8*, ...) #1

declare dso_local i32 @espconn_regist_recvcb(%struct.espconn*, i32) #1

declare dso_local i32 @generateSecKeys(i8**, i32*) #1

declare dso_local i64 @strlen(i32) #1

declare dso_local i64 @headers_length(%struct.TYPE_10__*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @os_sprintf(i8*, i32, i32, i32, i32) #1

declare dso_local i8* @sprintf_headers(i8*, %struct.TYPE_10__*, %struct.TYPE_10__*, %struct.TYPE_10__*, i32) #1

declare dso_local i32 @os_free(i8*) #1

declare dso_local i32 @espconn_secure_send(%struct.espconn*, i32*, i32) #1

declare dso_local i32 @espconn_send(%struct.espconn*, i32*, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
