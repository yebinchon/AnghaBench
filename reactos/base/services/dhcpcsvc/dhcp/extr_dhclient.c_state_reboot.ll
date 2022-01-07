; ModuleID = '/home/carl/AnghaBench/reactos/base/services/dhcpcsvc/dhcp/extr_dhclient.c_state_reboot.c'
source_filename = "/home/carl/AnghaBench/reactos/base/services/dhcpcsvc/dhcp/extr_dhclient.c_state_reboot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.interface_info = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32*, %struct.TYPE_4__*, i32, i32, i32, %struct.TYPE_6__*, i32, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_6__ = type { i64 }

@S_REBOOTING = common dso_local global i32 0, align 4
@iaddr_broadcast = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @state_reboot(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.interface_info*, align 8
  %4 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = bitcast i8* %5 to %struct.interface_info*
  store %struct.interface_info* %6, %struct.interface_info** %3, align 8
  %7 = call i32 (...) @GetTickCount()
  store i32 %7, i32* %4, align 4
  %8 = load %struct.interface_info*, %struct.interface_info** %3, align 8
  %9 = getelementptr inbounds %struct.interface_info, %struct.interface_info* %8, i32 0, i32 0
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 5
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %13 = icmp ne %struct.TYPE_6__* %12, null
  br i1 %13, label %14, label %23

14:                                               ; preds = %1
  %15 = load %struct.interface_info*, %struct.interface_info** %3, align 8
  %16 = getelementptr inbounds %struct.interface_info, %struct.interface_info* %15, i32 0, i32 0
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 5
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %14, %1
  %24 = load %struct.interface_info*, %struct.interface_info** %3, align 8
  %25 = call i32 @state_init(%struct.interface_info* %24)
  br label %71

26:                                               ; preds = %14
  %27 = load i32, i32* @S_REBOOTING, align 4
  %28 = load %struct.interface_info*, %struct.interface_info** %3, align 8
  %29 = getelementptr inbounds %struct.interface_info, %struct.interface_info* %28, i32 0, i32 0
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 7
  store i32 %27, i32* %31, align 4
  %32 = call i32 @RtlRandom(i32* %4)
  %33 = load %struct.interface_info*, %struct.interface_info** %3, align 8
  %34 = getelementptr inbounds %struct.interface_info, %struct.interface_info* %33, i32 0, i32 0
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 6
  store i32 %32, i32* %36, align 8
  %37 = load %struct.interface_info*, %struct.interface_info** %3, align 8
  %38 = load %struct.interface_info*, %struct.interface_info** %3, align 8
  %39 = getelementptr inbounds %struct.interface_info, %struct.interface_info* %38, i32 0, i32 0
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 5
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %41, align 8
  %43 = call i32 @make_request(%struct.interface_info* %37, %struct.TYPE_6__* %42)
  %44 = load i32, i32* @iaddr_broadcast, align 4
  %45 = load %struct.interface_info*, %struct.interface_info** %3, align 8
  %46 = getelementptr inbounds %struct.interface_info, %struct.interface_info* %45, i32 0, i32 0
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 4
  store i32 %44, i32* %48, align 8
  %49 = load %struct.interface_info*, %struct.interface_info** %3, align 8
  %50 = getelementptr inbounds %struct.interface_info, %struct.interface_info* %49, i32 0, i32 0
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 3
  %53 = call i32 @time(i32* %52)
  %54 = load %struct.interface_info*, %struct.interface_info** %3, align 8
  %55 = getelementptr inbounds %struct.interface_info, %struct.interface_info* %54, i32 0, i32 0
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 1
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.interface_info*, %struct.interface_info** %3, align 8
  %62 = getelementptr inbounds %struct.interface_info, %struct.interface_info* %61, i32 0, i32 0
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 2
  store i32 %60, i32* %64, align 8
  %65 = load %struct.interface_info*, %struct.interface_info** %3, align 8
  %66 = getelementptr inbounds %struct.interface_info, %struct.interface_info* %65, i32 0, i32 0
  %67 = load %struct.TYPE_5__*, %struct.TYPE_5__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 0
  store i32* null, i32** %68, align 8
  %69 = load %struct.interface_info*, %struct.interface_info** %3, align 8
  %70 = call i32 @send_request(%struct.interface_info* %69)
  br label %71

71:                                               ; preds = %26, %23
  ret void
}

declare dso_local i32 @GetTickCount(...) #1

declare dso_local i32 @state_init(%struct.interface_info*) #1

declare dso_local i32 @RtlRandom(i32*) #1

declare dso_local i32 @make_request(%struct.interface_info*, %struct.TYPE_6__*) #1

declare dso_local i32 @time(i32*) #1

declare dso_local i32 @send_request(%struct.interface_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
