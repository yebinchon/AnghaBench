; ModuleID = '/home/carl/AnghaBench/netdata/collectors/proc.plugin/extr_proc_self_mountinfo.c_is_read_only.c'
source_filename = "/home/carl/AnghaBench/netdata/collectors/proc.plugin/extr_proc_self_mountinfo.c_is_read_only.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"ro\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"ro,\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c",ro\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c",ro,\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @is_read_only to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_read_only(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  %5 = load i8*, i8** %3, align 8
  %6 = icmp ne i8* %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %42

8:                                                ; preds = %1
  %9 = load i8*, i8** %3, align 8
  %10 = call i64 @strlen(i8* %9)
  store i64 %10, i64* %4, align 8
  %11 = load i64, i64* %4, align 8
  %12 = icmp ult i64 %11, 2
  br i1 %12, label %13, label %14

13:                                               ; preds = %8
  store i32 0, i32* %2, align 4
  br label %42

14:                                               ; preds = %8
  %15 = load i64, i64* %4, align 8
  %16 = icmp eq i64 %15, 2
  br i1 %16, label %17, label %23

17:                                               ; preds = %14
  %18 = load i8*, i8** %3, align 8
  %19 = call i32 @strcmp(i8* %18, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %17
  store i32 1, i32* %2, align 4
  br label %42

22:                                               ; preds = %17
  store i32 0, i32* %2, align 4
  br label %42

23:                                               ; preds = %14
  %24 = load i8*, i8** %3, align 8
  %25 = call i32 @strncmp(i8* %24, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 3)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %23
  store i32 1, i32* %2, align 4
  br label %42

28:                                               ; preds = %23
  %29 = load i8*, i8** %3, align 8
  %30 = load i64, i64* %4, align 8
  %31 = sub i64 %30, 3
  %32 = getelementptr inbounds i8, i8* %29, i64 %31
  %33 = call i32 @strncmp(i8* %32, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 3)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %28
  store i32 1, i32* %2, align 4
  br label %42

36:                                               ; preds = %28
  %37 = load i8*, i8** %3, align 8
  %38 = call i64 @strstr(i8* %37, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %36
  store i32 1, i32* %2, align 4
  br label %42

41:                                               ; preds = %36
  store i32 0, i32* %2, align 4
  br label %42

42:                                               ; preds = %41, %40, %35, %27, %22, %21, %13, %7
  %43 = load i32, i32* %2, align 4
  ret i32 %43
}

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @strncmp(i8*, i8*, i32) #1

declare dso_local i64 @strstr(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
