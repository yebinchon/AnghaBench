; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/heap/extr_heapam.c_log_heap_freeze.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/heap/extr_heapam.c_log_heap_freeze.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }

@SizeOfHeapFreezePage = common dso_local global i32 0, align 4
@REGBUF_STANDARD = common dso_local global i32 0, align 4
@RM_HEAP2_ID = common dso_local global i32 0, align 4
@XLOG_HEAP2_FREEZE_PAGE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @log_heap_freeze(i32 %0, i32 %1, i32 %2, i32* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_2__, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  store i32 %4, i32* %10, align 4
  %13 = load i32, i32* %6, align 4
  %14 = call i32 @RelationNeedsWAL(i32 %13)
  %15 = call i32 @Assert(i32 %14)
  %16 = load i32, i32* %10, align 4
  %17 = icmp sgt i32 %16, 0
  %18 = zext i1 %17 to i32
  %19 = call i32 @Assert(i32 %18)
  %20 = load i32, i32* %8, align 4
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 1
  store i32 %20, i32* %21, align 4
  %22 = load i32, i32* %10, align 4
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  store i32 %22, i32* %23, align 4
  %24 = call i32 (...) @XLogBeginInsert()
  %25 = bitcast %struct.TYPE_2__* %11 to i8*
  %26 = load i32, i32* @SizeOfHeapFreezePage, align 4
  %27 = call i32 @XLogRegisterData(i8* %25, i32 %26)
  %28 = load i32, i32* %7, align 4
  %29 = load i32, i32* @REGBUF_STANDARD, align 4
  %30 = call i32 @XLogRegisterBuffer(i32 0, i32 %28, i32 %29)
  %31 = load i32*, i32** %9, align 8
  %32 = bitcast i32* %31 to i8*
  %33 = load i32, i32* %10, align 4
  %34 = sext i32 %33 to i64
  %35 = mul i64 %34, 4
  %36 = trunc i64 %35 to i32
  %37 = call i32 @XLogRegisterBufData(i32 0, i8* %32, i32 %36)
  %38 = load i32, i32* @RM_HEAP2_ID, align 4
  %39 = load i32, i32* @XLOG_HEAP2_FREEZE_PAGE, align 4
  %40 = call i32 @XLogInsert(i32 %38, i32 %39)
  store i32 %40, i32* %12, align 4
  %41 = load i32, i32* %12, align 4
  ret i32 %41
}

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @RelationNeedsWAL(i32) #1

declare dso_local i32 @XLogBeginInsert(...) #1

declare dso_local i32 @XLogRegisterData(i8*, i32) #1

declare dso_local i32 @XLogRegisterBuffer(i32, i32, i32) #1

declare dso_local i32 @XLogRegisterBufData(i32, i8*, i32) #1

declare dso_local i32 @XLogInsert(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
