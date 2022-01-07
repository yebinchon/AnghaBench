; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/heap/extr_heapam.c_log_heap_visible.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/heap/extr_heapam.c_log_heap_visible.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }

@SizeOfHeapVisible = common dso_local global i32 0, align 4
@REGBUF_STANDARD = common dso_local global i32 0, align 4
@REGBUF_NO_IMAGE = common dso_local global i32 0, align 4
@RM_HEAP2_ID = common dso_local global i32 0, align 4
@XLOG_HEAP2_VISIBLE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @log_heap_visible(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_2__, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %14 = load i32, i32* %7, align 4
  %15 = call i32 @BufferIsValid(i32 %14)
  %16 = call i32 @Assert(i32 %15)
  %17 = load i32, i32* %8, align 4
  %18 = call i32 @BufferIsValid(i32 %17)
  %19 = call i32 @Assert(i32 %18)
  %20 = load i32, i32* %9, align 4
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 1
  store i32 %20, i32* %21, align 4
  %22 = load i32, i32* %10, align 4
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  store i32 %22, i32* %23, align 4
  %24 = call i32 (...) @XLogBeginInsert()
  %25 = bitcast %struct.TYPE_2__* %11 to i8*
  %26 = load i32, i32* @SizeOfHeapVisible, align 4
  %27 = call i32 @XLogRegisterData(i8* %25, i32 %26)
  %28 = load i32, i32* %8, align 4
  %29 = call i32 @XLogRegisterBuffer(i32 0, i32 %28, i32 0)
  %30 = load i32, i32* @REGBUF_STANDARD, align 4
  store i32 %30, i32* %13, align 4
  %31 = call i32 (...) @XLogHintBitIsNeeded()
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %37, label %33

33:                                               ; preds = %5
  %34 = load i32, i32* @REGBUF_NO_IMAGE, align 4
  %35 = load i32, i32* %13, align 4
  %36 = or i32 %35, %34
  store i32 %36, i32* %13, align 4
  br label %37

37:                                               ; preds = %33, %5
  %38 = load i32, i32* %7, align 4
  %39 = load i32, i32* %13, align 4
  %40 = call i32 @XLogRegisterBuffer(i32 1, i32 %38, i32 %39)
  %41 = load i32, i32* @RM_HEAP2_ID, align 4
  %42 = load i32, i32* @XLOG_HEAP2_VISIBLE, align 4
  %43 = call i32 @XLogInsert(i32 %41, i32 %42)
  store i32 %43, i32* %12, align 4
  %44 = load i32, i32* %12, align 4
  ret i32 %44
}

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @BufferIsValid(i32) #1

declare dso_local i32 @XLogBeginInsert(...) #1

declare dso_local i32 @XLogRegisterData(i8*, i32) #1

declare dso_local i32 @XLogRegisterBuffer(i32, i32, i32) #1

declare dso_local i32 @XLogHintBitIsNeeded(...) #1

declare dso_local i32 @XLogInsert(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
