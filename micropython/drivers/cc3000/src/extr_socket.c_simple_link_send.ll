; ModuleID = '/home/carl/AnghaBench/micropython/drivers/cc3000/src/extr_socket.c_simple_link_send.c'
source_filename = "/home/carl/AnghaBench/micropython/drivers/cc3000/src/extr_socket.c_simple_link_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32*, i32 }

@tSLInformation = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@HEADERS_SIZE_DATA = common dso_local global i32 0, align 4
@SOCKET_SENDTO_PARAMS_LEN = common dso_local global i32 0, align 4
@HCI_CMND_SEND_ARG_LENGTH = common dso_local global i32 0, align 4
@HCI_EVNT_SENDTO = common dso_local global i32 0, align 4
@HCI_EVNT_SEND = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, i32, i32, i32*, i32, i32)* @simple_link_send to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @simple_link_send(i32 %0, i8* %1, i32 %2, i32 %3, i32* %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  store i32 %0, i32* %9, align 4
  store i8* %1, i8** %10, align 8
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32* %4, i32** %13, align 8
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  store i32 0, i32* %16, align 4
  store i32* null, i32** %19, align 8
  store i32 0, i32* %21, align 4
  %24 = load i32, i32* %9, align 4
  %25 = call i32 @HostFlowControlConsumeBuff(i32 %24)
  store i32 %25, i32* %22, align 4
  %26 = icmp ne i32 0, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %7
  %28 = load i32, i32* %22, align 4
  store i32 %28, i32* %8, align 4
  br label %118

29:                                               ; preds = %7
  %30 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @tSLInformation, i32 0, i32 1), align 8
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @tSLInformation, i32 0, i32 1), align 8
  %32 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @tSLInformation, i32 0, i32 0), align 8
  store i32* %32, i32** %18, align 8
  %33 = load i32*, i32** %18, align 8
  %34 = load i32, i32* @HEADERS_SIZE_DATA, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %33, i64 %35
  store i32* %36, i32** %20, align 8
  %37 = load i32, i32* %15, align 4
  switch i32 %37, label %61 [
    i32 128, label %38
    i32 129, label %52
  ]

38:                                               ; preds = %29
  %39 = load i32, i32* %11, align 4
  %40 = sext i32 %39 to i64
  %41 = add i64 %40, 4
  %42 = add i64 %41, 4
  %43 = trunc i64 %42 to i32
  store i32 %43, i32* %21, align 4
  store i32 8, i32* %17, align 4
  %44 = load i32, i32* @SOCKET_SENDTO_PARAMS_LEN, align 4
  store i32 %44, i32* %16, align 4
  %45 = load i32*, i32** %18, align 8
  %46 = load i32, i32* @HEADERS_SIZE_DATA, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %45, i64 %47
  %49 = load i32, i32* @SOCKET_SENDTO_PARAMS_LEN, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %48, i64 %50
  store i32* %51, i32** %19, align 8
  br label %62

52:                                               ; preds = %29
  store i32 0, i32* %14, align 4
  store i32* null, i32** %13, align 8
  %53 = load i32, i32* @HCI_CMND_SEND_ARG_LENGTH, align 4
  store i32 %53, i32* %16, align 4
  %54 = load i32*, i32** %18, align 8
  %55 = load i32, i32* @HEADERS_SIZE_DATA, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i32, i32* %54, i64 %56
  %58 = load i32, i32* @HCI_CMND_SEND_ARG_LENGTH, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32, i32* %57, i64 %59
  store i32* %60, i32** %19, align 8
  br label %62

61:                                               ; preds = %29
  br label %62

62:                                               ; preds = %61, %52, %38
  %63 = load i32*, i32** %20, align 8
  %64 = load i32, i32* %9, align 4
  %65 = call i32* @UINT32_TO_STREAM(i32* %63, i32 %64)
  store i32* %65, i32** %20, align 8
  %66 = load i32*, i32** %20, align 8
  %67 = load i32, i32* %16, align 4
  %68 = sext i32 %67 to i64
  %69 = sub i64 %68, 4
  %70 = trunc i64 %69 to i32
  %71 = call i32* @UINT32_TO_STREAM(i32* %66, i32 %70)
  store i32* %71, i32** %20, align 8
  %72 = load i32*, i32** %20, align 8
  %73 = load i32, i32* %11, align 4
  %74 = call i32* @UINT32_TO_STREAM(i32* %72, i32 %73)
  store i32* %74, i32** %20, align 8
  %75 = load i32*, i32** %20, align 8
  %76 = load i32, i32* %12, align 4
  %77 = call i32* @UINT32_TO_STREAM(i32* %75, i32 %76)
  store i32* %77, i32** %20, align 8
  %78 = load i32, i32* %15, align 4
  %79 = icmp eq i32 %78, 128
  br i1 %79, label %80, label %87

80:                                               ; preds = %62
  %81 = load i32*, i32** %20, align 8
  %82 = load i32, i32* %21, align 4
  %83 = call i32* @UINT32_TO_STREAM(i32* %81, i32 %82)
  store i32* %83, i32** %20, align 8
  %84 = load i32*, i32** %20, align 8
  %85 = load i32, i32* %17, align 4
  %86 = call i32* @UINT32_TO_STREAM(i32* %84, i32 %85)
  store i32* %86, i32** %20, align 8
  br label %87

87:                                               ; preds = %80, %62
  %88 = load i32*, i32** %19, align 8
  %89 = load i8*, i8** %10, align 8
  %90 = bitcast i8* %89 to i32*
  %91 = load i32, i32* %11, align 4
  %92 = call i32 @ARRAY_TO_STREAM(i32* %88, i32* %90, i32 %91)
  %93 = load i32, i32* %15, align 4
  %94 = icmp eq i32 %93, 128
  br i1 %94, label %95, label %100

95:                                               ; preds = %87
  %96 = load i32*, i32** %19, align 8
  %97 = load i32*, i32** %13, align 8
  %98 = load i32, i32* %14, align 4
  %99 = call i32 @ARRAY_TO_STREAM(i32* %96, i32* %97, i32 %98)
  br label %100

100:                                              ; preds = %95, %87
  %101 = load i32, i32* %15, align 4
  %102 = load i32*, i32** %18, align 8
  %103 = load i32, i32* %16, align 4
  %104 = load i32, i32* %11, align 4
  %105 = load i32*, i32** %13, align 8
  %106 = load i32, i32* %14, align 4
  %107 = call i32 @hci_data_send(i32 %101, i32* %102, i32 %103, i32 %104, i32* %105, i32 %106)
  %108 = load i32, i32* %15, align 4
  %109 = icmp eq i32 %108, 128
  br i1 %109, label %110, label %113

110:                                              ; preds = %100
  %111 = load i32, i32* @HCI_EVNT_SENDTO, align 4
  %112 = call i32 @SimpleLinkWaitEvent(i32 %111, i32* %23)
  br label %116

113:                                              ; preds = %100
  %114 = load i32, i32* @HCI_EVNT_SEND, align 4
  %115 = call i32 @SimpleLinkWaitEvent(i32 %114, i32* %23)
  br label %116

116:                                              ; preds = %113, %110
  %117 = load i32, i32* %11, align 4
  store i32 %117, i32* %8, align 4
  br label %118

118:                                              ; preds = %116, %27
  %119 = load i32, i32* %8, align 4
  ret i32 %119
}

declare dso_local i32 @HostFlowControlConsumeBuff(i32) #1

declare dso_local i32* @UINT32_TO_STREAM(i32*, i32) #1

declare dso_local i32 @ARRAY_TO_STREAM(i32*, i32*, i32) #1

declare dso_local i32 @hci_data_send(i32, i32*, i32, i32, i32*, i32) #1

declare dso_local i32 @SimpleLinkWaitEvent(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
