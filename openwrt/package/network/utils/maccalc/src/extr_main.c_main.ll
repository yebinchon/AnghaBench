; ModuleID = '/home/carl/AnghaBench/openwrt/package/network/utils/maccalc/src/extr_main.c_main.c'
source_filename = "/home/carl/AnghaBench/openwrt/package/network/utils/maccalc/src/extr_main.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@maccalc_name = common dso_local global i8* null, align 8
@EXIT_FAILURE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"add\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"and\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"or\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"xor\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"mac2bin\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"bin2mac\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [22 x i8] c"unknown command '%s'\0A\00", align 1
@EXIT_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32 (i32, i8**)*, align 8
  %7 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %8 = load i8**, i8*** %5, align 8
  %9 = getelementptr inbounds i8*, i8** %8, i64 0
  %10 = load i8*, i8** %9, align 8
  store i8* %10, i8** @maccalc_name, align 8
  %11 = load i32, i32* %4, align 4
  %12 = icmp slt i32 %11, 2
  br i1 %12, label %13, label %16

13:                                               ; preds = %2
  %14 = call i32 (...) @usage()
  %15 = load i32, i32* @EXIT_FAILURE, align 4
  store i32 %15, i32* %3, align 4
  br label %86

16:                                               ; preds = %2
  %17 = load i8**, i8*** %5, align 8
  %18 = getelementptr inbounds i8*, i8** %17, i64 1
  %19 = load i8*, i8** %18, align 8
  %20 = call i64 @strcmp(i8* %19, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %16
  store i32 (i32, i8**)* @maccalc_do_add, i32 (i32, i8**)** %6, align 8
  br label %71

23:                                               ; preds = %16
  %24 = load i8**, i8*** %5, align 8
  %25 = getelementptr inbounds i8*, i8** %24, i64 1
  %26 = load i8*, i8** %25, align 8
  %27 = call i64 @strcmp(i8* %26, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %23
  store i32 (i32, i8**)* @maccalc_do_and, i32 (i32, i8**)** %6, align 8
  br label %70

30:                                               ; preds = %23
  %31 = load i8**, i8*** %5, align 8
  %32 = getelementptr inbounds i8*, i8** %31, i64 1
  %33 = load i8*, i8** %32, align 8
  %34 = call i64 @strcmp(i8* %33, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %30
  store i32 (i32, i8**)* @maccalc_do_or, i32 (i32, i8**)** %6, align 8
  br label %69

37:                                               ; preds = %30
  %38 = load i8**, i8*** %5, align 8
  %39 = getelementptr inbounds i8*, i8** %38, i64 1
  %40 = load i8*, i8** %39, align 8
  %41 = call i64 @strcmp(i8* %40, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  %42 = icmp eq i64 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %37
  store i32 (i32, i8**)* @maccalc_do_xor, i32 (i32, i8**)** %6, align 8
  br label %68

44:                                               ; preds = %37
  %45 = load i8**, i8*** %5, align 8
  %46 = getelementptr inbounds i8*, i8** %45, i64 1
  %47 = load i8*, i8** %46, align 8
  %48 = call i64 @strcmp(i8* %47, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0))
  %49 = icmp eq i64 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %44
  store i32 (i32, i8**)* @maccalc_do_mac2bin, i32 (i32, i8**)** %6, align 8
  br label %67

51:                                               ; preds = %44
  %52 = load i8**, i8*** %5, align 8
  %53 = getelementptr inbounds i8*, i8** %52, i64 1
  %54 = load i8*, i8** %53, align 8
  %55 = call i64 @strcmp(i8* %54, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0))
  %56 = icmp eq i64 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %51
  store i32 (i32, i8**)* @maccalc_do_bin2mac, i32 (i32, i8**)** %6, align 8
  br label %66

58:                                               ; preds = %51
  %59 = load i32, i32* @stderr, align 4
  %60 = load i8**, i8*** %5, align 8
  %61 = getelementptr inbounds i8*, i8** %60, i64 1
  %62 = load i8*, i8** %61, align 8
  %63 = call i32 @fprintf(i32 %59, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i64 0, i64 0), i8* %62)
  %64 = call i32 (...) @usage()
  %65 = load i32, i32* @EXIT_FAILURE, align 4
  store i32 %65, i32* %3, align 4
  br label %86

66:                                               ; preds = %57
  br label %67

67:                                               ; preds = %66, %50
  br label %68

68:                                               ; preds = %67, %43
  br label %69

69:                                               ; preds = %68, %36
  br label %70

70:                                               ; preds = %69, %29
  br label %71

71:                                               ; preds = %70, %22
  %72 = load i32, i32* %4, align 4
  %73 = sub nsw i32 %72, 2
  store i32 %73, i32* %4, align 4
  %74 = load i8**, i8*** %5, align 8
  %75 = getelementptr inbounds i8*, i8** %74, i64 2
  store i8** %75, i8*** %5, align 8
  %76 = load i32 (i32, i8**)*, i32 (i32, i8**)** %6, align 8
  %77 = load i32, i32* %4, align 4
  %78 = load i8**, i8*** %5, align 8
  %79 = call i32 %76(i32 %77, i8** %78)
  store i32 %79, i32* %7, align 4
  %80 = load i32, i32* %7, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %84

82:                                               ; preds = %71
  %83 = load i32, i32* @EXIT_FAILURE, align 4
  store i32 %83, i32* %3, align 4
  br label %86

84:                                               ; preds = %71
  %85 = load i32, i32* @EXIT_SUCCESS, align 4
  store i32 %85, i32* %3, align 4
  br label %86

86:                                               ; preds = %84, %82, %58, %13
  %87 = load i32, i32* %3, align 4
  ret i32 %87
}

declare dso_local i32 @usage(...) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @maccalc_do_add(i32, i8**) #1

declare dso_local i32 @maccalc_do_and(i32, i8**) #1

declare dso_local i32 @maccalc_do_or(i32, i8**) #1

declare dso_local i32 @maccalc_do_xor(i32, i8**) #1

declare dso_local i32 @maccalc_do_mac2bin(i32, i8**) #1

declare dso_local i32 @maccalc_do_bin2mac(i32, i8**) #1

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
