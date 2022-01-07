; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/network/wlanconf/extr_wlanconf.c_ParseCmdline.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/network/wlanconf/extr_wlanconf.c_ParseCmdline.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TRUE = common dso_local global i8* null, align 8
@bScan = common dso_local global i8* null, align 8
@bDisconnect = common dso_local global i8* null, align 8
@StdOut = common dso_local global i32 0, align 4
@IDS_USAGE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i8* null, align 8
@bConnect = common dso_local global i8* null, align 8
@sSsid = common dso_local global i32* null, align 8
@sWepKey = common dso_local global i32* null, align 8
@bAdhoc = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @ParseCmdline(i32 %0, i32** %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32**, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32** %1, i32*** %5, align 8
  store i32 1, i32* %6, align 4
  br label %7

7:                                                ; preds = %81, %2
  %8 = load i32, i32* %6, align 4
  %9 = load i32, i32* %4, align 4
  %10 = icmp slt i32 %8, %9
  br i1 %10, label %11, label %84

11:                                               ; preds = %7
  %12 = load i32**, i32*** %5, align 8
  %13 = load i32, i32* %6, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds i32*, i32** %12, i64 %14
  %16 = load i32*, i32** %15, align 8
  %17 = getelementptr inbounds i32, i32* %16, i64 0
  %18 = load i32, i32* %17, align 4
  %19 = icmp eq i32 %18, 45
  br i1 %19, label %20, label %75

20:                                               ; preds = %11
  %21 = load i32**, i32*** %5, align 8
  %22 = load i32, i32* %6, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i32*, i32** %21, i64 %23
  %25 = load i32*, i32** %24, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 1
  %27 = load i32, i32* %26, align 4
  switch i32 %27, label %69 [
    i32 115, label %28
    i32 100, label %30
    i32 99, label %32
    i32 119, label %50
    i32 97, label %67
  ]

28:                                               ; preds = %20
  %29 = load i8*, i8** @TRUE, align 8
  store i8* %29, i8** @bScan, align 8
  br label %74

30:                                               ; preds = %20
  %31 = load i8*, i8** @TRUE, align 8
  store i8* %31, i8** @bDisconnect, align 8
  br label %74

32:                                               ; preds = %20
  %33 = load i32, i32* %6, align 4
  %34 = load i32, i32* %4, align 4
  %35 = sub nsw i32 %34, 1
  %36 = icmp eq i32 %33, %35
  br i1 %36, label %37, label %42

37:                                               ; preds = %32
  %38 = load i32, i32* @StdOut, align 4
  %39 = load i32, i32* @IDS_USAGE, align 4
  %40 = call i32 @ConResPuts(i32 %38, i32 %39)
  %41 = load i8*, i8** @FALSE, align 8
  store i8* %41, i8** %3, align 8
  br label %86

42:                                               ; preds = %32
  %43 = load i8*, i8** @TRUE, align 8
  store i8* %43, i8** @bConnect, align 8
  %44 = load i32**, i32*** %5, align 8
  %45 = load i32, i32* %6, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %6, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32*, i32** %44, i64 %47
  %49 = load i32*, i32** %48, align 8
  store i32* %49, i32** @sSsid, align 8
  br label %74

50:                                               ; preds = %20
  %51 = load i32, i32* %6, align 4
  %52 = load i32, i32* %4, align 4
  %53 = sub nsw i32 %52, 1
  %54 = icmp eq i32 %51, %53
  br i1 %54, label %55, label %60

55:                                               ; preds = %50
  %56 = load i32, i32* @StdOut, align 4
  %57 = load i32, i32* @IDS_USAGE, align 4
  %58 = call i32 @ConResPuts(i32 %56, i32 %57)
  %59 = load i8*, i8** @FALSE, align 8
  store i8* %59, i8** %3, align 8
  br label %86

60:                                               ; preds = %50
  %61 = load i32**, i32*** %5, align 8
  %62 = load i32, i32* %6, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %6, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i32*, i32** %61, i64 %64
  %66 = load i32*, i32** %65, align 8
  store i32* %66, i32** @sWepKey, align 8
  br label %74

67:                                               ; preds = %20
  %68 = load i8*, i8** @TRUE, align 8
  store i8* %68, i8** @bAdhoc, align 8
  br label %74

69:                                               ; preds = %20
  %70 = load i32, i32* @StdOut, align 4
  %71 = load i32, i32* @IDS_USAGE, align 4
  %72 = call i32 @ConResPuts(i32 %70, i32 %71)
  %73 = load i8*, i8** @FALSE, align 8
  store i8* %73, i8** %3, align 8
  br label %86

74:                                               ; preds = %67, %60, %42, %30, %28
  br label %80

75:                                               ; preds = %11
  %76 = load i32, i32* @StdOut, align 4
  %77 = load i32, i32* @IDS_USAGE, align 4
  %78 = call i32 @ConResPuts(i32 %76, i32 %77)
  %79 = load i8*, i8** @FALSE, align 8
  store i8* %79, i8** %3, align 8
  br label %86

80:                                               ; preds = %74
  br label %81

81:                                               ; preds = %80
  %82 = load i32, i32* %6, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %6, align 4
  br label %7

84:                                               ; preds = %7
  %85 = load i8*, i8** @TRUE, align 8
  store i8* %85, i8** %3, align 8
  br label %86

86:                                               ; preds = %84, %75, %69, %55, %37
  %87 = load i8*, i8** %3, align 8
  ret i8* %87
}

declare dso_local i32 @ConResPuts(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
