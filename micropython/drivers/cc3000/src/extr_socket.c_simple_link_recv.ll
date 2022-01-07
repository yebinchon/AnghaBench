; ModuleID = '/home/carl/AnghaBench/micropython/drivers/cc3000/src/extr_socket.c_simple_link_recv.c'
source_filename = "/home/carl/AnghaBench/micropython/drivers/cc3000/src/extr_socket.c_simple_link_recv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32* }
%struct.TYPE_4__ = type { i64 }

@tSLInformation = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@HEADERS_SIZE_CMD = common dso_local global i32 0, align 4
@SOCKET_RECV_FROM_PARAMS_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32, i8*, i32, i32, i32*, i32*, i32)* @simple_link_recv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @simple_link_recv(i32 %0, i8* %1, i32 %2, i32 %3, i32* %4, i32* %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca %struct.TYPE_4__, align 8
  %18 = alloca i64, align 8
  store i32 %0, i32* %8, align 4
  store i8* %1, i8** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  store i32 %6, i32* %14, align 4
  %19 = load i32*, i32** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @tSLInformation, i32 0, i32 0), align 8
  store i32* %19, i32** %15, align 8
  %20 = load i32*, i32** %15, align 8
  %21 = load i32, i32* @HEADERS_SIZE_CMD, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i32, i32* %20, i64 %22
  store i32* %23, i32** %16, align 8
  %24 = load i32*, i32** %16, align 8
  %25 = load i32, i32* %8, align 4
  %26 = call i32* @UINT32_TO_STREAM(i32* %24, i32 %25)
  store i32* %26, i32** %16, align 8
  %27 = load i32*, i32** %16, align 8
  %28 = load i32, i32* %10, align 4
  %29 = call i32* @UINT32_TO_STREAM(i32* %27, i32 %28)
  store i32* %29, i32** %16, align 8
  %30 = load i32*, i32** %16, align 8
  %31 = load i32, i32* %11, align 4
  %32 = call i32* @UINT32_TO_STREAM(i32* %30, i32 %31)
  store i32* %32, i32** %16, align 8
  %33 = load i32, i32* %14, align 4
  %34 = load i32*, i32** %15, align 8
  %35 = load i32, i32* @SOCKET_RECV_FROM_PARAMS_LEN, align 4
  %36 = call i32 @hci_command_send(i32 %33, i32* %34, i32 %35)
  %37 = load i32, i32* %14, align 4
  %38 = call i32 @SimpleLinkWaitEvent(i32 %37, %struct.TYPE_4__* %17)
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp sgt i64 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %7
  %43 = load i8*, i8** %9, align 8
  %44 = load i32*, i32** %12, align 8
  %45 = load i32*, i32** %13, align 8
  %46 = call i32 @SimpleLinkWaitData(i8* %43, i32* %44, i32* %45)
  br label %47

47:                                               ; preds = %42, %7
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  store i64 %49, i64* %18, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  ret i64 %51
}

declare dso_local i32* @UINT32_TO_STREAM(i32*, i32) #1

declare dso_local i32 @hci_command_send(i32, i32*, i32) #1

declare dso_local i32 @SimpleLinkWaitEvent(i32, %struct.TYPE_4__*) #1

declare dso_local i32 @SimpleLinkWaitData(i8*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
