; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/lwip/core/extr_netif.c_netif_add.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/lwip/core/extr_netif.c_netif_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netif = type { i32, i32*, %struct.netif*, i64, i32*, i32, i64, i8*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32, i32, i32 }

@netif_add.netifnum = internal global i64 0, align 8
@.str = private unnamed_addr constant [23 x i8] c"No init function given\00", align 1
@ERR_OK = common dso_local global i64 0, align 8
@netif_list = common dso_local global %struct.netif* null, align 8
@NETIF_DEBUG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"netif: added interface %c%c IP addr \00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c" netmask \00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c" gw \00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@NETIF_FLAG_IGMP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.netif* @netif_add(%struct.netif* %0, i32* %1, i32* %2, i32* %3, i8* %4, i64 (%struct.netif*)* %5, i32 %6) #0 {
  %8 = alloca %struct.netif*, align 8
  %9 = alloca %struct.netif*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64 (%struct.netif*)*, align 8
  %15 = alloca i32, align 4
  store %struct.netif* %0, %struct.netif** %9, align 8
  store i32* %1, i32** %10, align 8
  store i32* %2, i32** %11, align 8
  store i32* %3, i32** %12, align 8
  store i8* %4, i8** %13, align 8
  store i64 (%struct.netif*)* %5, i64 (%struct.netif*)** %14, align 8
  store i32 %6, i32* %15, align 4
  %16 = load i64 (%struct.netif*)*, i64 (%struct.netif*)** %14, align 8
  %17 = icmp ne i64 (%struct.netif*)* %16, null
  %18 = zext i1 %17 to i32
  %19 = call i32 @LWIP_ASSERT(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %18)
  %20 = load %struct.netif*, %struct.netif** %9, align 8
  %21 = getelementptr inbounds %struct.netif, %struct.netif* %20, i32 0, i32 18
  %22 = call i32 @ip_addr_set_zero(i32* %21)
  %23 = load %struct.netif*, %struct.netif** %9, align 8
  %24 = getelementptr inbounds %struct.netif, %struct.netif* %23, i32 0, i32 17
  %25 = call i32 @ip_addr_set_zero(i32* %24)
  %26 = load %struct.netif*, %struct.netif** %9, align 8
  %27 = getelementptr inbounds %struct.netif, %struct.netif* %26, i32 0, i32 16
  %28 = call i32 @ip_addr_set_zero(i32* %27)
  %29 = load %struct.netif*, %struct.netif** %9, align 8
  %30 = getelementptr inbounds %struct.netif, %struct.netif* %29, i32 0, i32 0
  store i32 0, i32* %30, align 8
  %31 = load i8*, i8** %13, align 8
  %32 = load %struct.netif*, %struct.netif** %9, align 8
  %33 = getelementptr inbounds %struct.netif, %struct.netif* %32, i32 0, i32 7
  store i8* %31, i8** %33, align 8
  %34 = load i64, i64* @netif_add.netifnum, align 8
  %35 = add nsw i64 %34, 1
  store i64 %35, i64* @netif_add.netifnum, align 8
  %36 = load %struct.netif*, %struct.netif** %9, align 8
  %37 = getelementptr inbounds %struct.netif, %struct.netif* %36, i32 0, i32 6
  store i64 %34, i64* %37, align 8
  %38 = load i32, i32* %15, align 4
  %39 = load %struct.netif*, %struct.netif** %9, align 8
  %40 = getelementptr inbounds %struct.netif, %struct.netif* %39, i32 0, i32 5
  store i32 %38, i32* %40, align 8
  %41 = load %struct.netif*, %struct.netif** %9, align 8
  %42 = load i32*, i32** %10, align 8
  %43 = load i32*, i32** %11, align 8
  %44 = load i32*, i32** %12, align 8
  %45 = call i32 @netif_set_addr(%struct.netif* %41, i32* %42, i32* %43, i32* %44)
  %46 = load i64 (%struct.netif*)*, i64 (%struct.netif*)** %14, align 8
  %47 = load %struct.netif*, %struct.netif** %9, align 8
  %48 = call i64 %46(%struct.netif* %47)
  %49 = load i64, i64* @ERR_OK, align 8
  %50 = icmp ne i64 %48, %49
  br i1 %50, label %51, label %52

51:                                               ; preds = %7
  store %struct.netif* null, %struct.netif** %8, align 8
  br label %88

52:                                               ; preds = %7
  %53 = load %struct.netif*, %struct.netif** @netif_list, align 8
  %54 = load %struct.netif*, %struct.netif** %9, align 8
  %55 = getelementptr inbounds %struct.netif, %struct.netif* %54, i32 0, i32 2
  store %struct.netif* %53, %struct.netif** %55, align 8
  %56 = load %struct.netif*, %struct.netif** %9, align 8
  store %struct.netif* %56, %struct.netif** @netif_list, align 8
  %57 = call i32 (...) @snmp_inc_iflist()
  %58 = load i32, i32* @NETIF_DEBUG, align 4
  %59 = load %struct.netif*, %struct.netif** %9, align 8
  %60 = getelementptr inbounds %struct.netif, %struct.netif* %59, i32 0, i32 1
  %61 = load i32*, i32** %60, align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 0
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.netif*, %struct.netif** %9, align 8
  %65 = getelementptr inbounds %struct.netif, %struct.netif* %64, i32 0, i32 1
  %66 = load i32*, i32** %65, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 1
  %68 = load i32, i32* %67, align 4
  %69 = sext i32 %68 to i64
  %70 = inttoptr i64 %69 to i8*
  %71 = call i32 @LWIP_DEBUGF(i32 %58, i8* %70)
  %72 = load i32, i32* @NETIF_DEBUG, align 4
  %73 = load i32*, i32** %10, align 8
  %74 = call i32 @ip_addr_debug_print(i32 %72, i32* %73)
  %75 = load i32, i32* @NETIF_DEBUG, align 4
  %76 = call i32 @LWIP_DEBUGF(i32 %75, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  %77 = load i32, i32* @NETIF_DEBUG, align 4
  %78 = load i32*, i32** %11, align 8
  %79 = call i32 @ip_addr_debug_print(i32 %77, i32* %78)
  %80 = load i32, i32* @NETIF_DEBUG, align 4
  %81 = call i32 @LWIP_DEBUGF(i32 %80, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  %82 = load i32, i32* @NETIF_DEBUG, align 4
  %83 = load i32*, i32** %12, align 8
  %84 = call i32 @ip_addr_debug_print(i32 %82, i32* %83)
  %85 = load i32, i32* @NETIF_DEBUG, align 4
  %86 = call i32 @LWIP_DEBUGF(i32 %85, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  %87 = load %struct.netif*, %struct.netif** %9, align 8
  store %struct.netif* %87, %struct.netif** %8, align 8
  br label %88

88:                                               ; preds = %52, %51
  %89 = load %struct.netif*, %struct.netif** %8, align 8
  ret %struct.netif* %89
}

declare dso_local i32 @LWIP_ASSERT(i8*, i32) #1

declare dso_local i32 @ip_addr_set_zero(i32*) #1

declare dso_local i32 @netif_set_addr(%struct.netif*, i32*, i32*, i32*) #1

declare dso_local i32 @snmp_inc_iflist(...) #1

declare dso_local i32 @LWIP_DEBUGF(i32, i8*) #1

declare dso_local i32 @ip_addr_debug_print(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
