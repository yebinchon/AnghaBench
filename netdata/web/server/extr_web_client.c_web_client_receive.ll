; ModuleID = '/home/carl/AnghaBench/netdata/web/server/extr_web_client.c_web_client_receive.c'
source_filename = "/home/carl/AnghaBench/netdata/web/server/extr_web_client.c_web_client_receive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.web_client = type { i64, i32, %struct.TYPE_5__, i32, i32, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, i64, i8* }
%struct.TYPE_4__ = type { i64, i32 }

@WEB_CLIENT_MODE_FILECOPY = common dso_local global i64 0, align 8
@NETDATA_WEB_REQUEST_RECEIVE_SIZE = common dso_local global i32 0, align 4
@MSG_DONTWAIT = common dso_local global i32 0, align 4
@D_WEB_CLIENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"%llu: Received %zd bytes.\00", align 1
@D_WEB_DATA = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"%llu: Received data: '%s'.\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"%llu: receive data failed.\00", align 1
@netdata_srv_ctx = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @web_client_receive(%struct.web_client* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.web_client*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store %struct.web_client* %0, %struct.web_client** %3, align 8
  %7 = load %struct.web_client*, %struct.web_client** %3, align 8
  %8 = getelementptr inbounds %struct.web_client, %struct.web_client* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @WEB_CLIENT_MODE_FILECOPY, align 8
  %11 = icmp eq i64 %9, %10
  %12 = zext i1 %11 to i32
  %13 = call i64 @unlikely(i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %1
  %16 = load %struct.web_client*, %struct.web_client** %3, align 8
  %17 = call i32 @web_client_read_file(%struct.web_client* %16)
  store i32 %17, i32* %2, align 4
  br label %130

18:                                               ; preds = %1
  %19 = load %struct.web_client*, %struct.web_client** %3, align 8
  %20 = getelementptr inbounds %struct.web_client, %struct.web_client* %19, i32 0, i32 2
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = sext i32 %24 to i64
  %26 = load %struct.web_client*, %struct.web_client** %3, align 8
  %27 = getelementptr inbounds %struct.web_client, %struct.web_client* %26, i32 0, i32 2
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = sub i64 %25, %31
  %33 = trunc i64 %32 to i32
  store i32 %33, i32* %5, align 4
  %34 = load %struct.web_client*, %struct.web_client** %3, align 8
  %35 = getelementptr inbounds %struct.web_client, %struct.web_client* %34, i32 0, i32 2
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %36, align 8
  %38 = load i32, i32* @NETDATA_WEB_REQUEST_RECEIVE_SIZE, align 4
  %39 = call i32 @buffer_need_bytes(%struct.TYPE_6__* %37, i32 %38)
  %40 = load %struct.web_client*, %struct.web_client** %3, align 8
  %41 = getelementptr inbounds %struct.web_client, %struct.web_client* %40, i32 0, i32 4
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.web_client*, %struct.web_client** %3, align 8
  %44 = getelementptr inbounds %struct.web_client, %struct.web_client* %43, i32 0, i32 2
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 0
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 2
  %48 = load i8*, i8** %47, align 8
  %49 = load %struct.web_client*, %struct.web_client** %3, align 8
  %50 = getelementptr inbounds %struct.web_client, %struct.web_client* %49, i32 0, i32 2
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 0
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = getelementptr inbounds i8, i8* %48, i64 %54
  %56 = load i32, i32* %5, align 4
  %57 = sub nsw i32 %56, 1
  %58 = sext i32 %57 to i64
  %59 = load i32, i32* @MSG_DONTWAIT, align 4
  %60 = call i32 @recv(i32 %42, i8* %55, i64 %58, i32 %59)
  store i32 %60, i32* %4, align 4
  %61 = load i32, i32* %4, align 4
  %62 = icmp sgt i32 %61, 0
  %63 = zext i1 %62 to i32
  %64 = call i64 @likely(i32 %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %120

66:                                               ; preds = %18
  %67 = load i32, i32* %4, align 4
  %68 = load %struct.web_client*, %struct.web_client** %3, align 8
  %69 = getelementptr inbounds %struct.web_client, %struct.web_client* %68, i32 0, i32 3
  %70 = load i32, i32* %69, align 8
  %71 = add nsw i32 %70, %67
  store i32 %71, i32* %69, align 8
  %72 = load %struct.web_client*, %struct.web_client** %3, align 8
  %73 = getelementptr inbounds %struct.web_client, %struct.web_client* %72, i32 0, i32 2
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 0
  %75 = load %struct.TYPE_6__*, %struct.TYPE_6__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  store i64 %77, i64* %6, align 8
  %78 = load i64, i64* %6, align 8
  %79 = load i32, i32* %4, align 4
  %80 = sext i32 %79 to i64
  %81 = load %struct.web_client*, %struct.web_client** %3, align 8
  %82 = getelementptr inbounds %struct.web_client, %struct.web_client* %81, i32 0, i32 2
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i32 0, i32 0
  %84 = load %struct.TYPE_6__*, %struct.TYPE_6__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 1
  %86 = load i64, i64* %85, align 8
  %87 = add i64 %86, %80
  store i64 %87, i64* %85, align 8
  %88 = load %struct.web_client*, %struct.web_client** %3, align 8
  %89 = getelementptr inbounds %struct.web_client, %struct.web_client* %88, i32 0, i32 2
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %89, i32 0, i32 0
  %91 = load %struct.TYPE_6__*, %struct.TYPE_6__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i32 0, i32 2
  %93 = load i8*, i8** %92, align 8
  %94 = load %struct.web_client*, %struct.web_client** %3, align 8
  %95 = getelementptr inbounds %struct.web_client, %struct.web_client* %94, i32 0, i32 2
  %96 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %95, i32 0, i32 0
  %97 = load %struct.TYPE_6__*, %struct.TYPE_6__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %97, i32 0, i32 1
  %99 = load i64, i64* %98, align 8
  %100 = getelementptr inbounds i8, i8* %93, i64 %99
  store i8 0, i8* %100, align 1
  %101 = load i32, i32* @D_WEB_CLIENT, align 4
  %102 = load %struct.web_client*, %struct.web_client** %3, align 8
  %103 = getelementptr inbounds %struct.web_client, %struct.web_client* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 8
  %105 = load i32, i32* %4, align 4
  %106 = call i32 (i32, i8*, i32, ...) @debug(i32 %101, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %104, i32 %105)
  %107 = load i32, i32* @D_WEB_DATA, align 4
  %108 = load %struct.web_client*, %struct.web_client** %3, align 8
  %109 = getelementptr inbounds %struct.web_client, %struct.web_client* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 8
  %111 = load %struct.web_client*, %struct.web_client** %3, align 8
  %112 = getelementptr inbounds %struct.web_client, %struct.web_client* %111, i32 0, i32 2
  %113 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %112, i32 0, i32 0
  %114 = load %struct.TYPE_6__*, %struct.TYPE_6__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %114, i32 0, i32 2
  %116 = load i8*, i8** %115, align 8
  %117 = load i64, i64* %6, align 8
  %118 = getelementptr inbounds i8, i8* %116, i64 %117
  %119 = call i32 (i32, i8*, i32, ...) @debug(i32 %107, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %110, i8* %118)
  br label %128

120:                                              ; preds = %18
  %121 = load i32, i32* @D_WEB_CLIENT, align 4
  %122 = load %struct.web_client*, %struct.web_client** %3, align 8
  %123 = getelementptr inbounds %struct.web_client, %struct.web_client* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 8
  %125 = call i32 (i32, i8*, i32, ...) @debug(i32 %121, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i32 %124)
  %126 = load %struct.web_client*, %struct.web_client** %3, align 8
  %127 = call i32 @WEB_CLIENT_IS_DEAD(%struct.web_client* %126)
  br label %128

128:                                              ; preds = %120, %66
  %129 = load i32, i32* %4, align 4
  store i32 %129, i32* %2, align 4
  br label %130

130:                                              ; preds = %128, %15
  %131 = load i32, i32* %2, align 4
  ret i32 %131
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @web_client_read_file(%struct.web_client*) #1

declare dso_local i32 @buffer_need_bytes(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @recv(i32, i8*, i64, i32) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @debug(i32, i8*, i32, ...) #1

declare dso_local i32 @WEB_CLIENT_IS_DEAD(%struct.web_client*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
