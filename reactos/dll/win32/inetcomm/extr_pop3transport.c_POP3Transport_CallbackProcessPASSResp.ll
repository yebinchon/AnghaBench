; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/inetcomm/extr_pop3transport.c_POP3Transport_CallbackProcessPASSResp.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/inetcomm/extr_pop3transport.c_POP3Transport_CallbackProcessPASSResp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 }

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@IXP_AUTHORIZED = common dso_local global i32 0, align 4
@IXP_CONNECTED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i8*, i32)* @POP3Transport_CallbackProcessPASSResp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @POP3Transport_CallbackProcessPASSResp(i32* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_4__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load i32*, i32** %4, align 8
  %11 = bitcast i32* %10 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %11, %struct.TYPE_4__** %7, align 8
  %12 = call i32 @TRACE(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %14 = load i8*, i8** %5, align 8
  %15 = call i32 @POP3Transport_ParseResponse(%struct.TYPE_4__* %13, i8* %14, i32* %8)
  store i32 %15, i32* %9, align 4
  %16 = load i32, i32* %9, align 4
  %17 = call i64 @FAILED(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %3
  br label %35

20:                                               ; preds = %3
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i32, i32* @IXP_AUTHORIZED, align 4
  %24 = call i32 @InternetTransport_ChangeStatus(%struct.TYPE_5__* %22, i32 %23)
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i32, i32* @IXP_CONNECTED, align 4
  %28 = call i32 @InternetTransport_ChangeStatus(%struct.TYPE_5__* %26, i32 %27)
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = inttoptr i64 %32 to i32*
  %34 = call i32 @IPOP3Callback_OnResponse(i32* %33, i32* %8)
  br label %35

35:                                               ; preds = %20, %19
  ret void
}

declare dso_local i32 @TRACE(i8*) #1

declare dso_local i32 @POP3Transport_ParseResponse(%struct.TYPE_4__*, i8*, i32*) #1

declare dso_local i64 @FAILED(i32) #1

declare dso_local i32 @InternetTransport_ChangeStatus(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @IPOP3Callback_OnResponse(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
