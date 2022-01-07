; ModuleID = '/home/carl/AnghaBench/netdata/web/server/extr_web_client.c_web_client_send_chunk_header.c'
source_filename = "/home/carl/AnghaBench/netdata/web/server/extr_web_client.c_web_client_send_chunk_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.web_client = type { i64, i32 }

@D_DEFLATE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"%llu: OPEN CHUNK of %zu bytes (hex: %zx).\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"%zX\0D\0A\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"%llu: Sent chunk header %zd bytes.\00", align 1
@D_WEB_CLIENT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [47 x i8] c"%llu: Did not send chunk header to the client.\00", align 1
@.str.4 = private unnamed_addr constant [45 x i8] c"%llu: Failed to send chunk header to client.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @web_client_send_chunk_header(%struct.web_client* %0, i64 %1) #0 {
  %3 = alloca %struct.web_client*, align 8
  %4 = alloca i64, align 8
  %5 = alloca [24 x i8], align 16
  %6 = alloca i64, align 8
  store %struct.web_client* %0, %struct.web_client** %3, align 8
  store i64 %1, i64* %4, align 8
  %7 = load i32, i32* @D_DEFLATE, align 4
  %8 = load %struct.web_client*, %struct.web_client** %3, align 8
  %9 = getelementptr inbounds %struct.web_client, %struct.web_client* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 8
  %11 = load i64, i64* %4, align 8
  %12 = load i64, i64* %4, align 8
  %13 = call i32 (i32, i8*, i32, ...) @debug(i32 %7, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %10, i64 %11, i64 %12)
  %14 = getelementptr inbounds [24 x i8], [24 x i8]* %5, i64 0, i64 0
  %15 = load i64, i64* %4, align 8
  %16 = call i64 @sprintf(i8* %14, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i64 %15)
  store i64 %16, i64* %6, align 8
  %17 = load i64, i64* %6, align 8
  %18 = getelementptr inbounds [24 x i8], [24 x i8]* %5, i64 0, i64 %17
  store i8 0, i8* %18, align 1
  %19 = load %struct.web_client*, %struct.web_client** %3, align 8
  %20 = getelementptr inbounds [24 x i8], [24 x i8]* %5, i64 0, i64 0
  %21 = getelementptr inbounds [24 x i8], [24 x i8]* %5, i64 0, i64 0
  %22 = call i32 @strlen(i8* %21)
  %23 = call i64 @web_client_send_data(%struct.web_client* %19, i8* %20, i32 %22, i32 0)
  store i64 %23, i64* %6, align 8
  %24 = load i64, i64* %6, align 8
  %25 = icmp ugt i64 %24, 0
  br i1 %25, label %26, label %38

26:                                               ; preds = %2
  %27 = load i32, i32* @D_DEFLATE, align 4
  %28 = load %struct.web_client*, %struct.web_client** %3, align 8
  %29 = getelementptr inbounds %struct.web_client, %struct.web_client* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = load i64, i64* %6, align 8
  %32 = call i32 (i32, i8*, i32, ...) @debug(i32 %27, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i32 %30, i64 %31)
  %33 = load i64, i64* %6, align 8
  %34 = load %struct.web_client*, %struct.web_client** %3, align 8
  %35 = getelementptr inbounds %struct.web_client, %struct.web_client* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = add i64 %36, %33
  store i64 %37, i64* %35, align 8
  br label %58

38:                                               ; preds = %2
  %39 = load i64, i64* %6, align 8
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %41, label %49

41:                                               ; preds = %38
  %42 = load i32, i32* @D_WEB_CLIENT, align 4
  %43 = load %struct.web_client*, %struct.web_client** %3, align 8
  %44 = getelementptr inbounds %struct.web_client, %struct.web_client* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = call i32 (i32, i8*, i32, ...) @debug(i32 %42, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.3, i64 0, i64 0), i32 %45)
  %47 = load %struct.web_client*, %struct.web_client** %3, align 8
  %48 = call i32 @WEB_CLIENT_IS_DEAD(%struct.web_client* %47)
  br label %57

49:                                               ; preds = %38
  %50 = load i32, i32* @D_WEB_CLIENT, align 4
  %51 = load %struct.web_client*, %struct.web_client** %3, align 8
  %52 = getelementptr inbounds %struct.web_client, %struct.web_client* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = call i32 (i32, i8*, i32, ...) @debug(i32 %50, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.4, i64 0, i64 0), i32 %53)
  %55 = load %struct.web_client*, %struct.web_client** %3, align 8
  %56 = call i32 @WEB_CLIENT_IS_DEAD(%struct.web_client* %55)
  br label %57

57:                                               ; preds = %49, %41
  br label %58

58:                                               ; preds = %57, %26
  %59 = load i64, i64* %6, align 8
  ret i64 %59
}

declare dso_local i32 @debug(i32, i8*, i32, ...) #1

declare dso_local i64 @sprintf(i8*, i8*, i64) #1

declare dso_local i64 @web_client_send_data(%struct.web_client*, i8*, i32, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @WEB_CLIENT_IS_DEAD(%struct.web_client*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
