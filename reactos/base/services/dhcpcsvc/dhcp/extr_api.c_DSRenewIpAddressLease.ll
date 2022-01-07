; ModuleID = '/home/carl/AnghaBench/reactos/base/services/dhcpcsvc/dhcp/extr_api.c_DSRenewIpAddressLease.c'
source_filename = "/home/carl/AnghaBench/reactos/base/services/dhcpcsvc/dhcp/extr_api.c_DSRenewIpAddressLease.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32 }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_16__ = type { %struct.TYPE_18__, %struct.TYPE_13__ }
%struct.TYPE_18__ = type { %struct.TYPE_14__*, i32, i32 }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_13__ = type { i64 }
%struct.protocol = type { i32 }

@S_STATIC = common dso_local global i64 0, align 8
@got_one = common dso_local global i32 0, align 4
@S_INIT = common dso_local global i32 0, align 4
@AdapterStateChangedEvent = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @DSRenewIpAddressLease(i32 (%struct.TYPE_15__*)* %0, %struct.TYPE_17__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32 (%struct.TYPE_15__*)*, align 8
  %5 = alloca %struct.TYPE_17__*, align 8
  %6 = alloca %struct.TYPE_15__, align 4
  %7 = alloca %struct.TYPE_16__*, align 8
  %8 = alloca %struct.protocol*, align 8
  store i32 (%struct.TYPE_15__*)* %0, i32 (%struct.TYPE_15__*)** %4, align 8
  store %struct.TYPE_17__* %1, %struct.TYPE_17__** %5, align 8
  %9 = call i32 (...) @ApiLock()
  %10 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %11 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.TYPE_16__* @AdapterFindIndex(i32 %12)
  store %struct.TYPE_16__* %13, %struct.TYPE_16__** %7, align 8
  %14 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %15 = icmp ne %struct.TYPE_16__* %14, null
  br i1 %15, label %16, label %23

16:                                               ; preds = %2
  %17 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %18 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @S_STATIC, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %28

23:                                               ; preds = %16, %2
  %24 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %6, i32 0, i32 0
  store i32 0, i32* %24, align 4
  %25 = call i32 (...) @ApiUnlock()
  %26 = load i32 (%struct.TYPE_15__*)*, i32 (%struct.TYPE_15__*)** %4, align 8
  %27 = call i32 %26(%struct.TYPE_15__* %6)
  store i32 %27, i32* %3, align 4
  br label %69

28:                                               ; preds = %16
  %29 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %6, i32 0, i32 0
  store i32 1, i32* %29, align 4
  %30 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %31 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %30, i32 0, i32 0
  %32 = call %struct.protocol* @find_protocol_by_adapter(%struct.TYPE_18__* %31)
  store %struct.protocol* %32, %struct.protocol** %8, align 8
  %33 = load %struct.protocol*, %struct.protocol** %8, align 8
  %34 = icmp ne %struct.protocol* %33, null
  br i1 %34, label %35, label %38

35:                                               ; preds = %28
  %36 = load %struct.protocol*, %struct.protocol** %8, align 8
  %37 = call i32 @remove_protocol(%struct.protocol* %36)
  br label %38

38:                                               ; preds = %35, %28
  %39 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %40 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %44 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* @got_one, align 4
  %48 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %49 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %48, i32 0, i32 0
  %50 = call i32 @add_protocol(i32 %42, i32 %46, i32 %47, %struct.TYPE_18__* %49)
  %51 = load i32, i32* @S_INIT, align 4
  %52 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %53 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %53, i32 0, i32 0
  %55 = load %struct.TYPE_14__*, %struct.TYPE_14__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %55, i32 0, i32 0
  store i32 %51, i32* %56, align 4
  %57 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %58 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %57, i32 0, i32 0
  %59 = call i32 @state_reboot(%struct.TYPE_18__* %58)
  %60 = load i32*, i32** @AdapterStateChangedEvent, align 8
  %61 = icmp ne i32* %60, null
  br i1 %61, label %62, label %65

62:                                               ; preds = %38
  %63 = load i32*, i32** @AdapterStateChangedEvent, align 8
  %64 = call i32 @SetEvent(i32* %63)
  br label %65

65:                                               ; preds = %62, %38
  %66 = call i32 (...) @ApiUnlock()
  %67 = load i32 (%struct.TYPE_15__*)*, i32 (%struct.TYPE_15__*)** %4, align 8
  %68 = call i32 %67(%struct.TYPE_15__* %6)
  store i32 %68, i32* %3, align 4
  br label %69

69:                                               ; preds = %65, %23
  %70 = load i32, i32* %3, align 4
  ret i32 %70
}

declare dso_local i32 @ApiLock(...) #1

declare dso_local %struct.TYPE_16__* @AdapterFindIndex(i32) #1

declare dso_local i32 @ApiUnlock(...) #1

declare dso_local %struct.protocol* @find_protocol_by_adapter(%struct.TYPE_18__*) #1

declare dso_local i32 @remove_protocol(%struct.protocol*) #1

declare dso_local i32 @add_protocol(i32, i32, i32, %struct.TYPE_18__*) #1

declare dso_local i32 @state_reboot(%struct.TYPE_18__*) #1

declare dso_local i32 @SetEvent(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
