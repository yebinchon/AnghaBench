; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/transam/extr_xloginsert.c_InitXLogInsert.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/transam/extr_xloginsert.c_InitXLogInsert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@xloginsert_cxt = common dso_local global i32* null, align 8
@TopMemoryContext = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"WAL record construction\00", align 1
@ALLOCSET_DEFAULT_SIZES = common dso_local global i32 0, align 4
@registered_buffers = common dso_local global i32* null, align 8
@XLR_NORMAL_MAX_BLOCK_ID = common dso_local global i32 0, align 4
@max_registered_buffers = common dso_local global i32 0, align 4
@rdatas = common dso_local global i32* null, align 8
@XLR_NORMAL_RDATAS = common dso_local global i32 0, align 4
@max_rdatas = common dso_local global i32 0, align 4
@hdr_scratch = common dso_local global i32* null, align 8
@HEADER_SCRATCH_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @InitXLogInsert() #0 {
  %1 = load i32*, i32** @xloginsert_cxt, align 8
  %2 = icmp eq i32* %1, null
  br i1 %2, label %3, label %7

3:                                                ; preds = %0
  %4 = load i32, i32* @TopMemoryContext, align 4
  %5 = load i32, i32* @ALLOCSET_DEFAULT_SIZES, align 4
  %6 = call i32* @AllocSetContextCreate(i32 %4, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %5)
  store i32* %6, i32** @xloginsert_cxt, align 8
  br label %7

7:                                                ; preds = %3, %0
  %8 = load i32*, i32** @registered_buffers, align 8
  %9 = icmp eq i32* %8, null
  br i1 %9, label %10, label %20

10:                                               ; preds = %7
  %11 = load i32*, i32** @xloginsert_cxt, align 8
  %12 = load i32, i32* @XLR_NORMAL_MAX_BLOCK_ID, align 4
  %13 = add nsw i32 %12, 1
  %14 = sext i32 %13 to i64
  %15 = mul i64 4, %14
  %16 = trunc i64 %15 to i32
  %17 = call i32* @MemoryContextAllocZero(i32* %11, i32 %16)
  store i32* %17, i32** @registered_buffers, align 8
  %18 = load i32, i32* @XLR_NORMAL_MAX_BLOCK_ID, align 4
  %19 = add nsw i32 %18, 1
  store i32 %19, i32* @max_registered_buffers, align 4
  br label %20

20:                                               ; preds = %10, %7
  %21 = load i32*, i32** @rdatas, align 8
  %22 = icmp eq i32* %21, null
  br i1 %22, label %23, label %31

23:                                               ; preds = %20
  %24 = load i32*, i32** @xloginsert_cxt, align 8
  %25 = load i32, i32* @XLR_NORMAL_RDATAS, align 4
  %26 = sext i32 %25 to i64
  %27 = mul i64 4, %26
  %28 = trunc i64 %27 to i32
  %29 = call i32* @MemoryContextAlloc(i32* %24, i32 %28)
  store i32* %29, i32** @rdatas, align 8
  %30 = load i32, i32* @XLR_NORMAL_RDATAS, align 4
  store i32 %30, i32* @max_rdatas, align 4
  br label %31

31:                                               ; preds = %23, %20
  %32 = load i32*, i32** @hdr_scratch, align 8
  %33 = icmp eq i32* %32, null
  br i1 %33, label %34, label %38

34:                                               ; preds = %31
  %35 = load i32*, i32** @xloginsert_cxt, align 8
  %36 = load i32, i32* @HEADER_SCRATCH_SIZE, align 4
  %37 = call i32* @MemoryContextAllocZero(i32* %35, i32 %36)
  store i32* %37, i32** @hdr_scratch, align 8
  br label %38

38:                                               ; preds = %34, %31
  ret void
}

declare dso_local i32* @AllocSetContextCreate(i32, i8*, i32) #1

declare dso_local i32* @MemoryContextAllocZero(i32*, i32) #1

declare dso_local i32* @MemoryContextAlloc(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
