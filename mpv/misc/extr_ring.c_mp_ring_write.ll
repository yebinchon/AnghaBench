; ModuleID = '/home/carl/AnghaBench/mpv/misc/extr_ring.c_mp_ring_write.c'
source_filename = "/home/carl/AnghaBench/mpv/misc/extr_ring.c_mp_ring_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mp_ring = type { i32, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mp_ring_write(%struct.mp_ring* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.mp_ring*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.mp_ring* %0, %struct.mp_ring** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %13 = load %struct.mp_ring*, %struct.mp_ring** %4, align 8
  %14 = call i32 @mp_ring_size(%struct.mp_ring* %13)
  store i32 %14, i32* %7, align 4
  %15 = load %struct.mp_ring*, %struct.mp_ring** %4, align 8
  %16 = call i32 @mp_ring_available(%struct.mp_ring* %15)
  store i32 %16, i32* %8, align 4
  %17 = load i32, i32* %6, align 4
  %18 = load i32, i32* %8, align 4
  %19 = call i32 @MPMIN(i32 %17, i32 %18)
  store i32 %19, i32* %9, align 4
  %20 = load %struct.mp_ring*, %struct.mp_ring** %4, align 8
  %21 = call i32 @mp_ring_get_wpos(%struct.mp_ring* %20)
  %22 = load i32, i32* %7, align 4
  %23 = srem i32 %21, %22
  store i32 %23, i32* %10, align 4
  %24 = load i32, i32* %7, align 4
  %25 = load i32, i32* %10, align 4
  %26 = sub nsw i32 %24, %25
  %27 = load i32, i32* %9, align 4
  %28 = call i32 @MPMIN(i32 %26, i32 %27)
  store i32 %28, i32* %11, align 4
  %29 = load i32, i32* %9, align 4
  %30 = load i32, i32* %11, align 4
  %31 = sub nsw i32 %29, %30
  store i32 %31, i32* %12, align 4
  %32 = load %struct.mp_ring*, %struct.mp_ring** %4, align 8
  %33 = getelementptr inbounds %struct.mp_ring, %struct.mp_ring* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = load i32, i32* %10, align 4
  %36 = sext i32 %35 to i64
  %37 = add nsw i64 %34, %36
  %38 = load i8*, i8** %5, align 8
  %39 = load i32, i32* %11, align 4
  %40 = call i32 @memcpy(i64 %37, i8* %38, i32 %39)
  %41 = load %struct.mp_ring*, %struct.mp_ring** %4, align 8
  %42 = getelementptr inbounds %struct.mp_ring, %struct.mp_ring* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = load i8*, i8** %5, align 8
  %45 = load i32, i32* %11, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i8, i8* %44, i64 %46
  %48 = load i32, i32* %12, align 4
  %49 = call i32 @memcpy(i64 %43, i8* %47, i32 %48)
  %50 = load %struct.mp_ring*, %struct.mp_ring** %4, align 8
  %51 = getelementptr inbounds %struct.mp_ring, %struct.mp_ring* %50, i32 0, i32 0
  %52 = load i32, i32* %9, align 4
  %53 = call i32 @atomic_fetch_add(i32* %51, i32 %52)
  %54 = load i32, i32* %9, align 4
  ret i32 %54
}

declare dso_local i32 @mp_ring_size(%struct.mp_ring*) #1

declare dso_local i32 @mp_ring_available(%struct.mp_ring*) #1

declare dso_local i32 @MPMIN(i32, i32) #1

declare dso_local i32 @mp_ring_get_wpos(%struct.mp_ring*) #1

declare dso_local i32 @memcpy(i64, i8*, i32) #1

declare dso_local i32 @atomic_fetch_add(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
