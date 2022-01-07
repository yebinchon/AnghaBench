; ModuleID = '/home/carl/AnghaBench/linux/tools/virtio/ringtest/extr_......includelinuxptr_ring.h___ptr_ring_produce.c'
source_filename = "/home/carl/AnghaBench/linux/tools/virtio/ringtest/extr_......includelinuxptr_ring.h___ptr_ring_produce.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ptr_ring = type { i64, i64, i64* }

@ENOSPC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ptr_ring*, i8*)* @__ptr_ring_produce to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__ptr_ring_produce(%struct.ptr_ring* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ptr_ring*, align 8
  %5 = alloca i8*, align 8
  store %struct.ptr_ring* %0, %struct.ptr_ring** %4, align 8
  store i8* %1, i8** %5, align 8
  %6 = load %struct.ptr_ring*, %struct.ptr_ring** %4, align 8
  %7 = getelementptr inbounds %struct.ptr_ring, %struct.ptr_ring* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  %10 = xor i1 %9, true
  %11 = zext i1 %10 to i32
  %12 = call i64 @unlikely(i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %24, label %14

14:                                               ; preds = %2
  %15 = load %struct.ptr_ring*, %struct.ptr_ring** %4, align 8
  %16 = getelementptr inbounds %struct.ptr_ring, %struct.ptr_ring* %15, i32 0, i32 2
  %17 = load i64*, i64** %16, align 8
  %18 = load %struct.ptr_ring*, %struct.ptr_ring** %4, align 8
  %19 = getelementptr inbounds %struct.ptr_ring, %struct.ptr_ring* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = getelementptr inbounds i64, i64* %17, i64 %20
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %14, %2
  %25 = load i32, i32* @ENOSPC, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %3, align 4
  br label %54

27:                                               ; preds = %14
  %28 = call i32 (...) @smp_wmb()
  %29 = load %struct.ptr_ring*, %struct.ptr_ring** %4, align 8
  %30 = getelementptr inbounds %struct.ptr_ring, %struct.ptr_ring* %29, i32 0, i32 2
  %31 = load i64*, i64** %30, align 8
  %32 = load %struct.ptr_ring*, %struct.ptr_ring** %4, align 8
  %33 = getelementptr inbounds %struct.ptr_ring, %struct.ptr_ring* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = add i64 %34, 1
  store i64 %35, i64* %33, align 8
  %36 = getelementptr inbounds i64, i64* %31, i64 %34
  %37 = load i64, i64* %36, align 8
  %38 = load i8*, i8** %5, align 8
  %39 = call i32 @WRITE_ONCE(i64 %37, i8* %38)
  %40 = load %struct.ptr_ring*, %struct.ptr_ring** %4, align 8
  %41 = getelementptr inbounds %struct.ptr_ring, %struct.ptr_ring* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.ptr_ring*, %struct.ptr_ring** %4, align 8
  %44 = getelementptr inbounds %struct.ptr_ring, %struct.ptr_ring* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = icmp uge i64 %42, %45
  %47 = zext i1 %46 to i32
  %48 = call i64 @unlikely(i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %27
  %51 = load %struct.ptr_ring*, %struct.ptr_ring** %4, align 8
  %52 = getelementptr inbounds %struct.ptr_ring, %struct.ptr_ring* %51, i32 0, i32 1
  store i64 0, i64* %52, align 8
  br label %53

53:                                               ; preds = %50, %27
  store i32 0, i32* %3, align 4
  br label %54

54:                                               ; preds = %53, %24
  %55 = load i32, i32* %3, align 4
  ret i32 %55
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @smp_wmb(...) #1

declare dso_local i32 @WRITE_ONCE(i64, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
