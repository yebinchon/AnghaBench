; ModuleID = '/home/carl/AnghaBench/nanomsg/src/protocols/utils/extr_excl.c_nn_excl_out.c'
source_filename = "/home/carl/AnghaBench/nanomsg/src/protocols/utils/extr_excl.c_nn_excl_out.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nn_excl = type { %struct.nn_pipe*, %struct.nn_pipe* }
%struct.nn_pipe = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nn_excl_out(%struct.nn_excl* %0, %struct.nn_pipe* %1) #0 {
  %3 = alloca %struct.nn_excl*, align 8
  %4 = alloca %struct.nn_pipe*, align 8
  store %struct.nn_excl* %0, %struct.nn_excl** %3, align 8
  store %struct.nn_pipe* %1, %struct.nn_pipe** %4, align 8
  %5 = load %struct.nn_excl*, %struct.nn_excl** %3, align 8
  %6 = getelementptr inbounds %struct.nn_excl, %struct.nn_excl* %5, i32 0, i32 0
  %7 = load %struct.nn_pipe*, %struct.nn_pipe** %6, align 8
  %8 = icmp ne %struct.nn_pipe* %7, null
  %9 = xor i1 %8, true
  %10 = zext i1 %9 to i32
  %11 = call i32 @nn_assert(i32 %10)
  %12 = load %struct.nn_pipe*, %struct.nn_pipe** %4, align 8
  %13 = load %struct.nn_excl*, %struct.nn_excl** %3, align 8
  %14 = getelementptr inbounds %struct.nn_excl, %struct.nn_excl* %13, i32 0, i32 1
  %15 = load %struct.nn_pipe*, %struct.nn_pipe** %14, align 8
  %16 = icmp eq %struct.nn_pipe* %12, %15
  %17 = zext i1 %16 to i32
  %18 = call i32 @nn_assert(i32 %17)
  %19 = load %struct.nn_pipe*, %struct.nn_pipe** %4, align 8
  %20 = load %struct.nn_excl*, %struct.nn_excl** %3, align 8
  %21 = getelementptr inbounds %struct.nn_excl, %struct.nn_excl* %20, i32 0, i32 0
  store %struct.nn_pipe* %19, %struct.nn_pipe** %21, align 8
  ret void
}

declare dso_local i32 @nn_assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
