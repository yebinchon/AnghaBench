; ModuleID = '/home/carl/AnghaBench/openvpn/src/openvpn/extr_init.c_context_init_1.c'
source_filename = "/home/carl/AnghaBench/openvpn/src/openvpn/extr_init.c_context_init_1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.context = type { %struct.TYPE_4__, i64, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32*, i32*, i32*, i32**, i32 }
%struct.TYPE_3__ = type { i32 }

@GET_USER_PASS_MANAGEMENT = common dso_local global i32 0, align 4
@GET_USER_PASS_NEED_OK = common dso_local global i32 0, align 4
@MAX_PARMS = common dso_local global i32 0, align 4
@M_INFO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @context_init_1(%struct.context* %0) #0 {
  %2 = alloca %struct.context*, align 8
  store %struct.context* %0, %struct.context** %2, align 8
  %3 = load %struct.context*, %struct.context** %2, align 8
  %4 = call i32 @context_clear_1(%struct.context* %3)
  %5 = load %struct.context*, %struct.context** %2, align 8
  %6 = getelementptr inbounds %struct.context, %struct.context* %5, i32 0, i32 2
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  %8 = call i32 @packet_id_persist_init(i32* %7)
  %9 = load %struct.context*, %struct.context** %2, align 8
  %10 = call i32 @init_connection_list(%struct.context* %9)
  %11 = load %struct.context*, %struct.context** %2, align 8
  %12 = call i32 @save_ncp_options(%struct.context* %11)
  ret void
}

declare dso_local i32 @context_clear_1(%struct.context*) #1

declare dso_local i32 @packet_id_persist_init(i32*) #1

declare dso_local i32 @init_connection_list(%struct.context*) #1

declare dso_local i32 @save_ncp_options(%struct.context*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
