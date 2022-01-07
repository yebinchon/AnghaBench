; ModuleID = '/home/carl/AnghaBench/postgres/src/common/extr_file_utils.c_durable_rename.c'
source_filename = "/home/carl/AnghaBench/postgres/src/common/extr_file_utils.c_durable_rename.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PG_BINARY = common dso_local global i32 0, align 4
@O_RDWR = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [29 x i8] c"could not open file \22%s\22: %m\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"could not fsync file \22%s\22: %m\00", align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"could not rename file \22%s\22 to \22%s\22: %m\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @durable_rename(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = call i64 @fsync_fname(i8* %7, i32 0)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %59

11:                                               ; preds = %2
  %12 = load i8*, i8** %5, align 8
  %13 = load i32, i32* @PG_BINARY, align 4
  %14 = load i32, i32* @O_RDWR, align 4
  %15 = or i32 %13, %14
  %16 = call i32 @open(i8* %12, i32 %15, i32 0)
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* %6, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %27

19:                                               ; preds = %11
  %20 = load i64, i64* @errno, align 8
  %21 = load i64, i64* @ENOENT, align 8
  %22 = icmp ne i64 %20, %21
  br i1 %22, label %23, label %26

23:                                               ; preds = %19
  %24 = load i8*, i8** %5, align 8
  %25 = call i32 (i8*, i8*, ...) @pg_log_error(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i8* %24)
  store i32 -1, i32* %3, align 4
  br label %59

26:                                               ; preds = %19
  br label %39

27:                                               ; preds = %11
  %28 = load i32, i32* %6, align 4
  %29 = call i64 @fsync(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %27
  %32 = load i8*, i8** %5, align 8
  %33 = call i32 (i8*, i8*, ...) @pg_log_error(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i8* %32)
  %34 = load i32, i32* %6, align 4
  %35 = call i32 @close(i32 %34)
  store i32 -1, i32* %3, align 4
  br label %59

36:                                               ; preds = %27
  %37 = load i32, i32* %6, align 4
  %38 = call i32 @close(i32 %37)
  br label %39

39:                                               ; preds = %36, %26
  %40 = load i8*, i8** %4, align 8
  %41 = load i8*, i8** %5, align 8
  %42 = call i64 @rename(i8* %40, i8* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %39
  %45 = load i8*, i8** %4, align 8
  %46 = load i8*, i8** %5, align 8
  %47 = call i32 (i8*, i8*, ...) @pg_log_error(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i8* %45, i8* %46)
  store i32 -1, i32* %3, align 4
  br label %59

48:                                               ; preds = %39
  %49 = load i8*, i8** %5, align 8
  %50 = call i64 @fsync_fname(i8* %49, i32 0)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %48
  store i32 -1, i32* %3, align 4
  br label %59

53:                                               ; preds = %48
  %54 = load i8*, i8** %5, align 8
  %55 = call i64 @fsync_parent_path(i8* %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %53
  store i32 -1, i32* %3, align 4
  br label %59

58:                                               ; preds = %53
  store i32 0, i32* %3, align 4
  br label %59

59:                                               ; preds = %58, %57, %52, %44, %31, %23, %10
  %60 = load i32, i32* %3, align 4
  ret i32 %60
}

declare dso_local i64 @fsync_fname(i8*, i32) #1

declare dso_local i32 @open(i8*, i32, i32) #1

declare dso_local i32 @pg_log_error(i8*, i8*, ...) #1

declare dso_local i64 @fsync(i32) #1

declare dso_local i32 @close(i32) #1

declare dso_local i64 @rename(i8*, i8*) #1

declare dso_local i64 @fsync_parent_path(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
