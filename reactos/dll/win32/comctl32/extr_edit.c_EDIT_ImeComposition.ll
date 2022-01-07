; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/comctl32/extr_edit.c_EDIT_ImeComposition.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/comctl32/extr_edit.c_EDIT_ImeComposition.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, i64, i64, i64, i32 }

@TRUE = common dso_local global i32 0, align 4
@GCS_RESULTSTR = common dso_local global i32 0, align 4
@GCS_COMPSTR = common dso_local global i32 0, align 4
@GCS_CURSORPOS = common dso_local global i32 0, align 4
@EF_AFTER_WRAP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, %struct.TYPE_7__*)* @EDIT_ImeComposition to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @EDIT_ImeComposition(i32 %0, i32 %1, %struct.TYPE_7__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store %struct.TYPE_7__* %2, %struct.TYPE_7__** %6, align 8
  %9 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %10 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %13, label %32

13:                                               ; preds = %3
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 2
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %16, %19
  br i1 %20, label %21, label %32

21:                                               ; preds = %13
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %23 = load i32, i32* @TRUE, align 4
  %24 = load i32, i32* @TRUE, align 4
  %25 = load i32, i32* @TRUE, align 4
  %26 = call i32 @EDIT_EM_ReplaceSel(%struct.TYPE_7__* %22, i32 %23, i32* null, i32 0, i32 %24, i32 %25)
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 2
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 3
  store i64 %29, i64* %31, align 8
  br label %32

32:                                               ; preds = %21, %13, %3
  %33 = load i32, i32* %4, align 4
  %34 = call i32 @ImmGetContext(i32 %33)
  store i32 %34, i32* %7, align 4
  %35 = load i32, i32* %7, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %38, label %37

37:                                               ; preds = %32
  br label %78

38:                                               ; preds = %32
  %39 = load i32, i32* %5, align 4
  %40 = load i32, i32* @GCS_RESULTSTR, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %38
  %44 = load i32, i32* %7, align 4
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %46 = call i32 @EDIT_GetResultStr(i32 %44, %struct.TYPE_7__* %45)
  store i32 0, i32* %8, align 4
  br label %61

47:                                               ; preds = %38
  %48 = load i32, i32* %5, align 4
  %49 = load i32, i32* @GCS_COMPSTR, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %57

52:                                               ; preds = %47
  %53 = load i32, i32* %7, align 4
  %54 = load i32, i32* %5, align 4
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %56 = call i32 @EDIT_GetCompositionStr(i32 %53, i32 %54, %struct.TYPE_7__* %55)
  br label %57

57:                                               ; preds = %52, %47
  %58 = load i32, i32* %7, align 4
  %59 = load i32, i32* @GCS_CURSORPOS, align 4
  %60 = call i32 @ImmGetCompositionStringW(i32 %58, i32 %59, i32 0, i32 0)
  store i32 %60, i32* %8, align 4
  br label %61

61:                                               ; preds = %57, %43
  %62 = load i32, i32* %4, align 4
  %63 = load i32, i32* %7, align 4
  %64 = call i32 @ImmReleaseContext(i32 %62, i32 %63)
  %65 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %66 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = load i32, i32* %8, align 4
  %70 = sext i32 %69 to i64
  %71 = add nsw i64 %68, %70
  %72 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i32 0, i32 4
  %74 = load i32, i32* %73, align 8
  %75 = load i32, i32* @EF_AFTER_WRAP, align 4
  %76 = and i32 %74, %75
  %77 = call i32 @EDIT_SetCaretPos(%struct.TYPE_7__* %65, i64 %71, i32 %76)
  br label %78

78:                                               ; preds = %61, %37
  ret void
}

declare dso_local i32 @EDIT_EM_ReplaceSel(%struct.TYPE_7__*, i32, i32*, i32, i32, i32) #1

declare dso_local i32 @ImmGetContext(i32) #1

declare dso_local i32 @EDIT_GetResultStr(i32, %struct.TYPE_7__*) #1

declare dso_local i32 @EDIT_GetCompositionStr(i32, i32, %struct.TYPE_7__*) #1

declare dso_local i32 @ImmGetCompositionStringW(i32, i32, i32, i32) #1

declare dso_local i32 @ImmReleaseContext(i32, i32) #1

declare dso_local i32 @EDIT_SetCaretPos(%struct.TYPE_7__*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
