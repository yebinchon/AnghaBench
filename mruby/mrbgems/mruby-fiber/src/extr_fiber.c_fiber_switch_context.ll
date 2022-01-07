; ModuleID = '/home/carl/AnghaBench/mruby/mrbgems/mruby-fiber/src/extr_fiber.c_fiber_switch_context.c'
source_filename = "/home/carl/AnghaBench/mruby/mrbgems/mruby-fiber/src/extr_fiber.c_fiber_switch_context.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.mrb_context* }
%struct.mrb_context = type { i32, i64 }
%struct.RBasic = type { i32 }

@MRB_FIBER_RUNNING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_4__*, %struct.mrb_context*)* @fiber_switch_context to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fiber_switch_context(%struct.TYPE_4__* %0, %struct.mrb_context* %1) #0 {
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca %struct.mrb_context*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %3, align 8
  store %struct.mrb_context* %1, %struct.mrb_context** %4, align 8
  %5 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %6 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 0
  %7 = load %struct.mrb_context*, %struct.mrb_context** %6, align 8
  %8 = getelementptr inbounds %struct.mrb_context, %struct.mrb_context* %7, i32 0, i32 1
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %20

11:                                               ; preds = %2
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load %struct.mrb_context*, %struct.mrb_context** %14, align 8
  %16 = getelementptr inbounds %struct.mrb_context, %struct.mrb_context* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = inttoptr i64 %17 to %struct.RBasic*
  %19 = call i32 @mrb_write_barrier(%struct.TYPE_4__* %12, %struct.RBasic* %18)
  br label %20

20:                                               ; preds = %11, %2
  %21 = load i32, i32* @MRB_FIBER_RUNNING, align 4
  %22 = load %struct.mrb_context*, %struct.mrb_context** %4, align 8
  %23 = getelementptr inbounds %struct.mrb_context, %struct.mrb_context* %22, i32 0, i32 0
  store i32 %21, i32* %23, align 8
  %24 = load %struct.mrb_context*, %struct.mrb_context** %4, align 8
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  store %struct.mrb_context* %24, %struct.mrb_context** %26, align 8
  ret void
}

declare dso_local i32 @mrb_write_barrier(%struct.TYPE_4__*, %struct.RBasic*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
