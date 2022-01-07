; ModuleID = '/home/carl/AnghaBench/macvim/src/extr_edit.c_ins_compl_insert.c'
source_filename = "/home/carl/AnghaBench/macvim/src/extr_edit.c_ins_compl_insert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i64 }

@compl_shown_match = common dso_local global %struct.TYPE_2__* null, align 8
@ORIGINAL_TEXT = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@compl_used_match = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @ins_compl_insert to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ins_compl_insert() #0 {
  %1 = load %struct.TYPE_2__*, %struct.TYPE_2__** @compl_shown_match, align 8
  %2 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %1, i32 0, i32 1
  %3 = load i64, i64* %2, align 8
  %4 = call i64 (...) @ins_compl_len()
  %5 = add nsw i64 %3, %4
  %6 = call i32 @ins_bytes(i64 %5)
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** @compl_shown_match, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = load i32, i32* @ORIGINAL_TEXT, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %0
  %14 = load i32, i32* @FALSE, align 4
  store i32 %14, i32* @compl_used_match, align 4
  br label %17

15:                                               ; preds = %0
  %16 = load i32, i32* @TRUE, align 4
  store i32 %16, i32* @compl_used_match, align 4
  br label %17

17:                                               ; preds = %15, %13
  ret void
}

declare dso_local i32 @ins_bytes(i64) #1

declare dso_local i64 @ins_compl_len(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
