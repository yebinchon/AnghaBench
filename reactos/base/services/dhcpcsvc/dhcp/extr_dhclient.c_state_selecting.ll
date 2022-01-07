; ModuleID = '/home/carl/AnghaBench/reactos/base/services/dhcpcsvc/dhcp/extr_dhclient.c_state_selecting.c'
source_filename = "/home/carl/AnghaBench/reactos/base/services/dhcpcsvc/dhcp/extr_dhclient.c_state_selecting.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.interface_info = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TYPE_7__, i32, %struct.TYPE_6__*, i32, i8*, i8*, i32, %struct.client_lease*, %struct.client_lease* }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.client_lease = type { i32, i32, i8*, %struct.TYPE_5__*, %struct.client_lease* }
%struct.TYPE_5__ = type { i32 }

@state = common dso_local global i32 0, align 4
@S_SELECTING = common dso_local global i32 0, align 4
@S_INIT = common dso_local global i8* null, align 8
@DHO_DHCP_MESSAGE_TYPE = common dso_local global i64 0, align 8
@S_REQUESTING = common dso_local global i8* null, align 8
@iaddr_broadcast = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @state_selecting(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.interface_info*, align 8
  %4 = alloca %struct.client_lease*, align 8
  %5 = alloca %struct.client_lease*, align 8
  %6 = alloca %struct.client_lease*, align 8
  %7 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %8 = load i8*, i8** %2, align 8
  %9 = bitcast i8* %8 to %struct.interface_info*
  store %struct.interface_info* %9, %struct.interface_info** %3, align 8
  %10 = load i32, i32* @state, align 4
  %11 = load i32, i32* @S_SELECTING, align 4
  %12 = call i32 @ASSERT_STATE(i32 %10, i32 %11)
  %13 = call i32 @time(i8** %7)
  %14 = load %struct.interface_info*, %struct.interface_info** %3, align 8
  %15 = call i32 @cancel_timeout(void (i8*)* @state_selecting, %struct.interface_info* %14)
  %16 = load %struct.interface_info*, %struct.interface_info** %3, align 8
  %17 = call i32 @cancel_timeout(void (i8*)* @send_discover, %struct.interface_info* %16)
  store %struct.client_lease* null, %struct.client_lease** %6, align 8
  %18 = load %struct.interface_info*, %struct.interface_info** %3, align 8
  %19 = getelementptr inbounds %struct.interface_info, %struct.interface_info* %18, i32 0, i32 0
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 8
  %22 = load %struct.client_lease*, %struct.client_lease** %21, align 8
  store %struct.client_lease* %22, %struct.client_lease** %4, align 8
  br label %23

23:                                               ; preds = %47, %1
  %24 = load %struct.client_lease*, %struct.client_lease** %4, align 8
  %25 = icmp ne %struct.client_lease* %24, null
  br i1 %25, label %26, label %49

26:                                               ; preds = %23
  %27 = load %struct.client_lease*, %struct.client_lease** %4, align 8
  %28 = getelementptr inbounds %struct.client_lease, %struct.client_lease* %27, i32 0, i32 4
  %29 = load %struct.client_lease*, %struct.client_lease** %28, align 8
  store %struct.client_lease* %29, %struct.client_lease** %5, align 8
  %30 = load %struct.client_lease*, %struct.client_lease** %6, align 8
  %31 = icmp ne %struct.client_lease* %30, null
  br i1 %31, label %42, label %32

32:                                               ; preds = %26
  %33 = load %struct.interface_info*, %struct.interface_info** %3, align 8
  %34 = load %struct.client_lease*, %struct.client_lease** %4, align 8
  %35 = call i32 @check_arp(%struct.interface_info* %33, %struct.client_lease* %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %38, label %37

37:                                               ; preds = %32
  br label %43

38:                                               ; preds = %32
  %39 = load %struct.client_lease*, %struct.client_lease** %4, align 8
  store %struct.client_lease* %39, %struct.client_lease** %6, align 8
  %40 = load %struct.client_lease*, %struct.client_lease** %6, align 8
  %41 = getelementptr inbounds %struct.client_lease, %struct.client_lease* %40, i32 0, i32 4
  store %struct.client_lease* null, %struct.client_lease** %41, align 8
  br label %46

42:                                               ; preds = %26
  br label %43

43:                                               ; preds = %42, %37
  %44 = load %struct.client_lease*, %struct.client_lease** %4, align 8
  %45 = call i32 @free_client_lease(%struct.client_lease* %44)
  br label %46

46:                                               ; preds = %43, %38
  br label %47

47:                                               ; preds = %46
  %48 = load %struct.client_lease*, %struct.client_lease** %5, align 8
  store %struct.client_lease* %48, %struct.client_lease** %4, align 8
  br label %23

49:                                               ; preds = %23
  %50 = load %struct.interface_info*, %struct.interface_info** %3, align 8
  %51 = getelementptr inbounds %struct.interface_info, %struct.interface_info* %50, i32 0, i32 0
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 8
  store %struct.client_lease* null, %struct.client_lease** %53, align 8
  %54 = load %struct.client_lease*, %struct.client_lease** %6, align 8
  %55 = icmp ne %struct.client_lease* %54, null
  br i1 %55, label %64, label %56

56:                                               ; preds = %49
  %57 = load i8*, i8** @S_INIT, align 8
  %58 = load %struct.interface_info*, %struct.interface_info** %3, align 8
  %59 = getelementptr inbounds %struct.interface_info, %struct.interface_info* %58, i32 0, i32 0
  %60 = load %struct.TYPE_8__*, %struct.TYPE_8__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 5
  store i8* %57, i8** %61, align 8
  %62 = load %struct.interface_info*, %struct.interface_info** %3, align 8
  %63 = call i32 @state_init(%struct.interface_info* %62)
  br label %162

64:                                               ; preds = %49
  %65 = load %struct.client_lease*, %struct.client_lease** %6, align 8
  %66 = getelementptr inbounds %struct.client_lease, %struct.client_lease* %65, i32 0, i32 3
  %67 = load %struct.TYPE_5__*, %struct.TYPE_5__** %66, align 8
  %68 = load i64, i64* @DHO_DHCP_MESSAGE_TYPE, align 8
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i64 %68
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %118, label %73

73:                                               ; preds = %64
  %74 = load %struct.client_lease*, %struct.client_lease** %6, align 8
  %75 = load %struct.interface_info*, %struct.interface_info** %3, align 8
  %76 = getelementptr inbounds %struct.interface_info, %struct.interface_info* %75, i32 0, i32 0
  %77 = load %struct.TYPE_8__*, %struct.TYPE_8__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %77, i32 0, i32 7
  store %struct.client_lease* %74, %struct.client_lease** %78, align 8
  %79 = load i8*, i8** %7, align 8
  %80 = getelementptr i8, i8* %79, i64 12000
  %81 = load %struct.interface_info*, %struct.interface_info** %3, align 8
  %82 = getelementptr inbounds %struct.interface_info, %struct.interface_info* %81, i32 0, i32 0
  %83 = load %struct.TYPE_8__*, %struct.TYPE_8__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %83, i32 0, i32 7
  %85 = load %struct.client_lease*, %struct.client_lease** %84, align 8
  %86 = getelementptr inbounds %struct.client_lease, %struct.client_lease* %85, i32 0, i32 2
  store i8* %80, i8** %86, align 8
  %87 = load i8*, i8** %7, align 8
  %88 = getelementptr i8, i8* %87, i64 8000
  %89 = load %struct.interface_info*, %struct.interface_info** %3, align 8
  %90 = getelementptr inbounds %struct.interface_info, %struct.interface_info* %89, i32 0, i32 0
  %91 = load %struct.TYPE_8__*, %struct.TYPE_8__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %91, i32 0, i32 7
  %93 = load %struct.client_lease*, %struct.client_lease** %92, align 8
  %94 = getelementptr inbounds %struct.client_lease, %struct.client_lease* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr i8, i8* %88, i64 %96
  %98 = ptrtoint i8* %97 to i32
  store i32 %98, i32* %94, align 4
  %99 = load i8*, i8** %7, align 8
  %100 = getelementptr i8, i8* %99, i64 10000
  %101 = load %struct.interface_info*, %struct.interface_info** %3, align 8
  %102 = getelementptr inbounds %struct.interface_info, %struct.interface_info* %101, i32 0, i32 0
  %103 = load %struct.TYPE_8__*, %struct.TYPE_8__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %103, i32 0, i32 7
  %105 = load %struct.client_lease*, %struct.client_lease** %104, align 8
  %106 = getelementptr inbounds %struct.client_lease, %struct.client_lease* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = sext i32 %107 to i64
  %109 = getelementptr i8, i8* %100, i64 %108
  %110 = ptrtoint i8* %109 to i32
  store i32 %110, i32* %106, align 8
  %111 = load i8*, i8** @S_REQUESTING, align 8
  %112 = load %struct.interface_info*, %struct.interface_info** %3, align 8
  %113 = getelementptr inbounds %struct.interface_info, %struct.interface_info* %112, i32 0, i32 0
  %114 = load %struct.TYPE_8__*, %struct.TYPE_8__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %114, i32 0, i32 5
  store i8* %111, i8** %115, align 8
  %116 = load %struct.interface_info*, %struct.interface_info** %3, align 8
  %117 = call i32 @bind_lease(%struct.interface_info* %116)
  br label %162

118:                                              ; preds = %64
  %119 = load i32, i32* @iaddr_broadcast, align 4
  %120 = load %struct.interface_info*, %struct.interface_info** %3, align 8
  %121 = getelementptr inbounds %struct.interface_info, %struct.interface_info* %120, i32 0, i32 0
  %122 = load %struct.TYPE_8__*, %struct.TYPE_8__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %122, i32 0, i32 6
  store i32 %119, i32* %123, align 8
  %124 = load i8*, i8** @S_REQUESTING, align 8
  %125 = load %struct.interface_info*, %struct.interface_info** %3, align 8
  %126 = getelementptr inbounds %struct.interface_info, %struct.interface_info* %125, i32 0, i32 0
  %127 = load %struct.TYPE_8__*, %struct.TYPE_8__** %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %127, i32 0, i32 5
  store i8* %124, i8** %128, align 8
  %129 = load i8*, i8** %7, align 8
  %130 = load %struct.interface_info*, %struct.interface_info** %3, align 8
  %131 = getelementptr inbounds %struct.interface_info, %struct.interface_info* %130, i32 0, i32 0
  %132 = load %struct.TYPE_8__*, %struct.TYPE_8__** %131, align 8
  %133 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %132, i32 0, i32 4
  store i8* %129, i8** %133, align 8
  %134 = load %struct.interface_info*, %struct.interface_info** %3, align 8
  %135 = getelementptr inbounds %struct.interface_info, %struct.interface_info* %134, i32 0, i32 0
  %136 = load %struct.TYPE_8__*, %struct.TYPE_8__** %135, align 8
  %137 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %136, i32 0, i32 2
  %138 = load %struct.TYPE_6__*, %struct.TYPE_6__** %137, align 8
  %139 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 4
  %141 = load %struct.interface_info*, %struct.interface_info** %3, align 8
  %142 = getelementptr inbounds %struct.interface_info, %struct.interface_info* %141, i32 0, i32 0
  %143 = load %struct.TYPE_8__*, %struct.TYPE_8__** %142, align 8
  %144 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %143, i32 0, i32 3
  store i32 %140, i32* %144, align 8
  %145 = load %struct.interface_info*, %struct.interface_info** %3, align 8
  %146 = load %struct.client_lease*, %struct.client_lease** %6, align 8
  %147 = call i32 @make_request(%struct.interface_info* %145, %struct.client_lease* %146)
  %148 = load %struct.interface_info*, %struct.interface_info** %3, align 8
  %149 = getelementptr inbounds %struct.interface_info, %struct.interface_info* %148, i32 0, i32 0
  %150 = load %struct.TYPE_8__*, %struct.TYPE_8__** %149, align 8
  %151 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %150, i32 0, i32 0
  %152 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 8
  %154 = load %struct.interface_info*, %struct.interface_info** %3, align 8
  %155 = getelementptr inbounds %struct.interface_info, %struct.interface_info* %154, i32 0, i32 0
  %156 = load %struct.TYPE_8__*, %struct.TYPE_8__** %155, align 8
  %157 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %156, i32 0, i32 1
  store i32 %153, i32* %157, align 4
  %158 = load %struct.client_lease*, %struct.client_lease** %6, align 8
  %159 = call i32 @free_client_lease(%struct.client_lease* %158)
  %160 = load %struct.interface_info*, %struct.interface_info** %3, align 8
  %161 = call i32 @send_request(%struct.interface_info* %160)
  br label %162

162:                                              ; preds = %118, %73, %56
  ret void
}

declare dso_local i32 @ASSERT_STATE(i32, i32) #1

declare dso_local i32 @time(i8**) #1

declare dso_local i32 @cancel_timeout(void (i8*)*, %struct.interface_info*) #1

declare dso_local void @send_discover(i8*) #1

declare dso_local i32 @check_arp(%struct.interface_info*, %struct.client_lease*) #1

declare dso_local i32 @free_client_lease(%struct.client_lease*) #1

declare dso_local i32 @state_init(%struct.interface_info*) #1

declare dso_local i32 @bind_lease(%struct.interface_info*) #1

declare dso_local i32 @make_request(%struct.interface_info*, %struct.client_lease*) #1

declare dso_local i32 @send_request(%struct.interface_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
