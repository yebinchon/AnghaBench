; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/hash/extr_hashpage.c__hash_getnewbuf.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/hash/extr_hashpage.c__hash_getnewbuf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@P_NEW = common dso_local global i64 0, align 8
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"hash AM does not use P_NEW\00", align 1
@.str.1 = private unnamed_addr constant [48 x i8] c"access to noncontiguous page in hash index \22%s\22\00", align 1
@RBM_NORMAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [48 x i8] c"unexpected hash relation size: %u, should be %u\00", align 1
@HASH_WRITE = common dso_local global i32 0, align 4
@RBM_ZERO_AND_LOCK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_hash_getnewbuf(i32 %0, i64 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i64 %1, i64* %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load i32, i32* %4, align 4
  %10 = load i32, i32* %6, align 4
  %11 = call i64 @RelationGetNumberOfBlocksInFork(i32 %9, i32 %10)
  store i64 %11, i64* %7, align 8
  %12 = load i64, i64* %5, align 8
  %13 = load i64, i64* @P_NEW, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %18

15:                                               ; preds = %3
  %16 = load i32, i32* @ERROR, align 4
  %17 = call i32 (i32, i8*, ...) @elog(i32 %16, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  br label %18

18:                                               ; preds = %15, %3
  %19 = load i64, i64* %5, align 8
  %20 = load i64, i64* %7, align 8
  %21 = icmp sgt i64 %19, %20
  br i1 %21, label %22, label %27

22:                                               ; preds = %18
  %23 = load i32, i32* @ERROR, align 4
  %24 = load i32, i32* %4, align 4
  %25 = call i32 @RelationGetRelationName(i32 %24)
  %26 = call i32 (i32, i8*, ...) @elog(i32 %23, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0), i32 %25)
  br label %27

27:                                               ; preds = %22, %18
  %28 = load i64, i64* %5, align 8
  %29 = load i64, i64* %7, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %51

31:                                               ; preds = %27
  %32 = load i32, i32* %4, align 4
  %33 = load i32, i32* %6, align 4
  %34 = load i64, i64* @P_NEW, align 8
  %35 = load i32, i32* @RBM_NORMAL, align 4
  %36 = call i32 @ReadBufferExtended(i32 %32, i32 %33, i64 %34, i32 %35, i32* null)
  store i32 %36, i32* %8, align 4
  %37 = load i32, i32* %8, align 4
  %38 = call i64 @BufferGetBlockNumber(i32 %37)
  %39 = load i64, i64* %5, align 8
  %40 = icmp ne i64 %38, %39
  br i1 %40, label %41, label %47

41:                                               ; preds = %31
  %42 = load i32, i32* @ERROR, align 4
  %43 = load i32, i32* %8, align 4
  %44 = call i64 @BufferGetBlockNumber(i32 %43)
  %45 = load i64, i64* %5, align 8
  %46 = call i32 (i32, i8*, ...) @elog(i32 %42, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.2, i64 0, i64 0), i64 %44, i64 %45)
  br label %47

47:                                               ; preds = %41, %31
  %48 = load i32, i32* %8, align 4
  %49 = load i32, i32* @HASH_WRITE, align 4
  %50 = call i32 @LockBuffer(i32 %48, i32 %49)
  br label %57

51:                                               ; preds = %27
  %52 = load i32, i32* %4, align 4
  %53 = load i32, i32* %6, align 4
  %54 = load i64, i64* %5, align 8
  %55 = load i32, i32* @RBM_ZERO_AND_LOCK, align 4
  %56 = call i32 @ReadBufferExtended(i32 %52, i32 %53, i64 %54, i32 %55, i32* null)
  store i32 %56, i32* %8, align 4
  br label %57

57:                                               ; preds = %51, %47
  %58 = load i32, i32* %8, align 4
  %59 = call i32 @BufferGetPage(i32 %58)
  %60 = load i32, i32* %8, align 4
  %61 = call i32 @BufferGetPageSize(i32 %60)
  %62 = call i32 @_hash_pageinit(i32 %59, i32 %61)
  %63 = load i32, i32* %8, align 4
  ret i32 %63
}

declare dso_local i64 @RelationGetNumberOfBlocksInFork(i32, i32) #1

declare dso_local i32 @elog(i32, i8*, ...) #1

declare dso_local i32 @RelationGetRelationName(i32) #1

declare dso_local i32 @ReadBufferExtended(i32, i32, i64, i32, i32*) #1

declare dso_local i64 @BufferGetBlockNumber(i32) #1

declare dso_local i32 @LockBuffer(i32, i32) #1

declare dso_local i32 @_hash_pageinit(i32, i32) #1

declare dso_local i32 @BufferGetPage(i32) #1

declare dso_local i32 @BufferGetPageSize(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
