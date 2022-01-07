; ModuleID = '/home/carl/AnghaBench/mpv/video/out/extr_vo_xv.c_fill_rect.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/extr_vo_xv.c_fill_rect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vo = type { i32, i32, %struct.vo_x11_state* }
%struct.vo_x11_state = type { i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vo*, i64, i32, i32, i32, i32)* @fill_rect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fill_rect(%struct.vo* %0, i64 %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.vo*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.vo_x11_state*, align 8
  store %struct.vo* %0, %struct.vo** %7, align 8
  store i64 %1, i64* %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %14 = load %struct.vo*, %struct.vo** %7, align 8
  %15 = getelementptr inbounds %struct.vo, %struct.vo* %14, i32 0, i32 2
  %16 = load %struct.vo_x11_state*, %struct.vo_x11_state** %15, align 8
  store %struct.vo_x11_state* %16, %struct.vo_x11_state** %13, align 8
  %17 = load i32, i32* %9, align 4
  %18 = call i32 @MPMAX(i32 %17, i32 0)
  store i32 %18, i32* %9, align 4
  %19 = load i32, i32* %10, align 4
  %20 = call i32 @MPMAX(i32 %19, i32 0)
  store i32 %20, i32* %10, align 4
  %21 = load i32, i32* %11, align 4
  %22 = load %struct.vo*, %struct.vo** %7, align 8
  %23 = getelementptr inbounds %struct.vo, %struct.vo* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @MPMIN(i32 %21, i32 %24)
  store i32 %25, i32* %11, align 4
  %26 = load i32, i32* %12, align 4
  %27 = load %struct.vo*, %struct.vo** %7, align 8
  %28 = getelementptr inbounds %struct.vo, %struct.vo* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @MPMIN(i32 %26, i32 %29)
  store i32 %30, i32* %12, align 4
  %31 = load %struct.vo_x11_state*, %struct.vo_x11_state** %13, align 8
  %32 = getelementptr inbounds %struct.vo_x11_state, %struct.vo_x11_state* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %63

35:                                               ; preds = %6
  %36 = load i64, i64* %8, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %63

38:                                               ; preds = %35
  %39 = load i32, i32* %11, align 4
  %40 = load i32, i32* %9, align 4
  %41 = icmp sgt i32 %39, %40
  br i1 %41, label %42, label %63

42:                                               ; preds = %38
  %43 = load i32, i32* %12, align 4
  %44 = load i32, i32* %10, align 4
  %45 = icmp sgt i32 %43, %44
  br i1 %45, label %46, label %63

46:                                               ; preds = %42
  %47 = load %struct.vo_x11_state*, %struct.vo_x11_state** %13, align 8
  %48 = getelementptr inbounds %struct.vo_x11_state, %struct.vo_x11_state* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.vo_x11_state*, %struct.vo_x11_state** %13, align 8
  %51 = getelementptr inbounds %struct.vo_x11_state, %struct.vo_x11_state* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* %8, align 8
  %54 = load i32, i32* %9, align 4
  %55 = load i32, i32* %10, align 4
  %56 = load i32, i32* %11, align 4
  %57 = load i32, i32* %9, align 4
  %58 = sub nsw i32 %56, %57
  %59 = load i32, i32* %12, align 4
  %60 = load i32, i32* %10, align 4
  %61 = sub nsw i32 %59, %60
  %62 = call i32 @XFillRectangle(i32 %49, i64 %52, i64 %53, i32 %54, i32 %55, i32 %58, i32 %61)
  br label %63

63:                                               ; preds = %46, %42, %38, %35, %6
  ret void
}

declare dso_local i32 @MPMAX(i32, i32) #1

declare dso_local i32 @MPMIN(i32, i32) #1

declare dso_local i32 @XFillRectangle(i32, i64, i64, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
