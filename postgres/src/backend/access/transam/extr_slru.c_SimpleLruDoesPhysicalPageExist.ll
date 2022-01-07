; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/transam/extr_slru.c_SimpleLruDoesPhysicalPageExist.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/transam/extr_slru.c_SimpleLruDoesPhysicalPageExist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SLRU_PAGES_PER_SEGMENT = common dso_local global i32 0, align 4
@BLCKSZ = common dso_local global i32 0, align 4
@MAXPGPATH = common dso_local global i32 0, align 4
@O_RDONLY = common dso_local global i32 0, align 4
@PG_BINARY = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i64 0, align 8
@SLRU_OPEN_FAILED = common dso_local global i32 0, align 4
@slru_errcause = common dso_local global i32 0, align 4
@slru_errno = common dso_local global i64 0, align 8
@SEEK_END = common dso_local global i32 0, align 4
@SLRU_SEEK_FAILED = common dso_local global i32 0, align 4
@SLRU_CLOSE_FAILED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @SimpleLruDoesPhysicalPageExist(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %15 = load i32, i32* %5, align 4
  %16 = load i32, i32* @SLRU_PAGES_PER_SEGMENT, align 4
  %17 = sdiv i32 %15, %16
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* %5, align 4
  %19 = load i32, i32* @SLRU_PAGES_PER_SEGMENT, align 4
  %20 = srem i32 %18, %19
  store i32 %20, i32* %7, align 4
  %21 = load i32, i32* %7, align 4
  %22 = load i32, i32* @BLCKSZ, align 4
  %23 = mul nsw i32 %21, %22
  store i32 %23, i32* %8, align 4
  %24 = load i32, i32* @MAXPGPATH, align 4
  %25 = zext i32 %24 to i64
  %26 = call i8* @llvm.stacksave()
  store i8* %26, i8** %9, align 8
  %27 = alloca i8, i64 %25, align 16
  store i64 %25, i64* %10, align 8
  %28 = load i32, i32* %4, align 4
  %29 = load i32, i32* %6, align 4
  %30 = call i32 @SlruFileName(i32 %28, i8* %27, i32 %29)
  %31 = load i32, i32* @O_RDONLY, align 4
  %32 = load i32, i32* @PG_BINARY, align 4
  %33 = or i32 %31, %32
  %34 = call i32 @OpenTransientFile(i8* %27, i32 %33)
  store i32 %34, i32* %11, align 4
  %35 = load i32, i32* %11, align 4
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %48

37:                                               ; preds = %2
  %38 = load i64, i64* @errno, align 8
  %39 = load i64, i64* @ENOENT, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %37
  store i32 0, i32* %3, align 4
  store i32 1, i32* %14, align 4
  br label %75

42:                                               ; preds = %37
  %43 = load i32, i32* @SLRU_OPEN_FAILED, align 4
  store i32 %43, i32* @slru_errcause, align 4
  %44 = load i64, i64* @errno, align 8
  store i64 %44, i64* @slru_errno, align 8
  %45 = load i32, i32* %4, align 4
  %46 = load i32, i32* %5, align 4
  %47 = call i32 @SlruReportIOError(i32 %45, i32 %46, i32 0)
  br label %48

48:                                               ; preds = %42, %2
  %49 = load i32, i32* %11, align 4
  %50 = load i32, i32* @SEEK_END, align 4
  %51 = call i64 @lseek(i32 %49, i32 0, i32 %50)
  store i64 %51, i64* %13, align 8
  %52 = icmp slt i64 %51, 0
  br i1 %52, label %53, label %59

53:                                               ; preds = %48
  %54 = load i32, i32* @SLRU_SEEK_FAILED, align 4
  store i32 %54, i32* @slru_errcause, align 4
  %55 = load i64, i64* @errno, align 8
  store i64 %55, i64* @slru_errno, align 8
  %56 = load i32, i32* %4, align 4
  %57 = load i32, i32* %5, align 4
  %58 = call i32 @SlruReportIOError(i32 %56, i32 %57, i32 0)
  br label %59

59:                                               ; preds = %53, %48
  %60 = load i64, i64* %13, align 8
  %61 = load i32, i32* %8, align 4
  %62 = load i32, i32* @BLCKSZ, align 4
  %63 = add nsw i32 %61, %62
  %64 = sext i32 %63 to i64
  %65 = icmp sge i64 %60, %64
  %66 = zext i1 %65 to i32
  store i32 %66, i32* %12, align 4
  %67 = load i32, i32* %11, align 4
  %68 = call i64 @CloseTransientFile(i32 %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %73

70:                                               ; preds = %59
  %71 = load i32, i32* @SLRU_CLOSE_FAILED, align 4
  store i32 %71, i32* @slru_errcause, align 4
  %72 = load i64, i64* @errno, align 8
  store i64 %72, i64* @slru_errno, align 8
  store i32 0, i32* %3, align 4
  store i32 1, i32* %14, align 4
  br label %75

73:                                               ; preds = %59
  %74 = load i32, i32* %12, align 4
  store i32 %74, i32* %3, align 4
  store i32 1, i32* %14, align 4
  br label %75

75:                                               ; preds = %73, %70, %41
  %76 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %76)
  %77 = load i32, i32* %3, align 4
  ret i32 %77
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @SlruFileName(i32, i8*, i32) #2

declare dso_local i32 @OpenTransientFile(i8*, i32) #2

declare dso_local i32 @SlruReportIOError(i32, i32, i32) #2

declare dso_local i64 @lseek(i32, i32, i32) #2

declare dso_local i64 @CloseTransientFile(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
