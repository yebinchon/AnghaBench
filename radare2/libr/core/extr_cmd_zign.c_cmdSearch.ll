; ModuleID = '/home/carl/AnghaBench/radare2/libr/core/extr_cmd_zign.c_cmdSearch.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/core/extr_cmd_zign.c_cmdSearch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [15 x i8] c"usage: z/[f*]\0A\00", align 1
@help_msg_z_slash = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"usage: z/[*]\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*)* @cmdSearch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cmdSearch(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = bitcast i8* %7 to i32*
  store i32* %8, i32** %6, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = load i8, i8* %9, align 1
  %11 = sext i8 %10 to i32
  switch i32 %11, label %41 [
    i32 0, label %12
    i32 42, label %12
    i32 102, label %21
    i32 63, label %37
  ]

12:                                               ; preds = %2, %2
  %13 = load i32*, i32** %6, align 8
  %14 = load i8*, i8** %5, align 8
  %15 = getelementptr inbounds i8, i8* %14, i64 0
  %16 = load i8, i8* %15, align 1
  %17 = sext i8 %16 to i32
  %18 = icmp eq i32 %17, 42
  %19 = zext i1 %18 to i32
  %20 = call i32 @search(i32* %13, i32 %19, i32 0)
  store i32 %20, i32* %3, align 4
  br label %44

21:                                               ; preds = %2
  %22 = load i8*, i8** %5, align 8
  %23 = getelementptr inbounds i8, i8* %22, i64 1
  %24 = load i8, i8* %23, align 1
  %25 = sext i8 %24 to i32
  switch i32 %25, label %35 [
    i32 0, label %26
    i32 42, label %26
  ]

26:                                               ; preds = %21, %21
  %27 = load i32*, i32** %6, align 8
  %28 = load i8*, i8** %5, align 8
  %29 = getelementptr inbounds i8, i8* %28, i64 1
  %30 = load i8, i8* %29, align 1
  %31 = sext i8 %30 to i32
  %32 = icmp eq i32 %31, 42
  %33 = zext i1 %32 to i32
  %34 = call i32 @search(i32* %27, i32 %33, i32 1)
  store i32 %34, i32* %3, align 4
  br label %44

35:                                               ; preds = %21
  %36 = call i32 @eprintf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %44

37:                                               ; preds = %2
  %38 = load i32*, i32** %6, align 8
  %39 = load i32, i32* @help_msg_z_slash, align 4
  %40 = call i32 @r_core_cmd_help(i32* %38, i32 %39)
  br label %43

41:                                               ; preds = %2
  %42 = call i32 @eprintf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %44

43:                                               ; preds = %37
  store i32 1, i32* %3, align 4
  br label %44

44:                                               ; preds = %43, %41, %35, %26, %12
  %45 = load i32, i32* %3, align 4
  ret i32 %45
}

declare dso_local i32 @search(i32*, i32, i32) #1

declare dso_local i32 @eprintf(i8*) #1

declare dso_local i32 @r_core_cmd_help(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
