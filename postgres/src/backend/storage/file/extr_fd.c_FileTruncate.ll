; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/storage/file/extr_fd.c_FileTruncate.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/storage/file/extr_fd.c_FileTruncate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i32, i32, i32 }

@LOG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"FileTruncate %d (%s)\00", align 1
@VfdCache = common dso_local global %struct.TYPE_2__* null, align 8
@FD_TEMP_FILE_LIMIT = common dso_local global i32 0, align 4
@temporary_files_size = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @FileTruncate(i64 %0, i64 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i64 %0, i64* %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load i64, i64* %5, align 8
  %10 = call i32 @FileIsValid(i64 %9)
  %11 = call i32 @Assert(i32 %10)
  %12 = load i32, i32* @LOG, align 4
  %13 = load i64, i64* %5, align 8
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** @VfdCache, align 8
  %15 = load i64, i64* %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i64 %15
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @elog(i32 %12, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i64 %13, i32 %18)
  %20 = call i32 @DO_DB(i32 %19)
  %21 = load i64, i64* %5, align 8
  %22 = call i32 @FileAccess(i64 %21)
  store i32 %22, i32* %8, align 4
  %23 = load i32, i32* %8, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %3
  %26 = load i32, i32* %8, align 4
  store i32 %26, i32* %4, align 4
  br label %75

27:                                               ; preds = %3
  %28 = load i32, i32* %7, align 4
  %29 = call i32 @pgstat_report_wait_start(i32 %28)
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** @VfdCache, align 8
  %31 = load i64, i64* %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = load i64, i64* %6, align 8
  %36 = call i32 @ftruncate(i32 %34, i64 %35)
  store i32 %36, i32* %8, align 4
  %37 = call i32 (...) @pgstat_report_wait_end()
  %38 = load i32, i32* %8, align 4
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %73

40:                                               ; preds = %27
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** @VfdCache, align 8
  %42 = load i64, i64* %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* %6, align 8
  %47 = icmp sgt i64 %45, %46
  br i1 %47, label %48, label %73

48:                                               ; preds = %40
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** @VfdCache, align 8
  %50 = load i64, i64* %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i64 %50
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* @FD_TEMP_FILE_LIMIT, align 4
  %55 = and i32 %53, %54
  %56 = call i32 @Assert(i32 %55)
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** @VfdCache, align 8
  %58 = load i64, i64* %5, align 8
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i64 %58
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* %6, align 8
  %63 = sub nsw i64 %61, %62
  %64 = load i32, i32* @temporary_files_size, align 4
  %65 = sext i32 %64 to i64
  %66 = sub nsw i64 %65, %63
  %67 = trunc i64 %66 to i32
  store i32 %67, i32* @temporary_files_size, align 4
  %68 = load i64, i64* %6, align 8
  %69 = load %struct.TYPE_2__*, %struct.TYPE_2__** @VfdCache, align 8
  %70 = load i64, i64* %5, align 8
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i64 %70
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 0
  store i64 %68, i64* %72, align 8
  br label %73

73:                                               ; preds = %48, %40, %27
  %74 = load i32, i32* %8, align 4
  store i32 %74, i32* %4, align 4
  br label %75

75:                                               ; preds = %73, %25
  %76 = load i32, i32* %4, align 4
  ret i32 %76
}

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @FileIsValid(i64) #1

declare dso_local i32 @DO_DB(i32) #1

declare dso_local i32 @elog(i32, i8*, i64, i32) #1

declare dso_local i32 @FileAccess(i64) #1

declare dso_local i32 @pgstat_report_wait_start(i32) #1

declare dso_local i32 @ftruncate(i32, i64) #1

declare dso_local i32 @pgstat_report_wait_end(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
