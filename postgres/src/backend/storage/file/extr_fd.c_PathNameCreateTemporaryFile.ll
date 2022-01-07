; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/storage/file/extr_fd.c_PathNameCreateTemporaryFile.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/storage/file/extr_fd.c_PathNameCreateTemporaryFile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@CurrentResourceOwner = common dso_local global i32 0, align 4
@O_RDWR = common dso_local global i32 0, align 4
@O_CREAT = common dso_local global i32 0, align 4
@O_TRUNC = common dso_local global i32 0, align 4
@PG_BINARY = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"could not create temporary file \22%s\22: %m\00", align 1
@FD_TEMP_FILE_LIMIT = common dso_local global i32 0, align 4
@VfdCache = common dso_local global %struct.TYPE_2__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @PathNameCreateTemporaryFile(i8* %0, i32 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* @CurrentResourceOwner, align 4
  %8 = call i32 @ResourceOwnerEnlargeFiles(i32 %7)
  %9 = load i8*, i8** %4, align 8
  %10 = load i32, i32* @O_RDWR, align 4
  %11 = load i32, i32* @O_CREAT, align 4
  %12 = or i32 %10, %11
  %13 = load i32, i32* @O_TRUNC, align 4
  %14 = or i32 %12, %13
  %15 = load i32, i32* @PG_BINARY, align 4
  %16 = or i32 %14, %15
  %17 = call i64 @PathNameOpenFile(i8* %9, i32 %16)
  store i64 %17, i64* %6, align 8
  %18 = load i64, i64* %6, align 8
  %19 = icmp ule i64 %18, 0
  br i1 %19, label %20, label %32

20:                                               ; preds = %2
  %21 = load i32, i32* %5, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %29

23:                                               ; preds = %20
  %24 = load i32, i32* @ERROR, align 4
  %25 = call i32 (...) @errcode_for_file_access()
  %26 = load i8*, i8** %4, align 8
  %27 = call i32 @errmsg(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i8* %26)
  %28 = call i32 @ereport(i32 %24, i32 %27)
  br label %31

29:                                               ; preds = %20
  %30 = load i64, i64* %6, align 8
  store i64 %30, i64* %3, align 8
  br label %43

31:                                               ; preds = %23
  br label %32

32:                                               ; preds = %31, %2
  %33 = load i32, i32* @FD_TEMP_FILE_LIMIT, align 4
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** @VfdCache, align 8
  %35 = load i64, i64* %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = or i32 %38, %33
  store i32 %39, i32* %37, align 4
  %40 = load i64, i64* %6, align 8
  %41 = call i32 @RegisterTemporaryFile(i64 %40)
  %42 = load i64, i64* %6, align 8
  store i64 %42, i64* %3, align 8
  br label %43

43:                                               ; preds = %32, %29
  %44 = load i64, i64* %3, align 8
  ret i64 %44
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
