; ModuleID = '/home/carl/AnghaBench/openwrt/tools/firmware-utils/src/extr_mkzynfw.c_main.c'
source_filename = "/home/carl/AnghaBench/openwrt/tools/firmware-utils/src/extr_mkzynfw.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EXIT_FAILURE = common dso_local global i32 0, align 4
@progname = common dso_local global i32 0, align 4
@opterr = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [11 x i8] c"b:B:ho:r:v\00", align 1
@optarg = common dso_local global i32 0, align 4
@verblevel = common dso_local global i32 0, align 4
@EXIT_SUCCESS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"invalid option: -%c\00", align 1
@optopt = common dso_local global i8* null, align 8
@board = common dso_local global i32* null, align 8
@.str.2 = private unnamed_addr constant [19 x i8] c"no board specified\00", align 1
@ofname = common dso_local global i32* null, align 8
@.str.3 = private unnamed_addr constant [25 x i8] c"no output file specified\00", align 1
@optind = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [19 x i8] c"invalid option: %s\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.6 = private unnamed_addr constant [32 x i8] c"could not open \22%s\22 for writing\00", align 1
@.str.7 = private unnamed_addr constant [25 x i8] c"Image file %s completed.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 0, i32* %6, align 4
  %10 = load i32, i32* @EXIT_FAILURE, align 4
  store i32 %10, i32* %8, align 4
  %11 = load i8**, i8*** %5, align 8
  %12 = getelementptr inbounds i8*, i8** %11, i64 0
  %13 = load i8*, i8** %12, align 8
  %14 = call i32 @basename(i8* %13)
  store i32 %14, i32* @progname, align 4
  store i64 0, i64* @opterr, align 8
  br label %15

15:                                               ; preds = %2, %49
  store i32 0, i32* %6, align 4
  %16 = load i32, i32* %4, align 4
  %17 = load i8**, i8*** %5, align 8
  %18 = call i32 @getopt(i32 %16, i8** %17, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  store i32 %18, i32* %7, align 4
  %19 = load i32, i32* %7, align 4
  %20 = icmp eq i32 %19, -1
  br i1 %20, label %21, label %22

21:                                               ; preds = %15
  br label %50

22:                                               ; preds = %15
  %23 = load i32, i32* %7, align 4
  switch i32 %23, label %42 [
    i32 98, label %24
    i32 114, label %24
    i32 66, label %28
    i32 111, label %32
    i32 118, label %36
    i32 104, label %39
  ]

24:                                               ; preds = %22, %22
  %25 = load i32, i32* %7, align 4
  %26 = load i32, i32* @optarg, align 4
  %27 = call i32 @parse_opt_block(i32 %25, i32 %26)
  store i32 %27, i32* %6, align 4
  br label %43

28:                                               ; preds = %22
  %29 = load i32, i32* %7, align 4
  %30 = load i32, i32* @optarg, align 4
  %31 = call i32 @parse_opt_board(i32 %29, i32 %30)
  store i32 %31, i32* %6, align 4
  br label %43

32:                                               ; preds = %22
  %33 = load i32, i32* %7, align 4
  %34 = load i32, i32* @optarg, align 4
  %35 = call i32 @parse_opt_ofname(i32 %33, i32 %34)
  store i32 %35, i32* %6, align 4
  br label %43

36:                                               ; preds = %22
  %37 = load i32, i32* @verblevel, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* @verblevel, align 4
  br label %43

39:                                               ; preds = %22
  %40 = load i32, i32* @EXIT_SUCCESS, align 4
  %41 = call i32 @usage(i32 %40)
  br label %43

42:                                               ; preds = %22
  store i32 1, i32* %6, align 4
  br label %43

43:                                               ; preds = %42, %39, %36, %32, %28, %24
  %44 = load i32, i32* %6, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %43
  %47 = load i8*, i8** @optopt, align 8
  %48 = call i32 (i8*, ...) @ERR(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i8* %47)
  br label %104

49:                                               ; preds = %43
  br label %15

50:                                               ; preds = %21
  %51 = load i32*, i32** @board, align 8
  %52 = icmp eq i32* %51, null
  br i1 %52, label %53, label %55

53:                                               ; preds = %50
  %54 = call i32 (i8*, ...) @ERR(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  br label %104

55:                                               ; preds = %50
  %56 = load i32*, i32** @ofname, align 8
  %57 = icmp eq i32* %56, null
  br i1 %57, label %58, label %60

58:                                               ; preds = %55
  %59 = call i32 (i8*, ...) @ERR(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0))
  br label %104

60:                                               ; preds = %55
  %61 = load i32, i32* @optind, align 4
  %62 = load i32, i32* %4, align 4
  %63 = icmp slt i32 %61, %62
  br i1 %63, label %64, label %71

64:                                               ; preds = %60
  %65 = load i8**, i8*** %5, align 8
  %66 = load i32, i32* @optind, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i8*, i8** %65, i64 %67
  %69 = load i8*, i8** %68, align 8
  %70 = call i32 (i8*, ...) @ERR(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0), i8* %69)
  br label %104

71:                                               ; preds = %60
  %72 = call i64 (...) @process_blocks()
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %71
  br label %104

75:                                               ; preds = %71
  %76 = load i32*, i32** @ofname, align 8
  %77 = call i32* @fopen(i32* %76, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  store i32* %77, i32** %9, align 8
  %78 = load i32*, i32** %9, align 8
  %79 = icmp eq i32* %78, null
  br i1 %79, label %80, label %83

80:                                               ; preds = %75
  %81 = load i32*, i32** @ofname, align 8
  %82 = call i32 @ERRS(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.6, i64 0, i64 0), i32* %81)
  br label %104

83:                                               ; preds = %75
  %84 = load i32*, i32** %9, align 8
  %85 = call i64 @write_out_image(i32* %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %83
  br label %92

88:                                               ; preds = %83
  %89 = load i32*, i32** @ofname, align 8
  %90 = call i32 @DBG(i32 1, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.7, i64 0, i64 0), i32* %89)
  %91 = load i32, i32* @EXIT_SUCCESS, align 4
  store i32 %91, i32* %8, align 4
  br label %92

92:                                               ; preds = %88, %87
  %93 = load i32*, i32** %9, align 8
  %94 = call i32 @fflush(i32* %93)
  %95 = load i32*, i32** %9, align 8
  %96 = call i32 @fclose(i32* %95)
  %97 = load i32, i32* %8, align 4
  %98 = load i32, i32* @EXIT_SUCCESS, align 4
  %99 = icmp ne i32 %97, %98
  br i1 %99, label %100, label %103

100:                                              ; preds = %92
  %101 = load i32*, i32** @ofname, align 8
  %102 = call i32 @unlink(i32* %101)
  br label %103

103:                                              ; preds = %100, %92
  br label %104

104:                                              ; preds = %103, %80, %74, %64, %58, %53, %46
  %105 = load i32, i32* %8, align 4
  ret i32 %105
}

declare dso_local i32 @basename(i8*) #1

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i32 @parse_opt_block(i32, i32) #1

declare dso_local i32 @parse_opt_board(i32, i32) #1

declare dso_local i32 @parse_opt_ofname(i32, i32) #1

declare dso_local i32 @usage(i32) #1

declare dso_local i32 @ERR(i8*, ...) #1

declare dso_local i64 @process_blocks(...) #1

declare dso_local i32* @fopen(i32*, i8*) #1

declare dso_local i32 @ERRS(i8*, i32*) #1

declare dso_local i64 @write_out_image(i32*) #1

declare dso_local i32 @DBG(i32, i8*, i32*) #1

declare dso_local i32 @fflush(i32*) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i32 @unlink(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
