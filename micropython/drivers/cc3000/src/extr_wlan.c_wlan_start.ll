; ModuleID = '/home/carl/AnghaBench/micropython/drivers/cc3000/src/extr_wlan.c_wlan_start.c'
source_filename = "/home/carl/AnghaBench/micropython/drivers/cc3000/src/extr_wlan.c_wlan_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 (...)*, i32*, i32 (i32)*, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }

@tSLInformation = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@wlan_tx_buffer = common dso_local global i64 0, align 8
@SpiReceiveHandler = common dso_local global i32 0, align 4
@WLAN_ENABLE = common dso_local global i32 0, align 4
@TIMEOUT = common dso_local global i64 0, align 8
@HCI_CMND_READ_BUFFER_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wlan_start(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @tSLInformation, i32 0, i32 12), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @tSLInformation, i32 0, i32 11), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @tSLInformation, i32 0, i32 10), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @tSLInformation, i32 0, i32 9), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @tSLInformation, i32 0, i32 8), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @tSLInformation, i32 0, i32 7), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @tSLInformation, i32 0, i32 6), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @tSLInformation, i32 0, i32 5), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @tSLInformation, i32 0, i32 4), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @tSLInformation, i32 0, i32 3), align 8
  %6 = load i64, i64* @wlan_tx_buffer, align 8
  %7 = inttoptr i64 %6 to i32*
  store i32* %7, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @tSLInformation, i32 0, i32 1), align 8
  %8 = load i32, i32* @SpiReceiveHandler, align 4
  %9 = call i32 @SpiOpen(i32 %8)
  %10 = load i64 (...)*, i64 (...)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @tSLInformation, i32 0, i32 0), align 8
  %11 = call i64 (...) %10()
  store i64 %11, i64* %4, align 8
  %12 = load i32 (i32)*, i32 (i32)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @tSLInformation, i32 0, i32 2), align 8
  %13 = load i32, i32* @WLAN_ENABLE, align 4
  %14 = call i32 %12(i32 %13)
  %15 = load i64, i64* @TIMEOUT, align 8
  store i64 %15, i64* %5, align 8
  %16 = load i64, i64* %4, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %31

18:                                               ; preds = %1
  br label %19

19:                                               ; preds = %29, %18
  %20 = load i64 (...)*, i64 (...)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @tSLInformation, i32 0, i32 0), align 8
  %21 = call i64 (...) %20()
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %19
  %24 = load i64, i64* %5, align 8
  %25 = add nsw i64 %24, -1
  store i64 %25, i64* %5, align 8
  %26 = icmp ne i64 %25, 0
  br label %27

27:                                               ; preds = %23, %19
  %28 = phi i1 [ false, %19 ], [ %26, %23 ]
  br i1 %28, label %29, label %30

29:                                               ; preds = %27
  br label %19

30:                                               ; preds = %27
  br label %61

31:                                               ; preds = %1
  br label %32

32:                                               ; preds = %42, %31
  %33 = load i64 (...)*, i64 (...)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @tSLInformation, i32 0, i32 0), align 8
  %34 = call i64 (...) %33()
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %32
  %37 = load i64, i64* %5, align 8
  %38 = add nsw i64 %37, -1
  store i64 %38, i64* %5, align 8
  %39 = icmp ne i64 %38, 0
  br label %40

40:                                               ; preds = %36, %32
  %41 = phi i1 [ false, %32 ], [ %39, %36 ]
  br i1 %41, label %42, label %43

42:                                               ; preds = %40
  br label %32

43:                                               ; preds = %40
  %44 = load i64, i64* %5, align 8
  %45 = icmp eq i64 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %43
  store i32 -1, i32* %2, align 4
  br label %73

47:                                               ; preds = %43
  %48 = load i64, i64* @TIMEOUT, align 8
  store i64 %48, i64* %5, align 8
  br label %49

49:                                               ; preds = %59, %47
  %50 = load i64 (...)*, i64 (...)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @tSLInformation, i32 0, i32 0), align 8
  %51 = call i64 (...) %50()
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %49
  %54 = load i64, i64* %5, align 8
  %55 = add nsw i64 %54, -1
  store i64 %55, i64* %5, align 8
  %56 = icmp ne i64 %55, 0
  br label %57

57:                                               ; preds = %53, %49
  %58 = phi i1 [ false, %49 ], [ %56, %53 ]
  br i1 %58, label %59, label %60

59:                                               ; preds = %57
  br label %49

60:                                               ; preds = %57
  br label %61

61:                                               ; preds = %60, %30
  %62 = load i64, i64* %5, align 8
  %63 = icmp eq i64 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %61
  store i32 -1, i32* %2, align 4
  br label %73

65:                                               ; preds = %61
  %66 = load i32, i32* %3, align 4
  %67 = call i32 @SimpleLink_Init_Start(i32 %66)
  %68 = load i32, i32* @HCI_CMND_READ_BUFFER_SIZE, align 4
  %69 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @tSLInformation, i32 0, i32 1), align 8
  %70 = call i32 @hci_command_send(i32 %68, i32* %69, i32 0)
  %71 = load i32, i32* @HCI_CMND_READ_BUFFER_SIZE, align 4
  %72 = call i32 @SimpleLinkWaitEvent(i32 %71, i32 0)
  store i32 0, i32* %2, align 4
  br label %73

73:                                               ; preds = %65, %64, %46
  %74 = load i32, i32* %2, align 4
  ret i32 %74
}

declare dso_local i32 @SpiOpen(i32) #1

declare dso_local i32 @SimpleLink_Init_Start(i32) #1

declare dso_local i32 @hci_command_send(i32, i32*, i32) #1

declare dso_local i32 @SimpleLinkWaitEvent(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
