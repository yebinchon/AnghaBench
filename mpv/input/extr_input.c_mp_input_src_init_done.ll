; ModuleID = '/home/carl/AnghaBench/mpv/input/extr_input.c_mp_input_src_init_done.c'
source_filename = "/home/carl/AnghaBench/mpv/input/extr_input.c_mp_input_src_init_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mp_input_src = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mp_input_src_init_done(%struct.mp_input_src* %0) #0 {
  %2 = alloca %struct.mp_input_src*, align 8
  store %struct.mp_input_src* %0, %struct.mp_input_src** %2, align 8
  %3 = load %struct.mp_input_src*, %struct.mp_input_src** %2, align 8
  %4 = getelementptr inbounds %struct.mp_input_src, %struct.mp_input_src* %3, i32 0, i32 0
  %5 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = icmp ne i32 %7, 0
  %9 = xor i1 %8, true
  %10 = zext i1 %9 to i32
  %11 = call i32 @assert(i32 %10)
  %12 = load %struct.mp_input_src*, %struct.mp_input_src** %2, align 8
  %13 = getelementptr inbounds %struct.mp_input_src, %struct.mp_input_src* %12, i32 0, i32 0
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @assert(i32 %16)
  %18 = load %struct.mp_input_src*, %struct.mp_input_src** %2, align 8
  %19 = getelementptr inbounds %struct.mp_input_src, %struct.mp_input_src* %18, i32 0, i32 0
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = call i32 (...) @pthread_self()
  %24 = call i32 @pthread_equal(i32 %22, i32 %23)
  %25 = call i32 @assert(i32 %24)
  %26 = load %struct.mp_input_src*, %struct.mp_input_src** %2, align 8
  %27 = getelementptr inbounds %struct.mp_input_src, %struct.mp_input_src* %26, i32 0, i32 0
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  store i32 1, i32* %29, align 4
  %30 = load %struct.mp_input_src*, %struct.mp_input_src** %2, align 8
  %31 = getelementptr inbounds %struct.mp_input_src, %struct.mp_input_src* %30, i32 0, i32 0
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = call i32 @mp_rendezvous(i32* %33, i32 0)
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @pthread_equal(i32, i32) #1

declare dso_local i32 @pthread_self(...) #1

declare dso_local i32 @mp_rendezvous(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
