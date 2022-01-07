; ModuleID = '/home/carl/AnghaBench/mpv/sub/extr_sd_ass.c_has_overrides.c'
source_filename = "/home/carl/AnghaBench/mpv/sub/extr_sd_ass.c_has_overrides.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [5 x i8] c"\\pos\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"\\move\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"\\clip\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"\\iclip\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"\\org\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"\\p\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @has_overrides to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @has_overrides(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  %4 = load i8*, i8** %3, align 8
  %5 = icmp ne i8* %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %34

7:                                                ; preds = %1
  %8 = load i8*, i8** %3, align 8
  %9 = call i64 @strstr(i8* %8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %31, label %11

11:                                               ; preds = %7
  %12 = load i8*, i8** %3, align 8
  %13 = call i64 @strstr(i8* %12, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %31, label %15

15:                                               ; preds = %11
  %16 = load i8*, i8** %3, align 8
  %17 = call i64 @strstr(i8* %16, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %31, label %19

19:                                               ; preds = %15
  %20 = load i8*, i8** %3, align 8
  %21 = call i64 @strstr(i8* %20, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %31, label %23

23:                                               ; preds = %19
  %24 = load i8*, i8** %3, align 8
  %25 = call i64 @strstr(i8* %24, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %31, label %27

27:                                               ; preds = %23
  %28 = load i8*, i8** %3, align 8
  %29 = call i64 @strstr(i8* %28, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0))
  %30 = icmp ne i64 %29, 0
  br label %31

31:                                               ; preds = %27, %23, %19, %15, %11, %7
  %32 = phi i1 [ true, %23 ], [ true, %19 ], [ true, %15 ], [ true, %11 ], [ true, %7 ], [ %30, %27 ]
  %33 = zext i1 %32 to i32
  store i32 %33, i32* %2, align 4
  br label %34

34:                                               ; preds = %31, %6
  %35 = load i32, i32* %2, align 4
  ret i32 %35
}

declare dso_local i64 @strstr(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
