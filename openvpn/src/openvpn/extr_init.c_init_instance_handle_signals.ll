; ModuleID = '/home/carl/AnghaBench/openvpn/src/openvpn/extr_init.c_init_instance_handle_signals.c'
source_filename = "/home/carl/AnghaBench/openvpn/src/openvpn/extr_init.c_init_instance_handle_signals.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.context = type { i32 }
%struct.env_set = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @init_instance_handle_signals(%struct.context* %0, %struct.env_set* %1, i32 %2) #0 {
  %4 = alloca %struct.context*, align 8
  %5 = alloca %struct.env_set*, align 8
  %6 = alloca i32, align 4
  store %struct.context* %0, %struct.context** %4, align 8
  store %struct.env_set* %1, %struct.env_set** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = call i32 (...) @pre_init_signal_catch()
  %8 = load %struct.context*, %struct.context** %4, align 8
  %9 = load %struct.env_set*, %struct.env_set** %5, align 8
  %10 = load i32, i32* %6, align 4
  %11 = call i32 @init_instance(%struct.context* %8, %struct.env_set* %9, i32 %10)
  %12 = call i32 (...) @post_init_signal_catch()
  %13 = load %struct.context*, %struct.context** %4, align 8
  %14 = call i64 @IS_SIG(%struct.context* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %3
  %17 = load %struct.context*, %struct.context** %4, align 8
  %18 = call i32 @remap_signal(%struct.context* %17)
  %19 = call i32 (...) @uninit_management_callback()
  br label %20

20:                                               ; preds = %16, %3
  ret void
}

declare dso_local i32 @pre_init_signal_catch(...) #1

declare dso_local i32 @init_instance(%struct.context*, %struct.env_set*, i32) #1

declare dso_local i32 @post_init_signal_catch(...) #1

declare dso_local i64 @IS_SIG(%struct.context*) #1

declare dso_local i32 @remap_signal(%struct.context*) #1

declare dso_local i32 @uninit_management_callback(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
