; ModuleID = '/home/carl/AnghaBench/reactos/base/services/dhcpcsvc/dhcp/extr_dhclient.c_send_decline.c'
source_filename = "/home/carl/AnghaBench/reactos/base/services/dhcpcsvc/dhcp/extr_dhclient.c_send_decline.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32 }
%struct.interface_info = type { %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i32, i32 }

@.str = private unnamed_addr constant [32 x i8] c"DHCPDECLINE on %s to %s port %d\00", align 1
@sockaddr_broadcast = common dso_local global %struct.TYPE_5__ zeroinitializer, align 4
@inaddr_any = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @send_decline(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.interface_info*, align 8
  store i8* %0, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = bitcast i8* %4 to %struct.interface_info*
  store %struct.interface_info* %5, %struct.interface_info** %3, align 8
  %6 = load %struct.interface_info*, %struct.interface_info** %3, align 8
  %7 = getelementptr inbounds %struct.interface_info, %struct.interface_info* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 8
  %9 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @sockaddr_broadcast, i32 0, i32 1), align 4
  %10 = call i32 @inet_ntoa(i32 %9)
  %11 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @sockaddr_broadcast, i32 0, i32 0), align 4
  %12 = call i32 @ntohs(i32 %11)
  %13 = call i32 @note(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %8, i32 %10, i32 %12)
  %14 = load %struct.interface_info*, %struct.interface_info** %3, align 8
  %15 = load %struct.interface_info*, %struct.interface_info** %3, align 8
  %16 = getelementptr inbounds %struct.interface_info, %struct.interface_info* %15, i32 0, i32 0
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 1
  %19 = load %struct.interface_info*, %struct.interface_info** %3, align 8
  %20 = getelementptr inbounds %struct.interface_info, %struct.interface_info* %19, i32 0, i32 0
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @inaddr_any, align 4
  %25 = call i32 @send_packet(%struct.interface_info* %14, i32* %18, i32 %23, i32 %24, %struct.TYPE_5__* @sockaddr_broadcast, i32* null)
  ret void
}

declare dso_local i32 @note(i8*, i32, i32, i32) #1

declare dso_local i32 @inet_ntoa(i32) #1

declare dso_local i32 @ntohs(i32) #1

declare dso_local i32 @send_packet(%struct.interface_info*, i32*, i32, i32, %struct.TYPE_5__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
