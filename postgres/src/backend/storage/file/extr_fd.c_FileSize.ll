; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/storage/file/extr_fd.c_FileSize.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/storage/file/extr_fd.c_FileSize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }

@LOG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"FileSize %d (%s)\00", align 1
@VfdCache = common dso_local global %struct.TYPE_2__* null, align 8
@SEEK_END = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @FileSize(i64 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  %4 = load i64, i64* %3, align 8
  %5 = call i32 @FileIsValid(i64 %4)
  %6 = call i32 @Assert(i32 %5)
  %7 = load i32, i32* @LOG, align 4
  %8 = load i64, i64* %3, align 8
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** @VfdCache, align 8
  %10 = load i64, i64* %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i64 %10
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @elog(i32 %7, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i64 %8, i32 %13)
  %15 = call i32 @DO_DB(i32 %14)
  %16 = load i64, i64* %3, align 8
  %17 = call i64 @FileIsNotOpen(i64 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %25

19:                                               ; preds = %1
  %20 = load i64, i64* %3, align 8
  %21 = call i64 @FileAccess(i64 %20)
  %22 = icmp slt i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %19
  store i32 -1, i32* %2, align 4
  br label %33

24:                                               ; preds = %19
  br label %25

25:                                               ; preds = %24, %1
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** @VfdCache, align 8
  %27 = load i64, i64* %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i64 %27
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @SEEK_END, align 4
  %32 = call i32 @lseek(i32 %30, i32 0, i32 %31)
  store i32 %32, i32* %2, align 4
  br label %33

33:                                               ; preds = %25, %23
  %34 = load i32, i32* %2, align 4
  ret i32 %34
}

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @FileIsValid(i64) #1

declare dso_local i32 @DO_DB(i32) #1

declare dso_local i32 @elog(i32, i8*, i64, i32) #1

declare dso_local i64 @FileIsNotOpen(i64) #1

declare dso_local i64 @FileAccess(i64) #1

declare dso_local i32 @lseek(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
