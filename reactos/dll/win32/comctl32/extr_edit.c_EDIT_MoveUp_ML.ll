; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/comctl32/extr_edit.c_EDIT_MoveUp_ML.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/comctl32/extr_edit.c_EDIT_MoveUp_ML.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i16, i16, i32, i16 }

@EF_AFTER_WRAP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_7__*, i32)* @EDIT_MoveUp_ML to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @EDIT_MoveUp_ML(%struct.TYPE_7__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i16, align 2
  %6 = alloca i16, align 2
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i16, align 2
  %10 = alloca i16, align 2
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %3, align 8
  store i32 %1, i32* %4, align 4
  %11 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 0
  %13 = load i16, i16* %12, align 4
  store i16 %13, i16* %5, align 2
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 1
  %16 = load i16, i16* %15, align 2
  store i16 %16, i16* %6, align 2
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @EF_AFTER_WRAP, align 4
  %21 = and i32 %19, %20
  store i32 %21, i32* %7, align 4
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %23 = load i16, i16* %6, align 2
  %24 = load i32, i32* %7, align 4
  %25 = call i32 @EDIT_EM_PosFromChar(%struct.TYPE_7__* %22, i16 signext %23, i32 %24)
  store i32 %25, i32* %8, align 4
  %26 = load i32, i32* %8, align 4
  %27 = call i64 @LOWORD(i32 %26)
  %28 = trunc i64 %27 to i16
  store i16 %28, i16* %9, align 2
  %29 = load i32, i32* %8, align 4
  %30 = call i64 @HIWORD(i32 %29)
  %31 = trunc i64 %30 to i16
  store i16 %31, i16* %10, align 2
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %33 = load i16, i16* %9, align 2
  %34 = load i16, i16* %10, align 2
  %35 = sext i16 %34 to i32
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 3
  %38 = load i16, i16* %37, align 4
  %39 = sext i16 %38 to i32
  %40 = sub nsw i32 %35, %39
  %41 = trunc i32 %40 to i16
  %42 = call signext i16 @EDIT_CharFromPos(%struct.TYPE_7__* %32, i16 signext %33, i16 signext %41, i32* %7)
  store i16 %42, i16* %6, align 2
  %43 = load i32, i32* %4, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %47, label %45

45:                                               ; preds = %2
  %46 = load i16, i16* %6, align 2
  store i16 %46, i16* %5, align 2
  br label %47

47:                                               ; preds = %45, %2
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %49 = load i16, i16* %5, align 2
  %50 = load i16, i16* %6, align 2
  %51 = load i32, i32* %7, align 4
  %52 = call i32 @EDIT_EM_SetSel(%struct.TYPE_7__* %48, i16 signext %49, i16 signext %50, i32 %51)
  %53 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %54 = call i32 @EDIT_EM_ScrollCaret(%struct.TYPE_7__* %53)
  ret void
}

declare dso_local i32 @EDIT_EM_PosFromChar(%struct.TYPE_7__*, i16 signext, i32) #1

declare dso_local i64 @LOWORD(i32) #1

declare dso_local i64 @HIWORD(i32) #1

declare dso_local signext i16 @EDIT_CharFromPos(%struct.TYPE_7__*, i16 signext, i16 signext, i32*) #1

declare dso_local i32 @EDIT_EM_SetSel(%struct.TYPE_7__*, i16 signext, i16 signext, i32) #1

declare dso_local i32 @EDIT_EM_ScrollCaret(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
