; ModuleID = '/home/carl/AnghaBench/linux/tools/virtio/ringtest/extr_......includelinuxptr_ring.h___ptr_ring_swap_queue.c'
source_filename = "/home/carl/AnghaBench/linux/tools/virtio/ringtest/extr_......includelinuxptr_ring.h___ptr_ring_swap_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ptr_ring = type { i32, i8**, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8** (%struct.ptr_ring*, i8**, i32, i32, void (i8*)*)* @__ptr_ring_swap_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8** @__ptr_ring_swap_queue(%struct.ptr_ring* %0, i8** %1, i32 %2, i32 %3, void (i8*)* %4) #0 {
  %6 = alloca %struct.ptr_ring*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca void (i8*)*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8**, align 8
  %13 = alloca i8*, align 8
  store %struct.ptr_ring* %0, %struct.ptr_ring** %6, align 8
  store i8** %1, i8*** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store void (i8*)* %4, void (i8*)** %10, align 8
  store i32 0, i32* %11, align 4
  br label %14

14:                                               ; preds = %36, %5
  %15 = load %struct.ptr_ring*, %struct.ptr_ring** %6, align 8
  %16 = call i8* @__ptr_ring_consume(%struct.ptr_ring* %15)
  store i8* %16, i8** %13, align 8
  %17 = icmp ne i8* %16, null
  br i1 %17, label %18, label %37

18:                                               ; preds = %14
  %19 = load i32, i32* %11, align 4
  %20 = load i32, i32* %8, align 4
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %22, label %29

22:                                               ; preds = %18
  %23 = load i8*, i8** %13, align 8
  %24 = load i8**, i8*** %7, align 8
  %25 = load i32, i32* %11, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %11, align 4
  %27 = sext i32 %25 to i64
  %28 = getelementptr inbounds i8*, i8** %24, i64 %27
  store i8* %23, i8** %28, align 8
  br label %36

29:                                               ; preds = %18
  %30 = load void (i8*)*, void (i8*)** %10, align 8
  %31 = icmp ne void (i8*)* %30, null
  br i1 %31, label %32, label %35

32:                                               ; preds = %29
  %33 = load void (i8*)*, void (i8*)** %10, align 8
  %34 = load i8*, i8** %13, align 8
  call void %33(i8* %34)
  br label %35

35:                                               ; preds = %32, %29
  br label %36

36:                                               ; preds = %35, %22
  br label %14

37:                                               ; preds = %14
  %38 = load i32, i32* %11, align 4
  %39 = load i32, i32* %8, align 4
  %40 = icmp sge i32 %38, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %37
  store i32 0, i32* %11, align 4
  br label %42

42:                                               ; preds = %41, %37
  %43 = load %struct.ptr_ring*, %struct.ptr_ring** %6, align 8
  %44 = load i32, i32* %8, align 4
  %45 = call i32 @__ptr_ring_set_size(%struct.ptr_ring* %43, i32 %44)
  %46 = load i32, i32* %11, align 4
  %47 = load %struct.ptr_ring*, %struct.ptr_ring** %6, align 8
  %48 = getelementptr inbounds %struct.ptr_ring, %struct.ptr_ring* %47, i32 0, i32 0
  store i32 %46, i32* %48, align 8
  %49 = load %struct.ptr_ring*, %struct.ptr_ring** %6, align 8
  %50 = getelementptr inbounds %struct.ptr_ring, %struct.ptr_ring* %49, i32 0, i32 3
  store i64 0, i64* %50, align 8
  %51 = load %struct.ptr_ring*, %struct.ptr_ring** %6, align 8
  %52 = getelementptr inbounds %struct.ptr_ring, %struct.ptr_ring* %51, i32 0, i32 2
  store i64 0, i64* %52, align 8
  %53 = load %struct.ptr_ring*, %struct.ptr_ring** %6, align 8
  %54 = getelementptr inbounds %struct.ptr_ring, %struct.ptr_ring* %53, i32 0, i32 1
  %55 = load i8**, i8*** %54, align 8
  store i8** %55, i8*** %12, align 8
  %56 = load i8**, i8*** %7, align 8
  %57 = load %struct.ptr_ring*, %struct.ptr_ring** %6, align 8
  %58 = getelementptr inbounds %struct.ptr_ring, %struct.ptr_ring* %57, i32 0, i32 1
  store i8** %56, i8*** %58, align 8
  %59 = load i8**, i8*** %12, align 8
  ret i8** %59
}

declare dso_local i8* @__ptr_ring_consume(%struct.ptr_ring*) #1

declare dso_local i32 @__ptr_ring_set_size(%struct.ptr_ring*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
