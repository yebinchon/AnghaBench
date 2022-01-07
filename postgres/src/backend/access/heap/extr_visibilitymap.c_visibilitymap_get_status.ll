; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/heap/extr_visibilitymap.c_visibilitymap_get_status.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/heap/extr_visibilitymap.c_visibilitymap_get_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@InvalidBuffer = common dso_local global i32 0, align 4
@VISIBILITYMAP_VALID_BITS = common dso_local global i8 0, align 1
@DEBUG1 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @visibilitymap_get_status(i32 %0, i64 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i64 %1, i64* %6, align 8
  store i32* %2, i32** %7, align 8
  %13 = load i64, i64* %6, align 8
  %14 = call i64 @HEAPBLK_TO_MAPBLOCK(i64 %13)
  store i64 %14, i64* %8, align 8
  %15 = load i64, i64* %6, align 8
  %16 = call i64 @HEAPBLK_TO_MAPBYTE(i64 %15)
  store i64 %16, i64* %9, align 8
  %17 = load i64, i64* %6, align 8
  %18 = call i32 @HEAPBLK_TO_OFFSET(i64 %17)
  store i32 %18, i32* %10, align 4
  %19 = load i32*, i32** %7, align 8
  %20 = load i32, i32* %19, align 4
  %21 = call i64 @BufferIsValid(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %36

23:                                               ; preds = %3
  %24 = load i32*, i32** %7, align 8
  %25 = load i32, i32* %24, align 4
  %26 = call i64 @BufferGetBlockNumber(i32 %25)
  %27 = load i64, i64* %8, align 8
  %28 = icmp ne i64 %26, %27
  br i1 %28, label %29, label %35

29:                                               ; preds = %23
  %30 = load i32*, i32** %7, align 8
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @ReleaseBuffer(i32 %31)
  %33 = load i32, i32* @InvalidBuffer, align 4
  %34 = load i32*, i32** %7, align 8
  store i32 %33, i32* %34, align 4
  br label %35

35:                                               ; preds = %29, %23
  br label %36

36:                                               ; preds = %35, %3
  %37 = load i32*, i32** %7, align 8
  %38 = load i32, i32* %37, align 4
  %39 = call i64 @BufferIsValid(i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %52, label %41

41:                                               ; preds = %36
  %42 = load i32, i32* %5, align 4
  %43 = load i64, i64* %8, align 8
  %44 = call i32 @vm_readbuf(i32 %42, i64 %43, i32 0)
  %45 = load i32*, i32** %7, align 8
  store i32 %44, i32* %45, align 4
  %46 = load i32*, i32** %7, align 8
  %47 = load i32, i32* %46, align 4
  %48 = call i64 @BufferIsValid(i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %51, label %50

50:                                               ; preds = %41
  store i32 0, i32* %4, align 4
  br label %68

51:                                               ; preds = %41
  br label %52

52:                                               ; preds = %51, %36
  %53 = load i32*, i32** %7, align 8
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @BufferGetPage(i32 %54)
  %56 = call i8* @PageGetContents(i32 %55)
  store i8* %56, i8** %11, align 8
  %57 = load i8*, i8** %11, align 8
  %58 = load i64, i64* %9, align 8
  %59 = getelementptr inbounds i8, i8* %57, i64 %58
  %60 = load i8, i8* %59, align 1
  %61 = sext i8 %60 to i32
  %62 = load i32, i32* %10, align 4
  %63 = ashr i32 %61, %62
  %64 = load i8, i8* @VISIBILITYMAP_VALID_BITS, align 1
  %65 = sext i8 %64 to i32
  %66 = and i32 %63, %65
  store i32 %66, i32* %12, align 4
  %67 = load i32, i32* %12, align 4
  store i32 %67, i32* %4, align 4
  br label %68

68:                                               ; preds = %52, %50
  %69 = load i32, i32* %4, align 4
  ret i32 %69
}

declare dso_local i64 @HEAPBLK_TO_MAPBLOCK(i64) #1

declare dso_local i64 @HEAPBLK_TO_MAPBYTE(i64) #1

declare dso_local i32 @HEAPBLK_TO_OFFSET(i64) #1

declare dso_local i64 @BufferIsValid(i32) #1

declare dso_local i64 @BufferGetBlockNumber(i32) #1

declare dso_local i32 @ReleaseBuffer(i32) #1

declare dso_local i32 @vm_readbuf(i32, i64, i32) #1

declare dso_local i8* @PageGetContents(i32) #1

declare dso_local i32 @BufferGetPage(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
