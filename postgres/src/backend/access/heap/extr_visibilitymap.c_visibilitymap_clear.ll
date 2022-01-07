; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/heap/extr_visibilitymap.c_visibilitymap_clear.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/heap/extr_visibilitymap.c_visibilitymap_clear.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@VISIBILITYMAP_VALID_BITS = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"wrong buffer passed to visibilitymap_clear\00", align 1
@BUFFER_LOCK_EXCLUSIVE = common dso_local global i32 0, align 4
@BUFFER_LOCK_UNLOCK = common dso_local global i32 0, align 4
@DEBUG1 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @visibilitymap_clear(i32 %0, i64 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %15 = load i64, i64* %6, align 8
  %16 = call i64 @HEAPBLK_TO_MAPBLOCK(i64 %15)
  store i64 %16, i64* %9, align 8
  %17 = load i64, i64* %6, align 8
  %18 = call i32 @HEAPBLK_TO_MAPBYTE(i64 %17)
  store i32 %18, i32* %10, align 4
  %19 = load i64, i64* %6, align 8
  %20 = call i32 @HEAPBLK_TO_OFFSET(i64 %19)
  store i32 %20, i32* %11, align 4
  %21 = load i32, i32* %8, align 4
  %22 = load i32, i32* %11, align 4
  %23 = shl i32 %21, %22
  store i32 %23, i32* %12, align 4
  store i32 0, i32* %14, align 4
  %24 = load i32, i32* %8, align 4
  %25 = load i32, i32* @VISIBILITYMAP_VALID_BITS, align 4
  %26 = and i32 %24, %25
  %27 = call i32 @Assert(i32 %26)
  %28 = load i32, i32* %7, align 4
  %29 = call i32 @BufferIsValid(i32 %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %4
  %32 = load i32, i32* %7, align 4
  %33 = call i64 @BufferGetBlockNumber(i32 %32)
  %34 = load i64, i64* %9, align 8
  %35 = icmp ne i64 %33, %34
  br i1 %35, label %36, label %39

36:                                               ; preds = %31, %4
  %37 = load i32, i32* @ERROR, align 4
  %38 = call i32 (i32, i8*, ...) @elog(i32 %37, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  br label %39

39:                                               ; preds = %36, %31
  %40 = load i32, i32* %7, align 4
  %41 = load i32, i32* @BUFFER_LOCK_EXCLUSIVE, align 4
  %42 = call i32 @LockBuffer(i32 %40, i32 %41)
  %43 = load i32, i32* %7, align 4
  %44 = call i32 @BufferGetPage(i32 %43)
  %45 = call i8* @PageGetContents(i32 %44)
  store i8* %45, i8** %13, align 8
  %46 = load i8*, i8** %13, align 8
  %47 = load i32, i32* %10, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i8, i8* %46, i64 %48
  %50 = load i8, i8* %49, align 1
  %51 = sext i8 %50 to i32
  %52 = load i32, i32* %12, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %68

55:                                               ; preds = %39
  %56 = load i32, i32* %12, align 4
  %57 = xor i32 %56, -1
  %58 = load i8*, i8** %13, align 8
  %59 = load i32, i32* %10, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i8, i8* %58, i64 %60
  %62 = load i8, i8* %61, align 1
  %63 = sext i8 %62 to i32
  %64 = and i32 %63, %57
  %65 = trunc i32 %64 to i8
  store i8 %65, i8* %61, align 1
  %66 = load i32, i32* %7, align 4
  %67 = call i32 @MarkBufferDirty(i32 %66)
  store i32 1, i32* %14, align 4
  br label %68

68:                                               ; preds = %55, %39
  %69 = load i32, i32* %7, align 4
  %70 = load i32, i32* @BUFFER_LOCK_UNLOCK, align 4
  %71 = call i32 @LockBuffer(i32 %69, i32 %70)
  %72 = load i32, i32* %14, align 4
  ret i32 %72
}

declare dso_local i64 @HEAPBLK_TO_MAPBLOCK(i64) #1

declare dso_local i32 @HEAPBLK_TO_MAPBYTE(i64) #1

declare dso_local i32 @HEAPBLK_TO_OFFSET(i64) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @BufferIsValid(i32) #1

declare dso_local i64 @BufferGetBlockNumber(i32) #1

declare dso_local i32 @elog(i32, i8*, ...) #1

declare dso_local i32 @LockBuffer(i32, i32) #1

declare dso_local i8* @PageGetContents(i32) #1

declare dso_local i32 @BufferGetPage(i32) #1

declare dso_local i32 @MarkBufferDirty(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
