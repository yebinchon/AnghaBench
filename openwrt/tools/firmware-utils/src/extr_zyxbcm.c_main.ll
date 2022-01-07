; ModuleID = '/home/carl/AnghaBench/openwrt/tools/firmware-utils/src/extr_zyxbcm.c_main.c'
source_filename = "/home/carl/AnghaBench/openwrt/tools/firmware-utils/src/extr_zyxbcm.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@stdin = common dso_local global i32* null, align 8
@stdout = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [6 x i8] c"i:o:h\00", align 1
@optarg = common dso_local global i8* null, align 8
@optind = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"illegal arg \22%s\22\0A\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"can not open \22%s\22 for reading\0A\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.5 = private unnamed_addr constant [31 x i8] c"can not open \22%s\22 for writing\0A\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"fread error\0A\00", align 1
@EXIT_FAILURE = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [14 x i8] c"fwrite error\0A\00", align 1
@EXIT_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca [1024 x i8], align 16
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %14 = load i32*, i32** @stdin, align 8
  store i32* %14, i32** %7, align 8
  %15 = load i32*, i32** @stdout, align 8
  store i32* %15, i32** %8, align 8
  store i8* null, i8** %9, align 8
  store i8* null, i8** %10, align 8
  store i32 1, i32* %13, align 4
  br label %16

16:                                               ; preds = %30, %2
  %17 = load i32, i32* %4, align 4
  %18 = load i8**, i8*** %5, align 8
  %19 = call i32 @getopt(i32 %17, i8** %18, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  store i32 %19, i32* %12, align 4
  %20 = icmp ne i32 %19, -1
  br i1 %20, label %21, label %31

21:                                               ; preds = %16
  %22 = load i32, i32* %12, align 4
  switch i32 %22, label %28 [
    i32 105, label %23
    i32 111, label %25
    i32 104, label %27
  ]

23:                                               ; preds = %21
  %24 = load i8*, i8** @optarg, align 8
  store i8* %24, i8** %9, align 8
  br label %30

25:                                               ; preds = %21
  %26 = load i8*, i8** @optarg, align 8
  store i8* %26, i8** %10, align 8
  br label %30

27:                                               ; preds = %21
  br label %28

28:                                               ; preds = %21, %27
  %29 = call i32 (...) @usage()
  br label %30

30:                                               ; preds = %28, %25, %23
  br label %16

31:                                               ; preds = %16
  %32 = load i32, i32* @optind, align 4
  %33 = load i32, i32* %4, align 4
  %34 = icmp ne i32 %32, %33
  br i1 %34, label %38, label %35

35:                                               ; preds = %31
  %36 = load i32, i32* @optind, align 4
  %37 = icmp eq i32 %36, 1
  br i1 %37, label %38, label %47

38:                                               ; preds = %35, %31
  %39 = load i32, i32* @stderr, align 4
  %40 = load i8**, i8*** %5, align 8
  %41 = load i32, i32* @optind, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i8*, i8** %40, i64 %42
  %44 = load i8*, i8** %43, align 8
  %45 = call i32 (i32, i8*, ...) @fprintf(i32 %39, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i8* %44)
  %46 = call i32 (...) @usage()
  br label %47

47:                                               ; preds = %38, %35
  %48 = load i8*, i8** %9, align 8
  %49 = icmp ne i8* %48, null
  br i1 %49, label %50, label %59

50:                                               ; preds = %47
  %51 = load i8*, i8** %9, align 8
  %52 = call i32* @fopen(i8* %51, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  store i32* %52, i32** %7, align 8
  %53 = icmp ne i32* %52, null
  br i1 %53, label %59, label %54

54:                                               ; preds = %50
  %55 = load i32, i32* @stderr, align 4
  %56 = load i8*, i8** %9, align 8
  %57 = call i32 (i32, i8*, ...) @fprintf(i32 %55, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i8* %56)
  %58 = call i32 (...) @usage()
  br label %59

59:                                               ; preds = %54, %50, %47
  %60 = load i8*, i8** %10, align 8
  %61 = icmp ne i8* %60, null
  br i1 %61, label %62, label %71

62:                                               ; preds = %59
  %63 = load i8*, i8** %10, align 8
  %64 = call i32* @fopen(i8* %63, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  store i32* %64, i32** %8, align 8
  %65 = icmp ne i32* %64, null
  br i1 %65, label %71, label %66

66:                                               ; preds = %62
  %67 = load i32, i32* @stderr, align 4
  %68 = load i8*, i8** %10, align 8
  %69 = call i32 (i32, i8*, ...) @fprintf(i32 %67, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0), i8* %68)
  %70 = call i32 (...) @usage()
  br label %71

71:                                               ; preds = %66, %62, %59
  br label %72

72:                                               ; preds = %110, %71
  %73 = getelementptr inbounds [1024 x i8], [1024 x i8]* %6, i64 0, i64 0
  %74 = load i32*, i32** %7, align 8
  %75 = call i64 @fread(i8* %73, i32 1, i32 1024, i32* %74)
  store i64 %75, i64* %11, align 8
  %76 = icmp ugt i64 %75, 0
  br i1 %76, label %77, label %111

77:                                               ; preds = %72
  %78 = load i64, i64* %11, align 8
  %79 = icmp ult i64 %78, 1024
  br i1 %79, label %80, label %90

80:                                               ; preds = %77
  %81 = load i32*, i32** %7, align 8
  %82 = call i64 @ferror(i32* %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %89

84:                                               ; preds = %80
  br label %85

85:                                               ; preds = %115, %84
  %86 = load i32, i32* @stderr, align 4
  %87 = call i32 (i32, i8*, ...) @fprintf(i32 %86, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0))
  %88 = load i32, i32* @EXIT_FAILURE, align 4
  store i32 %88, i32* %3, align 4
  br label %127

89:                                               ; preds = %80
  br label %90

90:                                               ; preds = %89, %77
  %91 = load i32, i32* %13, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %99

93:                                               ; preds = %90
  %94 = load i64, i64* %11, align 8
  %95 = icmp uge i64 %94, 256
  br i1 %95, label %96, label %99

96:                                               ; preds = %93
  %97 = getelementptr inbounds [1024 x i8], [1024 x i8]* %6, i64 0, i64 0
  %98 = call i32 @fix_header(i8* %97)
  store i32 0, i32* %13, align 4
  br label %99

99:                                               ; preds = %96, %93, %90
  %100 = getelementptr inbounds [1024 x i8], [1024 x i8]* %6, i64 0, i64 0
  %101 = load i64, i64* %11, align 8
  %102 = load i32*, i32** %8, align 8
  %103 = call i32 @fwrite(i8* %100, i64 %101, i32 1, i32* %102)
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %110, label %105

105:                                              ; preds = %99
  br label %106

106:                                              ; preds = %120, %105
  %107 = load i32, i32* @stderr, align 4
  %108 = call i32 (i32, i8*, ...) @fprintf(i32 %107, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0))
  %109 = load i32, i32* @EXIT_FAILURE, align 4
  store i32 %109, i32* %3, align 4
  br label %127

110:                                              ; preds = %99
  br label %72

111:                                              ; preds = %72
  %112 = load i32*, i32** %7, align 8
  %113 = call i64 @ferror(i32* %112)
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %116

115:                                              ; preds = %111
  br label %85

116:                                              ; preds = %111
  %117 = load i32*, i32** %8, align 8
  %118 = call i64 @fflush(i32* %117)
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %121

120:                                              ; preds = %116
  br label %106

121:                                              ; preds = %116
  %122 = load i32*, i32** %7, align 8
  %123 = call i32 @fclose(i32* %122)
  %124 = load i32*, i32** %8, align 8
  %125 = call i32 @fclose(i32* %124)
  %126 = load i32, i32* @EXIT_SUCCESS, align 4
  store i32 %126, i32* %3, align 4
  br label %127

127:                                              ; preds = %121, %106, %85
  %128 = load i32, i32* %3, align 4
  ret i32 %128
}

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i32 @usage(...) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i64 @fread(i8*, i32, i32, i32*) #1

declare dso_local i64 @ferror(i32*) #1

declare dso_local i32 @fix_header(i8*) #1

declare dso_local i32 @fwrite(i8*, i64, i32, i32*) #1

declare dso_local i64 @fflush(i32*) #1

declare dso_local i32 @fclose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
