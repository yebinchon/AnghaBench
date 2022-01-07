; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/brin/extr_brin_pageops.c_brin_page_cleanup.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/brin/extr_brin_pageops.c_brin_page_cleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ShareLock = common dso_local global i32 0, align 4
@BUFFER_LOCK_EXCLUSIVE = common dso_local global i32 0, align 4
@BUFFER_LOCK_UNLOCK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @brin_page_cleanup(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  %7 = call i32 @BufferGetPage(i32 %6)
  store i32 %7, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  %9 = call i64 @PageIsNew(i32 %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %35

11:                                               ; preds = %2
  %12 = load i32, i32* %3, align 4
  %13 = load i32, i32* @ShareLock, align 4
  %14 = call i32 @LockRelationForExtension(i32 %12, i32 %13)
  %15 = load i32, i32* %3, align 4
  %16 = load i32, i32* @ShareLock, align 4
  %17 = call i32 @UnlockRelationForExtension(i32 %15, i32 %16)
  %18 = load i32, i32* %4, align 4
  %19 = load i32, i32* @BUFFER_LOCK_EXCLUSIVE, align 4
  %20 = call i32 @LockBuffer(i32 %18, i32 %19)
  %21 = load i32, i32* %5, align 4
  %22 = call i64 @PageIsNew(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %31

24:                                               ; preds = %11
  %25 = load i32, i32* %3, align 4
  %26 = load i32, i32* %4, align 4
  %27 = call i32 @brin_initialize_empty_new_buffer(i32 %25, i32 %26)
  %28 = load i32, i32* %4, align 4
  %29 = load i32, i32* @BUFFER_LOCK_UNLOCK, align 4
  %30 = call i32 @LockBuffer(i32 %28, i32 %29)
  br label %53

31:                                               ; preds = %11
  %32 = load i32, i32* %4, align 4
  %33 = load i32, i32* @BUFFER_LOCK_UNLOCK, align 4
  %34 = call i32 @LockBuffer(i32 %32, i32 %33)
  br label %35

35:                                               ; preds = %31, %2
  %36 = load i32, i32* %4, align 4
  %37 = call i32 @BufferGetPage(i32 %36)
  %38 = call i64 @BRIN_IS_META_PAGE(i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %45, label %40

40:                                               ; preds = %35
  %41 = load i32, i32* %4, align 4
  %42 = call i32 @BufferGetPage(i32 %41)
  %43 = call i64 @BRIN_IS_REVMAP_PAGE(i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %40, %35
  br label %53

46:                                               ; preds = %40
  %47 = load i32, i32* %3, align 4
  %48 = load i32, i32* %4, align 4
  %49 = call i32 @BufferGetBlockNumber(i32 %48)
  %50 = load i32, i32* %5, align 4
  %51 = call i32 @br_page_get_freespace(i32 %50)
  %52 = call i32 @RecordPageWithFreeSpace(i32 %47, i32 %49, i32 %51)
  br label %53

53:                                               ; preds = %46, %45, %24
  ret void
}

declare dso_local i32 @BufferGetPage(i32) #1

declare dso_local i64 @PageIsNew(i32) #1

declare dso_local i32 @LockRelationForExtension(i32, i32) #1

declare dso_local i32 @UnlockRelationForExtension(i32, i32) #1

declare dso_local i32 @LockBuffer(i32, i32) #1

declare dso_local i32 @brin_initialize_empty_new_buffer(i32, i32) #1

declare dso_local i64 @BRIN_IS_META_PAGE(i32) #1

declare dso_local i64 @BRIN_IS_REVMAP_PAGE(i32) #1

declare dso_local i32 @RecordPageWithFreeSpace(i32, i32, i32) #1

declare dso_local i32 @BufferGetBlockNumber(i32) #1

declare dso_local i32 @br_page_get_freespace(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
