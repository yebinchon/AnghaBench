; ModuleID = '/home/carl/AnghaBench/reactos/base/services/dhcpcsvc/dhcp/extr_dhclient.c_dhcpnak.c'
source_filename = "/home/carl/AnghaBench/reactos/base/services/dhcpcsvc/dhcp/extr_dhclient.c_dhcpnak.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.packet = type { i32, %struct.TYPE_5__*, %struct.interface_info* }
%struct.TYPE_5__ = type { i64, i64, i32 }
%struct.interface_info = type { %struct.TYPE_6__*, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i64, i64, i32* }
%struct.TYPE_4__ = type { i64, i32 }

@S_REBOOTING = common dso_local global i64 0, align 8
@S_REQUESTING = common dso_local global i64 0, align 8
@S_RENEWING = common dso_local global i64 0, align 8
@S_REBINDING = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [16 x i8] c"DHCPNAK from %s\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"DHCPNAK with no active lease.\0A\00", align 1
@send_request = common dso_local global i32 0, align 4
@S_INIT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dhcpnak(%struct.packet* %0) #0 {
  %2 = alloca %struct.packet*, align 8
  %3 = alloca %struct.interface_info*, align 8
  store %struct.packet* %0, %struct.packet** %2, align 8
  %4 = load %struct.packet*, %struct.packet** %2, align 8
  %5 = getelementptr inbounds %struct.packet, %struct.packet* %4, i32 0, i32 2
  %6 = load %struct.interface_info*, %struct.interface_info** %5, align 8
  store %struct.interface_info* %6, %struct.interface_info** %3, align 8
  %7 = load %struct.packet*, %struct.packet** %2, align 8
  %8 = getelementptr inbounds %struct.packet, %struct.packet* %7, i32 0, i32 2
  %9 = load %struct.interface_info*, %struct.interface_info** %8, align 8
  %10 = getelementptr inbounds %struct.interface_info, %struct.interface_info* %9, i32 0, i32 0
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load %struct.packet*, %struct.packet** %2, align 8
  %15 = getelementptr inbounds %struct.packet, %struct.packet* %14, i32 0, i32 1
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %13, %18
  br i1 %19, label %52, label %20

20:                                               ; preds = %1
  %21 = load %struct.packet*, %struct.packet** %2, align 8
  %22 = getelementptr inbounds %struct.packet, %struct.packet* %21, i32 0, i32 2
  %23 = load %struct.interface_info*, %struct.interface_info** %22, align 8
  %24 = getelementptr inbounds %struct.interface_info, %struct.interface_info* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load %struct.packet*, %struct.packet** %2, align 8
  %28 = getelementptr inbounds %struct.packet, %struct.packet* %27, i32 0, i32 1
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %26, %31
  br i1 %32, label %52, label %33

33:                                               ; preds = %20
  %34 = load %struct.packet*, %struct.packet** %2, align 8
  %35 = getelementptr inbounds %struct.packet, %struct.packet* %34, i32 0, i32 2
  %36 = load %struct.interface_info*, %struct.interface_info** %35, align 8
  %37 = getelementptr inbounds %struct.interface_info, %struct.interface_info* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.packet*, %struct.packet** %2, align 8
  %41 = getelementptr inbounds %struct.packet, %struct.packet* %40, i32 0, i32 1
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.packet*, %struct.packet** %2, align 8
  %46 = getelementptr inbounds %struct.packet, %struct.packet* %45, i32 0, i32 1
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = call i64 @memcmp(i32 %39, i32 %44, i64 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %33, %20, %1
  br label %121

53:                                               ; preds = %33
  %54 = load %struct.interface_info*, %struct.interface_info** %3, align 8
  %55 = getelementptr inbounds %struct.interface_info, %struct.interface_info* %54, i32 0, i32 0
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @S_REBOOTING, align 8
  %60 = icmp ne i64 %58, %59
  br i1 %60, label %61, label %86

61:                                               ; preds = %53
  %62 = load %struct.interface_info*, %struct.interface_info** %3, align 8
  %63 = getelementptr inbounds %struct.interface_info, %struct.interface_info* %62, i32 0, i32 0
  %64 = load %struct.TYPE_6__*, %struct.TYPE_6__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @S_REQUESTING, align 8
  %68 = icmp ne i64 %66, %67
  br i1 %68, label %69, label %86

69:                                               ; preds = %61
  %70 = load %struct.interface_info*, %struct.interface_info** %3, align 8
  %71 = getelementptr inbounds %struct.interface_info, %struct.interface_info* %70, i32 0, i32 0
  %72 = load %struct.TYPE_6__*, %struct.TYPE_6__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* @S_RENEWING, align 8
  %76 = icmp ne i64 %74, %75
  br i1 %76, label %77, label %86

77:                                               ; preds = %69
  %78 = load %struct.interface_info*, %struct.interface_info** %3, align 8
  %79 = getelementptr inbounds %struct.interface_info, %struct.interface_info* %78, i32 0, i32 0
  %80 = load %struct.TYPE_6__*, %struct.TYPE_6__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 1
  %82 = load i64, i64* %81, align 8
  %83 = load i64, i64* @S_REBINDING, align 8
  %84 = icmp ne i64 %82, %83
  br i1 %84, label %85, label %86

85:                                               ; preds = %77
  br label %121

86:                                               ; preds = %77, %69, %61, %53
  %87 = load %struct.packet*, %struct.packet** %2, align 8
  %88 = getelementptr inbounds %struct.packet, %struct.packet* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = call i32 @piaddr(i32 %89)
  %91 = call i32 (i8*, ...) @note(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %90)
  %92 = load %struct.interface_info*, %struct.interface_info** %3, align 8
  %93 = getelementptr inbounds %struct.interface_info, %struct.interface_info* %92, i32 0, i32 0
  %94 = load %struct.TYPE_6__*, %struct.TYPE_6__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %94, i32 0, i32 2
  %96 = load i32*, i32** %95, align 8
  %97 = icmp ne i32* %96, null
  br i1 %97, label %100, label %98

98:                                               ; preds = %86
  %99 = call i32 (i8*, ...) @note(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  br label %121

100:                                              ; preds = %86
  %101 = load %struct.interface_info*, %struct.interface_info** %3, align 8
  %102 = getelementptr inbounds %struct.interface_info, %struct.interface_info* %101, i32 0, i32 0
  %103 = load %struct.TYPE_6__*, %struct.TYPE_6__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %103, i32 0, i32 2
  %105 = load i32*, i32** %104, align 8
  %106 = call i32 @free_client_lease(i32* %105)
  %107 = load %struct.interface_info*, %struct.interface_info** %3, align 8
  %108 = getelementptr inbounds %struct.interface_info, %struct.interface_info* %107, i32 0, i32 0
  %109 = load %struct.TYPE_6__*, %struct.TYPE_6__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %109, i32 0, i32 2
  store i32* null, i32** %110, align 8
  %111 = load i32, i32* @send_request, align 4
  %112 = load %struct.interface_info*, %struct.interface_info** %3, align 8
  %113 = call i32 @cancel_timeout(i32 %111, %struct.interface_info* %112)
  %114 = load i64, i64* @S_INIT, align 8
  %115 = load %struct.interface_info*, %struct.interface_info** %3, align 8
  %116 = getelementptr inbounds %struct.interface_info, %struct.interface_info* %115, i32 0, i32 0
  %117 = load %struct.TYPE_6__*, %struct.TYPE_6__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %117, i32 0, i32 1
  store i64 %114, i64* %118, align 8
  %119 = load %struct.interface_info*, %struct.interface_info** %3, align 8
  %120 = call i32 @state_init(%struct.interface_info* %119)
  br label %121

121:                                              ; preds = %100, %98, %85, %52
  ret void
}

declare dso_local i64 @memcmp(i32, i32, i64) #1

declare dso_local i32 @note(i8*, ...) #1

declare dso_local i32 @piaddr(i32) #1

declare dso_local i32 @free_client_lease(i32*) #1

declare dso_local i32 @cancel_timeout(i32, %struct.interface_info*) #1

declare dso_local i32 @state_init(%struct.interface_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
