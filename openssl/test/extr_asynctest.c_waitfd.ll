; ModuleID = '/home/carl/AnghaBench/openssl/test/extr_asynctest.c_waitfd.c'
source_filename = "/home/carl/AnghaBench/openssl/test/extr_asynctest.c_waitfd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAGIC_WAIT_FD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @waitfd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @waitfd(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  store i8* %0, i8** %3, align 8
  %6 = call i32* (...) @ASYNC_get_current_job()
  store i32* %6, i32** %4, align 8
  %7 = load i32*, i32** %4, align 8
  %8 = icmp eq i32* %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %46

10:                                               ; preds = %1
  %11 = load i32*, i32** %4, align 8
  %12 = call i32* @ASYNC_get_wait_ctx(i32* %11)
  store i32* %12, i32** %5, align 8
  %13 = load i32*, i32** %5, align 8
  %14 = icmp eq i32* %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %10
  store i32 0, i32* %2, align 4
  br label %46

16:                                               ; preds = %10
  %17 = call i32 (...) @ASYNC_pause_job()
  %18 = load i32*, i32** %5, align 8
  %19 = load i32*, i32** %5, align 8
  %20 = load i32, i32* @MAGIC_WAIT_FD, align 4
  %21 = call i32 @ASYNC_WAIT_CTX_set_wait_fd(i32* %18, i32* %19, i32 %20, i32* null, i32* null)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %16
  store i32 0, i32* %2, align 4
  br label %46

24:                                               ; preds = %16
  %25 = call i32 (...) @ASYNC_pause_job()
  %26 = load i32*, i32** %5, align 8
  %27 = load i32*, i32** %5, align 8
  %28 = call i32 @ASYNC_WAIT_CTX_clear_fd(i32* %26, i32* %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %24
  store i32 0, i32* %2, align 4
  br label %46

31:                                               ; preds = %24
  %32 = call i32 (...) @ASYNC_pause_job()
  %33 = load i32*, i32** %5, align 8
  %34 = load i32*, i32** %5, align 8
  %35 = load i32, i32* @MAGIC_WAIT_FD, align 4
  %36 = call i32 @ASYNC_WAIT_CTX_set_wait_fd(i32* %33, i32* %34, i32 %35, i32* null, i32* null)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %39, label %38

38:                                               ; preds = %31
  store i32 0, i32* %2, align 4
  br label %46

39:                                               ; preds = %31
  %40 = load i32*, i32** %5, align 8
  %41 = load i32*, i32** %5, align 8
  %42 = call i32 @ASYNC_WAIT_CTX_clear_fd(i32* %40, i32* %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %45, label %44

44:                                               ; preds = %39
  store i32 0, i32* %2, align 4
  br label %46

45:                                               ; preds = %39
  store i32 1, i32* %2, align 4
  br label %46

46:                                               ; preds = %45, %44, %38, %30, %23, %15, %9
  %47 = load i32, i32* %2, align 4
  ret i32 %47
}

declare dso_local i32* @ASYNC_get_current_job(...) #1

declare dso_local i32* @ASYNC_get_wait_ctx(i32*) #1

declare dso_local i32 @ASYNC_pause_job(...) #1

declare dso_local i32 @ASYNC_WAIT_CTX_set_wait_fd(i32*, i32*, i32, i32*, i32*) #1

declare dso_local i32 @ASYNC_WAIT_CTX_clear_fd(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
