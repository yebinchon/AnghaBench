; ModuleID = '/home/carl/AnghaBench/mongoose/examples/ESP8266_RTOS/user/extr_mongoose.c_mg_send_websocket_handshake3v.c'
source_filename = "/home/carl/AnghaBench/mongoose/examples/ESP8266_RTOS/user/extr_mongoose.c_mg_send_websocket_handshake3v.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mg_connection = type { i32 }
%struct.mg_str = type { i64, i64 }
%struct.mbuf = type { i8*, i64 }

@.str = private unnamed_addr constant [115 x i8] c"GET %.*s HTTP/1.1\0D\0AUpgrade: websocket\0D\0AConnection: Upgrade\0D\0A%.*sSec-WebSocket-Version: 13\0D\0ASec-WebSocket-Key: %s\0D\0A\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"Host: %.*s\0D\0A\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"Sec-WebSocket-Protocol: %.*s\0D\0A\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"%.*s\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"\0D\0A\00", align 1
@MG_F_IS_WEBSOCKET = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mg_send_websocket_handshake3v(%struct.mg_connection* %0, i64 %1, i64 %2, i64 %3, i64 %4, %struct.mg_str* byval(%struct.mg_str) align 8 %5, %struct.mg_str* byval(%struct.mg_str) align 8 %6, %struct.mg_str* byval(%struct.mg_str) align 8 %7, %struct.mg_str* byval(%struct.mg_str) align 8 %8) #0 {
  %10 = alloca %struct.mg_str, align 8
  %11 = alloca %struct.mg_str, align 8
  %12 = alloca %struct.mg_connection*, align 8
  %13 = alloca %struct.mbuf, align 8
  %14 = alloca [25 x i8], align 16
  %15 = alloca [4 x i32], align 16
  %16 = alloca i32, align 4
  %17 = bitcast %struct.mg_str* %10 to { i64, i64 }*
  %18 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %17, i32 0, i32 0
  store i64 %1, i64* %18, align 8
  %19 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %17, i32 0, i32 1
  store i64 %2, i64* %19, align 8
  %20 = bitcast %struct.mg_str* %11 to { i64, i64 }*
  %21 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %20, i32 0, i32 0
  store i64 %3, i64* %21, align 8
  %22 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %20, i32 0, i32 1
  store i64 %4, i64* %22, align 8
  store %struct.mg_connection* %0, %struct.mg_connection** %12, align 8
  %23 = call i32 (...) @mg_ws_random_mask()
  %24 = getelementptr inbounds [4 x i32], [4 x i32]* %15, i64 0, i64 0
  store i32 %23, i32* %24, align 16
  %25 = call i32 (...) @mg_ws_random_mask()
  %26 = getelementptr inbounds [4 x i32], [4 x i32]* %15, i64 0, i64 1
  store i32 %25, i32* %26, align 4
  %27 = call i32 (...) @mg_ws_random_mask()
  %28 = getelementptr inbounds [4 x i32], [4 x i32]* %15, i64 0, i64 2
  store i32 %27, i32* %28, align 8
  %29 = call i32 (...) @mg_ws_random_mask()
  %30 = getelementptr inbounds [4 x i32], [4 x i32]* %15, i64 0, i64 3
  store i32 %29, i32* %30, align 4
  %31 = bitcast [4 x i32]* %15 to i8*
  %32 = getelementptr inbounds [25 x i8], [25 x i8]* %14, i64 0, i64 0
  %33 = call i32 @mg_base64_encode(i8* %31, i32 16, i8* %32)
  %34 = call i32 @mbuf_init(%struct.mbuf* %13, i32 0)
  %35 = getelementptr inbounds %struct.mg_str, %struct.mg_str* %7, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp sgt i64 %36, 0
  br i1 %37, label %38, label %50

38:                                               ; preds = %9
  %39 = bitcast %struct.mg_str* %7 to { i64, i64 }*
  %40 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %39, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = bitcast %struct.mg_str* %8 to { i64, i64 }*
  %45 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %44, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = call i32 @mg_basic_auth_header(i64 %41, i64 %43, i64 %46, i64 %48, %struct.mbuf* %13)
  br label %50

50:                                               ; preds = %38, %9
  %51 = load %struct.mg_connection*, %struct.mg_connection** %12, align 8
  %52 = getelementptr inbounds %struct.mg_str, %struct.mg_str* %10, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = trunc i64 %53 to i32
  %55 = getelementptr inbounds %struct.mg_str, %struct.mg_str* %10, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %13, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = trunc i64 %58 to i32
  %60 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %13, i32 0, i32 0
  %61 = load i8*, i8** %60, align 8
  %62 = icmp eq i8* %61, null
  br i1 %62, label %63, label %64

63:                                               ; preds = %50
  br label %67

64:                                               ; preds = %50
  %65 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %13, i32 0, i32 0
  %66 = load i8*, i8** %65, align 8
  br label %67

67:                                               ; preds = %64, %63
  %68 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), %63 ], [ %66, %64 ]
  %69 = getelementptr inbounds [25 x i8], [25 x i8]* %14, i64 0, i64 0
  %70 = call i32 (%struct.mg_connection*, i8*, ...) @mg_printf(%struct.mg_connection* %51, i8* getelementptr inbounds ([115 x i8], [115 x i8]* @.str, i64 0, i64 0), i32 %54, i64 %56, i32 %59, i8* %68, i8* %69)
  %71 = getelementptr inbounds %struct.mg_str, %struct.mg_str* %11, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = icmp sgt i64 %72, 0
  br i1 %73, label %74, label %86

74:                                               ; preds = %67
  %75 = getelementptr inbounds %struct.mg_str, %struct.mg_str* %10, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = getelementptr inbounds %struct.mg_str, %struct.mg_str* %11, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = sub nsw i64 %76, %78
  %80 = trunc i64 %79 to i32
  store i32 %80, i32* %16, align 4
  %81 = load %struct.mg_connection*, %struct.mg_connection** %12, align 8
  %82 = load i32, i32* %16, align 4
  %83 = getelementptr inbounds %struct.mg_str, %struct.mg_str* %11, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  %85 = call i32 (%struct.mg_connection*, i8*, ...) @mg_printf(%struct.mg_connection* %81, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 %82, i64 %84)
  br label %86

86:                                               ; preds = %74, %67
  %87 = getelementptr inbounds %struct.mg_str, %struct.mg_str* %5, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = icmp sgt i64 %88, 0
  br i1 %89, label %90, label %98

90:                                               ; preds = %86
  %91 = load %struct.mg_connection*, %struct.mg_connection** %12, align 8
  %92 = getelementptr inbounds %struct.mg_str, %struct.mg_str* %5, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = trunc i64 %93 to i32
  %95 = getelementptr inbounds %struct.mg_str, %struct.mg_str* %5, i32 0, i32 1
  %96 = load i64, i64* %95, align 8
  %97 = call i32 (%struct.mg_connection*, i8*, ...) @mg_printf(%struct.mg_connection* %91, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i32 %94, i64 %96)
  br label %98

98:                                               ; preds = %90, %86
  %99 = getelementptr inbounds %struct.mg_str, %struct.mg_str* %6, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = icmp sgt i64 %100, 0
  br i1 %101, label %102, label %110

102:                                              ; preds = %98
  %103 = load %struct.mg_connection*, %struct.mg_connection** %12, align 8
  %104 = getelementptr inbounds %struct.mg_str, %struct.mg_str* %6, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = trunc i64 %105 to i32
  %107 = getelementptr inbounds %struct.mg_str, %struct.mg_str* %6, i32 0, i32 1
  %108 = load i64, i64* %107, align 8
  %109 = call i32 (%struct.mg_connection*, i8*, ...) @mg_printf(%struct.mg_connection* %103, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i32 %106, i64 %108)
  br label %110

110:                                              ; preds = %102, %98
  %111 = load %struct.mg_connection*, %struct.mg_connection** %12, align 8
  %112 = call i32 (%struct.mg_connection*, i8*, ...) @mg_printf(%struct.mg_connection* %111, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0))
  %113 = load i32, i32* @MG_F_IS_WEBSOCKET, align 4
  %114 = load %struct.mg_connection*, %struct.mg_connection** %12, align 8
  %115 = getelementptr inbounds %struct.mg_connection, %struct.mg_connection* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = or i32 %116, %113
  store i32 %117, i32* %115, align 4
  %118 = call i32 @mbuf_free(%struct.mbuf* %13)
  ret void
}

declare dso_local i32 @mg_ws_random_mask(...) #1

declare dso_local i32 @mg_base64_encode(i8*, i32, i8*) #1

declare dso_local i32 @mbuf_init(%struct.mbuf*, i32) #1

declare dso_local i32 @mg_basic_auth_header(i64, i64, i64, i64, %struct.mbuf*) #1

declare dso_local i32 @mg_printf(%struct.mg_connection*, i8*, ...) #1

declare dso_local i32 @mbuf_free(%struct.mbuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
