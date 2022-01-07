; ModuleID = '/home/carl/AnghaBench/openvpn/src/openvpn/extr_plugin.h_plugin_call.c'
source_filename = "/home/carl/AnghaBench/openvpn/src/openvpn/extr_plugin.h_plugin_call.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.plugin_list = type { i32 }
%struct.argv = type { i32 }
%struct.plugin_return = type { i32 }
%struct.env_set = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.plugin_list*, i32, %struct.argv*, %struct.plugin_return*, %struct.env_set*)* @plugin_call to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @plugin_call(%struct.plugin_list* %0, i32 %1, %struct.argv* %2, %struct.plugin_return* %3, %struct.env_set* %4) #0 {
  %6 = alloca %struct.plugin_list*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.argv*, align 8
  %9 = alloca %struct.plugin_return*, align 8
  %10 = alloca %struct.env_set*, align 8
  store %struct.plugin_list* %0, %struct.plugin_list** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.argv* %2, %struct.argv** %8, align 8
  store %struct.plugin_return* %3, %struct.plugin_return** %9, align 8
  store %struct.env_set* %4, %struct.env_set** %10, align 8
  %11 = load %struct.plugin_list*, %struct.plugin_list** %6, align 8
  %12 = load i32, i32* %7, align 4
  %13 = load %struct.argv*, %struct.argv** %8, align 8
  %14 = load %struct.plugin_return*, %struct.plugin_return** %9, align 8
  %15 = load %struct.env_set*, %struct.env_set** %10, align 8
  %16 = call i32 @plugin_call_ssl(%struct.plugin_list* %11, i32 %12, %struct.argv* %13, %struct.plugin_return* %14, %struct.env_set* %15, i32 -1, i32* null)
  ret i32 %16
}

declare dso_local i32 @plugin_call_ssl(%struct.plugin_list*, i32, %struct.argv*, %struct.plugin_return*, %struct.env_set*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
