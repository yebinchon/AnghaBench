; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/graphics/extr_effect-parser.c_ep_process_param_dep.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/graphics/extr_effect-parser.c_ep_process_param_dep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.effect_parser = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.ep_func = type { i32 }
%struct.ep_param = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.effect_parser*, %struct.ep_func*)* @ep_process_param_dep to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ep_process_param_dep(%struct.effect_parser* %0, %struct.ep_func* %1) #0 {
  %3 = alloca %struct.effect_parser*, align 8
  %4 = alloca %struct.ep_func*, align 8
  %5 = alloca %struct.ep_param*, align 8
  store %struct.effect_parser* %0, %struct.effect_parser** %3, align 8
  store %struct.ep_func* %1, %struct.ep_func** %4, align 8
  %6 = load %struct.effect_parser*, %struct.effect_parser** %3, align 8
  %7 = load %struct.effect_parser*, %struct.effect_parser** %3, align 8
  %8 = getelementptr inbounds %struct.effect_parser, %struct.effect_parser* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = call %struct.ep_param* @ep_getparam_strref(%struct.effect_parser* %6, i32* %11)
  store %struct.ep_param* %12, %struct.ep_param** %5, align 8
  %13 = load %struct.ep_param*, %struct.ep_param** %5, align 8
  %14 = icmp ne %struct.ep_param* %13, null
  br i1 %14, label %15, label %22

15:                                               ; preds = %2
  %16 = load %struct.ep_func*, %struct.ep_func** %4, align 8
  %17 = getelementptr inbounds %struct.ep_func, %struct.ep_func* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.ep_param*, %struct.ep_param** %5, align 8
  %20 = getelementptr inbounds %struct.ep_param, %struct.ep_param* %19, i32 0, i32 0
  %21 = call i32 @da_push_back(i32 %18, i32* %20)
  br label %22

22:                                               ; preds = %15, %2
  %23 = load %struct.ep_param*, %struct.ep_param** %5, align 8
  %24 = icmp ne %struct.ep_param* %23, null
  %25 = zext i1 %24 to i32
  ret i32 %25
}

declare dso_local %struct.ep_param* @ep_getparam_strref(%struct.effect_parser*, i32*) #1

declare dso_local i32 @da_push_back(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
