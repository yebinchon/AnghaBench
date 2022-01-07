; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/storage/page/extr_bufpage.c_PageSetChecksumCopy.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/storage/page/extr_bufpage.c_PageSetChecksumCopy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@PageSetChecksumCopy.pageCopy = internal global i8* null, align 8
@TopMemoryContext = common dso_local global i32 0, align 4
@BLCKSZ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @PageSetChecksumCopy(i64 %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store i64 %0, i64* %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i64, i64* %4, align 8
  %7 = call i64 @PageIsNew(i64 %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %12, label %9

9:                                                ; preds = %2
  %10 = call i32 (...) @DataChecksumsEnabled()
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %9, %2
  %13 = load i64, i64* %4, align 8
  %14 = inttoptr i64 %13 to i8*
  store i8* %14, i8** %3, align 8
  br label %35

15:                                               ; preds = %9
  %16 = load i8*, i8** @PageSetChecksumCopy.pageCopy, align 8
  %17 = icmp eq i8* %16, null
  br i1 %17, label %18, label %22

18:                                               ; preds = %15
  %19 = load i32, i32* @TopMemoryContext, align 4
  %20 = load i32, i32* @BLCKSZ, align 4
  %21 = call i8* @MemoryContextAlloc(i32 %19, i32 %20)
  store i8* %21, i8** @PageSetChecksumCopy.pageCopy, align 8
  br label %22

22:                                               ; preds = %18, %15
  %23 = load i8*, i8** @PageSetChecksumCopy.pageCopy, align 8
  %24 = load i64, i64* %4, align 8
  %25 = inttoptr i64 %24 to i8*
  %26 = load i32, i32* @BLCKSZ, align 4
  %27 = call i32 @memcpy(i8* %23, i8* %25, i32 %26)
  %28 = load i8*, i8** @PageSetChecksumCopy.pageCopy, align 8
  %29 = load i32, i32* %5, align 4
  %30 = call i32 @pg_checksum_page(i8* %28, i32 %29)
  %31 = load i8*, i8** @PageSetChecksumCopy.pageCopy, align 8
  %32 = bitcast i8* %31 to %struct.TYPE_2__*
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  store i32 %30, i32* %33, align 4
  %34 = load i8*, i8** @PageSetChecksumCopy.pageCopy, align 8
  store i8* %34, i8** %3, align 8
  br label %35

35:                                               ; preds = %22, %12
  %36 = load i8*, i8** %3, align 8
  ret i8* %36
}

declare dso_local i64 @PageIsNew(i64) #1

declare dso_local i32 @DataChecksumsEnabled(...) #1

declare dso_local i8* @MemoryContextAlloc(i32, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @pg_checksum_page(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
