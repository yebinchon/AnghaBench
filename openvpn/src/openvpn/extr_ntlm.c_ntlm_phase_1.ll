; ModuleID = '/home/carl/AnghaBench/openvpn/src/openvpn/extr_ntlm.c_ntlm_phase_1.c'
source_filename = "/home/carl/AnghaBench/openvpn/src/openvpn/extr_ntlm.c_ntlm_phase_1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.http_proxy_info = type { i32 }
%struct.gc_arena = type { i32 }
%struct.buffer = type { i32 }

@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"TlRMTVNTUAABAAAAAgIAAA==\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @ntlm_phase_1(%struct.http_proxy_info* %0, %struct.gc_arena* %1) #0 {
  %3 = alloca %struct.http_proxy_info*, align 8
  %4 = alloca %struct.gc_arena*, align 8
  %5 = alloca %struct.buffer, align 4
  store %struct.http_proxy_info* %0, %struct.http_proxy_info** %3, align 8
  store %struct.gc_arena* %1, %struct.gc_arena** %4, align 8
  %6 = load %struct.gc_arena*, %struct.gc_arena** %4, align 8
  %7 = call i32 @alloc_buf_gc(i32 96, %struct.gc_arena* %6)
  %8 = getelementptr inbounds %struct.buffer, %struct.buffer* %5, i32 0, i32 0
  store i32 %7, i32* %8, align 4
  %9 = call i32 @buf_printf(%struct.buffer* %5, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %10 = call i8* @BSTR(%struct.buffer* %5)
  ret i8* %10
}

declare dso_local i32 @alloc_buf_gc(i32, %struct.gc_arena*) #1

declare dso_local i32 @buf_printf(%struct.buffer*, i8*, i8*) #1

declare dso_local i8* @BSTR(%struct.buffer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
