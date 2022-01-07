; ModuleID = '/home/carl/AnghaBench/obs-studio/deps/lzma/common/extr_tuklib_open_stdxxx.c_tuklib_open_stdxxx.c'
source_filename = "/home/carl/AnghaBench/obs-studio/deps/lzma/common/extr_tuklib_open_stdxxx.c_tuklib_open_stdxxx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@F_GETFD = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@EBADF = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [10 x i8] c"/dev/null\00", align 1
@O_NOCTTY = common dso_local global i32 0, align 4
@O_WRONLY = common dso_local global i32 0, align 4
@O_RDONLY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tuklib_open_stdxxx(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store i32 0, i32* %3, align 4
  br label %5

5:                                                ; preds = %43, %1
  %6 = load i32, i32* %3, align 4
  %7 = icmp sle i32 %6, 2
  br i1 %7, label %8, label %46

8:                                                ; preds = %5
  %9 = load i32, i32* %3, align 4
  %10 = load i32, i32* @F_GETFD, align 4
  %11 = call i32 @fcntl(i32 %9, i32 %10)
  %12 = icmp eq i32 %11, -1
  br i1 %12, label %13, label %42

13:                                               ; preds = %8
  %14 = load i64, i64* @errno, align 8
  %15 = load i64, i64* @EBADF, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %42

17:                                               ; preds = %13
  %18 = load i32, i32* @O_NOCTTY, align 4
  %19 = load i32, i32* %3, align 4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %17
  %22 = load i32, i32* @O_WRONLY, align 4
  br label %25

23:                                               ; preds = %17
  %24 = load i32, i32* @O_RDONLY, align 4
  br label %25

25:                                               ; preds = %23, %21
  %26 = phi i32 [ %22, %21 ], [ %24, %23 ]
  %27 = or i32 %18, %26
  %28 = call i32 @open(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %27)
  store i32 %28, i32* %4, align 4
  %29 = load i32, i32* %4, align 4
  %30 = load i32, i32* %3, align 4
  %31 = icmp ne i32 %29, %30
  br i1 %31, label %32, label %41

32:                                               ; preds = %25
  %33 = load i32, i32* %4, align 4
  %34 = icmp ne i32 %33, -1
  br i1 %34, label %35, label %38

35:                                               ; preds = %32
  %36 = load i32, i32* %4, align 4
  %37 = call i32 @close(i32 %36)
  br label %38

38:                                               ; preds = %35, %32
  %39 = load i32, i32* %2, align 4
  %40 = call i32 @exit(i32 %39) #3
  unreachable

41:                                               ; preds = %25
  br label %42

42:                                               ; preds = %41, %13, %8
  br label %43

43:                                               ; preds = %42
  %44 = load i32, i32* %3, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %3, align 4
  br label %5

46:                                               ; preds = %5
  ret void
}

declare dso_local i32 @fcntl(i32, i32) #1

declare dso_local i32 @open(i8*, i32) #1

declare dso_local i32 @close(i32) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
