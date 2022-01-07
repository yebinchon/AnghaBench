; ModuleID = '/home/carl/AnghaBench/proxychains-ng/src/extr_libproxychains.c_close.c'
source_filename = "/home/carl/AnghaBench/proxychains-ng/src/extr_libproxychains.c_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@init_l = common dso_local global i32 0, align 4
@close_fds_cnt = common dso_local global i32 0, align 4
@close_fds = common dso_local global i32* null, align 8
@errno = common dso_local global i64 0, align 8
@req_pipefd = common dso_local global i32* null, align 8
@resp_pipefd = common dso_local global i32* null, align 8
@EBADF = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @close(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* @init_l, align 4
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %18, label %6

6:                                                ; preds = %1
  %7 = load i32, i32* @close_fds_cnt, align 4
  %8 = sext i32 %7 to i64
  %9 = icmp uge i64 %8, 2
  br i1 %9, label %10, label %11

10:                                               ; preds = %6
  br label %46

11:                                               ; preds = %6
  %12 = load i32, i32* %3, align 4
  %13 = load i32*, i32** @close_fds, align 8
  %14 = load i32, i32* @close_fds_cnt, align 4
  %15 = add nsw i32 %14, 1
  store i32 %15, i32* @close_fds_cnt, align 4
  %16 = sext i32 %14 to i64
  %17 = getelementptr inbounds i32, i32* %13, i64 %16
  store i32 %12, i32* %17, align 4
  store i64 0, i64* @errno, align 8
  store i32 0, i32* %2, align 4
  br label %48

18:                                               ; preds = %1
  %19 = load i32, i32* %3, align 4
  %20 = load i32*, i32** @req_pipefd, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 0
  %22 = load i32, i32* %21, align 4
  %23 = icmp ne i32 %19, %22
  br i1 %23, label %24, label %45

24:                                               ; preds = %18
  %25 = load i32, i32* %3, align 4
  %26 = load i32*, i32** @req_pipefd, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 1
  %28 = load i32, i32* %27, align 4
  %29 = icmp ne i32 %25, %28
  br i1 %29, label %30, label %45

30:                                               ; preds = %24
  %31 = load i32, i32* %3, align 4
  %32 = load i32*, i32** @resp_pipefd, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 0
  %34 = load i32, i32* %33, align 4
  %35 = icmp ne i32 %31, %34
  br i1 %35, label %36, label %45

36:                                               ; preds = %30
  %37 = load i32, i32* %3, align 4
  %38 = load i32*, i32** @resp_pipefd, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 1
  %40 = load i32, i32* %39, align 4
  %41 = icmp ne i32 %37, %40
  br i1 %41, label %42, label %45

42:                                               ; preds = %36
  %43 = load i32, i32* %3, align 4
  %44 = call i32 @true_close(i32 %43)
  store i32 %44, i32* %2, align 4
  br label %48

45:                                               ; preds = %36, %30, %24, %18
  br label %46

46:                                               ; preds = %45, %10
  %47 = load i64, i64* @EBADF, align 8
  store i64 %47, i64* @errno, align 8
  store i32 -1, i32* %2, align 4
  br label %48

48:                                               ; preds = %46, %42, %11
  %49 = load i32, i32* %2, align 4
  ret i32 %49
}

declare dso_local i32 @true_close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
