; ModuleID = '/home/carl/AnghaBench/lwan/src/lib/extr_lwan-request.c_prepare_websocket_handshake.c'
source_filename = "/home/carl/AnghaBench/lwan/src/lib/extr_lwan-request.c_prepare_websocket_handshake.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lwan_request = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

@prepare_websocket_handshake.websocket_uuid = internal constant [37 x i8] c"258EAFA5-E914-47DA-95CA-C5AB0DC85B11\00", align 16
@RESPONSE_SENT_HEADERS = common dso_local global i32 0, align 4
@HTTP_INTERNAL_ERROR = common dso_local global i32 0, align 4
@CONN_IS_UPGRADE = common dso_local global i32 0, align 4
@HTTP_BAD_REQUEST = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"Upgrade\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"websocket\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"Sec-WebSocket-Key\00", align 1
@free = common dso_local global i32 0, align 4
@HTTP_SWITCHING_PROTOCOLS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lwan_request*, i8**)* @prepare_websocket_handshake to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @prepare_websocket_handshake(%struct.lwan_request* %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.lwan_request*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca [20 x i8], align 16
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  store %struct.lwan_request* %0, %struct.lwan_request** %4, align 8
  store i8** %1, i8*** %5, align 8
  %11 = load %struct.lwan_request*, %struct.lwan_request** %4, align 8
  %12 = getelementptr inbounds %struct.lwan_request, %struct.lwan_request* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* @RESPONSE_SENT_HEADERS, align 4
  %15 = and i32 %13, %14
  %16 = call i64 @UNLIKELY(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %2
  %19 = load i32, i32* @HTTP_INTERNAL_ERROR, align 4
  store i32 %19, i32* %3, align 4
  br label %108

20:                                               ; preds = %2
  %21 = load %struct.lwan_request*, %struct.lwan_request** %4, align 8
  %22 = getelementptr inbounds %struct.lwan_request, %struct.lwan_request* %21, i32 0, i32 1
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @CONN_IS_UPGRADE, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  %29 = xor i1 %28, true
  %30 = zext i1 %29 to i32
  %31 = call i64 @UNLIKELY(i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %20
  %34 = load i32, i32* @HTTP_BAD_REQUEST, align 4
  store i32 %34, i32* %3, align 4
  br label %108

35:                                               ; preds = %20
  %36 = load %struct.lwan_request*, %struct.lwan_request** %4, align 8
  %37 = call i8* @lwan_request_get_header(%struct.lwan_request* %36, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  store i8* %37, i8** %8, align 8
  %38 = load i8*, i8** %8, align 8
  %39 = icmp ne i8* %38, null
  br i1 %39, label %40, label %45

40:                                               ; preds = %35
  %41 = load i8*, i8** %8, align 8
  %42 = call i32 @streq(i8* %41, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  %43 = icmp ne i32 %42, 0
  %44 = xor i1 %43, true
  br label %45

45:                                               ; preds = %40, %35
  %46 = phi i1 [ true, %35 ], [ %44, %40 ]
  %47 = zext i1 %46 to i32
  %48 = call i64 @UNLIKELY(i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %45
  %51 = load i32, i32* @HTTP_BAD_REQUEST, align 4
  store i32 %51, i32* %3, align 4
  br label %108

52:                                               ; preds = %45
  %53 = load %struct.lwan_request*, %struct.lwan_request** %4, align 8
  %54 = call i8* @lwan_request_get_header(%struct.lwan_request* %53, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  store i8* %54, i8** %9, align 8
  %55 = load i8*, i8** %9, align 8
  %56 = icmp ne i8* %55, null
  %57 = xor i1 %56, true
  %58 = zext i1 %57 to i32
  %59 = call i64 @UNLIKELY(i32 %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %52
  %62 = load i32, i32* @HTTP_BAD_REQUEST, align 4
  store i32 %62, i32* %3, align 4
  br label %108

63:                                               ; preds = %52
  %64 = load i8*, i8** %9, align 8
  %65 = call i64 @strlen(i8* %64)
  store i64 %65, i64* %10, align 8
  %66 = load i8*, i8** %9, align 8
  %67 = load i64, i64* %10, align 8
  %68 = call i32 @base64_validate(i8* %66, i64 %67)
  %69 = icmp ne i32 %68, 0
  %70 = xor i1 %69, true
  %71 = zext i1 %70 to i32
  %72 = call i64 @UNLIKELY(i32 %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %76

74:                                               ; preds = %63
  %75 = load i32, i32* @HTTP_BAD_REQUEST, align 4
  store i32 %75, i32* %3, align 4
  br label %108

76:                                               ; preds = %63
  %77 = call i32 @sha1_init(i32* %7)
  %78 = load i8*, i8** %9, align 8
  %79 = load i64, i64* %10, align 8
  %80 = call i32 @sha1_update(i32* %7, i8* %78, i64 %79)
  %81 = call i32 @sha1_update(i32* %7, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @prepare_websocket_handshake.websocket_uuid, i64 0, i64 0), i64 36)
  %82 = getelementptr inbounds [20 x i8], [20 x i8]* %6, i64 0, i64 0
  %83 = call i32 @sha1_finalize(i32* %7, i8* %82)
  %84 = getelementptr inbounds [20 x i8], [20 x i8]* %6, i64 0, i64 0
  %85 = call i64 @base64_encode(i8* %84, i32 20, i32* null)
  %86 = inttoptr i64 %85 to i8*
  %87 = load i8**, i8*** %5, align 8
  store i8* %86, i8** %87, align 8
  %88 = load i8**, i8*** %5, align 8
  %89 = load i8*, i8** %88, align 8
  %90 = icmp ne i8* %89, null
  %91 = xor i1 %90, true
  %92 = zext i1 %91 to i32
  %93 = call i64 @UNLIKELY(i32 %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %97

95:                                               ; preds = %76
  %96 = load i32, i32* @HTTP_INTERNAL_ERROR, align 4
  store i32 %96, i32* %3, align 4
  br label %108

97:                                               ; preds = %76
  %98 = load %struct.lwan_request*, %struct.lwan_request** %4, align 8
  %99 = getelementptr inbounds %struct.lwan_request, %struct.lwan_request* %98, i32 0, i32 1
  %100 = load %struct.TYPE_2__*, %struct.TYPE_2__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = load i32, i32* @free, align 4
  %104 = load i8**, i8*** %5, align 8
  %105 = load i8*, i8** %104, align 8
  %106 = call i32 @coro_defer(i32 %102, i32 %103, i8* %105)
  %107 = load i32, i32* @HTTP_SWITCHING_PROTOCOLS, align 4
  store i32 %107, i32* %3, align 4
  br label %108

108:                                              ; preds = %97, %95, %74, %61, %50, %33, %18
  %109 = load i32, i32* %3, align 4
  ret i32 %109
}

declare dso_local i64 @UNLIKELY(i32) #1

declare dso_local i8* @lwan_request_get_header(%struct.lwan_request*, i8*) #1

declare dso_local i32 @streq(i8*, i8*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @base64_validate(i8*, i64) #1

declare dso_local i32 @sha1_init(i32*) #1

declare dso_local i32 @sha1_update(i32*, i8*, i64) #1

declare dso_local i32 @sha1_finalize(i32*, i8*) #1

declare dso_local i64 @base64_encode(i8*, i32, i32*) #1

declare dso_local i32 @coro_defer(i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
