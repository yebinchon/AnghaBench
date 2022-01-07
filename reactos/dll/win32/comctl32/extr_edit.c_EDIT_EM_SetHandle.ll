; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/comctl32/extr_edit.c_EDIT_EM_SetHandle.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/comctl32/extr_edit.c_EDIT_EM_SetHandle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i32, i32, i64, i64, i64, i64, i32*, i64 }

@ES_MULTILINE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@EF_MODIFIED = common dso_local global i32 0, align 4
@EF_UPDATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_12__*, i64)* @EDIT_EM_SetHandle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @EDIT_EM_SetHandle(%struct.TYPE_12__* %0, i64 %1) #0 {
  %3 = alloca %struct.TYPE_12__*, align 8
  %4 = alloca i64, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %6 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = load i32, i32* @ES_MULTILINE, align 4
  %9 = and i32 %7, %8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  br label %72

12:                                               ; preds = %2
  %13 = load i64, i64* %4, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %12
  br label %72

16:                                               ; preds = %12
  %17 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %18 = load i32, i32* @TRUE, align 4
  %19 = call i32 @EDIT_UnlockBuffer(%struct.TYPE_12__* %17, i32 %18)
  %20 = load i64, i64* %4, align 8
  %21 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %21, i32 0, i32 8
  store i64 %20, i64* %22, align 8
  %23 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %23, i32 0, i32 8
  %25 = load i64, i64* %24, align 8
  %26 = call i32 @LocalSize(i64 %25)
  %27 = sext i32 %26 to i64
  %28 = udiv i64 %27, 4
  %29 = sub i64 %28, 1
  %30 = trunc i64 %29 to i32
  %31 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %31, i32 0, i32 1
  store i32 %30, i32* %32, align 4
  %33 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %33, i32 0, i32 7
  store i32* null, i32** %34, align 8
  %35 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %36 = call i32 @EDIT_LockBuffer(%struct.TYPE_12__* %35)
  %37 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %38 = call i32 @text_buffer_changed(%struct.TYPE_12__* %37)
  %39 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %39, i32 0, i32 5
  store i64 0, i64* %40, align 8
  %41 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %42 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %41, i32 0, i32 6
  store i64 0, i64* %42, align 8
  %43 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %44 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %43, i32 0, i32 3
  store i64 0, i64* %44, align 8
  %45 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %46 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %45, i32 0, i32 4
  store i64 0, i64* %46, align 8
  %47 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %48 = call i32 @EDIT_EM_EmptyUndoBuffer(%struct.TYPE_12__* %47)
  %49 = load i32, i32* @EF_MODIFIED, align 4
  %50 = xor i32 %49, -1
  %51 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %52 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 8
  %54 = and i32 %53, %50
  store i32 %54, i32* %52, align 8
  %55 = load i32, i32* @EF_UPDATE, align 4
  %56 = xor i32 %55, -1
  %57 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %58 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 8
  %60 = and i32 %59, %56
  store i32 %60, i32* %58, align 8
  %61 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %62 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %63 = call i32 @get_text_length(%struct.TYPE_12__* %62)
  %64 = call i32 @EDIT_BuildLineDefs_ML(%struct.TYPE_12__* %61, i32 0, i32 %63, i32 0, i32* null)
  %65 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %66 = load i32, i32* @TRUE, align 4
  %67 = call i32 @EDIT_UpdateText(%struct.TYPE_12__* %65, i32* null, i32 %66)
  %68 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %69 = call i32 @EDIT_EM_ScrollCaret(%struct.TYPE_12__* %68)
  %70 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %71 = call i32 @EDIT_UpdateScrollInfo(%struct.TYPE_12__* %70)
  br label %72

72:                                               ; preds = %16, %15, %11
  ret void
}

declare dso_local i32 @EDIT_UnlockBuffer(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @LocalSize(i64) #1

declare dso_local i32 @EDIT_LockBuffer(%struct.TYPE_12__*) #1

declare dso_local i32 @text_buffer_changed(%struct.TYPE_12__*) #1

declare dso_local i32 @EDIT_EM_EmptyUndoBuffer(%struct.TYPE_12__*) #1

declare dso_local i32 @EDIT_BuildLineDefs_ML(%struct.TYPE_12__*, i32, i32, i32, i32*) #1

declare dso_local i32 @get_text_length(%struct.TYPE_12__*) #1

declare dso_local i32 @EDIT_UpdateText(%struct.TYPE_12__*, i32*, i32) #1

declare dso_local i32 @EDIT_EM_ScrollCaret(%struct.TYPE_12__*) #1

declare dso_local i32 @EDIT_UpdateScrollInfo(%struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
