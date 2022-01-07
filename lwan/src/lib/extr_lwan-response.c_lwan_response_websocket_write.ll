; ModuleID = '/home/carl/AnghaBench/lwan/src/lib/extr_lwan-response.c_lwan_response_websocket_write.c'
source_filename = "/home/carl/AnghaBench/lwan/src/lib/extr_lwan-response.c_lwan_response_websocket_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lwan_request = type { %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@WS_OPCODE_TEXT = common dso_local global i32 0, align 4
@CONN_IS_WEBSOCKET = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @lwan_response_websocket_write(%struct.lwan_request* %0) #0 {
  %2 = alloca %struct.lwan_request*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8, align 1
  store %struct.lwan_request* %0, %struct.lwan_request** %2, align 8
  %6 = load %struct.lwan_request*, %struct.lwan_request** %2, align 8
  %7 = getelementptr inbounds %struct.lwan_request, %struct.lwan_request* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = call i64 @lwan_strbuf_get_length(i32 %9)
  store i64 %10, i64* %3, align 8
  %11 = load %struct.lwan_request*, %struct.lwan_request** %2, align 8
  %12 = getelementptr inbounds %struct.lwan_request, %struct.lwan_request* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = call i8* @lwan_strbuf_get_buffer(i32 %14)
  store i8* %15, i8** %4, align 8
  %16 = load i32, i32* @WS_OPCODE_TEXT, align 4
  %17 = or i32 128, %16
  %18 = trunc i32 %17 to i8
  store i8 %18, i8* %5, align 1
  %19 = load %struct.lwan_request*, %struct.lwan_request** %2, align 8
  %20 = getelementptr inbounds %struct.lwan_request, %struct.lwan_request* %19, i32 0, i32 1
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @CONN_IS_WEBSOCKET, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %1
  br label %39

28:                                               ; preds = %1
  %29 = load %struct.lwan_request*, %struct.lwan_request** %2, align 8
  %30 = load i8, i8* %5, align 1
  %31 = load i8*, i8** %4, align 8
  %32 = load i64, i64* %3, align 8
  %33 = call i32 @write_websocket_frame(%struct.lwan_request* %29, i8 zeroext %30, i8* %31, i64 %32)
  %34 = load %struct.lwan_request*, %struct.lwan_request** %2, align 8
  %35 = getelementptr inbounds %struct.lwan_request, %struct.lwan_request* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @lwan_strbuf_reset(i32 %37)
  br label %39

39:                                               ; preds = %28, %27
  ret void
}

declare dso_local i64 @lwan_strbuf_get_length(i32) #1

declare dso_local i8* @lwan_strbuf_get_buffer(i32) #1

declare dso_local i32 @write_websocket_frame(%struct.lwan_request*, i8 zeroext, i8*, i64) #1

declare dso_local i32 @lwan_strbuf_reset(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
