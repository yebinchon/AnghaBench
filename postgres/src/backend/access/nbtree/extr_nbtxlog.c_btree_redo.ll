; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/nbtree/extr_nbtxlog.c_btree_redo.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/nbtree/extr_nbtxlog.c_btree_redo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@XLR_INFO_MASK = common dso_local global i32 0, align 4
@PANIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"btree_redo: unknown op code %u\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @btree_redo(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  %4 = load i32*, i32** %2, align 8
  %5 = call i32 @XLogRecGetInfo(i32* %4)
  %6 = load i32, i32* @XLR_INFO_MASK, align 4
  %7 = xor i32 %6, -1
  %8 = and i32 %5, %7
  store i32 %8, i32* %3, align 4
  %9 = load i32, i32* %3, align 4
  switch i32 %9, label %48 [
    i32 139, label %10
    i32 137, label %13
    i32 138, label %16
    i32 132, label %19
    i32 131, label %22
    i32 128, label %25
    i32 140, label %28
    i32 136, label %31
    i32 130, label %35
    i32 129, label %35
    i32 134, label %39
    i32 133, label %42
    i32 135, label %45
  ]

10:                                               ; preds = %1
  %11 = load i32*, i32** %2, align 8
  %12 = call i32 @btree_xlog_insert(i32 1, i32 0, i32* %11)
  br label %52

13:                                               ; preds = %1
  %14 = load i32*, i32** %2, align 8
  %15 = call i32 @btree_xlog_insert(i32 0, i32 0, i32* %14)
  br label %52

16:                                               ; preds = %1
  %17 = load i32*, i32** %2, align 8
  %18 = call i32 @btree_xlog_insert(i32 0, i32 1, i32* %17)
  br label %52

19:                                               ; preds = %1
  %20 = load i32*, i32** %2, align 8
  %21 = call i32 @btree_xlog_split(i32 1, i32* %20)
  br label %52

22:                                               ; preds = %1
  %23 = load i32*, i32** %2, align 8
  %24 = call i32 @btree_xlog_split(i32 0, i32* %23)
  br label %52

25:                                               ; preds = %1
  %26 = load i32*, i32** %2, align 8
  %27 = call i32 @btree_xlog_vacuum(i32* %26)
  br label %52

28:                                               ; preds = %1
  %29 = load i32*, i32** %2, align 8
  %30 = call i32 @btree_xlog_delete(i32* %29)
  br label %52

31:                                               ; preds = %1
  %32 = load i32, i32* %3, align 4
  %33 = load i32*, i32** %2, align 8
  %34 = call i32 @btree_xlog_mark_page_halfdead(i32 %32, i32* %33)
  br label %52

35:                                               ; preds = %1, %1
  %36 = load i32, i32* %3, align 4
  %37 = load i32*, i32** %2, align 8
  %38 = call i32 @btree_xlog_unlink_page(i32 %36, i32* %37)
  br label %52

39:                                               ; preds = %1
  %40 = load i32*, i32** %2, align 8
  %41 = call i32 @btree_xlog_newroot(i32* %40)
  br label %52

42:                                               ; preds = %1
  %43 = load i32*, i32** %2, align 8
  %44 = call i32 @btree_xlog_reuse_page(i32* %43)
  br label %52

45:                                               ; preds = %1
  %46 = load i32*, i32** %2, align 8
  %47 = call i32 @_bt_restore_meta(i32* %46, i32 0)
  br label %52

48:                                               ; preds = %1
  %49 = load i32, i32* @PANIC, align 4
  %50 = load i32, i32* %3, align 4
  %51 = call i32 @elog(i32 %49, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %50)
  br label %52

52:                                               ; preds = %48, %45, %42, %39, %35, %31, %28, %25, %22, %19, %16, %13, %10
  ret void
}

declare dso_local i32 @XLogRecGetInfo(i32*) #1

declare dso_local i32 @btree_xlog_insert(i32, i32, i32*) #1

declare dso_local i32 @btree_xlog_split(i32, i32*) #1

declare dso_local i32 @btree_xlog_vacuum(i32*) #1

declare dso_local i32 @btree_xlog_delete(i32*) #1

declare dso_local i32 @btree_xlog_mark_page_halfdead(i32, i32*) #1

declare dso_local i32 @btree_xlog_unlink_page(i32, i32*) #1

declare dso_local i32 @btree_xlog_newroot(i32*) #1

declare dso_local i32 @btree_xlog_reuse_page(i32*) #1

declare dso_local i32 @_bt_restore_meta(i32*, i32) #1

declare dso_local i32 @elog(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
