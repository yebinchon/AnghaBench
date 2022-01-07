; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/network/wlanconf/extr_wlanconf.c_wmain.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/network/wlanconf/extr_wlanconf.c_wmain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@StdOut = common dso_local global i32 0, align 4
@IDS_NO_WLAN_ADAPTER = common dso_local global i32 0, align 4
@bScan = common dso_local global i64 0, align 8
@bDisconnect = common dso_local global i64 0, align 8
@bConnect = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wmain(i32 %0, i32** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32** %1, i32*** %5, align 8
  %8 = call i32 (...) @ConInitStdStreams()
  %9 = load i32, i32* %4, align 4
  %10 = load i32**, i32*** %5, align 8
  %11 = call i32 @ParseCmdline(i32 %9, i32** %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %75

14:                                               ; preds = %2
  %15 = call i32 @OpenWlanAdapter(i32* %6, i32* %7)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %21, label %17

17:                                               ; preds = %14
  %18 = load i32, i32* @StdOut, align 4
  %19 = load i32, i32* @IDS_NO_WLAN_ADAPTER, align 4
  %20 = call i32 @ConResPuts(i32 %18, i32 %19)
  store i32 -1, i32* %3, align 4
  br label %75

21:                                               ; preds = %14
  %22 = load i64, i64* @bScan, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %34

24:                                               ; preds = %21
  %25 = load i32, i32* %6, align 4
  %26 = call i32 @WlanScan(i32 %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %33, label %28

28:                                               ; preds = %24
  %29 = call i32 (...) @GetLastError()
  %30 = call i32 @DoFormatMessage(i32 %29)
  %31 = load i32, i32* %6, align 4
  %32 = call i32 @CloseHandle(i32 %31)
  store i32 -1, i32* %3, align 4
  br label %75

33:                                               ; preds = %24
  br label %72

34:                                               ; preds = %21
  %35 = load i64, i64* @bDisconnect, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %47

37:                                               ; preds = %34
  %38 = load i32, i32* %6, align 4
  %39 = call i32 @WlanDisconnect(i32 %38, i32* %7)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %46, label %41

41:                                               ; preds = %37
  %42 = call i32 (...) @GetLastError()
  %43 = call i32 @DoFormatMessage(i32 %42)
  %44 = load i32, i32* %6, align 4
  %45 = call i32 @CloseHandle(i32 %44)
  store i32 -1, i32* %3, align 4
  br label %75

46:                                               ; preds = %37
  br label %71

47:                                               ; preds = %34
  %48 = load i64, i64* @bConnect, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %60

50:                                               ; preds = %47
  %51 = load i32, i32* %6, align 4
  %52 = call i32 @WlanConnect(i32 %51)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %59, label %54

54:                                               ; preds = %50
  %55 = call i32 (...) @GetLastError()
  %56 = call i32 @DoFormatMessage(i32 %55)
  %57 = load i32, i32* %6, align 4
  %58 = call i32 @CloseHandle(i32 %57)
  store i32 -1, i32* %3, align 4
  br label %75

59:                                               ; preds = %50
  br label %70

60:                                               ; preds = %47
  %61 = load i32, i32* %6, align 4
  %62 = call i32 @WlanPrintCurrentStatus(i32 %61)
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %69, label %64

64:                                               ; preds = %60
  %65 = call i32 (...) @GetLastError()
  %66 = call i32 @DoFormatMessage(i32 %65)
  %67 = load i32, i32* %6, align 4
  %68 = call i32 @CloseHandle(i32 %67)
  store i32 -1, i32* %3, align 4
  br label %75

69:                                               ; preds = %60
  br label %70

70:                                               ; preds = %69, %59
  br label %71

71:                                               ; preds = %70, %46
  br label %72

72:                                               ; preds = %71, %33
  %73 = load i32, i32* %6, align 4
  %74 = call i32 @CloseHandle(i32 %73)
  store i32 0, i32* %3, align 4
  br label %75

75:                                               ; preds = %72, %64, %54, %41, %28, %17, %13
  %76 = load i32, i32* %3, align 4
  ret i32 %76
}

declare dso_local i32 @ConInitStdStreams(...) #1

declare dso_local i32 @ParseCmdline(i32, i32**) #1

declare dso_local i32 @OpenWlanAdapter(i32*, i32*) #1

declare dso_local i32 @ConResPuts(i32, i32) #1

declare dso_local i32 @WlanScan(i32) #1

declare dso_local i32 @DoFormatMessage(i32) #1

declare dso_local i32 @GetLastError(...) #1

declare dso_local i32 @CloseHandle(i32) #1

declare dso_local i32 @WlanDisconnect(i32, i32*) #1

declare dso_local i32 @WlanConnect(i32) #1

declare dso_local i32 @WlanPrintCurrentStatus(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
