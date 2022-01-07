; ModuleID = '/home/carl/AnghaBench/micropython/drivers/cc3000/src/extr_wlan.c_wlan_connect.c'
source_filename = "/home/carl/AnghaBench/micropython/drivers/cc3000/src/extr_wlan.c_wlan_connect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32* }

@EFAIL = common dso_local global i32 0, align 4
@tSLInformation = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@HEADERS_SIZE_CMD = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@HCI_CMND_WLAN_CONNECT = common dso_local global i32 0, align 4
@WLAN_CONNECT_PARAM_LEN = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wlan_connect(i32 %0, i32* %1, i32 %2, i32* %3, i32* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca [6 x i32], align 16
  %17 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i32* %1, i32** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  store i32 %5, i32* %12, align 4
  %18 = bitcast [6 x i32]* %16 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %18, i8 0, i64 24, i1 false)
  %19 = load i32, i32* @EFAIL, align 4
  store i32 %19, i32* %13, align 4
  %20 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @tSLInformation, i32 0, i32 0), align 8
  store i32* %20, i32** %14, align 8
  %21 = load i32*, i32** %14, align 8
  %22 = load i32, i32* @HEADERS_SIZE_CMD, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i32, i32* %21, i64 %23
  store i32* %24, i32** %15, align 8
  %25 = load i32*, i32** %15, align 8
  %26 = call i32* @UINT32_TO_STREAM(i32* %25, i32 28)
  store i32* %26, i32** %15, align 8
  %27 = load i32*, i32** %15, align 8
  %28 = load i32, i32* %9, align 4
  %29 = call i32* @UINT32_TO_STREAM(i32* %27, i32 %28)
  store i32* %29, i32** %15, align 8
  %30 = load i32*, i32** %15, align 8
  %31 = load i32, i32* %7, align 4
  %32 = call i32* @UINT32_TO_STREAM(i32* %30, i32 %31)
  store i32* %32, i32** %15, align 8
  %33 = load i32*, i32** %15, align 8
  %34 = load i32, i32* %9, align 4
  %35 = add nsw i32 16, %34
  %36 = call i32* @UINT32_TO_STREAM(i32* %33, i32 %35)
  store i32* %36, i32** %15, align 8
  %37 = load i32*, i32** %15, align 8
  %38 = load i32, i32* %12, align 4
  %39 = call i32* @UINT32_TO_STREAM(i32* %37, i32 %38)
  store i32* %39, i32** %15, align 8
  %40 = load i32*, i32** %15, align 8
  %41 = call i32* @UINT16_TO_STREAM(i32* %40, i32 0)
  store i32* %41, i32** %15, align 8
  %42 = load i32*, i32** %10, align 8
  %43 = icmp ne i32* %42, null
  br i1 %43, label %44, label %49

44:                                               ; preds = %6
  %45 = load i32*, i32** %15, align 8
  %46 = load i32*, i32** %10, align 8
  %47 = load i32, i32* @ETH_ALEN, align 4
  %48 = call i32 @ARRAY_TO_STREAM(i32* %45, i32* %46, i32 %47)
  br label %54

49:                                               ; preds = %6
  %50 = load i32*, i32** %15, align 8
  %51 = getelementptr inbounds [6 x i32], [6 x i32]* %16, i64 0, i64 0
  %52 = load i32, i32* @ETH_ALEN, align 4
  %53 = call i32 @ARRAY_TO_STREAM(i32* %50, i32* %51, i32 %52)
  br label %54

54:                                               ; preds = %49, %44
  %55 = load i32*, i32** %15, align 8
  %56 = load i32*, i32** %8, align 8
  %57 = load i32, i32* %9, align 4
  %58 = call i32 @ARRAY_TO_STREAM(i32* %55, i32* %56, i32 %57)
  %59 = load i32, i32* %12, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %69

61:                                               ; preds = %54
  %62 = load i32*, i32** %11, align 8
  %63 = icmp ne i32* %62, null
  br i1 %63, label %64, label %69

64:                                               ; preds = %61
  %65 = load i32*, i32** %15, align 8
  %66 = load i32*, i32** %11, align 8
  %67 = load i32, i32* %12, align 4
  %68 = call i32 @ARRAY_TO_STREAM(i32* %65, i32* %66, i32 %67)
  br label %69

69:                                               ; preds = %64, %61, %54
  %70 = load i32, i32* @HCI_CMND_WLAN_CONNECT, align 4
  %71 = load i32*, i32** %14, align 8
  %72 = load i64, i64* @WLAN_CONNECT_PARAM_LEN, align 8
  %73 = load i32, i32* %9, align 4
  %74 = sext i32 %73 to i64
  %75 = add nsw i64 %72, %74
  %76 = load i32, i32* %12, align 4
  %77 = sext i32 %76 to i64
  %78 = add nsw i64 %75, %77
  %79 = sub nsw i64 %78, 1
  %80 = call i32 @hci_command_send(i32 %70, i32* %71, i64 %79)
  %81 = load i32, i32* @HCI_CMND_WLAN_CONNECT, align 4
  %82 = call i32 @SimpleLinkWaitEvent(i32 %81, i32* %13)
  %83 = load i32, i32* %13, align 4
  store i32 %83, i32* %17, align 4
  %84 = load i32, i32* %13, align 4
  ret i32 %84
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32* @UINT32_TO_STREAM(i32*, i32) #2

declare dso_local i32* @UINT16_TO_STREAM(i32*, i32) #2

declare dso_local i32 @ARRAY_TO_STREAM(i32*, i32*, i32) #2

declare dso_local i32 @hci_command_send(i32, i32*, i64) #2

declare dso_local i32 @SimpleLinkWaitEvent(i32, i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
