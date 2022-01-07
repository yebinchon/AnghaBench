; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/cmdutils/tree/extr_tree.c_wmain.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/cmdutils/tree/extr_tree.c_wmain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@StdOut = common dso_local global i32 0, align 4
@IDS_USAGE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i8* null, align 8
@bShowFiles = common dso_local global i8* null, align 8
@bUseAscii = common dso_local global i8* null, align 8
@FALSE = common dso_local global i64 0, align 8
@IDS_NO_SUBDIRECTORIES = common dso_local global i32 0, align 4
@IDS_FOLDER_PATH = common dso_local global i32 0, align 4
@IDS_VOL_SERIAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i32] [i32 58, i32 0], align 4
@.str.1 = private unnamed_addr constant [6 x i32] [i32 37, i32 115, i32 58, i32 46, i32 10, i32 0], align 4
@.str.2 = private unnamed_addr constant [11 x i32] [i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 0], align 4
@.str.3 = private unnamed_addr constant [2 x i32] [i32 10, i32 0], align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wmain(i32 %0, i32** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store i32** %1, i32*** %5, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32* null, i32** %8, align 8
  store i32 0, i32* %9, align 4
  store i32* null, i32** %10, align 8
  %13 = call i32 (...) @ConInitStdStreams()
  store i32 1, i32* %11, align 4
  br label %14

14:                                               ; preds = %71, %2
  %15 = load i32, i32* %11, align 4
  %16 = load i32, i32* %4, align 4
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %18, label %74

18:                                               ; preds = %14
  %19 = load i32**, i32*** %5, align 8
  %20 = load i32, i32* %11, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i32*, i32** %19, i64 %21
  %23 = load i32*, i32** %22, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 0
  %25 = load i32, i32* %24, align 4
  %26 = icmp eq i32 %25, 45
  br i1 %26, label %36, label %27

27:                                               ; preds = %18
  %28 = load i32**, i32*** %5, align 8
  %29 = load i32, i32* %11, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32*, i32** %28, i64 %30
  %32 = load i32*, i32** %31, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 0
  %34 = load i32, i32* %33, align 4
  %35 = icmp eq i32 %34, 47
  br i1 %35, label %36, label %55

36:                                               ; preds = %27, %18
  %37 = load i32**, i32*** %5, align 8
  %38 = load i32, i32* %11, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32*, i32** %37, i64 %39
  %41 = load i32*, i32** %40, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 1
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @towlower(i32 %43)
  switch i32 %44, label %53 [
    i32 63, label %45
    i32 102, label %49
    i32 97, label %51
  ]

45:                                               ; preds = %36
  %46 = load i32, i32* @StdOut, align 4
  %47 = load i32, i32* @IDS_USAGE, align 4
  %48 = call i32 @ConResPuts(i32 %46, i32 %47)
  store i32 0, i32* %3, align 4
  br label %118

49:                                               ; preds = %36
  %50 = load i8*, i8** @TRUE, align 8
  store i8* %50, i8** @bShowFiles, align 8
  br label %54

51:                                               ; preds = %36
  %52 = load i8*, i8** @TRUE, align 8
  store i8* %52, i8** @bUseAscii, align 8
  br label %54

53:                                               ; preds = %36
  br label %54

54:                                               ; preds = %53, %51, %49
  br label %70

55:                                               ; preds = %27
  %56 = load i32**, i32*** %5, align 8
  %57 = load i32, i32* %11, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32*, i32** %56, i64 %58
  %60 = load i32*, i32** %59, align 8
  %61 = call i64 @SetCurrentDirectoryW(i32* %60)
  store i64 %61, i64* %12, align 8
  %62 = load i64, i64* %12, align 8
  %63 = load i64, i64* @FALSE, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %65, label %69

65:                                               ; preds = %55
  %66 = load i32, i32* @StdOut, align 4
  %67 = load i32, i32* @IDS_NO_SUBDIRECTORIES, align 4
  %68 = call i32 @ConResPuts(i32 %66, i32 %67)
  store i32 1, i32* %3, align 4
  br label %118

69:                                               ; preds = %55
  br label %70

70:                                               ; preds = %69, %54
  br label %71

71:                                               ; preds = %70
  %72 = load i32, i32* %11, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %11, align 4
  br label %14

74:                                               ; preds = %14
  %75 = load i32, i32* @StdOut, align 4
  %76 = load i32, i32* @IDS_FOLDER_PATH, align 4
  %77 = call i32 @ConResPuts(i32 %75, i32 %76)
  %78 = call i32 @GetVolumeInformationW(i32* null, i32* null, i32 0, i32* %6, i32* null, i32* null, i32* null, i32 0)
  %79 = load i32, i32* @StdOut, align 4
  %80 = load i32, i32* @IDS_VOL_SERIAL, align 4
  %81 = load i32, i32* %6, align 4
  %82 = ashr i32 %81, 16
  %83 = load i32, i32* %6, align 4
  %84 = and i32 %83, 65535
  %85 = call i32 @ConResPrintf(i32 %79, i32 %80, i32 %82, i32 %84)
  %86 = call i32 @GetCurrentDirectoryW(i32 1, i32* %7)
  store i32 %86, i32* %9, align 4
  %87 = load i32, i32* %9, align 4
  %88 = sext i32 %87 to i64
  %89 = mul i64 %88, 4
  %90 = trunc i64 %89 to i32
  %91 = call i64 @malloc(i32 %90)
  %92 = inttoptr i64 %91 to i32*
  store i32* %92, i32** %8, align 8
  %93 = load i32, i32* %9, align 4
  %94 = load i32*, i32** %8, align 8
  %95 = call i32 @GetCurrentDirectoryW(i32 %93, i32* %94)
  %96 = load i32, i32* %9, align 4
  %97 = sext i32 %96 to i64
  %98 = mul i64 %97, 4
  %99 = trunc i64 %98 to i32
  %100 = call i64 @malloc(i32 %99)
  %101 = inttoptr i64 %100 to i32*
  store i32* %101, i32** %10, align 8
  %102 = load i32*, i32** %10, align 8
  %103 = load i32*, i32** %8, align 8
  %104 = call i32 @wcscpy(i32* %102, i32* %103)
  %105 = load i32*, i32** %10, align 8
  %106 = call i32 @wcstok(i32* %105, i8* bitcast ([2 x i32]* @.str to i8*))
  %107 = load i32, i32* @StdOut, align 4
  %108 = load i32*, i32** %10, align 8
  %109 = call i32 @ConPrintf(i32 %107, i8* bitcast ([6 x i32]* @.str.1 to i8*), i32* %108)
  %110 = load i32*, i32** %10, align 8
  %111 = call i32 @free(i32* %110)
  %112 = load i32*, i32** %8, align 8
  %113 = call i32 @GetDirectoryStructure(i32* %112, i32 1, i8* bitcast ([11 x i32]* @.str.2 to i8*))
  %114 = load i32*, i32** %8, align 8
  %115 = call i32 @free(i32* %114)
  %116 = load i32, i32* @StdOut, align 4
  %117 = call i32 @ConPuts(i32 %116, i8* bitcast ([2 x i32]* @.str.3 to i8*))
  store i32 0, i32* %3, align 4
  br label %118

118:                                              ; preds = %74, %65, %45
  %119 = load i32, i32* %3, align 4
  ret i32 %119
}

declare dso_local i32 @ConInitStdStreams(...) #1

declare dso_local i32 @towlower(i32) #1

declare dso_local i32 @ConResPuts(i32, i32) #1

declare dso_local i64 @SetCurrentDirectoryW(i32*) #1

declare dso_local i32 @GetVolumeInformationW(i32*, i32*, i32, i32*, i32*, i32*, i32*, i32) #1

declare dso_local i32 @ConResPrintf(i32, i32, i32, i32) #1

declare dso_local i32 @GetCurrentDirectoryW(i32, i32*) #1

declare dso_local i64 @malloc(i32) #1

declare dso_local i32 @wcscpy(i32*, i32*) #1

declare dso_local i32 @wcstok(i32*, i8*) #1

declare dso_local i32 @ConPrintf(i32, i8*, i32*) #1

declare dso_local i32 @free(i32*) #1

declare dso_local i32 @GetDirectoryStructure(i32*, i32, i8*) #1

declare dso_local i32 @ConPuts(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
