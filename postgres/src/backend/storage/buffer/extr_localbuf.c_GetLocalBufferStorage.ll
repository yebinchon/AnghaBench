; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/storage/buffer/extr_localbuf.c_GetLocalBufferStorage.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/storage/buffer/extr_localbuf.c_GetLocalBufferStorage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GetLocalBufferStorage.cur_block = internal global i8* null, align 8
@GetLocalBufferStorage.next_buf_in_block = internal global i32 0, align 4
@GetLocalBufferStorage.num_bufs_in_block = internal global i32 0, align 4
@GetLocalBufferStorage.total_bufs_allocated = internal global i32 0, align 4
@GetLocalBufferStorage.LocalBufferContext = internal global i32* null, align 8
@NLocBuffer = common dso_local global i32 0, align 4
@TopMemoryContext = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"LocalBufferContext\00", align 1
@ALLOCSET_DEFAULT_SIZES = common dso_local global i32 0, align 4
@MaxAllocSize = common dso_local global i32 0, align 4
@BLCKSZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @GetLocalBufferStorage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @GetLocalBufferStorage() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i32, align 4
  %3 = load i32, i32* @GetLocalBufferStorage.total_bufs_allocated, align 4
  %4 = load i32, i32* @NLocBuffer, align 4
  %5 = icmp slt i32 %3, %4
  %6 = zext i1 %5 to i32
  %7 = call i32 @Assert(i32 %6)
  %8 = load i32, i32* @GetLocalBufferStorage.next_buf_in_block, align 4
  %9 = load i32, i32* @GetLocalBufferStorage.num_bufs_in_block, align 4
  %10 = icmp sge i32 %8, %9
  br i1 %10, label %11, label %39

11:                                               ; preds = %0
  %12 = load i32*, i32** @GetLocalBufferStorage.LocalBufferContext, align 8
  %13 = icmp eq i32* %12, null
  br i1 %13, label %14, label %18

14:                                               ; preds = %11
  %15 = load i32, i32* @TopMemoryContext, align 4
  %16 = load i32, i32* @ALLOCSET_DEFAULT_SIZES, align 4
  %17 = call i32* @AllocSetContextCreate(i32 %15, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %16)
  store i32* %17, i32** @GetLocalBufferStorage.LocalBufferContext, align 8
  br label %18

18:                                               ; preds = %14, %11
  %19 = load i32, i32* @GetLocalBufferStorage.num_bufs_in_block, align 4
  %20 = mul nsw i32 %19, 2
  %21 = call i32 @Max(i32 %20, i32 16)
  store i32 %21, i32* %2, align 4
  %22 = load i32, i32* %2, align 4
  %23 = load i32, i32* @NLocBuffer, align 4
  %24 = load i32, i32* @GetLocalBufferStorage.total_bufs_allocated, align 4
  %25 = sub nsw i32 %23, %24
  %26 = call i32 @Min(i32 %22, i32 %25)
  store i32 %26, i32* %2, align 4
  %27 = load i32, i32* %2, align 4
  %28 = load i32, i32* @MaxAllocSize, align 4
  %29 = load i32, i32* @BLCKSZ, align 4
  %30 = sdiv i32 %28, %29
  %31 = call i32 @Min(i32 %27, i32 %30)
  store i32 %31, i32* %2, align 4
  %32 = load i32*, i32** @GetLocalBufferStorage.LocalBufferContext, align 8
  %33 = load i32, i32* %2, align 4
  %34 = load i32, i32* @BLCKSZ, align 4
  %35 = mul nsw i32 %33, %34
  %36 = call i64 @MemoryContextAlloc(i32* %32, i32 %35)
  %37 = inttoptr i64 %36 to i8*
  store i8* %37, i8** @GetLocalBufferStorage.cur_block, align 8
  store i32 0, i32* @GetLocalBufferStorage.next_buf_in_block, align 4
  %38 = load i32, i32* %2, align 4
  store i32 %38, i32* @GetLocalBufferStorage.num_bufs_in_block, align 4
  br label %39

39:                                               ; preds = %18, %0
  %40 = load i8*, i8** @GetLocalBufferStorage.cur_block, align 8
  %41 = load i32, i32* @GetLocalBufferStorage.next_buf_in_block, align 4
  %42 = load i32, i32* @BLCKSZ, align 4
  %43 = mul nsw i32 %41, %42
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i8, i8* %40, i64 %44
  store i8* %45, i8** %1, align 8
  %46 = load i32, i32* @GetLocalBufferStorage.next_buf_in_block, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* @GetLocalBufferStorage.next_buf_in_block, align 4
  %48 = load i32, i32* @GetLocalBufferStorage.total_bufs_allocated, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* @GetLocalBufferStorage.total_bufs_allocated, align 4
  %50 = load i8*, i8** %1, align 8
  %51 = ptrtoint i8* %50 to i32
  ret i32 %51
}

declare dso_local i32 @Assert(i32) #1

declare dso_local i32* @AllocSetContextCreate(i32, i8*, i32) #1

declare dso_local i32 @Max(i32, i32) #1

declare dso_local i32 @Min(i32, i32) #1

declare dso_local i64 @MemoryContextAlloc(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
