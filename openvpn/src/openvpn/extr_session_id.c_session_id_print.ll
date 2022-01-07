; ModuleID = '/home/carl/AnghaBench/openvpn/src/openvpn/extr_session_id.c_session_id_print.c'
source_filename = "/home/carl/AnghaBench/openvpn/src/openvpn/extr_session_id.c_session_id_print.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.session_id = type { i32 }
%struct.gc_arena = type { i32 }

@SID_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @session_id_print(%struct.session_id* %0, %struct.gc_arena* %1) #0 {
  %3 = alloca %struct.session_id*, align 8
  %4 = alloca %struct.gc_arena*, align 8
  store %struct.session_id* %0, %struct.session_id** %3, align 8
  store %struct.gc_arena* %1, %struct.gc_arena** %4, align 8
  %5 = load %struct.session_id*, %struct.session_id** %3, align 8
  %6 = getelementptr inbounds %struct.session_id, %struct.session_id* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = load i32, i32* @SID_SIZE, align 4
  %9 = load %struct.gc_arena*, %struct.gc_arena** %4, align 8
  %10 = call i8* @format_hex(i32 %7, i32 %8, i32 0, %struct.gc_arena* %9)
  ret i8* %10
}

declare dso_local i8* @format_hex(i32, i32, i32, %struct.gc_arena*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
