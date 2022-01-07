; ModuleID = '/home/carl/AnghaBench/nnn/src/extr_nnn.c_xlink.c'
source_filename = "/home/carl/AnghaBench/nnn/src/extr_nnn.c_xlink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@pselbuf = common dso_local global i8* null, align 8
@selbufpos = common dso_local global i64 0, align 8
@messages = common dso_local global i8** null, align 8
@NONE_SELECTED = common dso_local global i64 0, align 8
@PATH_MAX = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [13 x i8] c"none created\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i8*, i32*, i32)* @xlink to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xlink(i8* %0, i8* %1, i8* %2, i32* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32 (i8*, i8*)*, align 8
  store i8* %0, i8** %7, align 8
  store i8* %1, i8** %8, align 8
  store i8* %2, i8** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32 %4, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %19 = load i8*, i8** @pselbuf, align 8
  store i8* %19, i8** %13, align 8
  store i64 0, i64* %15, align 8
  store i32 (i8*, i8*)* null, i32 (i8*, i8*)** %18, align 8
  %20 = load i64, i64* @selbufpos, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %29, label %22

22:                                               ; preds = %5
  %23 = load i8**, i8*** @messages, align 8
  %24 = load i64, i64* @NONE_SELECTED, align 8
  %25 = getelementptr inbounds i8*, i8** %23, i64 %24
  %26 = load i8*, i8** %25, align 8
  %27 = load i32*, i32** %10, align 8
  %28 = call i32 @printwait(i8* %26, i32* %27)
  store i32 -1, i32* %6, align 4
  br label %84

29:                                               ; preds = %5
  %30 = call i32 (...) @endselection()
  %31 = load i32, i32* %11, align 4
  %32 = icmp eq i32 %31, 115
  br i1 %32, label %33, label %34

33:                                               ; preds = %29
  store i32 (i8*, i8*)* @symlink, i32 (i8*, i8*)** %18, align 8
  br label %35

34:                                               ; preds = %29
  store i32 (i8*, i8*)* @link, i32 (i8*, i8*)** %18, align 8
  br label %35

35:                                               ; preds = %34, %33
  br label %36

36:                                               ; preds = %67, %35
  %37 = load i64, i64* %15, align 8
  %38 = load i64, i64* @selbufpos, align 8
  %39 = icmp ult i64 %37, %38
  br i1 %39, label %40, label %76

40:                                               ; preds = %36
  %41 = load i8*, i8** %13, align 8
  %42 = call i64 @strlen(i8* %41)
  store i64 %42, i64* %16, align 8
  %43 = load i8*, i8** %13, align 8
  %44 = call i8* @xbasename(i8* %43)
  store i8* %44, i8** %14, align 8
  %45 = load i8*, i8** %8, align 8
  %46 = load i8*, i8** %14, align 8
  %47 = load i8*, i8** %9, align 8
  %48 = call i64 @mkpath(i8* %45, i8* %46, i8* %47)
  store i64 %48, i64* %17, align 8
  %49 = load i8*, i8** %9, align 8
  %50 = load i64, i64* %17, align 8
  %51 = getelementptr inbounds i8, i8* %49, i64 %50
  %52 = getelementptr inbounds i8, i8* %51, i64 -1
  %53 = load i8*, i8** %7, align 8
  %54 = load i64, i64* @PATH_MAX, align 8
  %55 = load i64, i64* %17, align 8
  %56 = sub i64 %54, %55
  %57 = sub i64 %56, 1
  %58 = call i32 @xstrlcpy(i8* %52, i8* %53, i64 %57)
  %59 = load i32 (i8*, i8*)*, i32 (i8*, i8*)** %18, align 8
  %60 = load i8*, i8** %13, align 8
  %61 = load i8*, i8** %9, align 8
  %62 = call i32 %59(i8* %60, i8* %61)
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %67, label %64

64:                                               ; preds = %40
  %65 = load i32, i32* %12, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %12, align 4
  br label %67

67:                                               ; preds = %64, %40
  %68 = load i64, i64* %16, align 8
  %69 = add i64 %68, 1
  %70 = load i64, i64* %15, align 8
  %71 = add i64 %70, %69
  store i64 %71, i64* %15, align 8
  %72 = load i64, i64* %16, align 8
  %73 = add i64 %72, 1
  %74 = load i8*, i8** %13, align 8
  %75 = getelementptr inbounds i8, i8* %74, i64 %73
  store i8* %75, i8** %13, align 8
  br label %36

76:                                               ; preds = %36
  %77 = load i32, i32* %12, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %82, label %79

79:                                               ; preds = %76
  %80 = load i32*, i32** %10, align 8
  %81 = call i32 @printwait(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32* %80)
  br label %82

82:                                               ; preds = %79, %76
  %83 = load i32, i32* %12, align 4
  store i32 %83, i32* %6, align 4
  br label %84

84:                                               ; preds = %82, %22
  %85 = load i32, i32* %6, align 4
  ret i32 %85
}

declare dso_local i32 @printwait(i8*, i32*) #1

declare dso_local i32 @endselection(...) #1

declare dso_local i32 @symlink(i8*, i8*) #1

declare dso_local i32 @link(i8*, i8*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i8* @xbasename(i8*) #1

declare dso_local i64 @mkpath(i8*, i8*, i8*) #1

declare dso_local i32 @xstrlcpy(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
