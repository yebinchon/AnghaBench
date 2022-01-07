; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/mstsc/extr_bsops.c_bs_set_pixel.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/mstsc/extr_bsops.c_bs_set_pixel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@g_clip_left1 = common dso_local global i32 0, align 4
@g_clip_right1 = common dso_local global i32 0, align 4
@g_clip_top1 = common dso_local global i32 0, align 4
@g_clip_bottom1 = common dso_local global i32 0, align 4
@g_width1 = common dso_local global i32 0, align 4
@g_height1 = common dso_local global i32 0, align 4
@g_bs = common dso_local global i8* null, align 8
@g_Bpp = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bs_set_pixel(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %12 = load i32, i32* %10, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %30

14:                                               ; preds = %5
  %15 = load i32, i32* %6, align 4
  %16 = load i32, i32* @g_clip_left1, align 4
  %17 = icmp sge i32 %15, %16
  br i1 %17, label %18, label %89

18:                                               ; preds = %14
  %19 = load i32, i32* %6, align 4
  %20 = load i32, i32* @g_clip_right1, align 4
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %22, label %89

22:                                               ; preds = %18
  %23 = load i32, i32* %7, align 4
  %24 = load i32, i32* @g_clip_top1, align 4
  %25 = icmp sge i32 %23, %24
  br i1 %25, label %26, label %89

26:                                               ; preds = %22
  %27 = load i32, i32* %7, align 4
  %28 = load i32, i32* @g_clip_bottom1, align 4
  %29 = icmp slt i32 %27, %28
  br i1 %29, label %30, label %89

30:                                               ; preds = %26, %5
  %31 = load i32, i32* %6, align 4
  %32 = icmp sge i32 %31, 0
  br i1 %32, label %33, label %88

33:                                               ; preds = %30
  %34 = load i32, i32* %6, align 4
  %35 = load i32, i32* @g_width1, align 4
  %36 = icmp slt i32 %34, %35
  br i1 %36, label %37, label %88

37:                                               ; preds = %33
  %38 = load i32, i32* %7, align 4
  %39 = icmp sge i32 %38, 0
  br i1 %39, label %40, label %88

40:                                               ; preds = %37
  %41 = load i32, i32* %7, align 4
  %42 = load i32, i32* @g_height1, align 4
  %43 = icmp slt i32 %41, %42
  br i1 %43, label %44, label %88

44:                                               ; preds = %40
  %45 = load i8*, i8** @g_bs, align 8
  %46 = load i32, i32* %7, align 4
  %47 = load i32, i32* @g_width1, align 4
  %48 = mul nsw i32 %46, %47
  %49 = load i32, i32* @g_Bpp, align 4
  %50 = mul nsw i32 %48, %49
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i8, i8* %45, i64 %51
  %53 = load i32, i32* %6, align 4
  %54 = load i32, i32* @g_Bpp, align 4
  %55 = mul nsw i32 %53, %54
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i8, i8* %52, i64 %56
  store i8* %57, i8** %11, align 8
  %58 = load i32, i32* %9, align 4
  %59 = icmp ne i32 %58, 12
  br i1 %59, label %60, label %67

60:                                               ; preds = %44
  %61 = load i32, i32* %9, align 4
  %62 = load i32, i32* %8, align 4
  %63 = load i32, i32* %6, align 4
  %64 = load i32, i32* %7, align 4
  %65 = call i32 @bs_get_pixel(i32 %63, i32 %64)
  %66 = call i32 @bs_do_rop(i32 %61, i32 %62, i32 %65)
  store i32 %66, i32* %8, align 4
  br label %67

67:                                               ; preds = %60, %44
  %68 = load i32, i32* @g_Bpp, align 4
  %69 = icmp eq i32 %68, 1
  br i1 %69, label %70, label %74

70:                                               ; preds = %67
  %71 = load i32, i32* %8, align 4
  %72 = trunc i32 %71 to i8
  %73 = load i8*, i8** %11, align 8
  store i8 %72, i8* %73, align 1
  br label %87

74:                                               ; preds = %67
  %75 = load i32, i32* @g_Bpp, align 4
  %76 = icmp eq i32 %75, 2
  br i1 %76, label %77, label %82

77:                                               ; preds = %74
  %78 = load i32, i32* %8, align 4
  %79 = trunc i32 %78 to i16
  %80 = load i8*, i8** %11, align 8
  %81 = bitcast i8* %80 to i16*
  store i16 %79, i16* %81, align 2
  br label %86

82:                                               ; preds = %74
  %83 = load i32, i32* %8, align 4
  %84 = load i8*, i8** %11, align 8
  %85 = bitcast i8* %84 to i32*
  store i32 %83, i32* %85, align 4
  br label %86

86:                                               ; preds = %82, %77
  br label %87

87:                                               ; preds = %86, %70
  br label %88

88:                                               ; preds = %87, %40, %37, %33, %30
  br label %89

89:                                               ; preds = %88, %26, %22, %18, %14
  ret void
}

declare dso_local i32 @bs_do_rop(i32, i32, i32) #1

declare dso_local i32 @bs_get_pixel(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
