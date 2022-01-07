; ModuleID = '/home/carl/AnghaBench/openvpn/src/openvpn/extr_otime.c_tv_string_abs.c'
source_filename = "/home/carl/AnghaBench/openvpn/src/openvpn/extr_otime.c_tv_string_abs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timeval = type { i64, i64 }
%struct.gc_arena = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @tv_string_abs(%struct.timeval* %0, %struct.gc_arena* %1) #0 {
  %3 = alloca %struct.timeval*, align 8
  %4 = alloca %struct.gc_arena*, align 8
  store %struct.timeval* %0, %struct.timeval** %3, align 8
  store %struct.gc_arena* %1, %struct.gc_arena** %4, align 8
  %5 = load %struct.timeval*, %struct.timeval** %3, align 8
  %6 = getelementptr inbounds %struct.timeval, %struct.timeval* %5, i32 0, i32 1
  %7 = load i64, i64* %6, align 8
  %8 = trunc i64 %7 to i32
  %9 = load %struct.timeval*, %struct.timeval** %3, align 8
  %10 = getelementptr inbounds %struct.timeval, %struct.timeval* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load %struct.gc_arena*, %struct.gc_arena** %4, align 8
  %13 = call i8* @time_string(i32 %8, i64 %11, i32 1, %struct.gc_arena* %12)
  ret i8* %13
}

declare dso_local i8* @time_string(i32, i64, i32, %struct.gc_arena*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
