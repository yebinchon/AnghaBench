; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/calc/extr_winmain.c_update_menu.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/calc/extr_winmain.c_update_menu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64*, i64, i32 }
%struct.TYPE_5__ = type { i64 }

@upd = common dso_local global %struct.TYPE_4__* null, align 8
@MF_BYCOMMAND = common dso_local global i32 0, align 4
@MF_UNCHECKED = common dso_local global i32 0, align 4
@BST_UNCHECKED = common dso_local global i32 0, align 4
@MF_CHECKED = common dso_local global i32 0, align 4
@BST_CHECKED = common dso_local global i32 0, align 4
@IDM_VIEW_GROUP = common dso_local global i32 0, align 4
@calc = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @update_menu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @update_menu(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* %2, align 4
  %6 = call i32 @GetMenu(i32 %5)
  %7 = call i32 @GetSubMenu(i32 %6, i32 1)
  store i32 %7, i32* %3, align 4
  store i32 0, i32* %4, align 4
  br label %8

8:                                                ; preds = %71, %1
  %9 = load i32, i32* %4, align 4
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** @upd, align 8
  %11 = call i32 @SIZEOF(%struct.TYPE_4__* %10)
  %12 = icmp ult i32 %9, %11
  br i1 %12, label %13, label %74

13:                                               ; preds = %8
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** @upd, align 8
  %15 = load i32, i32* %4, align 4
  %16 = zext i32 %15 to i64
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i64 %16
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i64*, i64** %18, align 8
  %20 = load i64, i64* %19, align 8
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** @upd, align 8
  %22 = load i32, i32* %4, align 4
  %23 = zext i32 %22 to i64
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i64 %23
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %20, %26
  br i1 %27, label %28, label %49

28:                                               ; preds = %13
  %29 = load i32, i32* %3, align 4
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** @upd, align 8
  %31 = load i32, i32* %4, align 4
  %32 = zext i32 %31 to i64
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i64 %32
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* @MF_BYCOMMAND, align 4
  %37 = load i32, i32* @MF_UNCHECKED, align 4
  %38 = or i32 %36, %37
  %39 = call i32 @CheckMenuItem(i32 %29, i32 %35, i32 %38)
  %40 = load i32, i32* %2, align 4
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** @upd, align 8
  %42 = load i32, i32* %4, align 4
  %43 = zext i32 %42 to i64
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = load i32, i32* @BST_UNCHECKED, align 4
  %48 = call i32 @CheckDlgButton(i32 %40, i64 %46, i32 %47)
  br label %70

49:                                               ; preds = %13
  %50 = load i32, i32* %3, align 4
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** @upd, align 8
  %52 = load i32, i32* %4, align 4
  %53 = zext i32 %52 to i64
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i64 %53
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* @MF_BYCOMMAND, align 4
  %58 = load i32, i32* @MF_CHECKED, align 4
  %59 = or i32 %57, %58
  %60 = call i32 @CheckMenuItem(i32 %50, i32 %56, i32 %59)
  %61 = load i32, i32* %2, align 4
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** @upd, align 8
  %63 = load i32, i32* %4, align 4
  %64 = zext i32 %63 to i64
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i64 %64
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = load i32, i32* @BST_CHECKED, align 4
  %69 = call i32 @CheckDlgButton(i32 %61, i64 %67, i32 %68)
  br label %70

70:                                               ; preds = %49, %28
  br label %71

71:                                               ; preds = %70
  %72 = load i32, i32* %4, align 4
  %73 = add i32 %72, 1
  store i32 %73, i32* %4, align 4
  br label %8

74:                                               ; preds = %8
  %75 = load i32, i32* %3, align 4
  %76 = load i32, i32* @IDM_VIEW_GROUP, align 4
  %77 = load i32, i32* @MF_BYCOMMAND, align 4
  %78 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @calc, i32 0, i32 0), align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %82

80:                                               ; preds = %74
  %81 = load i32, i32* @MF_CHECKED, align 4
  br label %84

82:                                               ; preds = %74
  %83 = load i32, i32* @MF_UNCHECKED, align 4
  br label %84

84:                                               ; preds = %82, %80
  %85 = phi i32 [ %81, %80 ], [ %83, %82 ]
  %86 = or i32 %77, %85
  %87 = call i32 @CheckMenuItem(i32 %75, i32 %76, i32 %86)
  ret void
}

declare dso_local i32 @GetSubMenu(i32, i32) #1

declare dso_local i32 @GetMenu(i32) #1

declare dso_local i32 @SIZEOF(%struct.TYPE_4__*) #1

declare dso_local i32 @CheckMenuItem(i32, i32, i32) #1

declare dso_local i32 @CheckDlgButton(i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
