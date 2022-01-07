; ModuleID = '/home/carl/AnghaBench/reactos/base/services/dhcpcsvc/dhcp/extr_api.c_DSLeaseIpAddress.c'
source_filename = "/home/carl/AnghaBench/reactos/base/services/dhcpcsvc/dhcp/extr_api.c_DSLeaseIpAddress.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32 }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_14__ = type { %struct.TYPE_16__ }
%struct.TYPE_16__ = type { %struct.TYPE_12__*, i32, i32 }
%struct.TYPE_12__ = type { i32 }
%struct.protocol = type { i32 }

@got_one = common dso_local global i32 0, align 4
@S_INIT = common dso_local global i32 0, align 4
@AdapterStateChangedEvent = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @DSLeaseIpAddress(i32 (%struct.TYPE_13__*)* %0, %struct.TYPE_15__* %1) #0 {
  %3 = alloca i32 (%struct.TYPE_13__*)*, align 8
  %4 = alloca %struct.TYPE_15__*, align 8
  %5 = alloca %struct.TYPE_13__, align 4
  %6 = alloca %struct.TYPE_14__*, align 8
  %7 = alloca %struct.protocol*, align 8
  store i32 (%struct.TYPE_13__*)* %0, i32 (%struct.TYPE_13__*)** %3, align 8
  store %struct.TYPE_15__* %1, %struct.TYPE_15__** %4, align 8
  %8 = call i32 (...) @ApiLock()
  %9 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.TYPE_14__* @AdapterFindIndex(i32 %11)
  store %struct.TYPE_14__* %12, %struct.TYPE_14__** %6, align 8
  %13 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %14 = icmp ne %struct.TYPE_14__* %13, null
  %15 = zext i1 %14 to i64
  %16 = select i1 %14, i32 1, i32 0
  %17 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %5, i32 0, i32 0
  store i32 %16, i32* %17, align 4
  %18 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %19 = icmp ne %struct.TYPE_14__* %18, null
  br i1 %19, label %20, label %57

20:                                               ; preds = %2
  %21 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %21, i32 0, i32 0
  %23 = call %struct.protocol* @find_protocol_by_adapter(%struct.TYPE_16__* %22)
  store %struct.protocol* %23, %struct.protocol** %7, align 8
  %24 = load %struct.protocol*, %struct.protocol** %7, align 8
  %25 = icmp ne %struct.protocol* %24, null
  br i1 %25, label %26, label %29

26:                                               ; preds = %20
  %27 = load %struct.protocol*, %struct.protocol** %7, align 8
  %28 = call i32 @remove_protocol(%struct.protocol* %27)
  br label %29

29:                                               ; preds = %26, %20
  %30 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %35 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* @got_one, align 4
  %39 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %40 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %39, i32 0, i32 0
  %41 = call i32 @add_protocol(i32 %33, i32 %37, i32 %38, %struct.TYPE_16__* %40)
  %42 = load i32, i32* @S_INIT, align 4
  %43 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %44 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %44, i32 0, i32 0
  %46 = load %struct.TYPE_12__*, %struct.TYPE_12__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %46, i32 0, i32 0
  store i32 %42, i32* %47, align 4
  %48 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %49 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %48, i32 0, i32 0
  %50 = call i32 @state_reboot(%struct.TYPE_16__* %49)
  %51 = load i32*, i32** @AdapterStateChangedEvent, align 8
  %52 = icmp ne i32* %51, null
  br i1 %52, label %53, label %56

53:                                               ; preds = %29
  %54 = load i32*, i32** @AdapterStateChangedEvent, align 8
  %55 = call i32 @SetEvent(i32* %54)
  br label %56

56:                                               ; preds = %53, %29
  br label %57

57:                                               ; preds = %56, %2
  %58 = call i32 (...) @ApiUnlock()
  %59 = load i32 (%struct.TYPE_13__*)*, i32 (%struct.TYPE_13__*)** %3, align 8
  %60 = call i32 %59(%struct.TYPE_13__* %5)
  ret i32 %60
}

declare dso_local i32 @ApiLock(...) #1

declare dso_local %struct.TYPE_14__* @AdapterFindIndex(i32) #1

declare dso_local %struct.protocol* @find_protocol_by_adapter(%struct.TYPE_16__*) #1

declare dso_local i32 @remove_protocol(%struct.protocol*) #1

declare dso_local i32 @add_protocol(i32, i32, i32, %struct.TYPE_16__*) #1

declare dso_local i32 @state_reboot(%struct.TYPE_16__*) #1

declare dso_local i32 @SetEvent(i32*) #1

declare dso_local i32 @ApiUnlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
