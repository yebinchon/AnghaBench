; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/transam/extr_slru.c_SlruPhysicalReadPage.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/transam/extr_slru.c_SlruPhysicalReadPage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32* }

@SLRU_PAGES_PER_SEGMENT = common dso_local global i32 0, align 4
@BLCKSZ = common dso_local global i32 0, align 4
@MAXPGPATH = common dso_local global i32 0, align 4
@O_RDONLY = common dso_local global i32 0, align 4
@PG_BINARY = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i64 0, align 8
@InRecovery = common dso_local global i32 0, align 4
@SLRU_OPEN_FAILED = common dso_local global i32 0, align 4
@slru_errcause = common dso_local global i32 0, align 4
@slru_errno = common dso_local global i64 0, align 8
@LOG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"file \22%s\22 doesn't exist, reading as zeroes\00", align 1
@SEEK_SET = common dso_local global i32 0, align 4
@SLRU_SEEK_FAILED = common dso_local global i32 0, align 4
@WAIT_EVENT_SLRU_READ = common dso_local global i32 0, align 4
@SLRU_READ_FAILED = common dso_local global i32 0, align 4
@SLRU_CLOSE_FAILED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, i32, i32)* @SlruPhysicalReadPage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @SlruPhysicalReadPage(%struct.TYPE_6__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_5__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  store %struct.TYPE_5__* %18, %struct.TYPE_5__** %8, align 8
  %19 = load i32, i32* %6, align 4
  %20 = load i32, i32* @SLRU_PAGES_PER_SEGMENT, align 4
  %21 = sdiv i32 %19, %20
  store i32 %21, i32* %9, align 4
  %22 = load i32, i32* %6, align 4
  %23 = load i32, i32* @SLRU_PAGES_PER_SEGMENT, align 4
  %24 = srem i32 %22, %23
  store i32 %24, i32* %10, align 4
  %25 = load i32, i32* %10, align 4
  %26 = load i32, i32* @BLCKSZ, align 4
  %27 = mul nsw i32 %25, %26
  store i32 %27, i32* %11, align 4
  %28 = load i32, i32* @MAXPGPATH, align 4
  %29 = zext i32 %28 to i64
  %30 = call i8* @llvm.stacksave()
  store i8* %30, i8** %12, align 8
  %31 = alloca i8, i64 %29, align 16
  store i64 %29, i64* %13, align 8
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %33 = load i32, i32* %9, align 4
  %34 = call i32 @SlruFileName(%struct.TYPE_6__* %32, i8* %31, i32 %33)
  %35 = load i32, i32* @O_RDONLY, align 4
  %36 = load i32, i32* @PG_BINARY, align 4
  %37 = or i32 %35, %36
  %38 = call i32 @OpenTransientFile(i8* %31, i32 %37)
  store i32 %38, i32* %14, align 4
  %39 = load i32, i32* %14, align 4
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %64

41:                                               ; preds = %3
  %42 = load i64, i64* @errno, align 8
  %43 = load i64, i64* @ENOENT, align 8
  %44 = icmp ne i64 %42, %43
  br i1 %44, label %48, label %45

45:                                               ; preds = %41
  %46 = load i32, i32* @InRecovery, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %51, label %48

48:                                               ; preds = %45, %41
  %49 = load i32, i32* @SLRU_OPEN_FAILED, align 4
  store i32 %49, i32* @slru_errcause, align 4
  %50 = load i64, i64* @errno, align 8
  store i64 %50, i64* @slru_errno, align 8
  store i32 0, i32* %4, align 4
  store i32 1, i32* %15, align 4
  br label %105

51:                                               ; preds = %45
  %52 = load i32, i32* @LOG, align 4
  %53 = call i32 @errmsg(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i8* %31)
  %54 = call i32 @ereport(i32 %52, i32 %53)
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 0
  %57 = load i32*, i32** %56, align 8
  %58 = load i32, i32* %7, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32, i32* %57, i64 %59
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @BLCKSZ, align 4
  %63 = call i32 @MemSet(i32 %61, i32 0, i32 %62)
  store i32 1, i32* %4, align 4
  store i32 1, i32* %15, align 4
  br label %105

64:                                               ; preds = %3
  %65 = load i32, i32* %14, align 4
  %66 = load i32, i32* %11, align 4
  %67 = load i32, i32* @SEEK_SET, align 4
  %68 = call i64 @lseek(i32 %65, i32 %66, i32 %67)
  %69 = icmp slt i64 %68, 0
  br i1 %69, label %70, label %75

70:                                               ; preds = %64
  %71 = load i32, i32* @SLRU_SEEK_FAILED, align 4
  store i32 %71, i32* @slru_errcause, align 4
  %72 = load i64, i64* @errno, align 8
  store i64 %72, i64* @slru_errno, align 8
  %73 = load i32, i32* %14, align 4
  %74 = call i64 @CloseTransientFile(i32 %73)
  store i32 0, i32* %4, align 4
  store i32 1, i32* %15, align 4
  br label %105

75:                                               ; preds = %64
  store i64 0, i64* @errno, align 8
  %76 = load i32, i32* @WAIT_EVENT_SLRU_READ, align 4
  %77 = call i32 @pgstat_report_wait_start(i32 %76)
  %78 = load i32, i32* %14, align 4
  %79 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i32 0, i32 0
  %81 = load i32*, i32** %80, align 8
  %82 = load i32, i32* %7, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i32, i32* %81, i64 %83
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* @BLCKSZ, align 4
  %87 = call i32 @read(i32 %78, i32 %85, i32 %86)
  %88 = load i32, i32* @BLCKSZ, align 4
  %89 = icmp ne i32 %87, %88
  br i1 %89, label %90, label %96

90:                                               ; preds = %75
  %91 = call i32 (...) @pgstat_report_wait_end()
  %92 = load i32, i32* @SLRU_READ_FAILED, align 4
  store i32 %92, i32* @slru_errcause, align 4
  %93 = load i64, i64* @errno, align 8
  store i64 %93, i64* @slru_errno, align 8
  %94 = load i32, i32* %14, align 4
  %95 = call i64 @CloseTransientFile(i32 %94)
  store i32 0, i32* %4, align 4
  store i32 1, i32* %15, align 4
  br label %105

96:                                               ; preds = %75
  %97 = call i32 (...) @pgstat_report_wait_end()
  %98 = load i32, i32* %14, align 4
  %99 = call i64 @CloseTransientFile(i32 %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %104

101:                                              ; preds = %96
  %102 = load i32, i32* @SLRU_CLOSE_FAILED, align 4
  store i32 %102, i32* @slru_errcause, align 4
  %103 = load i64, i64* @errno, align 8
  store i64 %103, i64* @slru_errno, align 8
  store i32 0, i32* %4, align 4
  store i32 1, i32* %15, align 4
  br label %105

104:                                              ; preds = %96
  store i32 1, i32* %4, align 4
  store i32 1, i32* %15, align 4
  br label %105

105:                                              ; preds = %104, %101, %90, %70, %51, %48
  %106 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %106)
  %107 = load i32, i32* %4, align 4
  ret i32 %107
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @SlruFileName(%struct.TYPE_6__*, i8*, i32) #2

declare dso_local i32 @OpenTransientFile(i8*, i32) #2

declare dso_local i32 @ereport(i32, i32) #2

declare dso_local i32 @errmsg(i8*, i8*) #2

declare dso_local i32 @MemSet(i32, i32, i32) #2

declare dso_local i64 @lseek(i32, i32, i32) #2

declare dso_local i64 @CloseTransientFile(i32) #2

declare dso_local i32 @pgstat_report_wait_start(i32) #2

declare dso_local i32 @read(i32, i32, i32) #2

declare dso_local i32 @pgstat_report_wait_end(...) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
