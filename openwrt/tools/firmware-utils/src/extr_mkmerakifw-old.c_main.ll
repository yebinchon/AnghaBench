; ModuleID = '/home/carl/AnghaBench/openwrt/tools/firmware-utils/src/extr_mkmerakifw-old.c_main.c'
source_filename = "/home/carl/AnghaBench/openwrt/tools/firmware-utils/src/extr_mkmerakifw-old.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EXIT_FAILURE = common dso_local global i32 0, align 4
@progname = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"B:i:o:sh\00", align 1
@optarg = common dso_local global i8* null, align 8
@board_id = common dso_local global i32* null, align 8
@strip_padding = common dso_local global i32 0, align 4
@EXIT_SUCCESS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"no board specified\00", align 1
@board = common dso_local global i32* null, align 8
@.str.2 = private unnamed_addr constant [19 x i8] c"unknown board \22%s\22\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"no input file specified\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"no output file specified\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.6 = private unnamed_addr constant [36 x i8] c"could not open \22%s\22 for reading: %s\00", align 1
@SEEK_END = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.8 = private unnamed_addr constant [36 x i8] c"could not open \22%s\22 for writing: %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %13 = load i32, i32* @EXIT_FAILURE, align 4
  store i32 %13, i32* %6, align 4
  store i8* null, i8** %7, align 8
  store i8* null, i8** %8, align 8
  %14 = load i8**, i8*** %5, align 8
  %15 = getelementptr inbounds i8*, i8** %14, i64 0
  %16 = load i8*, i8** %15, align 8
  %17 = call i32 @basename(i8* %16)
  store i32 %17, i32* @progname, align 4
  br label %18

18:                                               ; preds = %2, %41
  %19 = load i32, i32* %4, align 4
  %20 = load i8**, i8*** %5, align 8
  %21 = call i32 @getopt(i32 %19, i8** %20, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  store i32 %21, i32* %12, align 4
  %22 = load i32, i32* %12, align 4
  %23 = icmp eq i32 %22, -1
  br i1 %23, label %24, label %25

24:                                               ; preds = %18
  br label %42

25:                                               ; preds = %18
  %26 = load i32, i32* %12, align 4
  switch i32 %26, label %38 [
    i32 66, label %27
    i32 105, label %30
    i32 111, label %32
    i32 115, label %34
    i32 104, label %35
  ]

27:                                               ; preds = %25
  %28 = load i8*, i8** @optarg, align 8
  %29 = bitcast i8* %28 to i32*
  store i32* %29, i32** @board_id, align 8
  br label %41

30:                                               ; preds = %25
  %31 = load i8*, i8** @optarg, align 8
  store i8* %31, i8** %8, align 8
  br label %41

32:                                               ; preds = %25
  %33 = load i8*, i8** @optarg, align 8
  store i8* %33, i8** %7, align 8
  br label %41

34:                                               ; preds = %25
  store i32 1, i32* @strip_padding, align 4
  br label %41

35:                                               ; preds = %25
  %36 = load i32, i32* @EXIT_SUCCESS, align 4
  %37 = call i32 @usage(i32 %36)
  br label %41

38:                                               ; preds = %25
  %39 = load i32, i32* @EXIT_FAILURE, align 4
  %40 = call i32 @usage(i32 %39)
  br label %41

41:                                               ; preds = %38, %35, %34, %32, %30, %27
  br label %18

42:                                               ; preds = %24
  %43 = load i32*, i32** @board_id, align 8
  %44 = icmp eq i32* %43, null
  br i1 %44, label %45, label %47

45:                                               ; preds = %42
  %46 = call i32 (i8*, ...) @ERR(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  br label %99

47:                                               ; preds = %42
  %48 = load i32*, i32** @board_id, align 8
  %49 = call i32* @find_board(i32* %48)
  store i32* %49, i32** @board, align 8
  %50 = load i32*, i32** @board, align 8
  %51 = icmp eq i32* %50, null
  br i1 %51, label %52, label %55

52:                                               ; preds = %47
  %53 = load i32*, i32** @board_id, align 8
  %54 = call i32 (i8*, ...) @ERR(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i32* %53)
  br label %99

55:                                               ; preds = %47
  %56 = load i8*, i8** %8, align 8
  %57 = icmp eq i8* %56, null
  br i1 %57, label %58, label %60

58:                                               ; preds = %55
  %59 = call i32 (i8*, ...) @ERR(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0))
  br label %99

60:                                               ; preds = %55
  %61 = load i8*, i8** %7, align 8
  %62 = icmp eq i8* %61, null
  br i1 %62, label %63, label %65

63:                                               ; preds = %60
  %64 = call i32 (i8*, ...) @ERR(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0))
  br label %99

65:                                               ; preds = %60
  %66 = load i8*, i8** %8, align 8
  %67 = call i32* @fopen(i8* %66, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  store i32* %67, i32** %10, align 8
  %68 = load i32*, i32** %10, align 8
  %69 = icmp eq i32* %68, null
  br i1 %69, label %70, label %73

70:                                               ; preds = %65
  %71 = load i8*, i8** %8, align 8
  %72 = call i32 @ERRS(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.6, i64 0, i64 0), i8* %71)
  br label %99

73:                                               ; preds = %65
  %74 = load i32*, i32** %10, align 8
  %75 = load i32, i32* @SEEK_END, align 4
  %76 = call i32 @fseek(i32* %74, i32 0, i32 %75)
  %77 = load i32*, i32** %10, align 8
  %78 = call i64 @ftell(i32* %77)
  store i64 %78, i64* %11, align 8
  %79 = load i32*, i32** %10, align 8
  %80 = call i32 @rewind(i32* %79)
  %81 = load i8*, i8** %7, align 8
  %82 = call i32* @fopen(i8* %81, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0))
  store i32* %82, i32** %9, align 8
  %83 = load i32*, i32** %9, align 8
  %84 = icmp eq i32* %83, null
  br i1 %84, label %85, label %88

85:                                               ; preds = %73
  %86 = load i8*, i8** %7, align 8
  %87 = call i32 @ERRS(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.8, i64 0, i64 0), i8* %86)
  br label %96

88:                                               ; preds = %73
  %89 = load i32*, i32** @board, align 8
  %90 = load i64, i64* %11, align 8
  %91 = load i32*, i32** %9, align 8
  %92 = load i32*, i32** %10, align 8
  %93 = call i32 @meraki_build_hdr(i32* %89, i64 %90, i32* %91, i32* %92)
  store i32 %93, i32* %6, align 4
  %94 = load i32*, i32** %9, align 8
  %95 = call i32 @fclose(i32* %94)
  br label %96

96:                                               ; preds = %88, %85
  %97 = load i32*, i32** %10, align 8
  %98 = call i32 @fclose(i32* %97)
  br label %99

99:                                               ; preds = %96, %70, %63, %58, %52, %45
  %100 = load i32, i32* %6, align 4
  ret i32 %100
}

declare dso_local i32 @basename(i8*) #1

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i32 @usage(i32) #1

declare dso_local i32 @ERR(i8*, ...) #1

declare dso_local i32* @find_board(i32*) #1

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @ERRS(i8*, i8*) #1

declare dso_local i32 @fseek(i32*, i32, i32) #1

declare dso_local i64 @ftell(i32*) #1

declare dso_local i32 @rewind(i32*) #1

declare dso_local i32 @meraki_build_hdr(i32*, i64, i32*, i32*) #1

declare dso_local i32 @fclose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
