; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/comctl32/extr_edit.c_EDIT_MoveHome.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/comctl32/extr_edit.c_EDIT_MoveHome.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, i64, i32, i32 }

@ES_MULTILINE = common dso_local global i32 0, align 4
@EF_AFTER_WRAP = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_7__*, i64, i64)* @EDIT_MoveHome to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @EDIT_MoveHome(%struct.TYPE_7__* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %8 = load i64, i64* %6, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %35, label %10

10:                                               ; preds = %3
  %11 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* @ES_MULTILINE, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %35

17:                                               ; preds = %10
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 4
  %21 = load i32, i32* %20, align 4
  %22 = sub nsw i32 0, %21
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @EF_AFTER_WRAP, align 4
  %31 = and i32 %29, %30
  %32 = call i32 @EDIT_EM_PosFromChar(%struct.TYPE_7__* %23, i32 %26, i32 %31)
  %33 = call i32 @HIWORD(i32 %32)
  %34 = call i64 @EDIT_CharFromPos(%struct.TYPE_7__* %18, i32 %22, i32 %33, i32* null)
  store i64 %34, i64* %7, align 8
  br label %36

35:                                               ; preds = %10, %3
  store i64 0, i64* %7, align 8
  br label %36

36:                                               ; preds = %35, %17
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %38 = load i64, i64* %5, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %36
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 2
  %43 = load i64, i64* %42, align 8
  br label %46

44:                                               ; preds = %36
  %45 = load i64, i64* %7, align 8
  br label %46

46:                                               ; preds = %44, %40
  %47 = phi i64 [ %43, %40 ], [ %45, %44 ]
  %48 = load i64, i64* %7, align 8
  %49 = load i32, i32* @FALSE, align 4
  %50 = call i32 @EDIT_EM_SetSel(%struct.TYPE_7__* %37, i64 %47, i64 %48, i32 %49)
  %51 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %52 = call i32 @EDIT_EM_ScrollCaret(%struct.TYPE_7__* %51)
  ret void
}

declare dso_local i64 @EDIT_CharFromPos(%struct.TYPE_7__*, i32, i32, i32*) #1

declare dso_local i32 @HIWORD(i32) #1

declare dso_local i32 @EDIT_EM_PosFromChar(%struct.TYPE_7__*, i32, i32) #1

declare dso_local i32 @EDIT_EM_SetSel(%struct.TYPE_7__*, i64, i64, i32) #1

declare dso_local i32 @EDIT_EM_ScrollCaret(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
