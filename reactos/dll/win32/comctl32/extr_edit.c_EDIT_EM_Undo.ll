; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/comctl32/extr_edit.c_EDIT_EM_Undo.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/comctl32/extr_edit.c_EDIT_EM_Undo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32, i64, i64 }

@ES_READONLY = common dso_local global i32 0, align 4
@ES_MULTILINE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [57 x i8] c"before UNDO:insertion length = %d, deletion buffer = %s\0A\00", align 1
@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@EN_CHANGE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [56 x i8] c"after UNDO:insertion length = %d, deletion buffer = %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*)* @EDIT_EM_Undo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @EDIT_EM_Undo(%struct.TYPE_8__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %3, align 8
  %6 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %7 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = load i32, i32* @ES_READONLY, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %21

12:                                               ; preds = %1
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @ES_MULTILINE, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  %19 = xor i1 %18, true
  %20 = zext i1 %19 to i32
  store i32 %20, i32* %2, align 4
  br label %94

21:                                               ; preds = %1
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @strlenW(i32 %24)
  store i32 %25, i32* %4, align 4
  %26 = load i32, i32* %4, align 4
  %27 = add nsw i32 %26, 1
  %28 = sext i32 %27 to i64
  %29 = mul i64 %28, 4
  %30 = trunc i64 %29 to i32
  %31 = call i32 @heap_alloc(i32 %30)
  store i32 %31, i32* %5, align 4
  %32 = load i32, i32* %5, align 4
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @strcpyW(i32 %32, i32 %35)
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 2
  %39 = load i64, i64* %38, align 8
  %40 = load i32, i32* %5, align 4
  %41 = call i32 @debugstr_w(i32 %40)
  %42 = call i32 @TRACE(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0), i64 %39, i32 %41)
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %44 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 3
  %46 = load i64, i64* %45, align 8
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 3
  %49 = load i64, i64* %48, align 8
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 2
  %52 = load i64, i64* %51, align 8
  %53 = add nsw i64 %49, %52
  %54 = load i32, i32* @FALSE, align 4
  %55 = call i32 @EDIT_EM_SetSel(%struct.TYPE_8__* %43, i64 %46, i64 %53, i32 %54)
  %56 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %57 = call i32 @EDIT_EM_EmptyUndoBuffer(%struct.TYPE_8__* %56)
  %58 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %59 = load i32, i32* @TRUE, align 4
  %60 = load i32, i32* %5, align 4
  %61 = load i32, i32* %4, align 4
  %62 = load i32, i32* @TRUE, align 4
  %63 = load i32, i32* @TRUE, align 4
  %64 = call i32 @EDIT_EM_ReplaceSel(%struct.TYPE_8__* %58, i32 %59, i32 %60, i32 %61, i32 %62, i32 %63)
  %65 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %66 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i32 0, i32 3
  %68 = load i64, i64* %67, align 8
  %69 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %69, i32 0, i32 3
  %71 = load i64, i64* %70, align 8
  %72 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i32 0, i32 2
  %74 = load i64, i64* %73, align 8
  %75 = add nsw i64 %71, %74
  %76 = load i32, i32* @FALSE, align 4
  %77 = call i32 @EDIT_EM_SetSel(%struct.TYPE_8__* %65, i64 %68, i64 %75, i32 %76)
  %78 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %79 = load i32, i32* @EN_CHANGE, align 4
  %80 = call i32 @EDIT_NOTIFY_PARENT(%struct.TYPE_8__* %78, i32 %79)
  %81 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %82 = call i32 @EDIT_EM_ScrollCaret(%struct.TYPE_8__* %81)
  %83 = load i32, i32* %5, align 4
  %84 = call i32 @heap_free(i32 %83)
  %85 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %86 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %85, i32 0, i32 2
  %87 = load i64, i64* %86, align 8
  %88 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %89 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @debugstr_w(i32 %90)
  %92 = call i32 @TRACE(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.1, i64 0, i64 0), i64 %87, i32 %91)
  %93 = load i32, i32* @TRUE, align 4
  store i32 %93, i32* %2, align 4
  br label %94

94:                                               ; preds = %21, %12
  %95 = load i32, i32* %2, align 4
  ret i32 %95
}

declare dso_local i32 @strlenW(i32) #1

declare dso_local i32 @heap_alloc(i32) #1

declare dso_local i32 @strcpyW(i32, i32) #1

declare dso_local i32 @TRACE(i8*, i64, i32) #1

declare dso_local i32 @debugstr_w(i32) #1

declare dso_local i32 @EDIT_EM_SetSel(%struct.TYPE_8__*, i64, i64, i32) #1

declare dso_local i32 @EDIT_EM_EmptyUndoBuffer(%struct.TYPE_8__*) #1

declare dso_local i32 @EDIT_EM_ReplaceSel(%struct.TYPE_8__*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @EDIT_NOTIFY_PARENT(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @EDIT_EM_ScrollCaret(%struct.TYPE_8__*) #1

declare dso_local i32 @heap_free(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
