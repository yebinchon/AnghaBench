; ModuleID = '/home/carl/AnghaBench/openvpn/src/openvpn/extr_session_id.h_session_id_read.c'
source_filename = "/home/carl/AnghaBench/openvpn/src/openvpn/extr_session_id.h_session_id_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.session_id = type { i32 }
%struct.buffer = type { i32 }

@SID_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.session_id*, %struct.buffer*)* @session_id_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @session_id_read(%struct.session_id* %0, %struct.buffer* %1) #0 {
  %3 = alloca %struct.session_id*, align 8
  %4 = alloca %struct.buffer*, align 8
  store %struct.session_id* %0, %struct.session_id** %3, align 8
  store %struct.buffer* %1, %struct.buffer** %4, align 8
  %5 = load %struct.buffer*, %struct.buffer** %4, align 8
  %6 = load %struct.session_id*, %struct.session_id** %3, align 8
  %7 = getelementptr inbounds %struct.session_id, %struct.session_id* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @SID_SIZE, align 4
  %10 = call i32 @buf_read(%struct.buffer* %5, i32 %8, i32 %9)
  ret i32 %10
}

declare dso_local i32 @buf_read(%struct.buffer*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
