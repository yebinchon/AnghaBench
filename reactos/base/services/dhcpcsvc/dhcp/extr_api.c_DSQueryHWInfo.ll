; ModuleID = '/home/carl/AnghaBench/reactos/base/services/dhcpcsvc/dhcp/extr_api.c_DSQueryHWInfo.c'
source_filename = "/home/carl/AnghaBench/reactos/base/services/dhcpcsvc/dhcp/extr_api.c_DSQueryHWInfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32, i32, i32, i32 }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_13__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @DSQueryHWInfo(i32 (%struct.TYPE_12__*)* %0, %struct.TYPE_14__* %1) #0 {
  %3 = alloca i32 (%struct.TYPE_12__*)*, align 8
  %4 = alloca %struct.TYPE_14__*, align 8
  %5 = alloca %struct.TYPE_12__, align 4
  %6 = alloca %struct.TYPE_13__*, align 8
  store i32 (%struct.TYPE_12__*)* %0, i32 (%struct.TYPE_12__*)** %3, align 8
  store %struct.TYPE_14__* %1, %struct.TYPE_14__** %4, align 8
  %7 = call i32 (...) @ApiLock()
  %8 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %9 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call %struct.TYPE_13__* @AdapterFindIndex(i32 %10)
  store %struct.TYPE_13__* %11, %struct.TYPE_13__** %6, align 8
  %12 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %13 = icmp ne %struct.TYPE_13__* %12, null
  %14 = zext i1 %13 to i64
  %15 = select i1 %13, i32 1, i32 0
  %16 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %5, i32 0, i32 0
  store i32 %15, i32* %16, align 4
  %17 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %18 = icmp ne %struct.TYPE_13__* %17, null
  br i1 %18, label %19, label %43

19:                                               ; preds = %2
  %20 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %5, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %23, i32 0, i32 3
  store i32 %22, i32* %24, align 4
  %25 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %5, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %29, i32 0, i32 2
  store i32 %28, i32* %30, align 4
  %31 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %5, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %35, i32 0, i32 1
  store i32 %34, i32* %36, align 4
  %37 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %5, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %41, i32 0, i32 0
  store i32 %40, i32* %42, align 4
  br label %43

43:                                               ; preds = %19, %2
  %44 = call i32 (...) @ApiUnlock()
  %45 = load i32 (%struct.TYPE_12__*)*, i32 (%struct.TYPE_12__*)** %3, align 8
  %46 = call i32 %45(%struct.TYPE_12__* %5)
  ret i32 %46
}

declare dso_local i32 @ApiLock(...) #1

declare dso_local %struct.TYPE_13__* @AdapterFindIndex(i32) #1

declare dso_local i32 @ApiUnlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
