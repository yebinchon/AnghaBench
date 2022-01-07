; ModuleID = '/home/carl/AnghaBench/postgres/src/bin/pg_rewind/extr_file_ops.c_write_target_range.c'
source_filename = "/home/carl/AnghaBench/postgres/src/bin/pg_rewind/extr_file_ops.c_write_target_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@fetch_done = common dso_local global i64 0, align 8
@dry_run = common dso_local global i64 0, align 8
@dstfd = common dso_local global i32 0, align 4
@SEEK_SET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"could not seek in target file \22%s\22: %m\00", align 1
@dstpath = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@ENOSPC = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [30 x i8] c"could not write file \22%s\22: %m\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @write_target_range(i8* %0, i32 %1, i64 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 %2, i64* %6, align 8
  %10 = load i64, i64* %6, align 8
  %11 = load i64, i64* @fetch_done, align 8
  %12 = add i64 %11, %10
  store i64 %12, i64* @fetch_done, align 8
  %13 = call i32 @progress_report(i32 0)
  %14 = load i64, i64* @dry_run, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %3
  br label %56

17:                                               ; preds = %3
  %18 = load i32, i32* @dstfd, align 4
  %19 = load i32, i32* %5, align 4
  %20 = load i32, i32* @SEEK_SET, align 4
  %21 = call i32 @lseek(i32 %18, i32 %19, i32 %20)
  %22 = icmp eq i32 %21, -1
  br i1 %22, label %23, label %26

23:                                               ; preds = %17
  %24 = load i32, i32* @dstpath, align 4
  %25 = call i32 @pg_fatal(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %24)
  br label %26

26:                                               ; preds = %23, %17
  %27 = load i64, i64* %6, align 8
  %28 = trunc i64 %27 to i32
  store i32 %28, i32* %7, align 4
  %29 = load i8*, i8** %4, align 8
  store i8* %29, i8** %8, align 8
  br label %30

30:                                               ; preds = %48, %26
  %31 = load i32, i32* %7, align 4
  %32 = icmp sgt i32 %31, 0
  br i1 %32, label %33, label %56

33:                                               ; preds = %30
  store i64 0, i64* @errno, align 8
  %34 = load i32, i32* @dstfd, align 4
  %35 = load i8*, i8** %8, align 8
  %36 = load i32, i32* %7, align 4
  %37 = call i32 @write(i32 %34, i8* %35, i32 %36)
  store i32 %37, i32* %9, align 4
  %38 = load i32, i32* %9, align 4
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %48

40:                                               ; preds = %33
  %41 = load i64, i64* @errno, align 8
  %42 = icmp eq i64 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %40
  %44 = load i64, i64* @ENOSPC, align 8
  store i64 %44, i64* @errno, align 8
  br label %45

45:                                               ; preds = %43, %40
  %46 = load i32, i32* @dstpath, align 4
  %47 = call i32 @pg_fatal(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %46)
  br label %48

48:                                               ; preds = %45, %33
  %49 = load i32, i32* %9, align 4
  %50 = load i8*, i8** %8, align 8
  %51 = sext i32 %49 to i64
  %52 = getelementptr inbounds i8, i8* %50, i64 %51
  store i8* %52, i8** %8, align 8
  %53 = load i32, i32* %9, align 4
  %54 = load i32, i32* %7, align 4
  %55 = sub nsw i32 %54, %53
  store i32 %55, i32* %7, align 4
  br label %30

56:                                               ; preds = %16, %30
  ret void
}

declare dso_local i32 @progress_report(i32) #1

declare dso_local i32 @lseek(i32, i32, i32) #1

declare dso_local i32 @pg_fatal(i8*, i32) #1

declare dso_local i32 @write(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
