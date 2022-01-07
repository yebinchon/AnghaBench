; ModuleID = '/home/carl/AnghaBench/reactos/base/system/diskpart/extr_list.c_list_main.c'
source_filename = "/home/carl/AnghaBench/reactos/base/system/diskpart/extr_list.c_list_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@StdOut = common dso_local global i32 0, align 4
@IDS_HELP_CMD_LIST = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i32] [i32 100, i32 105, i32 115, i32 107, i32 0], align 4
@.str.1 = private unnamed_addr constant [10 x i32] [i32 112, i32 97, i32 114, i32 116, i32 105, i32 116, i32 105, i32 111, i32 110, i32 0], align 4
@.str.2 = private unnamed_addr constant [7 x i32] [i32 118, i32 111, i32 108, i32 117, i32 109, i32 101, i32 0], align 4
@.str.3 = private unnamed_addr constant [6 x i32] [i32 118, i32 100, i32 105, i32 115, i32 107, i32 0], align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @list_main(i32 %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  store i32 %0, i32* %4, align 4
  store i32* %1, i32** %5, align 8
  %6 = load i32, i32* %4, align 4
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %13

8:                                                ; preds = %2
  %9 = load i32, i32* @StdOut, align 4
  %10 = load i32, i32* @IDS_HELP_CMD_LIST, align 4
  %11 = call i32 @ConResPuts(i32 %9, i32 %10)
  %12 = load i32, i32* @TRUE, align 4
  store i32 %12, i32* %3, align 4
  br label %54

13:                                               ; preds = %2
  %14 = load i32*, i32** %5, align 8
  %15 = getelementptr inbounds i32, i32* %14, i64 1
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @wcsicmp(i32 %16, i8* bitcast ([5 x i32]* @.str to i8*))
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %21, label %19

19:                                               ; preds = %13
  %20 = call i32 (...) @ListDisk()
  br label %52

21:                                               ; preds = %13
  %22 = load i32*, i32** %5, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 1
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @wcsicmp(i32 %24, i8* bitcast ([10 x i32]* @.str.1 to i8*))
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %29, label %27

27:                                               ; preds = %21
  %28 = call i32 (...) @ListPartition()
  br label %51

29:                                               ; preds = %21
  %30 = load i32*, i32** %5, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 1
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @wcsicmp(i32 %32, i8* bitcast ([7 x i32]* @.str.2 to i8*))
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %37, label %35

35:                                               ; preds = %29
  %36 = call i32 (...) @ListVolume()
  br label %50

37:                                               ; preds = %29
  %38 = load i32*, i32** %5, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 1
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @wcsicmp(i32 %40, i8* bitcast ([6 x i32]* @.str.3 to i8*))
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %45, label %43

43:                                               ; preds = %37
  %44 = call i32 (...) @ListVdisk()
  br label %49

45:                                               ; preds = %37
  %46 = load i32, i32* @StdOut, align 4
  %47 = load i32, i32* @IDS_HELP_CMD_LIST, align 4
  %48 = call i32 @ConResPuts(i32 %46, i32 %47)
  br label %49

49:                                               ; preds = %45, %43
  br label %50

50:                                               ; preds = %49, %35
  br label %51

51:                                               ; preds = %50, %27
  br label %52

52:                                               ; preds = %51, %19
  %53 = load i32, i32* @TRUE, align 4
  store i32 %53, i32* %3, align 4
  br label %54

54:                                               ; preds = %52, %8
  %55 = load i32, i32* %3, align 4
  ret i32 %55
}

declare dso_local i32 @ConResPuts(i32, i32) #1

declare dso_local i32 @wcsicmp(i32, i8*) #1

declare dso_local i32 @ListDisk(...) #1

declare dso_local i32 @ListPartition(...) #1

declare dso_local i32 @ListVolume(...) #1

declare dso_local i32 @ListVdisk(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
