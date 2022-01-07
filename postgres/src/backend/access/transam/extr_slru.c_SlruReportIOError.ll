; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/transam/extr_slru.c_SlruReportIOError.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/transam/extr_slru.c_SlruReportIOError.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SLRU_PAGES_PER_SEGMENT = common dso_local global i32 0, align 4
@BLCKSZ = common dso_local global i32 0, align 4
@MAXPGPATH = common dso_local global i32 0, align 4
@slru_errno = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@slru_errcause = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"could not access status of transaction %u\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"Could not open file \22%s\22: %m.\00", align 1
@.str.2 = private unnamed_addr constant [46 x i8] c"Could not seek in file \22%s\22 to offset %u: %m.\00", align 1
@.str.3 = private unnamed_addr constant [48 x i8] c"Could not read from file \22%s\22 at offset %u: %m.\00", align 1
@.str.4 = private unnamed_addr constant [64 x i8] c"Could not read from file \22%s\22 at offset %u: read too few bytes.\00", align 1
@.str.5 = private unnamed_addr constant [47 x i8] c"Could not write to file \22%s\22 at offset %u: %m.\00", align 1
@.str.6 = private unnamed_addr constant [64 x i8] c"Could not write to file \22%s\22 at offset %u: wrote too few bytes.\00", align 1
@.str.7 = private unnamed_addr constant [31 x i8] c"Could not fsync file \22%s\22: %m.\00", align 1
@.str.8 = private unnamed_addr constant [31 x i8] c"Could not close file \22%s\22: %m.\00", align 1
@.str.9 = private unnamed_addr constant [39 x i8] c"unrecognized SimpleLru error cause: %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32)* @SlruReportIOError to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @SlruReportIOError(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* @SLRU_PAGES_PER_SEGMENT, align 4
  %14 = sdiv i32 %12, %13
  store i32 %14, i32* %7, align 4
  %15 = load i32, i32* %5, align 4
  %16 = load i32, i32* @SLRU_PAGES_PER_SEGMENT, align 4
  %17 = srem i32 %15, %16
  store i32 %17, i32* %8, align 4
  %18 = load i32, i32* %8, align 4
  %19 = load i32, i32* @BLCKSZ, align 4
  %20 = mul nsw i32 %18, %19
  store i32 %20, i32* %9, align 4
  %21 = load i32, i32* @MAXPGPATH, align 4
  %22 = zext i32 %21 to i64
  %23 = call i8* @llvm.stacksave()
  store i8* %23, i8** %10, align 8
  %24 = alloca i8, i64 %22, align 16
  store i64 %22, i64* %11, align 8
  %25 = load i32, i32* %4, align 4
  %26 = load i32, i32* %7, align 4
  %27 = call i32 @SlruFileName(i32 %25, i8* %24, i32 %26)
  %28 = load i32, i32* @slru_errno, align 4
  store i32 %28, i32* @errno, align 4
  %29 = load i32, i32* @slru_errcause, align 4
  switch i32 %29, label %98 [
    i32 131, label %30
    i32 129, label %37
    i32 130, label %45
    i32 128, label %64
    i32 132, label %83
    i32 133, label %91
  ]

30:                                               ; preds = %3
  %31 = load i32, i32* @ERROR, align 4
  %32 = call i32 (...) @errcode_for_file_access()
  %33 = load i32, i32* %6, align 4
  %34 = call i32 @errmsg(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %33)
  %35 = call i32 (i8*, i8*, ...) @errdetail(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i8* %24)
  %36 = call i32 @ereport(i32 %31, i32 %35)
  br label %102

37:                                               ; preds = %3
  %38 = load i32, i32* @ERROR, align 4
  %39 = call i32 (...) @errcode_for_file_access()
  %40 = load i32, i32* %6, align 4
  %41 = call i32 @errmsg(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %40)
  %42 = load i32, i32* %9, align 4
  %43 = call i32 (i8*, i8*, ...) @errdetail(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0), i8* %24, i32 %42)
  %44 = call i32 @ereport(i32 %38, i32 %43)
  br label %102

45:                                               ; preds = %3
  %46 = load i32, i32* @errno, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %56

48:                                               ; preds = %45
  %49 = load i32, i32* @ERROR, align 4
  %50 = call i32 (...) @errcode_for_file_access()
  %51 = load i32, i32* %6, align 4
  %52 = call i32 @errmsg(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %51)
  %53 = load i32, i32* %9, align 4
  %54 = call i32 (i8*, i8*, ...) @errdetail(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.3, i64 0, i64 0), i8* %24, i32 %53)
  %55 = call i32 @ereport(i32 %49, i32 %54)
  br label %63

56:                                               ; preds = %45
  %57 = load i32, i32* @ERROR, align 4
  %58 = load i32, i32* %6, align 4
  %59 = call i32 @errmsg(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %58)
  %60 = load i32, i32* %9, align 4
  %61 = call i32 (i8*, i8*, ...) @errdetail(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.4, i64 0, i64 0), i8* %24, i32 %60)
  %62 = call i32 @ereport(i32 %57, i32 %61)
  br label %63

63:                                               ; preds = %56, %48
  br label %102

64:                                               ; preds = %3
  %65 = load i32, i32* @errno, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %75

67:                                               ; preds = %64
  %68 = load i32, i32* @ERROR, align 4
  %69 = call i32 (...) @errcode_for_file_access()
  %70 = load i32, i32* %6, align 4
  %71 = call i32 @errmsg(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %70)
  %72 = load i32, i32* %9, align 4
  %73 = call i32 (i8*, i8*, ...) @errdetail(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.5, i64 0, i64 0), i8* %24, i32 %72)
  %74 = call i32 @ereport(i32 %68, i32 %73)
  br label %82

75:                                               ; preds = %64
  %76 = load i32, i32* @ERROR, align 4
  %77 = load i32, i32* %6, align 4
  %78 = call i32 @errmsg(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %77)
  %79 = load i32, i32* %9, align 4
  %80 = call i32 (i8*, i8*, ...) @errdetail(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.6, i64 0, i64 0), i8* %24, i32 %79)
  %81 = call i32 @ereport(i32 %76, i32 %80)
  br label %82

82:                                               ; preds = %75, %67
  br label %102

83:                                               ; preds = %3
  %84 = load i32, i32* @ERROR, align 4
  %85 = call i32 @data_sync_elevel(i32 %84)
  %86 = call i32 (...) @errcode_for_file_access()
  %87 = load i32, i32* %6, align 4
  %88 = call i32 @errmsg(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %87)
  %89 = call i32 (i8*, i8*, ...) @errdetail(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.7, i64 0, i64 0), i8* %24)
  %90 = call i32 @ereport(i32 %85, i32 %89)
  br label %102

91:                                               ; preds = %3
  %92 = load i32, i32* @ERROR, align 4
  %93 = call i32 (...) @errcode_for_file_access()
  %94 = load i32, i32* %6, align 4
  %95 = call i32 @errmsg(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %94)
  %96 = call i32 (i8*, i8*, ...) @errdetail(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.8, i64 0, i64 0), i8* %24)
  %97 = call i32 @ereport(i32 %92, i32 %96)
  br label %102

98:                                               ; preds = %3
  %99 = load i32, i32* @ERROR, align 4
  %100 = load i32, i32* @slru_errcause, align 4
  %101 = call i32 @elog(i32 %99, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.9, i64 0, i64 0), i32 %100)
  br label %102

102:                                              ; preds = %98, %91, %83, %82, %63, %37, %30
  %103 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %103)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @SlruFileName(i32, i8*, i32) #2

declare dso_local i32 @ereport(i32, i32) #2

declare dso_local i32 @errcode_for_file_access(...) #2

declare dso_local i32 @errmsg(i8*, i32) #2

declare dso_local i32 @errdetail(i8*, i8*, ...) #2

declare dso_local i32 @data_sync_elevel(i32) #2

declare dso_local i32 @elog(i32, i8*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
