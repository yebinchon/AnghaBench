; ModuleID = '/home/carl/AnghaBench/linux/tools/vm/extr_page-types.c_prepare_hwpoison_fd.c'
source_filename = "/home/carl/AnghaBench/linux/tools/vm/extr_page-types.c_prepare_hwpoison_fd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_PATH = common dso_local global i32 0, align 4
@hwpoison_debug_fs = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [14 x i8] c"mount debugfs\00", align 1
@EXIT_FAILURE = common dso_local global i32 0, align 4
@opt_hwpoison = common dso_local global i64 0, align 8
@hwpoison_inject_fd = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [24 x i8] c"%s/hwpoison/corrupt-pfn\00", align 1
@O_WRONLY = common dso_local global i32 0, align 4
@opt_unpoison = common dso_local global i64 0, align 8
@hwpoison_forget_fd = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [25 x i8] c"%s/hwpoison/unpoison-pfn\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @prepare_hwpoison_fd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @prepare_hwpoison_fd() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i64, align 8
  %3 = load i32, i32* @MAX_PATH, align 4
  %4 = add nsw i32 %3, 1
  %5 = zext i32 %4 to i64
  %6 = call i8* @llvm.stacksave()
  store i8* %6, i8** %1, align 8
  %7 = alloca i8, i64 %5, align 16
  store i64 %5, i64* %2, align 8
  %8 = call i8* (...) @debugfs__mount()
  store i8* %8, i8** @hwpoison_debug_fs, align 8
  %9 = load i8*, i8** @hwpoison_debug_fs, align 8
  %10 = icmp ne i8* %9, null
  br i1 %10, label %15, label %11

11:                                               ; preds = %0
  %12 = call i32 @perror(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %13 = load i32, i32* @EXIT_FAILURE, align 4
  %14 = call i32 @exit(i32 %13) #4
  unreachable

15:                                               ; preds = %0
  %16 = load i64, i64* @opt_hwpoison, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %27

18:                                               ; preds = %15
  %19 = load i8*, i8** @hwpoison_inject_fd, align 8
  %20 = icmp ne i8* %19, null
  br i1 %20, label %27, label %21

21:                                               ; preds = %18
  %22 = load i32, i32* @MAX_PATH, align 4
  %23 = load i8*, i8** @hwpoison_debug_fs, align 8
  %24 = call i32 @snprintf(i8* %7, i32 %22, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i8* %23)
  %25 = load i32, i32* @O_WRONLY, align 4
  %26 = call i8* @checked_open(i8* %7, i32 %25)
  store i8* %26, i8** @hwpoison_inject_fd, align 8
  br label %27

27:                                               ; preds = %21, %18, %15
  %28 = load i64, i64* @opt_unpoison, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %39

30:                                               ; preds = %27
  %31 = load i8*, i8** @hwpoison_forget_fd, align 8
  %32 = icmp ne i8* %31, null
  br i1 %32, label %39, label %33

33:                                               ; preds = %30
  %34 = load i32, i32* @MAX_PATH, align 4
  %35 = load i8*, i8** @hwpoison_debug_fs, align 8
  %36 = call i32 @snprintf(i8* %7, i32 %34, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i8* %35)
  %37 = load i32, i32* @O_WRONLY, align 4
  %38 = call i8* @checked_open(i8* %7, i32 %37)
  store i8* %38, i8** @hwpoison_forget_fd, align 8
  br label %39

39:                                               ; preds = %33, %30, %27
  %40 = load i8*, i8** %1, align 8
  call void @llvm.stackrestore(i8* %40)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i8* @debugfs__mount(...) #2

declare dso_local i32 @perror(i8*) #2

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #3

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #2

declare dso_local i8* @checked_open(i8*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
