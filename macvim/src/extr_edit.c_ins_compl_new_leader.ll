; ModuleID = '/home/carl/AnghaBench/macvim/src/extr_edit.c_ins_compl_new_leader.c'
source_filename = "/home/carl/AnghaBench/macvim/src/extr_edit.c_ins_compl_new_leader.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }

@compl_leader = common dso_local global i64 0, align 8
@FALSE = common dso_local global i8* null, align 8
@compl_used_match = common dso_local global i8* null, align 8
@compl_started = common dso_local global i64 0, align 8
@TRUE = common dso_local global i8* null, align 8
@compl_restarting = common dso_local global i8* null, align 8
@Ctrl_N = common dso_local global i32 0, align 4
@FAIL = common dso_local global i64 0, align 8
@compl_cont_status = common dso_local global i64 0, align 8
@compl_enter_selects = common dso_local global i32 0, align 4
@compl_match_array = common dso_local global i32* null, align 8
@gui = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@spell_bad_len = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @ins_compl_new_leader to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ins_compl_new_leader() #0 {
  %1 = call i32 (...) @ins_compl_del_pum()
  %2 = call i32 (...) @ins_compl_delete()
  %3 = load i64, i64* @compl_leader, align 8
  %4 = call i64 (...) @ins_compl_len()
  %5 = add nsw i64 %3, %4
  %6 = call i32 @ins_bytes(i64 %5)
  %7 = load i8*, i8** @FALSE, align 8
  store i8* %7, i8** @compl_used_match, align 8
  %8 = load i64, i64* @compl_started, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %0
  %11 = load i64, i64* @compl_leader, align 8
  %12 = call i32 @ins_compl_set_original_text(i64 %11)
  br label %23

13:                                               ; preds = %0
  %14 = call i32 @update_screen(i32 0)
  %15 = load i8*, i8** @TRUE, align 8
  store i8* %15, i8** @compl_restarting, align 8
  %16 = load i32, i32* @Ctrl_N, align 4
  %17 = call i64 @ins_complete(i32 %16)
  %18 = load i64, i64* @FAIL, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %13
  store i64 0, i64* @compl_cont_status, align 8
  br label %21

21:                                               ; preds = %20, %13
  %22 = load i8*, i8** @FALSE, align 8
  store i8* %22, i8** @compl_restarting, align 8
  br label %23

23:                                               ; preds = %21, %10
  %24 = load i8*, i8** @compl_used_match, align 8
  %25 = icmp ne i8* %24, null
  %26 = xor i1 %25, true
  %27 = zext i1 %26 to i32
  store i32 %27, i32* @compl_enter_selects, align 4
  %28 = call i32 (...) @ins_compl_show_pum()
  %29 = load i32*, i32** @compl_match_array, align 8
  %30 = icmp eq i32* %29, null
  br i1 %30, label %31, label %34

31:                                               ; preds = %23
  %32 = load i8*, i8** @FALSE, align 8
  %33 = ptrtoint i8* %32 to i32
  store i32 %33, i32* @compl_enter_selects, align 4
  br label %34

34:                                               ; preds = %31, %23
  ret void
}

declare dso_local i32 @ins_compl_del_pum(...) #1

declare dso_local i32 @ins_compl_delete(...) #1

declare dso_local i32 @ins_bytes(i64) #1

declare dso_local i64 @ins_compl_len(...) #1

declare dso_local i32 @ins_compl_set_original_text(i64) #1

declare dso_local i32 @update_screen(i32) #1

declare dso_local i64 @ins_complete(i32) #1

declare dso_local i32 @ins_compl_show_pum(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
