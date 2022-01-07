; ModuleID = '/home/carl/AnghaBench/mpv/sub/extr_img_convert.c_remove_intersecting_rcs.c'
source_filename = "/home/carl/AnghaBench/mpv/sub/extr_img_convert.c_remove_intersecting_rcs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mp_rect = type { i32, i32, i32, i32 }

@MERGE_RC_PIXELS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mp_rect*, i32*)* @remove_intersecting_rcs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @remove_intersecting_rcs(%struct.mp_rect* %0, i32* %1) #0 {
  %3 = alloca %struct.mp_rect*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.mp_rect*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.mp_rect*, align 8
  store %struct.mp_rect* %0, %struct.mp_rect** %3, align 8
  store i32* %1, i32** %4, align 8
  %11 = load i32, i32* @MERGE_RC_PIXELS, align 4
  store i32 %11, i32* %5, align 4
  store i32 1, i32* %6, align 4
  br label %12

12:                                               ; preds = %94, %2
  %13 = load i32, i32* %6, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %95

15:                                               ; preds = %12
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %16

16:                                               ; preds = %91, %15
  %17 = load i32, i32* %7, align 4
  %18 = load i32*, i32** %4, align 8
  %19 = load i32, i32* %18, align 4
  %20 = icmp slt i32 %17, %19
  br i1 %20, label %21, label %94

21:                                               ; preds = %16
  %22 = load %struct.mp_rect*, %struct.mp_rect** %3, align 8
  %23 = load i32, i32* %7, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.mp_rect, %struct.mp_rect* %22, i64 %24
  store %struct.mp_rect* %25, %struct.mp_rect** %8, align 8
  %26 = load i32*, i32** %4, align 8
  %27 = load i32, i32* %26, align 4
  %28 = sub nsw i32 %27, 1
  store i32 %28, i32* %9, align 4
  br label %29

29:                                               ; preds = %87, %21
  %30 = load i32, i32* %9, align 4
  %31 = load i32, i32* %7, align 4
  %32 = icmp sgt i32 %30, %31
  br i1 %32, label %33, label %90

33:                                               ; preds = %29
  %34 = load %struct.mp_rect*, %struct.mp_rect** %3, align 8
  %35 = load i32, i32* %9, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.mp_rect, %struct.mp_rect* %34, i64 %36
  store %struct.mp_rect* %37, %struct.mp_rect** %10, align 8
  %38 = load %struct.mp_rect*, %struct.mp_rect** %8, align 8
  %39 = getelementptr inbounds %struct.mp_rect, %struct.mp_rect* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* %5, align 4
  %42 = sub nsw i32 %40, %41
  %43 = load %struct.mp_rect*, %struct.mp_rect** %10, align 8
  %44 = getelementptr inbounds %struct.mp_rect, %struct.mp_rect* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = icmp sle i32 %42, %45
  br i1 %46, label %47, label %86

47:                                               ; preds = %33
  %48 = load %struct.mp_rect*, %struct.mp_rect** %8, align 8
  %49 = getelementptr inbounds %struct.mp_rect, %struct.mp_rect* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* %5, align 4
  %52 = add nsw i32 %50, %51
  %53 = load %struct.mp_rect*, %struct.mp_rect** %10, align 8
  %54 = getelementptr inbounds %struct.mp_rect, %struct.mp_rect* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = icmp sge i32 %52, %55
  br i1 %56, label %57, label %86

57:                                               ; preds = %47
  %58 = load %struct.mp_rect*, %struct.mp_rect** %8, align 8
  %59 = getelementptr inbounds %struct.mp_rect, %struct.mp_rect* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* %5, align 4
  %62 = sub nsw i32 %60, %61
  %63 = load %struct.mp_rect*, %struct.mp_rect** %10, align 8
  %64 = getelementptr inbounds %struct.mp_rect, %struct.mp_rect* %63, i32 0, i32 3
  %65 = load i32, i32* %64, align 4
  %66 = icmp sle i32 %62, %65
  br i1 %66, label %67, label %86

67:                                               ; preds = %57
  %68 = load %struct.mp_rect*, %struct.mp_rect** %8, align 8
  %69 = getelementptr inbounds %struct.mp_rect, %struct.mp_rect* %68, i32 0, i32 3
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* %5, align 4
  %72 = add nsw i32 %70, %71
  %73 = load %struct.mp_rect*, %struct.mp_rect** %10, align 8
  %74 = getelementptr inbounds %struct.mp_rect, %struct.mp_rect* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 4
  %76 = icmp sge i32 %72, %75
  br i1 %76, label %77, label %86

77:                                               ; preds = %67
  %78 = load %struct.mp_rect*, %struct.mp_rect** %8, align 8
  %79 = load %struct.mp_rect*, %struct.mp_rect** %10, align 8
  %80 = call i32 @mp_rect_union(%struct.mp_rect* %78, %struct.mp_rect* %79)
  %81 = load %struct.mp_rect*, %struct.mp_rect** %3, align 8
  %82 = load i32*, i32** %4, align 8
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* %9, align 4
  %85 = call i32 @MP_TARRAY_REMOVE_AT(%struct.mp_rect* %81, i32 %83, i32 %84)
  store i32 1, i32* %6, align 4
  br label %86

86:                                               ; preds = %77, %67, %57, %47, %33
  br label %87

87:                                               ; preds = %86
  %88 = load i32, i32* %9, align 4
  %89 = add nsw i32 %88, -1
  store i32 %89, i32* %9, align 4
  br label %29

90:                                               ; preds = %29
  br label %91

91:                                               ; preds = %90
  %92 = load i32, i32* %7, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %7, align 4
  br label %16

94:                                               ; preds = %16
  br label %12

95:                                               ; preds = %12
  ret void
}

declare dso_local i32 @mp_rect_union(%struct.mp_rect*, %struct.mp_rect*) #1

declare dso_local i32 @MP_TARRAY_REMOVE_AT(%struct.mp_rect*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
