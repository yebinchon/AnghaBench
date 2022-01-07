; ModuleID = '/home/carl/AnghaBench/postgres/src/common/extr_file_utils.c_fsync_fname.c'
source_filename = "/home/carl/AnghaBench/postgres/src/common/extr_file_utils.c_fsync_fname.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PG_BINARY = common dso_local global i32 0, align 4
@O_RDWR = common dso_local global i32 0, align 4
@O_RDONLY = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@EACCES = common dso_local global i64 0, align 8
@EISDIR = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [29 x i8] c"could not open file \22%s\22: %m\00", align 1
@EBADF = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [30 x i8] c"could not fsync file \22%s\22: %m\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fsync_fname(i8* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load i32, i32* @PG_BINARY, align 4
  store i32 %9, i32* %7, align 4
  %10 = load i32, i32* %5, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %16, label %12

12:                                               ; preds = %2
  %13 = load i32, i32* @O_RDWR, align 4
  %14 = load i32, i32* %7, align 4
  %15 = or i32 %14, %13
  store i32 %15, i32* %7, align 4
  br label %20

16:                                               ; preds = %2
  %17 = load i32, i32* @O_RDONLY, align 4
  %18 = load i32, i32* %7, align 4
  %19 = or i32 %18, %17
  store i32 %19, i32* %7, align 4
  br label %20

20:                                               ; preds = %16, %12
  %21 = load i8*, i8** %4, align 8
  %22 = load i32, i32* %7, align 4
  %23 = call i32 @open(i8* %21, i32 %22, i32 0)
  store i32 %23, i32* %6, align 4
  %24 = load i32, i32* %6, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %41

26:                                               ; preds = %20
  %27 = load i64, i64* @errno, align 8
  %28 = load i64, i64* @EACCES, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %37, label %30

30:                                               ; preds = %26
  %31 = load i32, i32* %5, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %30
  %34 = load i64, i64* @errno, align 8
  %35 = load i64, i64* @EISDIR, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %33, %26
  store i32 0, i32* %3, align 4
  br label %65

38:                                               ; preds = %33, %30
  %39 = load i8*, i8** %4, align 8
  %40 = call i32 @pg_log_error(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i8* %39)
  store i32 -1, i32* %3, align 4
  br label %65

41:                                               ; preds = %20
  %42 = load i32, i32* %6, align 4
  %43 = call i32 @fsync(i32 %42)
  store i32 %43, i32* %8, align 4
  %44 = load i32, i32* %8, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %62

46:                                               ; preds = %41
  %47 = load i32, i32* %5, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %57

49:                                               ; preds = %46
  %50 = load i64, i64* @errno, align 8
  %51 = load i64, i64* @EBADF, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %62, label %53

53:                                               ; preds = %49
  %54 = load i64, i64* @errno, align 8
  %55 = load i64, i64* @EINVAL, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %62, label %57

57:                                               ; preds = %53, %46
  %58 = load i8*, i8** %4, align 8
  %59 = call i32 @pg_log_error(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i8* %58)
  %60 = load i32, i32* %6, align 4
  %61 = call i32 @close(i32 %60)
  store i32 -1, i32* %3, align 4
  br label %65

62:                                               ; preds = %53, %49, %41
  %63 = load i32, i32* %6, align 4
  %64 = call i32 @close(i32 %63)
  store i32 0, i32* %3, align 4
  br label %65

65:                                               ; preds = %62, %57, %38, %37
  %66 = load i32, i32* %3, align 4
  ret i32 %66
}

declare dso_local i32 @open(i8*, i32, i32) #1

declare dso_local i32 @pg_log_error(i8*, i8*) #1

declare dso_local i32 @fsync(i32) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
