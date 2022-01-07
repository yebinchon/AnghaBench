; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/network/dwnl/extr_dwnl.c_wmain.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/network/dwnl/extr_dwnl.c_wmain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@StdOut = common dso_local global i32 0, align 4
@IDS_USAGE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wmain(i32 %0, i32** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32** %1, i32*** %5, align 8
  store i32 0, i32* %7, align 4
  %8 = call i32 (...) @ConInitStdStreams()
  %9 = load i32, i32* %4, align 4
  %10 = icmp ne i32 %9, 2
  br i1 %10, label %11, label %18

11:                                               ; preds = %2
  %12 = load i32, i32* %4, align 4
  %13 = icmp ne i32 %12, 3
  br i1 %13, label %14, label %18

14:                                               ; preds = %11
  %15 = load i32, i32* @StdOut, align 4
  %16 = load i32, i32* @IDS_USAGE, align 4
  %17 = call i32 @ConResPrintf(i32 %15, i32 %16)
  store i32 2, i32* %3, align 4
  br label %39

18:                                               ; preds = %11, %2
  %19 = load i32**, i32*** %5, align 8
  %20 = getelementptr inbounds i32*, i32** %19, i64 1
  %21 = load i32*, i32** %20, align 8
  %22 = load i32, i32* %4, align 4
  %23 = icmp eq i32 %22, 3
  br i1 %23, label %24, label %28

24:                                               ; preds = %18
  %25 = load i32**, i32*** %5, align 8
  %26 = getelementptr inbounds i32*, i32** %25, i64 2
  %27 = load i32*, i32** %26, align 8
  br label %29

28:                                               ; preds = %18
  br label %29

29:                                               ; preds = %28, %24
  %30 = phi i32* [ %27, %24 ], [ null, %28 ]
  %31 = call i32 @download_file(i32* %21, i32* %30)
  store i32 %31, i32* %6, align 4
  %32 = load i32, i32* %6, align 4
  %33 = icmp sle i32 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %29
  %35 = load i32, i32* %6, align 4
  %36 = call i32 @print_err(i32 %35)
  store i32 %36, i32* %7, align 4
  br label %37

37:                                               ; preds = %34, %29
  %38 = load i32, i32* %7, align 4
  store i32 %38, i32* %3, align 4
  br label %39

39:                                               ; preds = %37, %14
  %40 = load i32, i32* %3, align 4
  ret i32 %40
}

declare dso_local i32 @ConInitStdStreams(...) #1

declare dso_local i32 @ConResPrintf(i32, i32) #1

declare dso_local i32 @download_file(i32*, i32*) #1

declare dso_local i32 @print_err(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
