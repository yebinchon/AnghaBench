; ModuleID = '/home/carl/AnghaBench/mpv/player/extr_command.c_match_property.c'
source_filename = "/home/carl/AnghaBench/mpv/player/extr_command.c_match_property.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"*\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"options/\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*)* @match_property to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @match_property(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = call i64 @strcmp(i8* %8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %39

12:                                               ; preds = %2
  %13 = load i8*, i8** %4, align 8
  %14 = call i64 @strncmp(i8* %13, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 8)
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %12
  %17 = load i8*, i8** %4, align 8
  %18 = getelementptr inbounds i8, i8* %17, i64 8
  store i8* %18, i8** %4, align 8
  br label %19

19:                                               ; preds = %16, %12
  %20 = load i8*, i8** %5, align 8
  %21 = call i64 @strncmp(i8* %20, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 8)
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %19
  %24 = load i8*, i8** %5, align 8
  %25 = getelementptr inbounds i8, i8* %24, i64 8
  store i8* %25, i8** %5, align 8
  br label %26

26:                                               ; preds = %23, %19
  %27 = load i8*, i8** %4, align 8
  %28 = call i32 @prefix_len(i8* %27)
  store i32 %28, i32* %6, align 4
  %29 = load i8*, i8** %5, align 8
  %30 = call i32 @prefix_len(i8* %29)
  store i32 %30, i32* %7, align 4
  %31 = load i8*, i8** %4, align 8
  %32 = load i8*, i8** %5, align 8
  %33 = load i32, i32* %6, align 4
  %34 = load i32, i32* %7, align 4
  %35 = call i32 @MPMIN(i32 %33, i32 %34)
  %36 = call i64 @strncmp(i8* %31, i8* %32, i32 %35)
  %37 = icmp eq i64 %36, 0
  %38 = zext i1 %37 to i32
  store i32 %38, i32* %3, align 4
  br label %39

39:                                               ; preds = %26, %11
  %40 = load i32, i32* %3, align 4
  ret i32 %40
}

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @prefix_len(i8*) #1

declare dso_local i32 @MPMIN(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
