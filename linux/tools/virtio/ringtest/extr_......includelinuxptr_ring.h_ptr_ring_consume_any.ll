; ModuleID = '/home/carl/AnghaBench/linux/tools/virtio/ringtest/extr_......includelinuxptr_ring.h_ptr_ring_consume_any.c'
source_filename = "/home/carl/AnghaBench/linux/tools/virtio/ringtest/extr_......includelinuxptr_ring.h_ptr_ring_consume_any.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ptr_ring = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.ptr_ring*)* @ptr_ring_consume_any to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @ptr_ring_consume_any(%struct.ptr_ring* %0) #0 {
  %2 = alloca %struct.ptr_ring*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i8*, align 8
  store %struct.ptr_ring* %0, %struct.ptr_ring** %2, align 8
  %5 = load %struct.ptr_ring*, %struct.ptr_ring** %2, align 8
  %6 = getelementptr inbounds %struct.ptr_ring, %struct.ptr_ring* %5, i32 0, i32 0
  %7 = load i64, i64* %3, align 8
  %8 = call i32 @spin_lock_irqsave(i32* %6, i64 %7)
  %9 = load %struct.ptr_ring*, %struct.ptr_ring** %2, align 8
  %10 = call i8* @__ptr_ring_consume(%struct.ptr_ring* %9)
  store i8* %10, i8** %4, align 8
  %11 = load %struct.ptr_ring*, %struct.ptr_ring** %2, align 8
  %12 = getelementptr inbounds %struct.ptr_ring, %struct.ptr_ring* %11, i32 0, i32 0
  %13 = load i64, i64* %3, align 8
  %14 = call i32 @spin_unlock_irqrestore(i32* %12, i64 %13)
  %15 = load i8*, i8** %4, align 8
  ret i8* %15
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i8* @__ptr_ring_consume(%struct.ptr_ring*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
