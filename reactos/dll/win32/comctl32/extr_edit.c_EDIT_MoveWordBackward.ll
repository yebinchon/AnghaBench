; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/comctl32/extr_edit.c_EDIT_MoveWordBackward.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/comctl32/extr_edit.c_EDIT_MoveWordBackward.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64, i64 }

@WB_LEFT = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_9__*, i32)* @EDIT_MoveWordBackward to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @EDIT_MoveWordBackward(%struct.TYPE_9__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  store i64 %12, i64* %5, align 8
  %13 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  store i64 %15, i64* %6, align 8
  %16 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %17 = load i64, i64* %6, align 8
  %18 = call i64 @EDIT_EM_LineFromChar(%struct.TYPE_9__* %16, i64 %17)
  store i64 %18, i64* %7, align 8
  %19 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %20 = load i64, i64* %6, align 8
  %21 = call i64 @EDIT_EM_LineLength(%struct.TYPE_9__* %19, i64 %20)
  store i64 %21, i64* %8, align 8
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %23 = load i64, i64* %7, align 8
  %24 = call i64 @EDIT_EM_LineIndex(%struct.TYPE_9__* %22, i64 %23)
  store i64 %24, i64* %9, align 8
  %25 = load i64, i64* %6, align 8
  %26 = load i64, i64* %9, align 8
  %27 = sub nsw i64 %25, %26
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %29, label %43

29:                                               ; preds = %2
  %30 = load i64, i64* %7, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %42

32:                                               ; preds = %29
  %33 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %34 = load i64, i64* %7, align 8
  %35 = sub nsw i64 %34, 1
  %36 = call i64 @EDIT_EM_LineIndex(%struct.TYPE_9__* %33, i64 %35)
  store i64 %36, i64* %9, align 8
  %37 = load i64, i64* %9, align 8
  %38 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %39 = load i64, i64* %9, align 8
  %40 = call i64 @EDIT_EM_LineLength(%struct.TYPE_9__* %38, i64 %39)
  %41 = add nsw i64 %37, %40
  store i64 %41, i64* %6, align 8
  br label %42

42:                                               ; preds = %32, %29
  br label %54

43:                                               ; preds = %2
  %44 = load i64, i64* %9, align 8
  %45 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %46 = load i64, i64* %9, align 8
  %47 = load i64, i64* %6, align 8
  %48 = load i64, i64* %9, align 8
  %49 = sub nsw i64 %47, %48
  %50 = load i64, i64* %8, align 8
  %51 = load i32, i32* @WB_LEFT, align 4
  %52 = call i64 @EDIT_CallWordBreakProc(%struct.TYPE_9__* %45, i64 %46, i64 %49, i64 %50, i32 %51)
  %53 = add nsw i64 %44, %52
  store i64 %53, i64* %6, align 8
  br label %54

54:                                               ; preds = %43, %42
  %55 = load i32, i32* %4, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %59, label %57

57:                                               ; preds = %54
  %58 = load i64, i64* %6, align 8
  store i64 %58, i64* %5, align 8
  br label %59

59:                                               ; preds = %57, %54
  %60 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %61 = load i64, i64* %5, align 8
  %62 = load i64, i64* %6, align 8
  %63 = load i32, i32* @FALSE, align 4
  %64 = call i32 @EDIT_EM_SetSel(%struct.TYPE_9__* %60, i64 %61, i64 %62, i32 %63)
  %65 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %66 = call i32 @EDIT_EM_ScrollCaret(%struct.TYPE_9__* %65)
  ret void
}

declare dso_local i64 @EDIT_EM_LineFromChar(%struct.TYPE_9__*, i64) #1

declare dso_local i64 @EDIT_EM_LineLength(%struct.TYPE_9__*, i64) #1

declare dso_local i64 @EDIT_EM_LineIndex(%struct.TYPE_9__*, i64) #1

declare dso_local i64 @EDIT_CallWordBreakProc(%struct.TYPE_9__*, i64, i64, i64, i32) #1

declare dso_local i32 @EDIT_EM_SetSel(%struct.TYPE_9__*, i64, i64, i32) #1

declare dso_local i32 @EDIT_EM_ScrollCaret(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
