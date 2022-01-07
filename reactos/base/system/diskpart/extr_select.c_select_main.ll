; ModuleID = '/home/carl/AnghaBench/reactos/base/system/diskpart/extr_select.c_select_main.c'
source_filename = "/home/carl/AnghaBench/reactos/base/system/diskpart/extr_select.c_select_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@StdOut = common dso_local global i32 0, align 4
@IDS_HELP_CMD_SELECT = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i32] [i32 100, i32 105, i32 115, i32 107, i32 0], align 4
@.str.1 = private unnamed_addr constant [10 x i32] [i32 112, i32 97, i32 114, i32 116, i32 105, i32 116, i32 105, i32 111, i32 110, i32 0], align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @select_main(i32 %0, i32* %1) #0 {
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
  %10 = load i32, i32* @IDS_HELP_CMD_SELECT, align 4
  %11 = call i32 @ConResPuts(i32 %9, i32 %10)
  %12 = load i32, i32* @TRUE, align 4
  store i32 %12, i32* %3, align 4
  br label %40

13:                                               ; preds = %2
  %14 = load i32*, i32** %5, align 8
  %15 = getelementptr inbounds i32, i32* %14, i64 1
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @wcsicmp(i32 %16, i8* bitcast ([5 x i32]* @.str to i8*))
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %23, label %19

19:                                               ; preds = %13
  %20 = load i32, i32* %4, align 4
  %21 = load i32*, i32** %5, align 8
  %22 = call i32 @SelectDisk(i32 %20, i32* %21)
  br label %38

23:                                               ; preds = %13
  %24 = load i32*, i32** %5, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 1
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @wcsicmp(i32 %26, i8* bitcast ([10 x i32]* @.str.1 to i8*))
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %33, label %29

29:                                               ; preds = %23
  %30 = load i32, i32* %4, align 4
  %31 = load i32*, i32** %5, align 8
  %32 = call i32 @SelectPartition(i32 %30, i32* %31)
  br label %37

33:                                               ; preds = %23
  %34 = load i32, i32* @StdOut, align 4
  %35 = load i32, i32* @IDS_HELP_CMD_SELECT, align 4
  %36 = call i32 @ConResPuts(i32 %34, i32 %35)
  br label %37

37:                                               ; preds = %33, %29
  br label %38

38:                                               ; preds = %37, %19
  %39 = load i32, i32* @TRUE, align 4
  store i32 %39, i32* %3, align 4
  br label %40

40:                                               ; preds = %38, %8
  %41 = load i32, i32* %3, align 4
  ret i32 %41
}

declare dso_local i32 @ConResPuts(i32, i32) #1

declare dso_local i32 @wcsicmp(i32, i8*) #1

declare dso_local i32 @SelectDisk(i32, i32*) #1

declare dso_local i32 @SelectPartition(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
