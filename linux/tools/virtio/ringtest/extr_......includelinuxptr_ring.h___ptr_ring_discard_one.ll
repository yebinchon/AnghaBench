; ModuleID = '/home/carl/AnghaBench/linux/tools/virtio/ringtest/extr_......includelinuxptr_ring.h___ptr_ring_discard_one.c'
source_filename = "/home/carl/AnghaBench/linux/tools/virtio/ringtest/extr_......includelinuxptr_ring.h___ptr_ring_discard_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ptr_ring = type { i32, i32, i32, i32, i32** }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ptr_ring*)* @__ptr_ring_discard_one to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__ptr_ring_discard_one(%struct.ptr_ring* %0) #0 {
  %2 = alloca %struct.ptr_ring*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.ptr_ring* %0, %struct.ptr_ring** %2, align 8
  %5 = load %struct.ptr_ring*, %struct.ptr_ring** %2, align 8
  %6 = getelementptr inbounds %struct.ptr_ring, %struct.ptr_ring* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  store i32 %7, i32* %3, align 4
  %8 = load i32, i32* %3, align 4
  %9 = add nsw i32 %8, 1
  store i32 %9, i32* %3, align 4
  store i32 %8, i32* %4, align 4
  %10 = load i32, i32* %3, align 4
  %11 = load %struct.ptr_ring*, %struct.ptr_ring** %2, align 8
  %12 = getelementptr inbounds %struct.ptr_ring, %struct.ptr_ring* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = sub nsw i32 %10, %13
  %15 = load %struct.ptr_ring*, %struct.ptr_ring** %2, align 8
  %16 = getelementptr inbounds %struct.ptr_ring, %struct.ptr_ring* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 8
  %18 = icmp sge i32 %14, %17
  br i1 %18, label %25, label %19

19:                                               ; preds = %1
  %20 = load i32, i32* %3, align 4
  %21 = load %struct.ptr_ring*, %struct.ptr_ring** %2, align 8
  %22 = getelementptr inbounds %struct.ptr_ring, %struct.ptr_ring* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 4
  %24 = icmp sge i32 %20, %23
  br label %25

25:                                               ; preds = %19, %1
  %26 = phi i1 [ true, %1 ], [ %24, %19 ]
  %27 = zext i1 %26 to i32
  %28 = call i64 @unlikely(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %52

30:                                               ; preds = %25
  br label %31

31:                                               ; preds = %40, %30
  %32 = load i32, i32* %4, align 4
  %33 = load %struct.ptr_ring*, %struct.ptr_ring** %2, align 8
  %34 = getelementptr inbounds %struct.ptr_ring, %struct.ptr_ring* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = icmp sge i32 %32, %35
  %37 = zext i1 %36 to i32
  %38 = call i64 @likely(i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %48

40:                                               ; preds = %31
  %41 = load %struct.ptr_ring*, %struct.ptr_ring** %2, align 8
  %42 = getelementptr inbounds %struct.ptr_ring, %struct.ptr_ring* %41, i32 0, i32 4
  %43 = load i32**, i32*** %42, align 8
  %44 = load i32, i32* %4, align 4
  %45 = add nsw i32 %44, -1
  store i32 %45, i32* %4, align 4
  %46 = sext i32 %44 to i64
  %47 = getelementptr inbounds i32*, i32** %43, i64 %46
  store i32* null, i32** %47, align 8
  br label %31

48:                                               ; preds = %31
  %49 = load i32, i32* %3, align 4
  %50 = load %struct.ptr_ring*, %struct.ptr_ring** %2, align 8
  %51 = getelementptr inbounds %struct.ptr_ring, %struct.ptr_ring* %50, i32 0, i32 1
  store i32 %49, i32* %51, align 4
  br label %52

52:                                               ; preds = %48, %25
  %53 = load i32, i32* %3, align 4
  %54 = load %struct.ptr_ring*, %struct.ptr_ring** %2, align 8
  %55 = getelementptr inbounds %struct.ptr_ring, %struct.ptr_ring* %54, i32 0, i32 3
  %56 = load i32, i32* %55, align 4
  %57 = icmp sge i32 %53, %56
  %58 = zext i1 %57 to i32
  %59 = call i64 @unlikely(i32 %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %52
  store i32 0, i32* %3, align 4
  %62 = load %struct.ptr_ring*, %struct.ptr_ring** %2, align 8
  %63 = getelementptr inbounds %struct.ptr_ring, %struct.ptr_ring* %62, i32 0, i32 1
  store i32 0, i32* %63, align 4
  br label %64

64:                                               ; preds = %61, %52
  %65 = load %struct.ptr_ring*, %struct.ptr_ring** %2, align 8
  %66 = getelementptr inbounds %struct.ptr_ring, %struct.ptr_ring* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = load i32, i32* %3, align 4
  %69 = call i32 @WRITE_ONCE(i32 %67, i32 %68)
  ret void
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @WRITE_ONCE(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
