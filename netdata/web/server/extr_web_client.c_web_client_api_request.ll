; ModuleID = '/home/carl/AnghaBench/netdata/web/server/extr_web_client.c_web_client_api_request.c'
source_filename = "/home/carl/AnghaBench/netdata/web/server/extr_web_client.c_web_client_api_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.web_client = type { %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }

@.str = private unnamed_addr constant [2 x i8] c"/\00", align 1
@D_WEB_CLIENT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"%llu: Searching for API version '%s'.\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"v1\00", align 1
@CT_TEXT_HTML = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [26 x i8] c"Unsupported API version: \00", align 1
@HTTP_RESP_NOT_FOUND = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [19 x i8] c"Which API version?\00", align 1
@HTTP_RESP_BAD_REQUEST = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @web_client_api_request(i32* %0, %struct.web_client* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.web_client*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store i32* %0, i32** %5, align 8
  store %struct.web_client* %1, %struct.web_client** %6, align 8
  store i8* %2, i8** %7, align 8
  %9 = call i8* @mystrsep(i8** %7, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i8* %9, i8** %8, align 8
  %10 = load i8*, i8** %8, align 8
  %11 = icmp ne i8* %10, null
  br i1 %11, label %12, label %56

12:                                               ; preds = %3
  %13 = load i8*, i8** %8, align 8
  %14 = load i8, i8* %13, align 1
  %15 = sext i8 %14 to i32
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %56

17:                                               ; preds = %12
  %18 = load i32, i32* @D_WEB_CLIENT, align 4
  %19 = load %struct.web_client*, %struct.web_client** %6, align 8
  %20 = getelementptr inbounds %struct.web_client, %struct.web_client* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = load i8*, i8** %8, align 8
  %23 = call i32 @debug(i32 %18, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 %21, i8* %22)
  %24 = load i8*, i8** %8, align 8
  %25 = call i64 @strcmp(i8* %24, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %17
  %28 = load i32*, i32** %5, align 8
  %29 = load %struct.web_client*, %struct.web_client** %6, align 8
  %30 = load i8*, i8** %7, align 8
  %31 = call i32 @web_client_api_request_v1(i32* %28, %struct.web_client* %29, i8* %30)
  store i32 %31, i32* %4, align 4
  br label %68

32:                                               ; preds = %17
  %33 = load %struct.web_client*, %struct.web_client** %6, align 8
  %34 = getelementptr inbounds %struct.web_client, %struct.web_client* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %35, align 8
  %37 = call i32 @buffer_flush(%struct.TYPE_7__* %36)
  %38 = load i32, i32* @CT_TEXT_HTML, align 4
  %39 = load %struct.web_client*, %struct.web_client** %6, align 8
  %40 = getelementptr inbounds %struct.web_client, %struct.web_client* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 0
  store i32 %38, i32* %43, align 4
  %44 = load %struct.web_client*, %struct.web_client** %6, align 8
  %45 = getelementptr inbounds %struct.web_client, %struct.web_client* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 0
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %46, align 8
  %48 = call i32 @buffer_strcat(%struct.TYPE_7__* %47, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0))
  %49 = load %struct.web_client*, %struct.web_client** %6, align 8
  %50 = getelementptr inbounds %struct.web_client, %struct.web_client* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 0
  %52 = load %struct.TYPE_7__*, %struct.TYPE_7__** %51, align 8
  %53 = load i8*, i8** %8, align 8
  %54 = call i32 @buffer_strcat_htmlescape(%struct.TYPE_7__* %52, i8* %53)
  %55 = load i32, i32* @HTTP_RESP_NOT_FOUND, align 4
  store i32 %55, i32* %4, align 4
  br label %68

56:                                               ; preds = %12, %3
  %57 = load %struct.web_client*, %struct.web_client** %6, align 8
  %58 = getelementptr inbounds %struct.web_client, %struct.web_client* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 0
  %60 = load %struct.TYPE_7__*, %struct.TYPE_7__** %59, align 8
  %61 = call i32 @buffer_flush(%struct.TYPE_7__* %60)
  %62 = load %struct.web_client*, %struct.web_client** %6, align 8
  %63 = getelementptr inbounds %struct.web_client, %struct.web_client* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 0
  %65 = load %struct.TYPE_7__*, %struct.TYPE_7__** %64, align 8
  %66 = call i32 @buffer_sprintf(%struct.TYPE_7__* %65, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0))
  %67 = load i32, i32* @HTTP_RESP_BAD_REQUEST, align 4
  store i32 %67, i32* %4, align 4
  br label %68

68:                                               ; preds = %56, %32, %27
  %69 = load i32, i32* %4, align 4
  ret i32 %69
}

declare dso_local i8* @mystrsep(i8**, i8*) #1

declare dso_local i32 @debug(i32, i8*, i32, i8*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @web_client_api_request_v1(i32*, %struct.web_client*, i8*) #1

declare dso_local i32 @buffer_flush(%struct.TYPE_7__*) #1

declare dso_local i32 @buffer_strcat(%struct.TYPE_7__*, i8*) #1

declare dso_local i32 @buffer_strcat_htmlescape(%struct.TYPE_7__*, i8*) #1

declare dso_local i32 @buffer_sprintf(%struct.TYPE_7__*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
