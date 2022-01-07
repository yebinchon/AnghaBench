; ModuleID = '/home/carl/AnghaBench/linux/tools/virtio/ringtest/extr_......includelinuxptr_ring.h___ptr_ring_empty.c'
source_filename = "/home/carl/AnghaBench/linux/tools/virtio/ringtest/extr_......includelinuxptr_ring.h___ptr_ring_empty.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ptr_ring = type { i32, i32*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ptr_ring*)* @__ptr_ring_empty to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__ptr_ring_empty(%struct.ptr_ring* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ptr_ring*, align 8
  store %struct.ptr_ring* %0, %struct.ptr_ring** %3, align 8
  %4 = load %struct.ptr_ring*, %struct.ptr_ring** %3, align 8
  %5 = getelementptr inbounds %struct.ptr_ring, %struct.ptr_ring* %4, i32 0, i32 2
  %6 = load i32, i32* %5, align 8
  %7 = call i64 @likely(i32 %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %22

9:                                                ; preds = %1
  %10 = load %struct.ptr_ring*, %struct.ptr_ring** %3, align 8
  %11 = getelementptr inbounds %struct.ptr_ring, %struct.ptr_ring* %10, i32 0, i32 1
  %12 = load i32*, i32** %11, align 8
  %13 = load %struct.ptr_ring*, %struct.ptr_ring** %3, align 8
  %14 = getelementptr inbounds %struct.ptr_ring, %struct.ptr_ring* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = call i64 @READ_ONCE(i32 %15)
  %17 = getelementptr inbounds i32, i32* %12, i64 %16
  %18 = load i32, i32* %17, align 4
  %19 = icmp ne i32 %18, 0
  %20 = xor i1 %19, true
  %21 = zext i1 %20 to i32
  store i32 %21, i32* %2, align 4
  br label %23

22:                                               ; preds = %1
  store i32 1, i32* %2, align 4
  br label %23

23:                                               ; preds = %22, %9
  %24 = load i32, i32* %2, align 4
  ret i32 %24
}

declare dso_local i64 @likely(i32) #1

declare dso_local i64 @READ_ONCE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
