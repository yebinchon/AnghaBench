; ModuleID = '/home/carl/AnghaBench/reactos/boot/freeldr/freeldr/ui/extr_tui.c_TuiDrawBox.c'
source_filename = "/home/carl/AnghaBench/reactos/boot/freeldr/freeldr/ui/extr_tui.c_TuiDrawBox.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@HORZ = common dso_local global i8 0, align 1
@VERT = common dso_local global i8 0, align 1
@UL = common dso_local global i8 0, align 1
@UR = common dso_local global i8 0, align 1
@LL = common dso_local global i8 0, align 1
@LR = common dso_local global i8 0, align 1
@VD_UL = common dso_local global i8 0, align 1
@VD_UR = common dso_local global i8 0, align 1
@VD_LL = common dso_local global i8 0, align 1
@VD_LR = common dso_local global i8 0, align 1
@HD_UL = common dso_local global i8 0, align 1
@HD_UR = common dso_local global i8 0, align 1
@HD_LL = common dso_local global i8 0, align 1
@HD_LR = common dso_local global i8 0, align 1
@D_UL = common dso_local global i8 0, align 1
@D_UR = common dso_local global i8 0, align 1
@D_LL = common dso_local global i8 0, align 1
@D_LR = common dso_local global i8 0, align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @TuiDrawBox(i64 %0, i64 %1, i64 %2, i64 %3, i8 signext %4, i8 signext %5, i64 %6, i64 %7, i8 signext %8) #0 {
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i8, align 1
  %16 = alloca i8, align 1
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i8, align 1
  %20 = alloca i8, align 1
  %21 = alloca i8, align 1
  %22 = alloca i8, align 1
  %23 = alloca i8, align 1
  store i64 %0, i64* %11, align 8
  store i64 %1, i64* %12, align 8
  store i64 %2, i64* %13, align 8
  store i64 %3, i64* %14, align 8
  store i8 %4, i8* %15, align 1
  store i8 %5, i8* %16, align 1
  store i64 %6, i64* %17, align 8
  store i64 %7, i64* %18, align 8
  store i8 %8, i8* %19, align 1
  %24 = load i8, i8* %16, align 1
  %25 = sext i8 %24 to i32
  %26 = load i8, i8* @HORZ, align 1
  %27 = sext i8 %26 to i32
  %28 = icmp eq i32 %25, %27
  br i1 %28, label %29, label %46

29:                                               ; preds = %9
  %30 = load i8, i8* %15, align 1
  %31 = sext i8 %30 to i32
  %32 = load i8, i8* @VERT, align 1
  %33 = sext i8 %32 to i32
  %34 = icmp eq i32 %31, %33
  br i1 %34, label %35, label %40

35:                                               ; preds = %29
  %36 = load i8, i8* @UL, align 1
  store i8 %36, i8* %20, align 1
  %37 = load i8, i8* @UR, align 1
  store i8 %37, i8* %21, align 1
  %38 = load i8, i8* @LL, align 1
  store i8 %38, i8* %22, align 1
  %39 = load i8, i8* @LR, align 1
  store i8 %39, i8* %23, align 1
  br label %45

40:                                               ; preds = %29
  %41 = load i8, i8* @VD_UL, align 1
  store i8 %41, i8* %20, align 1
  %42 = load i8, i8* @VD_UR, align 1
  store i8 %42, i8* %21, align 1
  %43 = load i8, i8* @VD_LL, align 1
  store i8 %43, i8* %22, align 1
  %44 = load i8, i8* @VD_LR, align 1
  store i8 %44, i8* %23, align 1
  br label %45

45:                                               ; preds = %40, %35
  br label %63

46:                                               ; preds = %9
  %47 = load i8, i8* %15, align 1
  %48 = sext i8 %47 to i32
  %49 = load i8, i8* @VERT, align 1
  %50 = sext i8 %49 to i32
  %51 = icmp eq i32 %48, %50
  br i1 %51, label %52, label %57

52:                                               ; preds = %46
  %53 = load i8, i8* @HD_UL, align 1
  store i8 %53, i8* %20, align 1
  %54 = load i8, i8* @HD_UR, align 1
  store i8 %54, i8* %21, align 1
  %55 = load i8, i8* @HD_LL, align 1
  store i8 %55, i8* %22, align 1
  %56 = load i8, i8* @HD_LR, align 1
  store i8 %56, i8* %23, align 1
  br label %62

57:                                               ; preds = %46
  %58 = load i8, i8* @D_UL, align 1
  store i8 %58, i8* %20, align 1
  %59 = load i8, i8* @D_UR, align 1
  store i8 %59, i8* %21, align 1
  %60 = load i8, i8* @D_LL, align 1
  store i8 %60, i8* %22, align 1
  %61 = load i8, i8* @D_LR, align 1
  store i8 %61, i8* %23, align 1
  br label %62

62:                                               ; preds = %57, %52
  br label %63

63:                                               ; preds = %62, %45
  %64 = load i64, i64* %17, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %73

66:                                               ; preds = %63
  %67 = load i64, i64* %11, align 8
  %68 = load i64, i64* %12, align 8
  %69 = load i64, i64* %13, align 8
  %70 = load i64, i64* %14, align 8
  %71 = load i8, i8* %19, align 1
  %72 = call i32 @TuiFillArea(i64 %67, i64 %68, i64 %69, i64 %70, i8 signext 32, i8 signext %71)
  br label %73

73:                                               ; preds = %66, %63
  %74 = load i64, i64* %11, align 8
  %75 = load i64, i64* %12, align 8
  %76 = load i64, i64* %11, align 8
  %77 = load i64, i64* %12, align 8
  %78 = load i8, i8* %20, align 1
  %79 = load i8, i8* %19, align 1
  %80 = call i32 @TuiFillArea(i64 %74, i64 %75, i64 %76, i64 %77, i8 signext %78, i8 signext %79)
  %81 = load i64, i64* %13, align 8
  %82 = load i64, i64* %12, align 8
  %83 = load i64, i64* %13, align 8
  %84 = load i64, i64* %12, align 8
  %85 = load i8, i8* %21, align 1
  %86 = load i8, i8* %19, align 1
  %87 = call i32 @TuiFillArea(i64 %81, i64 %82, i64 %83, i64 %84, i8 signext %85, i8 signext %86)
  %88 = load i64, i64* %11, align 8
  %89 = load i64, i64* %14, align 8
  %90 = load i64, i64* %11, align 8
  %91 = load i64, i64* %14, align 8
  %92 = load i8, i8* %22, align 1
  %93 = load i8, i8* %19, align 1
  %94 = call i32 @TuiFillArea(i64 %88, i64 %89, i64 %90, i64 %91, i8 signext %92, i8 signext %93)
  %95 = load i64, i64* %13, align 8
  %96 = load i64, i64* %14, align 8
  %97 = load i64, i64* %13, align 8
  %98 = load i64, i64* %14, align 8
  %99 = load i8, i8* %23, align 1
  %100 = load i8, i8* %19, align 1
  %101 = call i32 @TuiFillArea(i64 %95, i64 %96, i64 %97, i64 %98, i8 signext %99, i8 signext %100)
  %102 = load i64, i64* %11, align 8
  %103 = load i64, i64* %12, align 8
  %104 = add nsw i64 %103, 1
  %105 = load i64, i64* %11, align 8
  %106 = load i64, i64* %14, align 8
  %107 = sub nsw i64 %106, 1
  %108 = load i8, i8* %15, align 1
  %109 = load i8, i8* %19, align 1
  %110 = call i32 @TuiFillArea(i64 %102, i64 %104, i64 %105, i64 %107, i8 signext %108, i8 signext %109)
  %111 = load i64, i64* %11, align 8
  %112 = add nsw i64 %111, 1
  %113 = load i64, i64* %12, align 8
  %114 = load i64, i64* %13, align 8
  %115 = sub nsw i64 %114, 1
  %116 = load i64, i64* %12, align 8
  %117 = load i8, i8* %16, align 1
  %118 = load i8, i8* %19, align 1
  %119 = call i32 @TuiFillArea(i64 %112, i64 %113, i64 %115, i64 %116, i8 signext %117, i8 signext %118)
  %120 = load i64, i64* %13, align 8
  %121 = load i64, i64* %12, align 8
  %122 = add nsw i64 %121, 1
  %123 = load i64, i64* %13, align 8
  %124 = load i64, i64* %14, align 8
  %125 = sub nsw i64 %124, 1
  %126 = load i8, i8* %15, align 1
  %127 = load i8, i8* %19, align 1
  %128 = call i32 @TuiFillArea(i64 %120, i64 %122, i64 %123, i64 %125, i8 signext %126, i8 signext %127)
  %129 = load i64, i64* %11, align 8
  %130 = add nsw i64 %129, 1
  %131 = load i64, i64* %14, align 8
  %132 = load i64, i64* %13, align 8
  %133 = sub nsw i64 %132, 1
  %134 = load i64, i64* %14, align 8
  %135 = load i8, i8* %16, align 1
  %136 = load i8, i8* %19, align 1
  %137 = call i32 @TuiFillArea(i64 %130, i64 %131, i64 %133, i64 %134, i8 signext %135, i8 signext %136)
  %138 = load i64, i64* %18, align 8
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %146

140:                                              ; preds = %73
  %141 = load i64, i64* %11, align 8
  %142 = load i64, i64* %12, align 8
  %143 = load i64, i64* %13, align 8
  %144 = load i64, i64* %14, align 8
  %145 = call i32 @TuiDrawShadow(i64 %141, i64 %142, i64 %143, i64 %144)
  br label %146

146:                                              ; preds = %140, %73
  %147 = load i32, i32* %10, align 4
  ret i32 %147
}

declare dso_local i32 @TuiFillArea(i64, i64, i64, i64, i8 signext, i8 signext) #1

declare dso_local i32 @TuiDrawShadow(i64, i64, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
