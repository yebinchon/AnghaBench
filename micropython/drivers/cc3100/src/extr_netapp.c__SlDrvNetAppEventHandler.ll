; ModuleID = '/home/carl/AnghaBench/micropython/drivers/cc3100/src/extr_netapp.c__SlDrvNetAppEventHandler.c'
source_filename = "/home/carl/AnghaBench/micropython/drivers/cc3100/src/extr_netapp.c__SlDrvNetAppEventHandler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_23__ = type { %struct.TYPE_34__ }
%struct.TYPE_34__ = type { i32 }

@MSG_305 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [62 x i8] c"ASSERT: _SlDrvNetAppEventHandler : invalid opcode = 0x%x = %1\00", align 1
@MAX_TOKEN_NAME_LEN = common dso_local global i32 0, align 4
@MAX_TOKEN_VALUE_LEN = common dso_local global i32 0, align 4
@SL_NETAPP_HTTPGETTOKENVALUE_EVENT = common dso_local global i32 0, align 4
@SL_NETAPP_HTTPPOSTTOKENVALUE_EVENT = common dso_local global i32 0, align 4
@SL_NETAPP_HTTPSETTOKENVALUE = common dso_local global i32 0, align 4
@SL_NETAPP_RESPONSE_NONE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @_SlDrvNetAppEventHandler(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.TYPE_23__*, align 8
  store i8* %0, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = bitcast i8* %4 to %struct.TYPE_23__*
  store %struct.TYPE_23__* %5, %struct.TYPE_23__** %3, align 8
  %6 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %7 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  switch i32 %9, label %19 [
    i32 134, label %10
    i32 133, label %10
    i32 130, label %13
    i32 129, label %13
    i32 128, label %16
  ]

10:                                               ; preds = %1, %1
  %11 = load i8*, i8** %2, align 8
  %12 = call i32 @_sl_HandleAsync_DnsGetHostByName(i8* %11)
  br label %31

13:                                               ; preds = %1, %1
  %14 = load i8*, i8** %2, align 8
  %15 = call i32 @_sl_HandleAsync_DnsGetHostByService(i8* %14)
  br label %31

16:                                               ; preds = %1
  %17 = load i8*, i8** %2, align 8
  %18 = call i32 @_sl_HandleAsync_PingResponse(i8* %17)
  br label %31

19:                                               ; preds = %1
  %20 = load i32, i32* @MSG_305, align 4
  %21 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @SL_ERROR_TRACE2(i32 %20, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str, i64 0, i64 0), i32 %24, i32 %28)
  %30 = call i32 @VERIFY_PROTOCOL(i32 0)
  br label %31

31:                                               ; preds = %19, %16, %13, %10
  ret void
}

declare dso_local i32 @_sl_HandleAsync_DnsGetHostByName(i8*) #1

declare dso_local i32 @_sl_HandleAsync_DnsGetHostByService(i8*) #1

declare dso_local i32 @_sl_HandleAsync_PingResponse(i8*) #1

declare dso_local i32 @SL_ERROR_TRACE2(i32, i8*, i32, i32) #1

declare dso_local i32 @VERIFY_PROTOCOL(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
