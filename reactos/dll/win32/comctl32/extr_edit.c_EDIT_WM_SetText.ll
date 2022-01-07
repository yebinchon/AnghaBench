; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/comctl32/extr_edit.c_EDIT_WM_SetText.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/comctl32/extr_edit.c_EDIT_WM_SetText.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32, i64, i64 }

@EF_UPDATE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [71 x i8] c"SetSel may generate UPDATE message whose handler may reset selection.\0A\00", align 1
@FALSE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"<NULL>\0A\00", align 1
@EF_MODIFIED = common dso_local global i32 0, align 4
@ES_MULTILINE = common dso_local global i32 0, align 4
@EN_UPDATE = common dso_local global i32 0, align 4
@EN_CHANGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_9__*, i32*)* @EDIT_WM_SetText to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @EDIT_WM_SetText(%struct.TYPE_9__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca i32*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %3, align 8
  store i32* %1, i32** %4, align 8
  %5 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %6 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = load i32, i32* @EF_UPDATE, align 4
  %9 = and i32 %7, %8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %2
  %12 = call i32 @ERR(i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str, i64 0, i64 0))
  br label %13

13:                                               ; preds = %11, %2
  %14 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %15 = load i32, i32* @FALSE, align 4
  %16 = call i32 @EDIT_EM_SetSel(%struct.TYPE_9__* %14, i32 0, i32 -1, i32 %15)
  %17 = load i32*, i32** %4, align 8
  %18 = icmp ne i32* %17, null
  br i1 %18, label %19, label %31

19:                                               ; preds = %13
  %20 = load i32*, i32** %4, align 8
  %21 = call i32 @debugstr_w(i32* %20)
  %22 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %21)
  %23 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %24 = load i32, i32* @FALSE, align 4
  %25 = load i32*, i32** %4, align 8
  %26 = load i32*, i32** %4, align 8
  %27 = call i32 @strlenW(i32* %26)
  %28 = load i32, i32* @FALSE, align 4
  %29 = load i32, i32* @FALSE, align 4
  %30 = call i32 @EDIT_EM_ReplaceSel(%struct.TYPE_9__* %23, i32 %24, i32* %25, i32 %27, i32 %28, i32 %29)
  br label %38

31:                                               ; preds = %13
  %32 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  %33 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %34 = load i32, i32* @FALSE, align 4
  %35 = load i32, i32* @FALSE, align 4
  %36 = load i32, i32* @FALSE, align 4
  %37 = call i32 @EDIT_EM_ReplaceSel(%struct.TYPE_9__* %33, i32 %34, i32* null, i32 0, i32 %35, i32 %36)
  br label %38

38:                                               ; preds = %31, %19
  %39 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %39, i32 0, i32 3
  store i64 0, i64* %40, align 8
  %41 = load i32, i32* @EF_MODIFIED, align 4
  %42 = xor i32 %41, -1
  %43 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %44 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = and i32 %45, %42
  store i32 %46, i32* %44, align 8
  %47 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %48 = load i32, i32* @FALSE, align 4
  %49 = call i32 @EDIT_EM_SetSel(%struct.TYPE_9__* %47, i32 0, i32 0, i32 %48)
  %50 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @ES_MULTILINE, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %68, label %56

56:                                               ; preds = %38
  %57 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %58 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %57, i32 0, i32 2
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %68, label %61

61:                                               ; preds = %56
  %62 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %63 = load i32, i32* @EN_UPDATE, align 4
  %64 = call i32 @EDIT_NOTIFY_PARENT(%struct.TYPE_9__* %62, i32 %63)
  %65 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %66 = load i32, i32* @EN_CHANGE, align 4
  %67 = call i32 @EDIT_NOTIFY_PARENT(%struct.TYPE_9__* %65, i32 %66)
  br label %68

68:                                               ; preds = %61, %56, %38
  %69 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %70 = call i32 @EDIT_EM_ScrollCaret(%struct.TYPE_9__* %69)
  %71 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %72 = call i32 @EDIT_UpdateScrollInfo(%struct.TYPE_9__* %71)
  %73 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %74 = call i32 @EDIT_InvalidateUniscribeData(%struct.TYPE_9__* %73)
  ret void
}

declare dso_local i32 @ERR(i8*) #1

declare dso_local i32 @EDIT_EM_SetSel(%struct.TYPE_9__*, i32, i32, i32) #1

declare dso_local i32 @TRACE(i8*, ...) #1

declare dso_local i32 @debugstr_w(i32*) #1

declare dso_local i32 @EDIT_EM_ReplaceSel(%struct.TYPE_9__*, i32, i32*, i32, i32, i32) #1

declare dso_local i32 @strlenW(i32*) #1

declare dso_local i32 @EDIT_NOTIFY_PARENT(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @EDIT_EM_ScrollCaret(%struct.TYPE_9__*) #1

declare dso_local i32 @EDIT_UpdateScrollInfo(%struct.TYPE_9__*) #1

declare dso_local i32 @EDIT_InvalidateUniscribeData(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
