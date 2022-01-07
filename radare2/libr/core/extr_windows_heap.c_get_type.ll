; ModuleID = '/home/carl/AnghaBench/radare2/libr/core/extr_windows_heap.c_get_type.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/core/extr_windows_heap.c_get_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"(FIXED)\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"(FREE)\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"(MOVEABLE)\00", align 1
@SEGMENT_HEAP_BLOCK = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [8 x i8] c"Segment\00", align 1
@NT_BLOCK = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [3 x i8] c"NT\00", align 1
@LFH_BLOCK = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [5 x i8] c"/LFH\00", align 1
@LARGE_BLOCK = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [7 x i8] c"/LARGE\00", align 1
@BACKEND_BLOCK = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [9 x i8] c"/BACKEND\00", align 1
@VS_BLOCK = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [4 x i8] c"/VS\00", align 1
@.str.10 = private unnamed_addr constant [8 x i8] c"%s %s%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32)* @get_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @get_type(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  store i32 %0, i32* %2, align 4
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %3, align 8
  %6 = load i32, i32* %2, align 4
  %7 = and i32 %6, 65535
  switch i32 %7, label %11 [
    i32 130, label %8
    i32 129, label %9
    i32 128, label %10
  ]

8:                                                ; preds = %1
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8** %3, align 8
  br label %11

9:                                                ; preds = %1
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8** %3, align 8
  br label %11

10:                                               ; preds = %1
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i8** %3, align 8
  br label %11

11:                                               ; preds = %1, %10, %9, %8
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %4, align 8
  %12 = load i32, i32* %2, align 4
  %13 = load i32, i32* @SEGMENT_HEAP_BLOCK, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %11
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i8** %4, align 8
  br label %24

17:                                               ; preds = %11
  %18 = load i32, i32* %2, align 4
  %19 = load i32, i32* @NT_BLOCK, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %17
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i8** %4, align 8
  br label %23

23:                                               ; preds = %22, %17
  br label %24

24:                                               ; preds = %23, %16
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %5, align 8
  %25 = load i32, i32* %2, align 4
  %26 = load i32, i32* @LFH_BLOCK, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %24
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i8** %5, align 8
  br label %51

30:                                               ; preds = %24
  %31 = load i32, i32* %2, align 4
  %32 = load i32, i32* @LARGE_BLOCK, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %30
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0), i8** %5, align 8
  br label %50

36:                                               ; preds = %30
  %37 = load i32, i32* %2, align 4
  %38 = load i32, i32* @BACKEND_BLOCK, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %36
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0), i8** %5, align 8
  br label %49

42:                                               ; preds = %36
  %43 = load i32, i32* %2, align 4
  %44 = load i32, i32* @VS_BLOCK, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %42
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0), i8** %5, align 8
  br label %48

48:                                               ; preds = %47, %42
  br label %49

49:                                               ; preds = %48, %41
  br label %50

50:                                               ; preds = %49, %35
  br label %51

51:                                               ; preds = %50, %29
  %52 = load i8*, i8** %3, align 8
  %53 = load i8*, i8** %4, align 8
  %54 = load i8*, i8** %5, align 8
  %55 = call i8* @r_str_newf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i64 0, i64 0), i8* %52, i8* %53, i8* %54)
  ret i8* %55
}

declare dso_local i8* @r_str_newf(i8*, i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
