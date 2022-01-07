; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/cmdutils/help/extr_help.c_wmain.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/cmdutils/help/extr_help.c_wmain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CMDLINE_LENGTH = common dso_local global i32 0, align 4
@StdOut = common dso_local global i32 0, align 4
@IDS_HELP1 = common dso_local global i32 0, align 4
@IDS_HELP2 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i32] [i32 47, i32 63, i32 0], align 4
@IDS_USAGE = common dso_local global i32 0, align 4
@IDS_NO_ENTRY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i32] [i32 37, i32 108, i32 115, i32 32, i32 47, i32 63, i32 0], align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wmain(i32 %0, i32** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32** %1, i32*** %5, align 8
  %9 = load i32, i32* @CMDLINE_LENGTH, align 4
  %10 = zext i32 %9 to i64
  %11 = call i8* @llvm.stacksave()
  store i8* %11, i8** %6, align 8
  %12 = alloca i32, i64 %10, align 16
  store i64 %10, i64* %7, align 8
  %13 = call i32 (...) @ConInitStdStreams()
  %14 = load i32, i32* %4, align 4
  %15 = icmp sle i32 %14, 1
  br i1 %15, label %16, label %23

16:                                               ; preds = %2
  %17 = load i32, i32* @StdOut, align 4
  %18 = load i32, i32* @IDS_HELP1, align 4
  %19 = call i32 @ConResPuts(i32 %17, i32 %18)
  %20 = load i32, i32* @StdOut, align 4
  %21 = load i32, i32* @IDS_HELP2, align 4
  %22 = call i32 @ConResPuts(i32 %20, i32 %21)
  store i32 0, i32* %3, align 4
  store i32 1, i32* %8, align 4
  br label %58

23:                                               ; preds = %2
  %24 = load i32, i32* %4, align 4
  %25 = icmp sgt i32 %24, 2
  br i1 %25, label %32, label %26

26:                                               ; preds = %23
  %27 = load i32**, i32*** %5, align 8
  %28 = getelementptr inbounds i32*, i32** %27, i64 1
  %29 = load i32*, i32** %28, align 8
  %30 = call i64 @wcscmp(i32* %29, i8* bitcast ([3 x i32]* @.str to i8*))
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %26, %23
  %33 = load i32, i32* @StdOut, align 4
  %34 = load i32, i32* @IDS_USAGE, align 4
  %35 = call i32 @ConResPuts(i32 %33, i32 %34)
  store i32 0, i32* %3, align 4
  store i32 1, i32* %8, align 4
  br label %58

36:                                               ; preds = %26
  %37 = load i32**, i32*** %5, align 8
  %38 = getelementptr inbounds i32*, i32** %37, i64 1
  %39 = load i32*, i32** %38, align 8
  %40 = call i32 @IsInternalCommand(i32* %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %49, label %42

42:                                               ; preds = %36
  %43 = load i32, i32* @StdOut, align 4
  %44 = load i32, i32* @IDS_NO_ENTRY, align 4
  %45 = load i32**, i32*** %5, align 8
  %46 = getelementptr inbounds i32*, i32** %45, i64 1
  %47 = load i32*, i32** %46, align 8
  %48 = call i32 @ConResPrintf(i32 %43, i32 %44, i32* %47)
  store i32 0, i32* %3, align 4
  store i32 1, i32* %8, align 4
  br label %58

49:                                               ; preds = %36
  %50 = mul nuw i64 4, %10
  %51 = trunc i64 %50 to i32
  %52 = load i32**, i32*** %5, align 8
  %53 = getelementptr inbounds i32*, i32** %52, i64 1
  %54 = load i32*, i32** %53, align 8
  %55 = call i32 @StringCbPrintfW(i32* %12, i32 %51, i8* bitcast ([7 x i32]* @.str.1 to i8*), i32* %54)
  %56 = call i32 (...) @_flushall()
  %57 = call i32 @_wsystem(i32* %12)
  store i32 %57, i32* %3, align 4
  store i32 1, i32* %8, align 4
  br label %58

58:                                               ; preds = %49, %42, %32, %16
  %59 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %59)
  %60 = load i32, i32* %3, align 4
  ret i32 %60
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @ConInitStdStreams(...) #2

declare dso_local i32 @ConResPuts(i32, i32) #2

declare dso_local i64 @wcscmp(i32*, i8*) #2

declare dso_local i32 @IsInternalCommand(i32*) #2

declare dso_local i32 @ConResPrintf(i32, i32, i32*) #2

declare dso_local i32 @StringCbPrintfW(i32*, i32, i8*, i32*) #2

declare dso_local i32 @_flushall(...) #2

declare dso_local i32 @_wsystem(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
