; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/comctl32/extr_pager.c_PAGER_DrawButton.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/comctl32/extr_pager.c_PAGER_DrawButton.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i64, i64, i64 }

@.str = private unnamed_addr constant [24 x i8] c"rc = %s, btnState = %d\0A\00", align 1
@PGF_INVISIBLE = common dso_local global i32 0, align 4
@DFCS_SCROLLLEFT = common dso_local global i32 0, align 4
@DFCS_SCROLLRIGHT = common dso_local global i32 0, align 4
@DFCS_SCROLLUP = common dso_local global i32 0, align 4
@DFCS_SCROLLDOWN = common dso_local global i32 0, align 4
@DFCS_FLAT = common dso_local global i32 0, align 4
@DFCS_PUSHED = common dso_local global i32 0, align 4
@DFCS_INACTIVE = common dso_local global i32 0, align 4
@DFC_SCROLL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, %struct.TYPE_5__*, i64, i64, i32)* @PAGER_DrawButton to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @PAGER_DrawButton(i32 %0, i32 %1, %struct.TYPE_5__* byval(%struct.TYPE_5__) align 8 %2, i64 %3, i64 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i64 %3, i64* %9, align 8
  store i64 %4, i64* %10, align 8
  store i32 %5, i32* %11, align 4
  %13 = call i32 @wine_dbgstr_rect(%struct.TYPE_5__* %2)
  %14 = load i32, i32* %11, align 4
  %15 = call i32 @TRACE(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %13, i32 %14)
  %16 = load i32, i32* %11, align 4
  %17 = load i32, i32* @PGF_INVISIBLE, align 4
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %6
  br label %78

20:                                               ; preds = %6
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %2, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %2, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = sub nsw i64 %22, %24
  %26 = icmp sle i64 %25, 0
  br i1 %26, label %34, label %27

27:                                               ; preds = %20
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %2, i32 0, i32 2
  %29 = load i64, i64* %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %2, i32 0, i32 3
  %31 = load i64, i64* %30, align 8
  %32 = sub nsw i64 %29, %31
  %33 = icmp sle i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %27, %20
  br label %78

35:                                               ; preds = %27
  %36 = load i64, i64* %9, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %47

38:                                               ; preds = %35
  %39 = load i64, i64* %10, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %38
  %42 = load i32, i32* @DFCS_SCROLLLEFT, align 4
  br label %45

43:                                               ; preds = %38
  %44 = load i32, i32* @DFCS_SCROLLRIGHT, align 4
  br label %45

45:                                               ; preds = %43, %41
  %46 = phi i32 [ %42, %41 ], [ %44, %43 ]
  store i32 %46, i32* %12, align 4
  br label %56

47:                                               ; preds = %35
  %48 = load i64, i64* %10, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %47
  %51 = load i32, i32* @DFCS_SCROLLUP, align 4
  br label %54

52:                                               ; preds = %47
  %53 = load i32, i32* @DFCS_SCROLLDOWN, align 4
  br label %54

54:                                               ; preds = %52, %50
  %55 = phi i32 [ %51, %50 ], [ %53, %52 ]
  store i32 %55, i32* %12, align 4
  br label %56

56:                                               ; preds = %54, %45
  %57 = load i32, i32* %11, align 4
  switch i32 %57, label %73 [
    i32 129, label %58
    i32 128, label %59
    i32 131, label %63
    i32 130, label %67
  ]

58:                                               ; preds = %56
  br label %73

59:                                               ; preds = %56
  %60 = load i32, i32* @DFCS_FLAT, align 4
  %61 = load i32, i32* %12, align 4
  %62 = or i32 %61, %60
  store i32 %62, i32* %12, align 4
  br label %73

63:                                               ; preds = %56
  %64 = load i32, i32* @DFCS_PUSHED, align 4
  %65 = load i32, i32* %12, align 4
  %66 = or i32 %65, %64
  store i32 %66, i32* %12, align 4
  br label %73

67:                                               ; preds = %56
  %68 = load i32, i32* @DFCS_INACTIVE, align 4
  %69 = load i32, i32* @DFCS_FLAT, align 4
  %70 = or i32 %68, %69
  %71 = load i32, i32* %12, align 4
  %72 = or i32 %71, %70
  store i32 %72, i32* %12, align 4
  br label %73

73:                                               ; preds = %56, %67, %63, %59, %58
  %74 = load i32, i32* %7, align 4
  %75 = load i32, i32* @DFC_SCROLL, align 4
  %76 = load i32, i32* %12, align 4
  %77 = call i32 @DrawFrameControl(i32 %74, %struct.TYPE_5__* %2, i32 %75, i32 %76)
  br label %78

78:                                               ; preds = %73, %34, %19
  ret void
}

declare dso_local i32 @TRACE(i8*, i32, i32) #1

declare dso_local i32 @wine_dbgstr_rect(%struct.TYPE_5__*) #1

declare dso_local i32 @DrawFrameControl(i32, %struct.TYPE_5__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
