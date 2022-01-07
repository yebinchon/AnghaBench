; ModuleID = '/home/carl/AnghaBench/mpv/video/out/gpu/extr_video.c_find_comp.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/gpu/extr_video.c_find_comp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ra_imgfmt_desc = type { i32, i32** }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ra_imgfmt_desc*, i32)* @find_comp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @find_comp(%struct.ra_imgfmt_desc* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ra_imgfmt_desc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.ra_imgfmt_desc* %0, %struct.ra_imgfmt_desc** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %9

9:                                                ; preds = %56, %2
  %10 = load i32, i32* %7, align 4
  %11 = load %struct.ra_imgfmt_desc*, %struct.ra_imgfmt_desc** %4, align 8
  %12 = getelementptr inbounds %struct.ra_imgfmt_desc, %struct.ra_imgfmt_desc* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp slt i32 %10, %13
  br i1 %14, label %15, label %59

15:                                               ; preds = %9
  store i32 0, i32* %8, align 4
  br label %16

16:                                               ; preds = %52, %15
  %17 = load i32, i32* %8, align 4
  %18 = icmp slt i32 %17, 4
  br i1 %18, label %19, label %55

19:                                               ; preds = %16
  %20 = load %struct.ra_imgfmt_desc*, %struct.ra_imgfmt_desc** %4, align 8
  %21 = getelementptr inbounds %struct.ra_imgfmt_desc, %struct.ra_imgfmt_desc* %20, i32 0, i32 1
  %22 = load i32**, i32*** %21, align 8
  %23 = load i32, i32* %7, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i32*, i32** %22, i64 %24
  %26 = load i32*, i32** %25, align 8
  %27 = load i32, i32* %8, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i32, i32* %26, i64 %28
  %30 = load i32, i32* %29, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %51

32:                                               ; preds = %19
  %33 = load %struct.ra_imgfmt_desc*, %struct.ra_imgfmt_desc** %4, align 8
  %34 = getelementptr inbounds %struct.ra_imgfmt_desc, %struct.ra_imgfmt_desc* %33, i32 0, i32 1
  %35 = load i32**, i32*** %34, align 8
  %36 = load i32, i32* %7, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32*, i32** %35, i64 %37
  %39 = load i32*, i32** %38, align 8
  %40 = load i32, i32* %8, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %39, i64 %41
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* %5, align 4
  %45 = icmp eq i32 %43, %44
  br i1 %45, label %46, label %48

46:                                               ; preds = %32
  %47 = load i32, i32* %6, align 4
  store i32 %47, i32* %3, align 4
  br label %60

48:                                               ; preds = %32
  %49 = load i32, i32* %6, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %6, align 4
  br label %51

51:                                               ; preds = %48, %19
  br label %52

52:                                               ; preds = %51
  %53 = load i32, i32* %8, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %8, align 4
  br label %16

55:                                               ; preds = %16
  br label %56

56:                                               ; preds = %55
  %57 = load i32, i32* %7, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %7, align 4
  br label %9

59:                                               ; preds = %9
  store i32 -1, i32* %3, align 4
  br label %60

60:                                               ; preds = %59, %46
  %61 = load i32, i32* %3, align 4
  ret i32 %61
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
