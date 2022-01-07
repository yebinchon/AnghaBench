; ModuleID = '/home/carl/AnghaBench/reactos/dll/cpl/mmsys/extr_sounds.c_InitImageList.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/cpl/mmsys/extr_sounds.c_InitImageList.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ILC_MASK = common dso_local global i32 0, align 4
@ILC_COLOR32 = common dso_local global i32 0, align 4
@hApplet = common dso_local global i32 0, align 4
@LR_LOADTRANSPARENT = common dso_local global i32 0, align 4
@IMAGE_BITMAP = common dso_local global i32 0, align 4
@IMAGE_ICON = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @InitImageList(i64 %0, i64 %1, i64 %2, i64 %3, i32 %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  store i64 %0, i64* %7, align 8
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store i32 %4, i32* %11, align 4
  %16 = load i64, i64* %9, align 8
  %17 = load i64, i64* %10, align 8
  %18 = load i32, i32* @ILC_MASK, align 4
  %19 = load i32, i32* @ILC_COLOR32, align 4
  %20 = or i32 %18, %19
  %21 = load i64, i64* %8, align 8
  %22 = load i64, i64* %7, align 8
  %23 = sub nsw i64 %21, %22
  %24 = call i32* @ImageList_Create(i64 %16, i64 %17, i32 %20, i64 %23, i32 0)
  store i32* %24, i32** %13, align 8
  %25 = load i32*, i32** %13, align 8
  %26 = icmp eq i32* %25, null
  br i1 %26, label %27, label %28

27:                                               ; preds = %5
  store i32* null, i32** %6, align 8
  br label %85

28:                                               ; preds = %5
  store i32 0, i32* %15, align 4
  %29 = load i64, i64* %7, align 8
  store i64 %29, i64* %14, align 8
  br label %30

30:                                               ; preds = %74, %28
  %31 = load i64, i64* %14, align 8
  %32 = load i64, i64* %8, align 8
  %33 = icmp sle i64 %31, %32
  br i1 %33, label %34, label %37

34:                                               ; preds = %30
  %35 = load i32, i32* %15, align 4
  %36 = icmp ne i32 %35, -1
  br label %37

37:                                               ; preds = %34, %30
  %38 = phi i1 [ false, %30 ], [ %36, %34 ]
  br i1 %38, label %39, label %77

39:                                               ; preds = %37
  %40 = load i32, i32* @hApplet, align 4
  %41 = load i64, i64* %14, align 8
  %42 = call i32 @MAKEINTRESOURCEW(i64 %41)
  %43 = load i32, i32* %11, align 4
  %44 = load i64, i64* %9, align 8
  %45 = load i64, i64* %10, align 8
  %46 = load i32, i32* @LR_LOADTRANSPARENT, align 4
  %47 = call i32* @LoadImageW(i32 %40, i32 %42, i32 %43, i64 %44, i64 %45, i32 %46)
  store i32* %47, i32** %12, align 8
  %48 = load i32*, i32** %12, align 8
  %49 = icmp eq i32* %48, null
  br i1 %49, label %50, label %53

50:                                               ; preds = %39
  %51 = load i32*, i32** %13, align 8
  %52 = call i32 @ImageList_Destroy(i32* %51)
  store i32* null, i32** %13, align 8
  br label %77

53:                                               ; preds = %39
  %54 = load i32, i32* %11, align 4
  %55 = load i32, i32* @IMAGE_BITMAP, align 4
  %56 = icmp eq i32 %54, %55
  br i1 %56, label %57, label %62

57:                                               ; preds = %53
  %58 = load i32*, i32** %13, align 8
  %59 = load i32*, i32** %12, align 8
  %60 = call i32 @RGB(i32 255, i32 0, i32 128)
  %61 = call i32 @ImageList_AddMasked(i32* %58, i32* %59, i32 %60)
  store i32 %61, i32* %15, align 4
  br label %71

62:                                               ; preds = %53
  %63 = load i32, i32* %11, align 4
  %64 = load i32, i32* @IMAGE_ICON, align 4
  %65 = icmp eq i32 %63, %64
  br i1 %65, label %66, label %70

66:                                               ; preds = %62
  %67 = load i32*, i32** %13, align 8
  %68 = load i32*, i32** %12, align 8
  %69 = call i32 @ImageList_AddIcon(i32* %67, i32* %68)
  store i32 %69, i32* %15, align 4
  br label %70

70:                                               ; preds = %66, %62
  br label %71

71:                                               ; preds = %70, %57
  %72 = load i32*, i32** %12, align 8
  %73 = call i32 @DeleteObject(i32* %72)
  br label %74

74:                                               ; preds = %71
  %75 = load i64, i64* %14, align 8
  %76 = add nsw i64 %75, 1
  store i64 %76, i64* %14, align 8
  br label %30

77:                                               ; preds = %50, %37
  %78 = load i32, i32* %15, align 4
  %79 = icmp eq i32 %78, -1
  br i1 %79, label %80, label %83

80:                                               ; preds = %77
  %81 = load i32*, i32** %13, align 8
  %82 = call i32 @ImageList_Destroy(i32* %81)
  store i32* null, i32** %13, align 8
  br label %83

83:                                               ; preds = %80, %77
  %84 = load i32*, i32** %13, align 8
  store i32* %84, i32** %6, align 8
  br label %85

85:                                               ; preds = %83, %27
  %86 = load i32*, i32** %6, align 8
  ret i32* %86
}

declare dso_local i32* @ImageList_Create(i64, i64, i32, i64, i32) #1

declare dso_local i32* @LoadImageW(i32, i32, i32, i64, i64, i32) #1

declare dso_local i32 @MAKEINTRESOURCEW(i64) #1

declare dso_local i32 @ImageList_Destroy(i32*) #1

declare dso_local i32 @ImageList_AddMasked(i32*, i32*, i32) #1

declare dso_local i32 @RGB(i32, i32, i32) #1

declare dso_local i32 @ImageList_AddIcon(i32*, i32*) #1

declare dso_local i32 @DeleteObject(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
