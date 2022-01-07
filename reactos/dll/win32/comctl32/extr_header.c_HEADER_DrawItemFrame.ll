; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/comctl32/extr_header.c_HEADER_DrawItemFrame.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/comctl32/extr_header.c_HEADER_DrawItemFrame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { i64 }

@HDS_FLAT = common dso_local global i32 0, align 4
@HDS_BUTTONS = common dso_local global i32 0, align 4
@BDR_RAISEDOUTER = common dso_local global i32 0, align 4
@BF_RECT = common dso_local global i32 0, align 4
@BF_FLAT = common dso_local global i32 0, align 4
@BF_ADJUST = common dso_local global i32 0, align 4
@EDGE_RAISED = common dso_local global i32 0, align 4
@BF_SOFT = common dso_local global i32 0, align 4
@EDGE_ETCHED = common dso_local global i32 0, align 4
@BF_BOTTOM = common dso_local global i32 0, align 4
@BF_RIGHT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_6__*, i32, i32*, %struct.TYPE_5__*)* @HEADER_DrawItemFrame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @HEADER_DrawItemFrame(%struct.TYPE_6__* %0, i32 %1, i32* %2, %struct.TYPE_5__* %3) #0 {
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_5__*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store %struct.TYPE_5__* %3, %struct.TYPE_5__** %8, align 8
  %9 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = call i64 @GetWindowTheme(i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %4
  br label %66

15:                                               ; preds = %4
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @HDS_FLAT, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %66, label %22

22:                                               ; preds = %15
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @HDS_BUTTONS, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %55

29:                                               ; preds = %22
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %44

34:                                               ; preds = %29
  %35 = load i32, i32* %6, align 4
  %36 = load i32*, i32** %7, align 8
  %37 = load i32, i32* @BDR_RAISEDOUTER, align 4
  %38 = load i32, i32* @BF_RECT, align 4
  %39 = load i32, i32* @BF_FLAT, align 4
  %40 = or i32 %38, %39
  %41 = load i32, i32* @BF_ADJUST, align 4
  %42 = or i32 %40, %41
  %43 = call i32 @DrawEdge(i32 %35, i32* %36, i32 %37, i32 %42)
  br label %54

44:                                               ; preds = %29
  %45 = load i32, i32* %6, align 4
  %46 = load i32*, i32** %7, align 8
  %47 = load i32, i32* @EDGE_RAISED, align 4
  %48 = load i32, i32* @BF_RECT, align 4
  %49 = load i32, i32* @BF_SOFT, align 4
  %50 = or i32 %48, %49
  %51 = load i32, i32* @BF_ADJUST, align 4
  %52 = or i32 %50, %51
  %53 = call i32 @DrawEdge(i32 %45, i32* %46, i32 %47, i32 %52)
  br label %54

54:                                               ; preds = %44, %34
  br label %65

55:                                               ; preds = %22
  %56 = load i32, i32* %6, align 4
  %57 = load i32*, i32** %7, align 8
  %58 = load i32, i32* @EDGE_ETCHED, align 4
  %59 = load i32, i32* @BF_BOTTOM, align 4
  %60 = load i32, i32* @BF_RIGHT, align 4
  %61 = or i32 %59, %60
  %62 = load i32, i32* @BF_ADJUST, align 4
  %63 = or i32 %61, %62
  %64 = call i32 @DrawEdge(i32 %56, i32* %57, i32 %58, i32 %63)
  br label %65

65:                                               ; preds = %55, %54
  br label %66

66:                                               ; preds = %14, %65, %15
  ret void
}

declare dso_local i64 @GetWindowTheme(i32) #1

declare dso_local i32 @DrawEdge(i32, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
