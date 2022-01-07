; ModuleID = '/home/carl/AnghaBench/netdata/database/engine/extr_rrdenginelib.h_init_completion.c'
source_filename = "/home/carl/AnghaBench/netdata/database/engine/extr_rrdenginelib.h_init_completion.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.completion = type { i32, i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.completion*)* @init_completion to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_completion(%struct.completion* %0) #0 {
  %2 = alloca %struct.completion*, align 8
  store %struct.completion* %0, %struct.completion** %2, align 8
  %3 = load %struct.completion*, %struct.completion** %2, align 8
  %4 = getelementptr inbounds %struct.completion, %struct.completion* %3, i32 0, i32 2
  store i64 0, i64* %4, align 8
  %5 = load %struct.completion*, %struct.completion** %2, align 8
  %6 = getelementptr inbounds %struct.completion, %struct.completion* %5, i32 0, i32 1
  %7 = call i64 @uv_cond_init(i32* %6)
  %8 = icmp eq i64 0, %7
  %9 = zext i1 %8 to i32
  %10 = call i32 @assert(i32 %9)
  %11 = load %struct.completion*, %struct.completion** %2, align 8
  %12 = getelementptr inbounds %struct.completion, %struct.completion* %11, i32 0, i32 0
  %13 = call i64 @uv_mutex_init(i32* %12)
  %14 = icmp eq i64 0, %13
  %15 = zext i1 %14 to i32
  %16 = call i32 @assert(i32 %15)
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @uv_cond_init(i32*) #1

declare dso_local i64 @uv_mutex_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
