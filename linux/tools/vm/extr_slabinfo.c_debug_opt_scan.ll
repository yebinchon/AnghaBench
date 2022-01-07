; ModuleID = '/home/carl/AnghaBench/linux/tools/vm/extr_slabinfo.c_debug_opt_scan.c'
source_filename = "/home/carl/AnghaBench/linux/tools/vm/extr_slabinfo.c_debug_opt_scan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"a\00", align 1
@sanity = common dso_local global i32 0, align 4
@poison = common dso_local global i32 0, align 4
@redzone = common dso_local global i32 0, align 4
@tracking = common dso_local global i32 0, align 4
@tracing = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @debug_opt_scan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @debug_opt_scan(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  %4 = load i8*, i8** %3, align 8
  %5 = icmp ne i8* %4, null
  br i1 %5, label %6, label %15

6:                                                ; preds = %1
  %7 = load i8*, i8** %3, align 8
  %8 = getelementptr inbounds i8, i8* %7, i64 0
  %9 = load i8, i8* %8, align 1
  %10 = icmp ne i8 %9, 0
  br i1 %10, label %11, label %15

11:                                               ; preds = %6
  %12 = load i8*, i8** %3, align 8
  %13 = call i64 @strcmp(i8* %12, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %11, %6, %1
  store i32 1, i32* %2, align 4
  br label %61

16:                                               ; preds = %11
  %17 = load i8*, i8** %3, align 8
  %18 = call i64 @strcasecmp(i8* %17, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %16
  store i32 1, i32* @sanity, align 4
  store i32 1, i32* @poison, align 4
  store i32 1, i32* @redzone, align 4
  store i32 1, i32* @tracking, align 4
  store i32 1, i32* %2, align 4
  br label %61

21:                                               ; preds = %16
  br label %22

22:                                               ; preds = %57, %21
  %23 = load i8*, i8** %3, align 8
  %24 = load i8, i8* %23, align 1
  %25 = icmp ne i8 %24, 0
  br i1 %25, label %26, label %60

26:                                               ; preds = %22
  %27 = load i8*, i8** %3, align 8
  %28 = load i8, i8* %27, align 1
  %29 = sext i8 %28 to i32
  switch i32 %29, label %55 [
    i32 70, label %30
    i32 102, label %30
    i32 80, label %35
    i32 112, label %35
    i32 90, label %40
    i32 122, label %40
    i32 85, label %45
    i32 117, label %45
    i32 84, label %50
    i32 116, label %50
  ]

30:                                               ; preds = %26, %26
  %31 = load i32, i32* @sanity, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %30
  store i32 0, i32* %2, align 4
  br label %61

34:                                               ; preds = %30
  store i32 1, i32* @sanity, align 4
  br label %56

35:                                               ; preds = %26, %26
  %36 = load i32, i32* @poison, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %35
  store i32 0, i32* %2, align 4
  br label %61

39:                                               ; preds = %35
  store i32 1, i32* @poison, align 4
  br label %56

40:                                               ; preds = %26, %26
  %41 = load i32, i32* @redzone, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %40
  store i32 0, i32* %2, align 4
  br label %61

44:                                               ; preds = %40
  store i32 1, i32* @redzone, align 4
  br label %56

45:                                               ; preds = %26, %26
  %46 = load i32, i32* @tracking, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %45
  store i32 0, i32* %2, align 4
  br label %61

49:                                               ; preds = %45
  store i32 1, i32* @tracking, align 4
  br label %56

50:                                               ; preds = %26, %26
  %51 = load i32, i32* @tracing, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %50
  store i32 0, i32* %2, align 4
  br label %61

54:                                               ; preds = %50
  store i32 1, i32* @tracing, align 4
  br label %56

55:                                               ; preds = %26
  store i32 0, i32* %2, align 4
  br label %61

56:                                               ; preds = %54, %49, %44, %39, %34
  br label %57

57:                                               ; preds = %56
  %58 = load i8*, i8** %3, align 8
  %59 = getelementptr inbounds i8, i8* %58, i32 1
  store i8* %59, i8** %3, align 8
  br label %22

60:                                               ; preds = %22
  store i32 1, i32* %2, align 4
  br label %61

61:                                               ; preds = %60, %55, %53, %48, %43, %38, %33, %20, %15
  %62 = load i32, i32* %2, align 4
  ret i32 %62
}

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i64 @strcasecmp(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
