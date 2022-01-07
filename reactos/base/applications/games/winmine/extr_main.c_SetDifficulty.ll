; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/games/winmine/extr_main.c_SetDifficulty.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/games/winmine/extr_main.c_SetDifficulty.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32 }

@DLG_CUSTOM = common dso_local global i32 0, align 4
@CustomDlgProc = common dso_local global i32 0, align 4
@IDM_BEGINNER = common dso_local global i32 0, align 4
@MF_UNCHECKED = common dso_local global i32 0, align 4
@MF_CHECKED = common dso_local global i32 0, align 4
@BEGINNER_COLS = common dso_local global i32 0, align 4
@BEGINNER_ROWS = common dso_local global i32 0, align 4
@BEGINNER_MINES = common dso_local global i32 0, align 4
@ADVANCED_COLS = common dso_local global i32 0, align 4
@ADVANCED_ROWS = common dso_local global i32 0, align 4
@ADVANCED_MINES = common dso_local global i32 0, align 4
@EXPERT_COLS = common dso_local global i32 0, align 4
@EXPERT_ROWS = common dso_local global i32 0, align 4
@EXPERT_MINES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, i32)* @SetDifficulty to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @SetDifficulty(%struct.TYPE_3__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  %7 = icmp eq i32 %6, 129
  br i1 %7, label %8, label %24

8:                                                ; preds = %2
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 5
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @DLG_CUSTOM, align 4
  %13 = call i32 @MAKEINTRESOURCEW(i32 %12)
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 4
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @CustomDlgProc, align 4
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %19 = ptrtoint %struct.TYPE_3__* %18 to i32
  %20 = call i64 @DialogBoxParamW(i32 %11, i32 %13, i32 %16, i32 %17, i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %8
  br label %78

23:                                               ; preds = %8
  br label %24

24:                                               ; preds = %23, %2
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 4
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @GetMenu(i32 %27)
  store i32 %28, i32* %5, align 4
  %29 = load i32, i32* %5, align 4
  %30 = load i32, i32* @IDM_BEGINNER, align 4
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = add nsw i32 %30, %33
  %35 = load i32, i32* @MF_UNCHECKED, align 4
  %36 = call i32 @CheckMenuItem(i32 %29, i32 %34, i32 %35)
  %37 = load i32, i32* %4, align 4
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 4
  %40 = load i32, i32* %5, align 4
  %41 = load i32, i32* @IDM_BEGINNER, align 4
  %42 = load i32, i32* %4, align 4
  %43 = add nsw i32 %41, %42
  %44 = load i32, i32* @MF_CHECKED, align 4
  %45 = call i32 @CheckMenuItem(i32 %40, i32 %43, i32 %44)
  %46 = load i32, i32* %4, align 4
  switch i32 %46, label %78 [
    i32 130, label %47
    i32 131, label %57
    i32 128, label %67
    i32 129, label %77
  ]

47:                                               ; preds = %24
  %48 = load i32, i32* @BEGINNER_COLS, align 4
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 3
  store i32 %48, i32* %50, align 4
  %51 = load i32, i32* @BEGINNER_ROWS, align 4
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 2
  store i32 %51, i32* %53, align 4
  %54 = load i32, i32* @BEGINNER_MINES, align 4
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 1
  store i32 %54, i32* %56, align 4
  br label %78

57:                                               ; preds = %24
  %58 = load i32, i32* @ADVANCED_COLS, align 4
  %59 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 3
  store i32 %58, i32* %60, align 4
  %61 = load i32, i32* @ADVANCED_ROWS, align 4
  %62 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 2
  store i32 %61, i32* %63, align 4
  %64 = load i32, i32* @ADVANCED_MINES, align 4
  %65 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 1
  store i32 %64, i32* %66, align 4
  br label %78

67:                                               ; preds = %24
  %68 = load i32, i32* @EXPERT_COLS, align 4
  %69 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 3
  store i32 %68, i32* %70, align 4
  %71 = load i32, i32* @EXPERT_ROWS, align 4
  %72 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 2
  store i32 %71, i32* %73, align 4
  %74 = load i32, i32* @EXPERT_MINES, align 4
  %75 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 1
  store i32 %74, i32* %76, align 4
  br label %78

77:                                               ; preds = %24
  br label %78

78:                                               ; preds = %22, %24, %77, %67, %57, %47
  ret void
}

declare dso_local i64 @DialogBoxParamW(i32, i32, i32, i32, i32) #1

declare dso_local i32 @MAKEINTRESOURCEW(i32) #1

declare dso_local i32 @GetMenu(i32) #1

declare dso_local i32 @CheckMenuItem(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
