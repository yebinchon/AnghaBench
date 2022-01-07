; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/brin/extr_brin_pageops.c_brin_initialize_empty_new_buffer.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/brin/extr_brin_pageops.c_brin_initialize_empty_new_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DEBUG2 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [61 x i8] c"brin_initialize_empty_new_buffer: initializing blank page %u\00", align 1
@BRIN_PAGETYPE_REGULAR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32)* @brin_initialize_empty_new_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @brin_initialize_empty_new_buffer(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* @DEBUG2, align 4
  %7 = load i32, i32* %4, align 4
  %8 = call i32 @BufferGetBlockNumber(i32 %7)
  %9 = call i32 @BRIN_elog(i32 %8)
  %10 = call i32 (...) @START_CRIT_SECTION()
  %11 = load i32, i32* %4, align 4
  %12 = call i32 @BufferGetPage(i32 %11)
  store i32 %12, i32* %5, align 4
  %13 = load i32, i32* %5, align 4
  %14 = load i32, i32* @BRIN_PAGETYPE_REGULAR, align 4
  %15 = call i32 @brin_page_init(i32 %13, i32 %14)
  %16 = load i32, i32* %4, align 4
  %17 = call i32 @MarkBufferDirty(i32 %16)
  %18 = load i32, i32* %4, align 4
  %19 = call i32 @log_newpage_buffer(i32 %18, i32 1)
  %20 = call i32 (...) @END_CRIT_SECTION()
  %21 = load i32, i32* %3, align 4
  %22 = load i32, i32* %4, align 4
  %23 = call i32 @BufferGetBlockNumber(i32 %22)
  %24 = load i32, i32* %5, align 4
  %25 = call i32 @br_page_get_freespace(i32 %24)
  %26 = call i32 @RecordPageWithFreeSpace(i32 %21, i32 %23, i32 %25)
  ret void
}

declare dso_local i32 @BRIN_elog(i32) #1

declare dso_local i32 @BufferGetBlockNumber(i32) #1

declare dso_local i32 @START_CRIT_SECTION(...) #1

declare dso_local i32 @BufferGetPage(i32) #1

declare dso_local i32 @brin_page_init(i32, i32) #1

declare dso_local i32 @MarkBufferDirty(i32) #1

declare dso_local i32 @log_newpage_buffer(i32, i32) #1

declare dso_local i32 @END_CRIT_SECTION(...) #1

declare dso_local i32 @RecordPageWithFreeSpace(i32, i32, i32) #1

declare dso_local i32 @br_page_get_freespace(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
