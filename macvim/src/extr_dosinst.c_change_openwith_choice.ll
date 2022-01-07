; ModuleID = '/home/carl/AnghaBench/macvim/src/extr_dosinst.c_change_openwith_choice.c'
source_filename = "/home/carl/AnghaBench/macvim/src/extr_dosinst.c_change_openwith_choice.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8* }

@install_openwith = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [123 x i8] c"Add Vim to the \22Open With...\22 list in the popup menu for the right\0A    mouse button so that you can edit any file with Vim\00", align 1
@choices = common dso_local global %struct.TYPE_2__* null, align 8
@.str.1 = private unnamed_addr constant [117 x i8] c"Do NOT add Vim to the \22Open With...\22 list in the popup menu for the\0A    right mouse button to edit any file with Vim\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @change_openwith_choice to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @change_openwith_choice(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* @install_openwith, align 4
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %11

5:                                                ; preds = %1
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** @choices, align 8
  %7 = load i32, i32* %2, align 4
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i64 %8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  store i8* getelementptr inbounds ([123 x i8], [123 x i8]* @.str, i64 0, i64 0), i8** %10, align 8
  store i32 1, i32* @install_openwith, align 4
  br label %17

11:                                               ; preds = %1
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** @choices, align 8
  %13 = load i32, i32* %2, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i64 %14
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  store i8* getelementptr inbounds ([117 x i8], [117 x i8]* @.str.1, i64 0, i64 0), i8** %16, align 8
  store i32 0, i32* @install_openwith, align 4
  br label %17

17:                                               ; preds = %11, %5
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
