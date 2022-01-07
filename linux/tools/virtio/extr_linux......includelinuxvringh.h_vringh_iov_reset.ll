; ModuleID = '/home/carl/AnghaBench/linux/tools/virtio/extr_linux......includelinuxvringh.h_vringh_iov_reset.c'
source_filename = "/home/carl/AnghaBench/linux/tools/virtio/extr_linux......includelinuxvringh.h_vringh_iov_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vringh_iov = type { i64, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vringh_iov*)* @vringh_iov_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vringh_iov_reset(%struct.vringh_iov* %0) #0 {
  %2 = alloca %struct.vringh_iov*, align 8
  store %struct.vringh_iov* %0, %struct.vringh_iov** %2, align 8
  %3 = load %struct.vringh_iov*, %struct.vringh_iov** %2, align 8
  %4 = getelementptr inbounds %struct.vringh_iov, %struct.vringh_iov* %3, i32 0, i32 1
  %5 = load i64, i64* %4, align 8
  %6 = load %struct.vringh_iov*, %struct.vringh_iov** %2, align 8
  %7 = getelementptr inbounds %struct.vringh_iov, %struct.vringh_iov* %6, i32 0, i32 2
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = load %struct.vringh_iov*, %struct.vringh_iov** %2, align 8
  %10 = getelementptr inbounds %struct.vringh_iov, %struct.vringh_iov* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i64 %11
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = sext i32 %14 to i64
  %16 = add nsw i64 %15, %5
  %17 = trunc i64 %16 to i32
  store i32 %17, i32* %13, align 4
  %18 = load %struct.vringh_iov*, %struct.vringh_iov** %2, align 8
  %19 = getelementptr inbounds %struct.vringh_iov, %struct.vringh_iov* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = load %struct.vringh_iov*, %struct.vringh_iov** %2, align 8
  %22 = getelementptr inbounds %struct.vringh_iov, %struct.vringh_iov* %21, i32 0, i32 2
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = load %struct.vringh_iov*, %struct.vringh_iov** %2, align 8
  %25 = getelementptr inbounds %struct.vringh_iov, %struct.vringh_iov* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i64 %26
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = sext i32 %29 to i64
  %31 = sub nsw i64 %30, %20
  %32 = trunc i64 %31 to i32
  store i32 %32, i32* %28, align 4
  %33 = load %struct.vringh_iov*, %struct.vringh_iov** %2, align 8
  %34 = getelementptr inbounds %struct.vringh_iov, %struct.vringh_iov* %33, i32 0, i32 1
  store i64 0, i64* %34, align 8
  %35 = load %struct.vringh_iov*, %struct.vringh_iov** %2, align 8
  %36 = getelementptr inbounds %struct.vringh_iov, %struct.vringh_iov* %35, i32 0, i32 0
  store i64 0, i64* %36, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
