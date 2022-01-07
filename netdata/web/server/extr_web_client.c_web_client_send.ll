; ModuleID = '/home/carl/AnghaBench/netdata/web/server/extr_web_client.c_web_client_send.c'
source_filename = "/home/carl/AnghaBench/netdata/web/server/extr_web_client.c_web_client_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.web_client = type { i64, i32, %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32, i64, i64, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64, i32* }

@D_WEB_CLIENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"%llu: Out of output data.\00", align 1
@WEB_CLIENT_MODE_FILECOPY = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [49 x i8] c"%llu: Waiting for more data to become available.\00", align 1
@.str.2 = private unnamed_addr constant [59 x i8] c"%llu: Closing (keep-alive is not enabled). %zu bytes sent.\00", align 1
@.str.3 = private unnamed_addr constant [84 x i8] c"%llu: Done sending all data on socket. Waiting for next request on the same socket.\00", align 1
@MSG_DONTWAIT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [22 x i8] c"%llu: Sent %zd bytes.\00", align 1
@.str.5 = private unnamed_addr constant [44 x i8] c"%llu: Did not send any bytes to the client.\00", align 1
@.str.6 = private unnamed_addr constant [37 x i8] c"%llu: Failed to send data to client.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @web_client_send(%struct.web_client* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.web_client*, align 8
  %4 = alloca i64, align 8
  store %struct.web_client* %0, %struct.web_client** %3, align 8
  %5 = load %struct.web_client*, %struct.web_client** %3, align 8
  %6 = getelementptr inbounds %struct.web_client, %struct.web_client* %5, i32 0, i32 2
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 3
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load %struct.web_client*, %struct.web_client** %3, align 8
  %12 = getelementptr inbounds %struct.web_client, %struct.web_client* %11, i32 0, i32 2
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = sub i64 %10, %14
  %16 = icmp eq i64 %15, 0
  %17 = zext i1 %16 to i32
  %18 = call i64 @unlikely(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %89

20:                                               ; preds = %1
  %21 = load i32, i32* @D_WEB_CLIENT, align 4
  %22 = load %struct.web_client*, %struct.web_client** %3, align 8
  %23 = getelementptr inbounds %struct.web_client, %struct.web_client* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = call i32 (i32, i8*, i32, ...) @debug(i32 %21, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %24)
  %26 = load %struct.web_client*, %struct.web_client** %3, align 8
  %27 = getelementptr inbounds %struct.web_client, %struct.web_client* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @WEB_CLIENT_MODE_FILECOPY, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %61

31:                                               ; preds = %20
  %32 = load %struct.web_client*, %struct.web_client** %3, align 8
  %33 = call i64 @web_client_has_wait_receive(%struct.web_client* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %61

35:                                               ; preds = %31
  %36 = load %struct.web_client*, %struct.web_client** %3, align 8
  %37 = getelementptr inbounds %struct.web_client, %struct.web_client* %36, i32 0, i32 2
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 2
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %61

41:                                               ; preds = %35
  %42 = load %struct.web_client*, %struct.web_client** %3, align 8
  %43 = getelementptr inbounds %struct.web_client, %struct.web_client* %42, i32 0, i32 2
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 2
  %45 = load i64, i64* %44, align 8
  %46 = load %struct.web_client*, %struct.web_client** %3, align 8
  %47 = getelementptr inbounds %struct.web_client, %struct.web_client* %46, i32 0, i32 2
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 3
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = icmp sgt i64 %45, %51
  br i1 %52, label %53, label %61

53:                                               ; preds = %41
  %54 = load i32, i32* @D_WEB_CLIENT, align 4
  %55 = load %struct.web_client*, %struct.web_client** %3, align 8
  %56 = getelementptr inbounds %struct.web_client, %struct.web_client* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  %58 = call i32 (i32, i8*, i32, ...) @debug(i32 %54, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0), i32 %57)
  %59 = load %struct.web_client*, %struct.web_client** %3, align 8
  %60 = call i32 @web_client_disable_wait_send(%struct.web_client* %59)
  store i64 0, i64* %2, align 8
  br label %165

61:                                               ; preds = %41, %35, %31, %20
  %62 = load %struct.web_client*, %struct.web_client** %3, align 8
  %63 = call i32 @web_client_has_keepalive(%struct.web_client* %62)
  %64 = icmp ne i32 %63, 0
  %65 = xor i1 %64, true
  %66 = zext i1 %65 to i32
  %67 = call i64 @unlikely(i32 %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %81

69:                                               ; preds = %61
  %70 = load i32, i32* @D_WEB_CLIENT, align 4
  %71 = load %struct.web_client*, %struct.web_client** %3, align 8
  %72 = getelementptr inbounds %struct.web_client, %struct.web_client* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 8
  %74 = load %struct.web_client*, %struct.web_client** %3, align 8
  %75 = getelementptr inbounds %struct.web_client, %struct.web_client* %74, i32 0, i32 2
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = call i32 (i32, i8*, i32, ...) @debug(i32 %70, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.2, i64 0, i64 0), i32 %73, i64 %77)
  %79 = load %struct.web_client*, %struct.web_client** %3, align 8
  %80 = call i32 @WEB_CLIENT_IS_DEAD(%struct.web_client* %79)
  store i64 0, i64* %2, align 8
  br label %165

81:                                               ; preds = %61
  %82 = load %struct.web_client*, %struct.web_client** %3, align 8
  %83 = call i32 @web_client_request_done(%struct.web_client* %82)
  %84 = load i32, i32* @D_WEB_CLIENT, align 4
  %85 = load %struct.web_client*, %struct.web_client** %3, align 8
  %86 = getelementptr inbounds %struct.web_client, %struct.web_client* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 8
  %88 = call i32 (i32, i8*, i32, ...) @debug(i32 %84, i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str.3, i64 0, i64 0), i32 %87)
  store i64 0, i64* %2, align 8
  br label %165

89:                                               ; preds = %1
  %90 = load %struct.web_client*, %struct.web_client** %3, align 8
  %91 = load %struct.web_client*, %struct.web_client** %3, align 8
  %92 = getelementptr inbounds %struct.web_client, %struct.web_client* %91, i32 0, i32 2
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 3
  %94 = load %struct.TYPE_3__*, %struct.TYPE_3__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %94, i32 0, i32 1
  %96 = load i32*, i32** %95, align 8
  %97 = load %struct.web_client*, %struct.web_client** %3, align 8
  %98 = getelementptr inbounds %struct.web_client, %struct.web_client* %97, i32 0, i32 2
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i32 0, i32 1
  %100 = load i64, i64* %99, align 8
  %101 = getelementptr inbounds i32, i32* %96, i64 %100
  %102 = load %struct.web_client*, %struct.web_client** %3, align 8
  %103 = getelementptr inbounds %struct.web_client, %struct.web_client* %102, i32 0, i32 2
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %103, i32 0, i32 3
  %105 = load %struct.TYPE_3__*, %struct.TYPE_3__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = load %struct.web_client*, %struct.web_client** %3, align 8
  %109 = getelementptr inbounds %struct.web_client, %struct.web_client* %108, i32 0, i32 2
  %110 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %109, i32 0, i32 1
  %111 = load i64, i64* %110, align 8
  %112 = sub i64 %107, %111
  %113 = load i32, i32* @MSG_DONTWAIT, align 4
  %114 = call i64 @web_client_send_data(%struct.web_client* %90, i32* %101, i64 %112, i32 %113)
  store i64 %114, i64* %4, align 8
  %115 = load i64, i64* %4, align 8
  %116 = icmp sgt i64 %115, 0
  %117 = zext i1 %116 to i32
  %118 = call i64 @likely(i32 %117)
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %140

120:                                              ; preds = %89
  %121 = load i64, i64* %4, align 8
  %122 = load %struct.web_client*, %struct.web_client** %3, align 8
  %123 = getelementptr inbounds %struct.web_client, %struct.web_client* %122, i32 0, i32 3
  %124 = load i32, i32* %123, align 8
  %125 = sext i32 %124 to i64
  %126 = add nsw i64 %125, %121
  %127 = trunc i64 %126 to i32
  store i32 %127, i32* %123, align 8
  %128 = load i64, i64* %4, align 8
  %129 = load %struct.web_client*, %struct.web_client** %3, align 8
  %130 = getelementptr inbounds %struct.web_client, %struct.web_client* %129, i32 0, i32 2
  %131 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %130, i32 0, i32 1
  %132 = load i64, i64* %131, align 8
  %133 = add i64 %132, %128
  store i64 %133, i64* %131, align 8
  %134 = load i32, i32* @D_WEB_CLIENT, align 4
  %135 = load %struct.web_client*, %struct.web_client** %3, align 8
  %136 = getelementptr inbounds %struct.web_client, %struct.web_client* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 8
  %138 = load i64, i64* %4, align 8
  %139 = call i32 (i32, i8*, i32, ...) @debug(i32 %134, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0), i32 %137, i64 %138)
  br label %163

140:                                              ; preds = %89
  %141 = load i64, i64* %4, align 8
  %142 = icmp eq i64 %141, 0
  %143 = zext i1 %142 to i32
  %144 = call i64 @likely(i32 %143)
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %146, label %154

146:                                              ; preds = %140
  %147 = load i32, i32* @D_WEB_CLIENT, align 4
  %148 = load %struct.web_client*, %struct.web_client** %3, align 8
  %149 = getelementptr inbounds %struct.web_client, %struct.web_client* %148, i32 0, i32 1
  %150 = load i32, i32* %149, align 8
  %151 = call i32 (i32, i8*, i32, ...) @debug(i32 %147, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.5, i64 0, i64 0), i32 %150)
  %152 = load %struct.web_client*, %struct.web_client** %3, align 8
  %153 = call i32 @WEB_CLIENT_IS_DEAD(%struct.web_client* %152)
  br label %162

154:                                              ; preds = %140
  %155 = load i32, i32* @D_WEB_CLIENT, align 4
  %156 = load %struct.web_client*, %struct.web_client** %3, align 8
  %157 = getelementptr inbounds %struct.web_client, %struct.web_client* %156, i32 0, i32 1
  %158 = load i32, i32* %157, align 8
  %159 = call i32 (i32, i8*, i32, ...) @debug(i32 %155, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.6, i64 0, i64 0), i32 %158)
  %160 = load %struct.web_client*, %struct.web_client** %3, align 8
  %161 = call i32 @WEB_CLIENT_IS_DEAD(%struct.web_client* %160)
  br label %162

162:                                              ; preds = %154, %146
  br label %163

163:                                              ; preds = %162, %120
  %164 = load i64, i64* %4, align 8
  store i64 %164, i64* %2, align 8
  br label %165

165:                                              ; preds = %163, %81, %69, %53
  %166 = load i64, i64* %2, align 8
  ret i64 %166
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @debug(i32, i8*, i32, ...) #1

declare dso_local i64 @web_client_has_wait_receive(%struct.web_client*) #1

declare dso_local i32 @web_client_disable_wait_send(%struct.web_client*) #1

declare dso_local i32 @web_client_has_keepalive(%struct.web_client*) #1

declare dso_local i32 @WEB_CLIENT_IS_DEAD(%struct.web_client*) #1

declare dso_local i32 @web_client_request_done(%struct.web_client*) #1

declare dso_local i64 @web_client_send_data(%struct.web_client*, i32*, i64, i32) #1

declare dso_local i64 @likely(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
