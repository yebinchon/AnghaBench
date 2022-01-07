; ModuleID = '/home/carl/AnghaBench/openwrt/tools/firmware-utils/src/extr_mkcasfw.c_main.c'
source_filename = "/home/carl/AnghaBench/openwrt/tools/firmware-utils/src/extr_mkcasfw.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ERR_FATAL = common dso_local global i32 0, align 4
@progname = common dso_local global i32 0, align 4
@opterr = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [16 x i8] c"B:C:dhK:r:vw:x:\00", align 1
@optarg = common dso_local global i32 0, align 4
@invalid_causes_error = common dso_local global i64 0, align 8
@keep_invalid_images = common dso_local global i64 0, align 8
@verblevel = common dso_local global i32 0, align 4
@EXIT_SUCCESS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"invalid option: -%c\00", align 1
@optopt = common dso_local global i8* null, align 8
@board = common dso_local global i32* null, align 8
@.str.2 = private unnamed_addr constant [19 x i8] c"no board specified\00", align 1
@optind = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [25 x i8] c"no output file specified\00", align 1
@ofname = common dso_local global i8* null, align 8
@.str.4 = private unnamed_addr constant [19 x i8] c"invalid option: %s\00", align 1
@ERR_INVALID_IMAGE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [43 x i8] c"generation of invalid images \22%s\22 disabled\00", align 1
@.str.6 = private unnamed_addr constant [31 x i8] c"generating invalid image: \22%s\22\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.8 = private unnamed_addr constant [32 x i8] c"could not open \22%s\22 for writing\00", align 1
@.str.9 = private unnamed_addr constant [25 x i8] c"Image file %s completed.\00", align 1
@EXIT_FAILURE = common dso_local global i32 0, align 4

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
  %10 = load i32, i32* @ERR_FATAL, align 4
  store i32 %10, i32* %8, align 4
  %11 = load i8**, i8*** %5, align 8
  %12 = getelementptr inbounds i8*, i8** %11, i64 0
  %13 = load i8*, i8** %12, align 8
  %14 = call i32 @basename(i8* %13)
  store i32 %14, i32* @progname, align 4
  store i64 0, i64* @opterr, align 8
  br label %15

15:                                               ; preds = %2, %47
  store i32 0, i32* %6, align 4
  %16 = load i32, i32* %4, align 4
  %17 = load i8**, i8*** %5, align 8
  %18 = call i32 @getopt(i32 %16, i8** %17, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  store i32 %18, i32* %7, align 4
  %19 = load i32, i32* %7, align 4
  %20 = icmp eq i32 %19, -1
  br i1 %20, label %21, label %22

21:                                               ; preds = %15
  br label %48

22:                                               ; preds = %15
  %23 = load i32, i32* %7, align 4
  switch i32 %23, label %40 [
    i32 66, label %24
    i32 100, label %28
    i32 67, label %29
    i32 75, label %29
    i32 107, label %33
    i32 118, label %34
    i32 104, label %37
  ]

24:                                               ; preds = %22
  %25 = load i32, i32* %7, align 4
  %26 = load i32, i32* @optarg, align 4
  %27 = call i32 @parse_opt_board(i32 %25, i32 %26)
  store i32 %27, i32* %6, align 4
  br label %41

28:                                               ; preds = %22
  store i64 0, i64* @invalid_causes_error, align 8
  br label %41

29:                                               ; preds = %22, %22
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* @optarg, align 4
  %32 = call i32 @parse_opt_image(i32 %30, i32 %31)
  store i32 %32, i32* %6, align 4
  br label %41

33:                                               ; preds = %22
  store i64 1, i64* @keep_invalid_images, align 8
  br label %41

34:                                               ; preds = %22
  %35 = load i32, i32* @verblevel, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* @verblevel, align 4
  br label %41

37:                                               ; preds = %22
  %38 = load i32, i32* @EXIT_SUCCESS, align 4
  %39 = call i32 @usage(i32 %38)
  br label %41

40:                                               ; preds = %22
  store i32 1, i32* %6, align 4
  br label %41

41:                                               ; preds = %40, %37, %34, %33, %29, %28, %24
  %42 = load i32, i32* %6, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %41
  %45 = load i8*, i8** @optopt, align 8
  %46 = call i32 (i8*, ...) @ERR(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i8* %45)
  br label %142

47:                                               ; preds = %41
  br label %15

48:                                               ; preds = %21
  %49 = load i32*, i32** @board, align 8
  %50 = icmp eq i32* %49, null
  br i1 %50, label %51, label %53

51:                                               ; preds = %48
  %52 = call i32 (i8*, ...) @ERR(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  br label %142

53:                                               ; preds = %48
  %54 = load i32, i32* @optind, align 4
  %55 = load i32, i32* %4, align 4
  %56 = icmp eq i32 %54, %55
  br i1 %56, label %57, label %59

57:                                               ; preds = %53
  %58 = call i32 (i8*, ...) @ERR(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0))
  br label %142

59:                                               ; preds = %53
  %60 = load i8**, i8*** %5, align 8
  %61 = load i32, i32* @optind, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* @optind, align 4
  %63 = sext i32 %61 to i64
  %64 = getelementptr inbounds i8*, i8** %60, i64 %63
  %65 = load i8*, i8** %64, align 8
  store i8* %65, i8** @ofname, align 8
  %66 = load i32, i32* @optind, align 4
  %67 = load i32, i32* %4, align 4
  %68 = icmp slt i32 %66, %67
  br i1 %68, label %69, label %76

69:                                               ; preds = %59
  %70 = load i8**, i8*** %5, align 8
  %71 = load i32, i32* @optind, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i8*, i8** %70, i64 %72
  %74 = load i8*, i8** %73, align 8
  %75 = call i32 (i8*, ...) @ERR(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0), i8* %74)
  br label %142

76:                                               ; preds = %59
  %77 = call i32 (...) @process_images()
  store i32 %77, i32* %8, align 4
  %78 = load i32, i32* %8, align 4
  %79 = load i32, i32* @ERR_FATAL, align 4
  %80 = icmp eq i32 %78, %79
  br i1 %80, label %81, label %82

81:                                               ; preds = %76
  br label %142

82:                                               ; preds = %76
  %83 = load i32, i32* %8, align 4
  %84 = load i32, i32* @ERR_INVALID_IMAGE, align 4
  %85 = icmp eq i32 %83, %84
  br i1 %85, label %86, label %100

86:                                               ; preds = %82
  %87 = load i64, i64* @invalid_causes_error, align 8
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %91

89:                                               ; preds = %86
  %90 = load i32, i32* @ERR_FATAL, align 4
  store i32 %90, i32* %8, align 4
  br label %91

91:                                               ; preds = %89, %86
  %92 = load i64, i64* @keep_invalid_images, align 8
  %93 = icmp eq i64 %92, 0
  br i1 %93, label %94, label %97

94:                                               ; preds = %91
  %95 = load i8*, i8** @ofname, align 8
  %96 = call i32 @WARN(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.5, i64 0, i64 0), i8* %95)
  br label %142

97:                                               ; preds = %91
  %98 = load i8*, i8** @ofname, align 8
  %99 = call i32 @WARN(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.6, i64 0, i64 0), i8* %98)
  br label %100

100:                                              ; preds = %97, %82
  %101 = load i8*, i8** @ofname, align 8
  %102 = call i32* @fopen(i8* %101, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0))
  store i32* %102, i32** %9, align 8
  %103 = load i32*, i32** %9, align 8
  %104 = icmp eq i32* %103, null
  br i1 %104, label %105, label %109

105:                                              ; preds = %100
  %106 = load i8*, i8** @ofname, align 8
  %107 = call i32 @ERRS(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.8, i64 0, i64 0), i8* %106)
  %108 = load i32, i32* @ERR_FATAL, align 4
  store i32 %108, i32* %8, align 4
  br label %142

109:                                              ; preds = %100
  %110 = load i32*, i32** %9, align 8
  %111 = call i64 @write_out_header(i32* %110)
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %115

113:                                              ; preds = %109
  %114 = load i32, i32* @ERR_FATAL, align 4
  store i32 %114, i32* %8, align 4
  br label %130

115:                                              ; preds = %109
  %116 = load i32*, i32** %9, align 8
  %117 = call i64 @write_out_images(i32* %116)
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %121

119:                                              ; preds = %115
  %120 = load i32, i32* @ERR_FATAL, align 4
  store i32 %120, i32* %8, align 4
  br label %130

121:                                              ; preds = %115
  %122 = load i32*, i32** %9, align 8
  %123 = call i64 @write_out_header(i32* %122)
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %127

125:                                              ; preds = %121
  %126 = load i32, i32* @ERR_FATAL, align 4
  store i32 %126, i32* %8, align 4
  br label %130

127:                                              ; preds = %121
  %128 = load i8*, i8** @ofname, align 8
  %129 = call i32 @DBG(i32 1, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.9, i64 0, i64 0), i8* %128)
  br label %130

130:                                              ; preds = %127, %125, %119, %113
  %131 = load i32*, i32** %9, align 8
  %132 = call i32 @fflush(i32* %131)
  %133 = load i32*, i32** %9, align 8
  %134 = call i32 @fclose(i32* %133)
  %135 = load i32, i32* %8, align 4
  %136 = load i32, i32* @ERR_FATAL, align 4
  %137 = icmp eq i32 %135, %136
  br i1 %137, label %138, label %141

138:                                              ; preds = %130
  %139 = load i8*, i8** @ofname, align 8
  %140 = call i32 @unlink(i8* %139)
  br label %141

141:                                              ; preds = %138, %130
  br label %142

142:                                              ; preds = %141, %105, %94, %81, %69, %57, %51, %44
  %143 = load i32, i32* %8, align 4
  %144 = load i32, i32* @ERR_FATAL, align 4
  %145 = icmp eq i32 %143, %144
  br i1 %145, label %146, label %148

146:                                              ; preds = %142
  %147 = load i32, i32* @EXIT_FAILURE, align 4
  store i32 %147, i32* %3, align 4
  br label %150

148:                                              ; preds = %142
  %149 = load i32, i32* @EXIT_SUCCESS, align 4
  store i32 %149, i32* %3, align 4
  br label %150

150:                                              ; preds = %148, %146
  %151 = load i32, i32* %3, align 4
  ret i32 %151
}

declare dso_local i32 @basename(i8*) #1

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i32 @parse_opt_board(i32, i32) #1

declare dso_local i32 @parse_opt_image(i32, i32) #1

declare dso_local i32 @usage(i32) #1

declare dso_local i32 @ERR(i8*, ...) #1

declare dso_local i32 @process_images(...) #1

declare dso_local i32 @WARN(i8*, i8*) #1

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @ERRS(i8*, i8*) #1

declare dso_local i64 @write_out_header(i32*) #1

declare dso_local i64 @write_out_images(i32*) #1

declare dso_local i32 @DBG(i32, i8*, i8*) #1

declare dso_local i32 @fflush(i32*) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i32 @unlink(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
