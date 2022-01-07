; ModuleID = '/home/carl/AnghaBench/openvpn/src/openvpn/extr_init.c_free_context_buffers.c'
source_filename = "/home/carl/AnghaBench/openvpn/src/openvpn/extr_init.c_free_context_buffers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.context_buffers = type { i32, i32, i32, i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @free_context_buffers(%struct.context_buffers* %0) #0 {
  %2 = alloca %struct.context_buffers*, align 8
  store %struct.context_buffers* %0, %struct.context_buffers** %2, align 8
  %3 = load %struct.context_buffers*, %struct.context_buffers** %2, align 8
  %4 = icmp ne %struct.context_buffers* %3, null
  br i1 %4, label %5, label %23

5:                                                ; preds = %1
  %6 = load %struct.context_buffers*, %struct.context_buffers** %2, align 8
  %7 = getelementptr inbounds %struct.context_buffers, %struct.context_buffers* %6, i32 0, i32 6
  %8 = call i32 @free_buf(i32* %7)
  %9 = load %struct.context_buffers*, %struct.context_buffers** %2, align 8
  %10 = getelementptr inbounds %struct.context_buffers, %struct.context_buffers* %9, i32 0, i32 5
  %11 = call i32 @free_buf(i32* %10)
  %12 = load %struct.context_buffers*, %struct.context_buffers** %2, align 8
  %13 = getelementptr inbounds %struct.context_buffers, %struct.context_buffers* %12, i32 0, i32 4
  %14 = call i32 @free_buf(i32* %13)
  %15 = load %struct.context_buffers*, %struct.context_buffers** %2, align 8
  %16 = getelementptr inbounds %struct.context_buffers, %struct.context_buffers* %15, i32 0, i32 1
  %17 = call i32 @free_buf(i32* %16)
  %18 = load %struct.context_buffers*, %struct.context_buffers** %2, align 8
  %19 = getelementptr inbounds %struct.context_buffers, %struct.context_buffers* %18, i32 0, i32 0
  %20 = call i32 @free_buf(i32* %19)
  %21 = load %struct.context_buffers*, %struct.context_buffers** %2, align 8
  %22 = call i32 @free(%struct.context_buffers* %21)
  br label %23

23:                                               ; preds = %5, %1
  ret void
}

declare dso_local i32 @free_buf(i32*) #1

declare dso_local i32 @free(%struct.context_buffers*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
