; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/storage/file/extr_fd.c_PathNameOpenTemporaryFile.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/storage/file/extr_fd.c_PathNameOpenTemporaryFile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CurrentResourceOwner = common dso_local global i32 0, align 4
@O_RDONLY = common dso_local global i32 0, align 4
@PG_BINARY = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i64 0, align 8
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"could not open temporary file \22%s\22: %m\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @PathNameOpenTemporaryFile(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  store i8* %0, i8** %2, align 8
  %4 = load i32, i32* @CurrentResourceOwner, align 4
  %5 = call i32 @ResourceOwnerEnlargeFiles(i32 %4)
  %6 = load i8*, i8** %2, align 8
  %7 = load i32, i32* @O_RDONLY, align 4
  %8 = load i32, i32* @PG_BINARY, align 4
  %9 = or i32 %7, %8
  %10 = call i64 @PathNameOpenFile(i8* %6, i32 %9)
  store i64 %10, i64* %3, align 8
  %11 = load i64, i64* %3, align 8
  %12 = icmp sle i64 %11, 0
  br i1 %12, label %13, label %23

13:                                               ; preds = %1
  %14 = load i64, i64* @errno, align 8
  %15 = load i64, i64* @ENOENT, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %17, label %23

17:                                               ; preds = %13
  %18 = load i32, i32* @ERROR, align 4
  %19 = call i32 (...) @errcode_for_file_access()
  %20 = load i8*, i8** %2, align 8
  %21 = call i32 @errmsg(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i8* %20)
  %22 = call i32 @ereport(i32 %18, i32 %21)
  br label %23

23:                                               ; preds = %17, %13, %1
  %24 = load i64, i64* %3, align 8
  %25 = icmp sgt i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %23
  %27 = load i64, i64* %3, align 8
  %28 = call i32 @RegisterTemporaryFile(i64 %27)
  br label %29

29:                                               ; preds = %26, %23
  %30 = load i64, i64* %3, align 8
  ret i64 %30
}

declare dso_local i32 @ResourceOwnerEnlargeFiles(i32) #1

declare dso_local i64 @PathNameOpenFile(i8*, i32) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode_for_file_access(...) #1

declare dso_local i32 @errmsg(i8*, i8*) #1

declare dso_local i32 @RegisterTemporaryFile(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
