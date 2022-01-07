; ModuleID = '/home/carl/AnghaBench/netdata/web/server/extr_web_client.c_web_client_send_chunk_close.c'
source_filename = "/home/carl/AnghaBench/netdata/web/server/extr_web_client.c_web_client_send_chunk_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.web_client = type { i32, i32 }

@.str = private unnamed_addr constant [3 x i8] c"\0D\0A\00", align 1
@D_DEFLATE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"%llu: Sent chunk suffix %zd bytes.\00", align 1
@D_WEB_CLIENT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [47 x i8] c"%llu: Did not send chunk suffix to the client.\00", align 1
@.str.3 = private unnamed_addr constant [45 x i8] c"%llu: Failed to send chunk suffix to client.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @web_client_send_chunk_close(%struct.web_client* %0) #0 {
  %2 = alloca %struct.web_client*, align 8
  %3 = alloca i64, align 8
  store %struct.web_client* %0, %struct.web_client** %2, align 8
  %4 = load %struct.web_client*, %struct.web_client** %2, align 8
  %5 = call i64 @web_client_send_data(%struct.web_client* %4, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 2, i32 0)
  store i64 %5, i64* %3, align 8
  %6 = load i64, i64* %3, align 8
  %7 = icmp sgt i64 %6, 0
  br i1 %7, label %8, label %22

8:                                                ; preds = %1
  %9 = load i32, i32* @D_DEFLATE, align 4
  %10 = load %struct.web_client*, %struct.web_client** %2, align 8
  %11 = getelementptr inbounds %struct.web_client, %struct.web_client* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i64, i64* %3, align 8
  %14 = call i32 (i32, i8*, i32, ...) @debug(i32 %9, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %12, i64 %13)
  %15 = load i64, i64* %3, align 8
  %16 = load %struct.web_client*, %struct.web_client** %2, align 8
  %17 = getelementptr inbounds %struct.web_client, %struct.web_client* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = sext i32 %18 to i64
  %20 = add nsw i64 %19, %15
  %21 = trunc i64 %20 to i32
  store i32 %21, i32* %17, align 4
  br label %42

22:                                               ; preds = %1
  %23 = load i64, i64* %3, align 8
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %25, label %33

25:                                               ; preds = %22
  %26 = load i32, i32* @D_WEB_CLIENT, align 4
  %27 = load %struct.web_client*, %struct.web_client** %2, align 8
  %28 = getelementptr inbounds %struct.web_client, %struct.web_client* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 (i32, i8*, i32, ...) @debug(i32 %26, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0), i32 %29)
  %31 = load %struct.web_client*, %struct.web_client** %2, align 8
  %32 = call i32 @WEB_CLIENT_IS_DEAD(%struct.web_client* %31)
  br label %41

33:                                               ; preds = %22
  %34 = load i32, i32* @D_WEB_CLIENT, align 4
  %35 = load %struct.web_client*, %struct.web_client** %2, align 8
  %36 = getelementptr inbounds %struct.web_client, %struct.web_client* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 (i32, i8*, i32, ...) @debug(i32 %34, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i64 0, i64 0), i32 %37)
  %39 = load %struct.web_client*, %struct.web_client** %2, align 8
  %40 = call i32 @WEB_CLIENT_IS_DEAD(%struct.web_client* %39)
  br label %41

41:                                               ; preds = %33, %25
  br label %42

42:                                               ; preds = %41, %8
  %43 = load i64, i64* %3, align 8
  ret i64 %43
}

declare dso_local i64 @web_client_send_data(%struct.web_client*, i8*, i32, i32) #1

declare dso_local i32 @debug(i32, i8*, i32, ...) #1

declare dso_local i32 @WEB_CLIENT_IS_DEAD(%struct.web_client*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
