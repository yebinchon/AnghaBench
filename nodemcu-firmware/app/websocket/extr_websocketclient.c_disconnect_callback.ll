; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/websocket/extr_websocketclient.c_disconnect_callback.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/websocket/extr_websocketclient.c_disconnect_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.espconn = type { %struct.TYPE_5__, i64 }
%struct.TYPE_5__ = type { %struct.espconn* }
%struct.TYPE_6__ = type { i32, i32, i32 (%struct.TYPE_6__*, i32)*, i32*, %struct.espconn*, %struct.espconn*, %struct.espconn*, %struct.espconn*, %struct.espconn*, i32 }

@.str = private unnamed_addr constant [21 x i8] c"disconnect_callback\0A\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"ws->hostname %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"ws->path %d\0A \00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"conn %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"freeing conn1 \0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @disconnect_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @disconnect_callback(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.espconn*, align 8
  %4 = alloca %struct.TYPE_6__*, align 8
  store i8* %0, i8** %2, align 8
  %5 = call i32 (i8*, ...) @NODE_DBG(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %6 = load i8*, i8** %2, align 8
  %7 = bitcast i8* %6 to %struct.espconn*
  store %struct.espconn* %7, %struct.espconn** %3, align 8
  %8 = load %struct.espconn*, %struct.espconn** %3, align 8
  %9 = getelementptr inbounds %struct.espconn, %struct.espconn* %8, i32 0, i32 1
  %10 = load i64, i64* %9, align 8
  %11 = inttoptr i64 %10 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %11, %struct.TYPE_6__** %4, align 8
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  store i32 4, i32* %13, align 8
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 9
  %16 = call i32 @os_timer_disarm(i32* %15)
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 8
  %19 = load %struct.espconn*, %struct.espconn** %18, align 8
  %20 = call i32 (i8*, ...) @NODE_DBG(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), %struct.espconn* %19)
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 8
  %23 = load %struct.espconn*, %struct.espconn** %22, align 8
  %24 = call i32 @os_free(%struct.espconn* %23)
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 7
  %27 = load %struct.espconn*, %struct.espconn** %26, align 8
  %28 = call i32 (i8*, ...) @NODE_DBG(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), %struct.espconn* %27)
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 7
  %31 = load %struct.espconn*, %struct.espconn** %30, align 8
  %32 = call i32 @os_free(%struct.espconn* %31)
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 6
  %35 = load %struct.espconn*, %struct.espconn** %34, align 8
  %36 = icmp ne %struct.espconn* %35, null
  br i1 %36, label %37, label %42

37:                                               ; preds = %1
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 6
  %40 = load %struct.espconn*, %struct.espconn** %39, align 8
  %41 = call i32 @os_free(%struct.espconn* %40)
  br label %42

42:                                               ; preds = %37, %1
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 5
  %45 = load %struct.espconn*, %struct.espconn** %44, align 8
  %46 = icmp ne %struct.espconn* %45, null
  br i1 %46, label %47, label %52

47:                                               ; preds = %42
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 5
  %50 = load %struct.espconn*, %struct.espconn** %49, align 8
  %51 = call i32 @os_free(%struct.espconn* %50)
  br label %52

52:                                               ; preds = %47, %42
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 4
  %55 = load %struct.espconn*, %struct.espconn** %54, align 8
  %56 = icmp ne %struct.espconn* %55, null
  br i1 %56, label %57, label %62

57:                                               ; preds = %52
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 4
  %60 = load %struct.espconn*, %struct.espconn** %59, align 8
  %61 = call i32 @os_free(%struct.espconn* %60)
  br label %62

62:                                               ; preds = %57, %52
  %63 = load %struct.espconn*, %struct.espconn** %3, align 8
  %64 = getelementptr inbounds %struct.espconn, %struct.espconn* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 0
  %66 = load %struct.espconn*, %struct.espconn** %65, align 8
  %67 = icmp ne %struct.espconn* %66, null
  br i1 %67, label %68, label %74

68:                                               ; preds = %62
  %69 = load %struct.espconn*, %struct.espconn** %3, align 8
  %70 = getelementptr inbounds %struct.espconn, %struct.espconn* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 0
  %72 = load %struct.espconn*, %struct.espconn** %71, align 8
  %73 = call i32 @os_free(%struct.espconn* %72)
  br label %74

74:                                               ; preds = %68, %62
  %75 = load %struct.espconn*, %struct.espconn** %3, align 8
  %76 = call i32 (i8*, ...) @NODE_DBG(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), %struct.espconn* %75)
  %77 = load %struct.espconn*, %struct.espconn** %3, align 8
  %78 = call i32 @espconn_delete(%struct.espconn* %77)
  %79 = call i32 (i8*, ...) @NODE_DBG(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0))
  %80 = load %struct.espconn*, %struct.espconn** %3, align 8
  %81 = call i32 @os_free(%struct.espconn* %80)
  %82 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 3
  store i32* null, i32** %83, align 8
  %84 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 2
  %86 = load i32 (%struct.TYPE_6__*, i32)*, i32 (%struct.TYPE_6__*, i32)** %85, align 8
  %87 = icmp ne i32 (%struct.TYPE_6__*, i32)* %86, null
  br i1 %87, label %88, label %109

88:                                               ; preds = %74
  %89 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %102

93:                                               ; preds = %88
  %94 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %94, i32 0, i32 2
  %96 = load i32 (%struct.TYPE_6__*, i32)*, i32 (%struct.TYPE_6__*, i32)** %95, align 8
  %97 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %98 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = call i32 %96(%struct.TYPE_6__* %97, i32 %100)
  br label %108

102:                                              ; preds = %88
  %103 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %104 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %103, i32 0, i32 2
  %105 = load i32 (%struct.TYPE_6__*, i32)*, i32 (%struct.TYPE_6__*, i32)** %104, align 8
  %106 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %107 = call i32 %105(%struct.TYPE_6__* %106, i32 -99)
  br label %108

108:                                              ; preds = %102, %93
  br label %109

109:                                              ; preds = %108, %74
  ret void
}

declare dso_local i32 @NODE_DBG(i8*, ...) #1

declare dso_local i32 @os_timer_disarm(i32*) #1

declare dso_local i32 @os_free(%struct.espconn*) #1

declare dso_local i32 @espconn_delete(%struct.espconn*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
