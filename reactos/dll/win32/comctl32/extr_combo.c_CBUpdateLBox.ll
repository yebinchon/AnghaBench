; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/comctl32/extr_combo.c_CBUpdateLBox.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/comctl32/extr_combo.c_CBUpdateLBox.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@LB_ERR = common dso_local global i32 0, align 4
@WM_GETTEXTLENGTH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"\09 edit text length %i\0A\00", align 1
@LB_FINDSTRING = common dso_local global i32 0, align 4
@LB_SETCURSEL = common dso_local global i32 0, align 4
@LB_SETCARETINDEX = common dso_local global i32 0, align 4
@LB_SETTOPINDEX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*, i64)* @CBUpdateLBox to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @CBUpdateLBox(%struct.TYPE_3__* %0, i64 %1) #0 {
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  store i64 %1, i64* %4, align 8
  store i32* null, i32** %7, align 8
  %8 = load i32, i32* @LB_ERR, align 4
  store i32 %8, i32* %6, align 4
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @WM_GETTEXTLENGTH, align 4
  %13 = call i32 @SendMessageW(i32 %11, i32 %12, i32 0, i32 0)
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* %5, align 4
  %15 = icmp sgt i32 %14, 0
  br i1 %15, label %16, label %23

16:                                               ; preds = %2
  %17 = load i32, i32* %5, align 4
  %18 = add nsw i32 %17, 1
  %19 = sext i32 %18 to i64
  %20 = mul i64 %19, 4
  %21 = trunc i64 %20 to i32
  %22 = call i32* @heap_alloc(i32 %21)
  store i32* %22, i32** %7, align 8
  br label %23

23:                                               ; preds = %16, %2
  %24 = load i32, i32* %5, align 4
  %25 = call i32 @TRACE(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %24)
  %26 = load i32*, i32** %7, align 8
  %27 = icmp ne i32* %26, null
  br i1 %27, label %28, label %45

28:                                               ; preds = %23
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load i32*, i32** %7, align 8
  %33 = load i32, i32* %5, align 4
  %34 = add nsw i32 %33, 1
  %35 = call i32 @GetWindowTextW(i32 %31, i32* %32, i32 %34)
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @LB_FINDSTRING, align 4
  %40 = load i32*, i32** %7, align 8
  %41 = ptrtoint i32* %40 to i32
  %42 = call i32 @SendMessageW(i32 %38, i32 %39, i32 -1, i32 %41)
  store i32 %42, i32* %6, align 4
  %43 = load i32*, i32** %7, align 8
  %44 = call i32 @heap_free(i32* %43)
  br label %45

45:                                               ; preds = %28, %23
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @LB_SETCURSEL, align 4
  %50 = load i64, i64* %4, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %45
  %53 = load i32, i32* %6, align 4
  br label %55

54:                                               ; preds = %45
  br label %55

55:                                               ; preds = %54, %52
  %56 = phi i32 [ %53, %52 ], [ -1, %54 ]
  %57 = call i32 @SendMessageW(i32 %48, i32 %49, i32 %56, i32 0)
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @LB_SETCARETINDEX, align 4
  %62 = load i32, i32* %6, align 4
  %63 = icmp slt i32 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %55
  br label %67

65:                                               ; preds = %55
  %66 = load i32, i32* %6, align 4
  br label %67

67:                                               ; preds = %65, %64
  %68 = phi i32 [ 0, %64 ], [ %66, %65 ]
  %69 = call i32 @SendMessageW(i32 %60, i32 %61, i32 %68, i32 0)
  %70 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* @LB_SETTOPINDEX, align 4
  %74 = load i32, i32* %6, align 4
  %75 = icmp slt i32 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %67
  br label %79

77:                                               ; preds = %67
  %78 = load i32, i32* %6, align 4
  br label %79

79:                                               ; preds = %77, %76
  %80 = phi i32 [ 0, %76 ], [ %78, %77 ]
  %81 = call i32 @SendMessageW(i32 %72, i32 %73, i32 %80, i32 0)
  %82 = load i32, i32* %6, align 4
  ret i32 %82
}

declare dso_local i32 @SendMessageW(i32, i32, i32, i32) #1

declare dso_local i32* @heap_alloc(i32) #1

declare dso_local i32 @TRACE(i8*, i32) #1

declare dso_local i32 @GetWindowTextW(i32, i32*, i32) #1

declare dso_local i32 @heap_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
