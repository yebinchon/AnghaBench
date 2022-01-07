; ModuleID = '/home/carl/AnghaBench/mpv/video/extr_img_format.c_mp_imgfmt_find.c'
source_filename = "/home/carl/AnghaBench/mpv/video/extr_img_format.c_mp_imgfmt_find.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mp_imgfmt_desc = type { i32, i32, i32, i32, i32, i32 }

@IMGFMT_START = common dso_local global i32 0, align 4
@IMGFMT_END = common dso_local global i32 0, align 4
@MP_IMGFLAG_NE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mp_imgfmt_find(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.mp_imgfmt_desc, align 4
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %14 = load i32, i32* @IMGFMT_START, align 4
  %15 = add nsw i32 %14, 1
  store i32 %15, i32* %12, align 4
  br label %16

16:                                               ; preds = %63, %5
  %17 = load i32, i32* %12, align 4
  %18 = load i32, i32* @IMGFMT_END, align 4
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %20, label %66

20:                                               ; preds = %16
  %21 = load i32, i32* %12, align 4
  call void @mp_imgfmt_get_desc(%struct.mp_imgfmt_desc* sret %13, i32 %21)
  %22 = getelementptr inbounds %struct.mp_imgfmt_desc, %struct.mp_imgfmt_desc* %13, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %62

25:                                               ; preds = %20
  %26 = getelementptr inbounds %struct.mp_imgfmt_desc, %struct.mp_imgfmt_desc* %13, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* %11, align 4
  %29 = and i32 %27, %28
  %30 = load i32, i32* %11, align 4
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %32, label %62

32:                                               ; preds = %25
  %33 = getelementptr inbounds %struct.mp_imgfmt_desc, %struct.mp_imgfmt_desc* %13, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* %9, align 4
  %36 = icmp eq i32 %34, %35
  br i1 %36, label %37, label %61

37:                                               ; preds = %32
  %38 = getelementptr inbounds %struct.mp_imgfmt_desc, %struct.mp_imgfmt_desc* %13, i32 0, i32 3
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* %7, align 4
  %41 = icmp eq i32 %39, %40
  br i1 %41, label %42, label %61

42:                                               ; preds = %37
  %43 = getelementptr inbounds %struct.mp_imgfmt_desc, %struct.mp_imgfmt_desc* %13, i32 0, i32 4
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* %8, align 4
  %46 = icmp eq i32 %44, %45
  br i1 %46, label %47, label %61

47:                                               ; preds = %42
  %48 = getelementptr inbounds %struct.mp_imgfmt_desc, %struct.mp_imgfmt_desc* %13, i32 0, i32 5
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* %10, align 4
  %51 = icmp eq i32 %49, %50
  br i1 %51, label %52, label %61

52:                                               ; preds = %47
  %53 = getelementptr inbounds %struct.mp_imgfmt_desc, %struct.mp_imgfmt_desc* %13, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @MP_IMGFLAG_NE, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %52
  %59 = getelementptr inbounds %struct.mp_imgfmt_desc, %struct.mp_imgfmt_desc* %13, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  store i32 %60, i32* %6, align 4
  br label %67

61:                                               ; preds = %52, %47, %42, %37, %32
  br label %62

62:                                               ; preds = %61, %25, %20
  br label %63

63:                                               ; preds = %62
  %64 = load i32, i32* %12, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %12, align 4
  br label %16

66:                                               ; preds = %16
  store i32 0, i32* %6, align 4
  br label %67

67:                                               ; preds = %66, %58
  %68 = load i32, i32* %6, align 4
  ret i32 %68
}

declare dso_local void @mp_imgfmt_get_desc(%struct.mp_imgfmt_desc* sret, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
