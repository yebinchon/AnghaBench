; ModuleID = '/home/carl/AnghaBench/linux/tools/virtio/ringtest/extr_......includelinuxptr_ring.h_ptr_ring_resize.c'
source_filename = "/home/carl/AnghaBench/linux/tools/virtio/ringtest/extr_......includelinuxptr_ring.h_ptr_ring_resize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ptr_ring = type { i32, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ptr_ring*, i32, i32, void (i8*)*)* @ptr_ring_resize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ptr_ring_resize(%struct.ptr_ring* %0, i32 %1, i32 %2, void (i8*)* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ptr_ring*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca void (i8*)*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8**, align 8
  %12 = alloca i8**, align 8
  store %struct.ptr_ring* %0, %struct.ptr_ring** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store void (i8*)* %3, void (i8*)** %9, align 8
  %13 = load i32, i32* %7, align 4
  %14 = load i32, i32* %8, align 4
  %15 = call i8** @__ptr_ring_init_queue_alloc(i32 %13, i32 %14)
  store i8** %15, i8*** %11, align 8
  %16 = load i8**, i8*** %11, align 8
  %17 = icmp ne i8** %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %4
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %5, align 4
  br label %44

21:                                               ; preds = %4
  %22 = load %struct.ptr_ring*, %struct.ptr_ring** %6, align 8
  %23 = getelementptr inbounds %struct.ptr_ring, %struct.ptr_ring* %22, i32 0, i32 0
  %24 = load i64, i64* %10, align 8
  %25 = call i32 @spin_lock_irqsave(i32* %23, i64 %24)
  %26 = load %struct.ptr_ring*, %struct.ptr_ring** %6, align 8
  %27 = getelementptr inbounds %struct.ptr_ring, %struct.ptr_ring* %26, i32 0, i32 1
  %28 = call i32 @spin_lock(i32* %27)
  %29 = load %struct.ptr_ring*, %struct.ptr_ring** %6, align 8
  %30 = load i8**, i8*** %11, align 8
  %31 = load i32, i32* %7, align 4
  %32 = load i32, i32* %8, align 4
  %33 = load void (i8*)*, void (i8*)** %9, align 8
  %34 = call i8** @__ptr_ring_swap_queue(%struct.ptr_ring* %29, i8** %30, i32 %31, i32 %32, void (i8*)* %33)
  store i8** %34, i8*** %12, align 8
  %35 = load %struct.ptr_ring*, %struct.ptr_ring** %6, align 8
  %36 = getelementptr inbounds %struct.ptr_ring, %struct.ptr_ring* %35, i32 0, i32 1
  %37 = call i32 @spin_unlock(i32* %36)
  %38 = load %struct.ptr_ring*, %struct.ptr_ring** %6, align 8
  %39 = getelementptr inbounds %struct.ptr_ring, %struct.ptr_ring* %38, i32 0, i32 0
  %40 = load i64, i64* %10, align 8
  %41 = call i32 @spin_unlock_irqrestore(i32* %39, i64 %40)
  %42 = load i8**, i8*** %12, align 8
  %43 = call i32 @kvfree(i8** %42)
  store i32 0, i32* %5, align 4
  br label %44

44:                                               ; preds = %21, %18
  %45 = load i32, i32* %5, align 4
  ret i32 %45
}

declare dso_local i8** @__ptr_ring_init_queue_alloc(i32, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i8** @__ptr_ring_swap_queue(%struct.ptr_ring*, i8**, i32, i32, void (i8*)*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @kvfree(i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
