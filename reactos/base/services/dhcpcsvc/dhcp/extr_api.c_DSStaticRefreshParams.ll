; ModuleID = '/home/carl/AnghaBench/reactos/base/services/dhcpcsvc/dhcp/extr_api.c_DSStaticRefreshParams.c'
source_filename = "/home/carl/AnghaBench/reactos/base/services/dhcpcsvc/dhcp/extr_api.c_DSStaticRefreshParams.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32 }
%struct.TYPE_17__ = type { i32, %struct.TYPE_14__ }
%struct.TYPE_14__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32, i32 }
%struct.TYPE_16__ = type { i32, i64, i32, %struct.TYPE_12__, %struct.TYPE_18__ }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_18__ = type { i64 }
%struct.protocol = type { i32 }

@S_STATIC = common dso_local global i32 0, align 4
@AdapterStateChangedEvent = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @DSStaticRefreshParams(i32 (%struct.TYPE_15__*)* %0, %struct.TYPE_17__* %1) #0 {
  %3 = alloca i32 (%struct.TYPE_15__*)*, align 8
  %4 = alloca %struct.TYPE_17__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_15__, align 4
  %7 = alloca %struct.TYPE_16__*, align 8
  %8 = alloca %struct.protocol*, align 8
  store i32 (%struct.TYPE_15__*)* %0, i32 (%struct.TYPE_15__*)** %3, align 8
  store %struct.TYPE_17__* %1, %struct.TYPE_17__** %4, align 8
  %9 = call i32 (...) @ApiLock()
  %10 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.TYPE_16__* @AdapterFindIndex(i32 %12)
  store %struct.TYPE_16__* %13, %struct.TYPE_16__** %7, align 8
  %14 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %15 = icmp ne %struct.TYPE_16__* %14, null
  %16 = zext i1 %15 to i64
  %17 = select i1 %15, i32 1, i32 0
  %18 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %6, i32 0, i32 0
  store i32 %17, i32* %18, align 4
  %19 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %20 = icmp ne %struct.TYPE_16__* %19, null
  br i1 %20, label %21, label %87

21:                                               ; preds = %2
  %22 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %23 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %33

26:                                               ; preds = %21
  %27 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %28 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = call i32 @DeleteIPAddress(i64 %29)
  %31 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %32 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %31, i32 0, i32 1
  store i64 0, i64* %32, align 8
  br label %33

33:                                               ; preds = %26, %21
  %34 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %35 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %34, i32 0, i32 4
  %36 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %46

39:                                               ; preds = %33
  %40 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %41 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %40, i32 0, i32 4
  %42 = call i32 @DeleteIpForwardEntry(%struct.TYPE_18__* %41)
  %43 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %44 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %43, i32 0, i32 4
  %45 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %44, i32 0, i32 0
  store i64 0, i64* %45, align 8
  br label %46

46:                                               ; preds = %39, %33
  %47 = load i32, i32* @S_STATIC, align 4
  %48 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %49 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %48, i32 0, i32 3
  %50 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %49, i32 0, i32 0
  store i32 %47, i32* %50, align 4
  %51 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %52 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %51, i32 0, i32 2
  %53 = call %struct.protocol* @find_protocol_by_adapter(i32* %52)
  store %struct.protocol* %53, %struct.protocol** %8, align 8
  %54 = load %struct.protocol*, %struct.protocol** %8, align 8
  %55 = icmp ne %struct.protocol* %54, null
  br i1 %55, label %56, label %59

56:                                               ; preds = %46
  %57 = load %struct.protocol*, %struct.protocol** %8, align 8
  %58 = call i32 @remove_protocol(%struct.protocol* %57)
  br label %59

59:                                               ; preds = %56, %46
  %60 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %61 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %66 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %71 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %74 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %73, i32 0, i32 1
  %75 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %76 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %75, i32 0, i32 0
  %77 = call i32 @AddIPAddress(i32 %64, i32 %69, i32 %72, i64* %74, i32* %76)
  store i32 %77, i32* %5, align 4
  %78 = load i32, i32* %5, align 4
  %79 = call i32 @NT_SUCCESS(i32 %78)
  %80 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %6, i32 0, i32 0
  store i32 %79, i32* %80, align 4
  %81 = load i32*, i32** @AdapterStateChangedEvent, align 8
  %82 = icmp ne i32* %81, null
  br i1 %82, label %83, label %86

83:                                               ; preds = %59
  %84 = load i32*, i32** @AdapterStateChangedEvent, align 8
  %85 = call i32 @SetEvent(i32* %84)
  br label %86

86:                                               ; preds = %83, %59
  br label %87

87:                                               ; preds = %86, %2
  %88 = call i32 (...) @ApiUnlock()
  %89 = load i32 (%struct.TYPE_15__*)*, i32 (%struct.TYPE_15__*)** %3, align 8
  %90 = call i32 %89(%struct.TYPE_15__* %6)
  ret i32 %90
}

declare dso_local i32 @ApiLock(...) #1

declare dso_local %struct.TYPE_16__* @AdapterFindIndex(i32) #1

declare dso_local i32 @DeleteIPAddress(i64) #1

declare dso_local i32 @DeleteIpForwardEntry(%struct.TYPE_18__*) #1

declare dso_local %struct.protocol* @find_protocol_by_adapter(i32*) #1

declare dso_local i32 @remove_protocol(%struct.protocol*) #1

declare dso_local i32 @AddIPAddress(i32, i32, i32, i64*, i32*) #1

declare dso_local i32 @NT_SUCCESS(i32) #1

declare dso_local i32 @SetEvent(i32*) #1

declare dso_local i32 @ApiUnlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
