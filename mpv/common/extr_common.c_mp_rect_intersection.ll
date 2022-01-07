; ModuleID = '/home/carl/AnghaBench/mpv/common/extr_common.c_mp_rect_intersection.c'
source_filename = "/home/carl/AnghaBench/mpv/common/extr_common.c_mp_rect_intersection.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mp_rect = type { i64, i64, i64, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mp_rect_intersection(%struct.mp_rect* %0, %struct.mp_rect* %1) #0 {
  %3 = alloca %struct.mp_rect*, align 8
  %4 = alloca %struct.mp_rect*, align 8
  store %struct.mp_rect* %0, %struct.mp_rect** %3, align 8
  store %struct.mp_rect* %1, %struct.mp_rect** %4, align 8
  %5 = load %struct.mp_rect*, %struct.mp_rect** %3, align 8
  %6 = getelementptr inbounds %struct.mp_rect, %struct.mp_rect* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load %struct.mp_rect*, %struct.mp_rect** %4, align 8
  %9 = getelementptr inbounds %struct.mp_rect, %struct.mp_rect* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = call i8* @MPMAX(i64 %7, i64 %10)
  %12 = ptrtoint i8* %11 to i64
  %13 = load %struct.mp_rect*, %struct.mp_rect** %3, align 8
  %14 = getelementptr inbounds %struct.mp_rect, %struct.mp_rect* %13, i32 0, i32 0
  store i64 %12, i64* %14, align 8
  %15 = load %struct.mp_rect*, %struct.mp_rect** %3, align 8
  %16 = getelementptr inbounds %struct.mp_rect, %struct.mp_rect* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = load %struct.mp_rect*, %struct.mp_rect** %4, align 8
  %19 = getelementptr inbounds %struct.mp_rect, %struct.mp_rect* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = call i8* @MPMAX(i64 %17, i64 %20)
  %22 = ptrtoint i8* %21 to i64
  %23 = load %struct.mp_rect*, %struct.mp_rect** %3, align 8
  %24 = getelementptr inbounds %struct.mp_rect, %struct.mp_rect* %23, i32 0, i32 1
  store i64 %22, i64* %24, align 8
  %25 = load %struct.mp_rect*, %struct.mp_rect** %3, align 8
  %26 = getelementptr inbounds %struct.mp_rect, %struct.mp_rect* %25, i32 0, i32 2
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.mp_rect*, %struct.mp_rect** %4, align 8
  %29 = getelementptr inbounds %struct.mp_rect, %struct.mp_rect* %28, i32 0, i32 2
  %30 = load i64, i64* %29, align 8
  %31 = call i8* @MPMIN(i64 %27, i64 %30)
  %32 = ptrtoint i8* %31 to i64
  %33 = load %struct.mp_rect*, %struct.mp_rect** %3, align 8
  %34 = getelementptr inbounds %struct.mp_rect, %struct.mp_rect* %33, i32 0, i32 2
  store i64 %32, i64* %34, align 8
  %35 = load %struct.mp_rect*, %struct.mp_rect** %3, align 8
  %36 = getelementptr inbounds %struct.mp_rect, %struct.mp_rect* %35, i32 0, i32 3
  %37 = load i64, i64* %36, align 8
  %38 = load %struct.mp_rect*, %struct.mp_rect** %4, align 8
  %39 = getelementptr inbounds %struct.mp_rect, %struct.mp_rect* %38, i32 0, i32 3
  %40 = load i64, i64* %39, align 8
  %41 = call i8* @MPMIN(i64 %37, i64 %40)
  %42 = ptrtoint i8* %41 to i64
  %43 = load %struct.mp_rect*, %struct.mp_rect** %3, align 8
  %44 = getelementptr inbounds %struct.mp_rect, %struct.mp_rect* %43, i32 0, i32 3
  store i64 %42, i64* %44, align 8
  %45 = load %struct.mp_rect*, %struct.mp_rect** %3, align 8
  %46 = getelementptr inbounds %struct.mp_rect, %struct.mp_rect* %45, i32 0, i32 2
  %47 = load i64, i64* %46, align 8
  %48 = load %struct.mp_rect*, %struct.mp_rect** %3, align 8
  %49 = getelementptr inbounds %struct.mp_rect, %struct.mp_rect* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = icmp sgt i64 %47, %50
  br i1 %51, label %52, label %60

52:                                               ; preds = %2
  %53 = load %struct.mp_rect*, %struct.mp_rect** %3, align 8
  %54 = getelementptr inbounds %struct.mp_rect, %struct.mp_rect* %53, i32 0, i32 3
  %55 = load i64, i64* %54, align 8
  %56 = load %struct.mp_rect*, %struct.mp_rect** %3, align 8
  %57 = getelementptr inbounds %struct.mp_rect, %struct.mp_rect* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = icmp sgt i64 %55, %58
  br label %60

60:                                               ; preds = %52, %2
  %61 = phi i1 [ false, %2 ], [ %59, %52 ]
  %62 = zext i1 %61 to i32
  ret i32 %62
}

declare dso_local i8* @MPMAX(i64, i64) #1

declare dso_local i8* @MPMIN(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
