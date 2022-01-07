; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/storage/file/extr_fd.c_FileSync.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/storage/file/extr_fd.c_FileSync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }

@LOG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"FileSync: %d (%s)\00", align 1
@VfdCache = common dso_local global %struct.TYPE_2__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @FileSync(i64 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i64 %0, i64* %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i64, i64* %4, align 8
  %8 = call i32 @FileIsValid(i64 %7)
  %9 = call i32 @Assert(i32 %8)
  %10 = load i32, i32* @LOG, align 4
  %11 = load i64, i64* %4, align 8
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** @VfdCache, align 8
  %13 = load i64, i64* %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i64 %13
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @elog(i32 %10, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i64 %11, i32 %16)
  %18 = call i32 @DO_DB(i32 %17)
  %19 = load i64, i64* %4, align 8
  %20 = call i32 @FileAccess(i64 %19)
  store i32 %20, i32* %6, align 4
  %21 = load i32, i32* %6, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %2
  %24 = load i32, i32* %6, align 4
  store i32 %24, i32* %3, align 4
  br label %36

25:                                               ; preds = %2
  %26 = load i32, i32* %5, align 4
  %27 = call i32 @pgstat_report_wait_start(i32 %26)
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** @VfdCache, align 8
  %29 = load i64, i64* %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @pg_fsync(i32 %32)
  store i32 %33, i32* %6, align 4
  %34 = call i32 (...) @pgstat_report_wait_end()
  %35 = load i32, i32* %6, align 4
  store i32 %35, i32* %3, align 4
  br label %36

36:                                               ; preds = %25, %23
  %37 = load i32, i32* %3, align 4
  ret i32 %37
}

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @FileIsValid(i64) #1

declare dso_local i32 @DO_DB(i32) #1

declare dso_local i32 @elog(i32, i8*, i64, i32) #1

declare dso_local i32 @FileAccess(i64) #1

declare dso_local i32 @pgstat_report_wait_start(i32) #1

declare dso_local i32 @pg_fsync(i32) #1

declare dso_local i32 @pgstat_report_wait_end(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
