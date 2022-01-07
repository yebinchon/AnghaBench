; ModuleID = '/home/carl/AnghaBench/lwan/src/lib/extr_lwan.c_lwan_set_thread_name.c'
source_filename = "/home/carl/AnghaBench/lwan/src/lib/extr_lwan.c_lwan_set_thread_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PATH_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"%s %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @lwan_set_thread_name(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca [16 x i8], align 16
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %9 = load i32, i32* @PATH_MAX, align 4
  %10 = zext i32 %9 to i64
  %11 = call i8* @llvm.stacksave()
  store i8* %11, i8** %4, align 8
  %12 = alloca i8, i64 %10, align 16
  store i64 %10, i64* %5, align 8
  %13 = call i32 (...) @getpid()
  %14 = trunc i64 %10 to i32
  %15 = call i64 @proc_pidpath(i32 %13, i8* %12, i32 %14)
  %16 = icmp slt i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %1
  store i32 1, i32* %8, align 4
  br label %36

18:                                               ; preds = %1
  %19 = call i8* @strrchr(i8* %12, i8 signext 47)
  store i8* %19, i8** %6, align 8
  %20 = load i8*, i8** %6, align 8
  %21 = icmp ne i8* %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %18
  store i32 1, i32* %8, align 4
  br label %36

23:                                               ; preds = %18
  %24 = getelementptr inbounds [16 x i8], [16 x i8]* %3, i64 0, i64 0
  %25 = load i8*, i8** %6, align 8
  %26 = getelementptr inbounds i8, i8* %25, i64 1
  %27 = load i8*, i8** %2, align 8
  %28 = call i32 @snprintf(i8* %24, i32 16, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %26, i8* %27)
  store i32 %28, i32* %7, align 4
  %29 = load i32, i32* %7, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %23
  store i32 1, i32* %8, align 4
  br label %36

32:                                               ; preds = %23
  %33 = call i32 (...) @pthread_self()
  %34 = getelementptr inbounds [16 x i8], [16 x i8]* %3, i64 0, i64 0
  %35 = call i32 @pthread_set_name_np(i32 %33, i8* %34)
  store i32 0, i32* %8, align 4
  br label %36

36:                                               ; preds = %32, %31, %22, %17
  %37 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %37)
  %38 = load i32, i32* %8, align 4
  switch i32 %38, label %40 [
    i32 0, label %39
    i32 1, label %39
  ]

39:                                               ; preds = %36, %36
  ret void

40:                                               ; preds = %36
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @proc_pidpath(i32, i8*, i32) #2

declare dso_local i32 @getpid(...) #2

declare dso_local i8* @strrchr(i8*, i8 signext) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i8*) #2

declare dso_local i32 @pthread_set_name_np(i32, i8*) #2

declare dso_local i32 @pthread_self(...) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
