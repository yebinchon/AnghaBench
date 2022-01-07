; ModuleID = '/home/carl/AnghaBench/nnn/src/extr_nnn.c_show_stats.c'
source_filename = "/home/carl/AnghaBench/nnn/src/extr_nnn.c_show_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i32 }

@g_buf = common dso_local global i8* null, align 8
@FALSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"stat \22\00", align 1
@PATH_MAX = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@CMD_LEN_MAX = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"file\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"-b\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"\0A\0A \00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c" %s\0A\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c" %s\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"\0A\0A\00", align 1
@pager = common dso_local global i32 0, align 4
@g_tmpfpath = common dso_local global i32 0, align 4
@F_CLI = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.stat*)* @show_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @show_stats(i8* %0, %struct.stat* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.stat*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store %struct.stat* %1, %struct.stat** %5, align 8
  %11 = load i8*, i8** @g_buf, align 8
  store i8* %11, i8** %9, align 8
  %12 = call i32 (...) @create_tmp_file()
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* %6, align 4
  %14 = icmp eq i32 %13, -1
  br i1 %14, label %15, label %17

15:                                               ; preds = %2
  %16 = load i32, i32* @FALSE, align 4
  store i32 %16, i32* %3, align 4
  br label %106

17:                                               ; preds = %2
  %18 = load i8*, i8** @g_buf, align 8
  %19 = load i32, i32* @PATH_MAX, align 4
  %20 = call i64 @xstrlcpy(i8* %18, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %19)
  store i64 %20, i64* %10, align 8
  %21 = load i8*, i8** @g_buf, align 8
  %22 = load i64, i64* %10, align 8
  %23 = getelementptr inbounds i8, i8* %21, i64 %22
  %24 = getelementptr inbounds i8, i8* %23, i64 -1
  %25 = load i8*, i8** %4, align 8
  %26 = load i32, i32* @PATH_MAX, align 4
  %27 = call i64 @xstrlcpy(i8* %24, i8* %25, i32 %26)
  %28 = load i64, i64* %10, align 8
  %29 = add i64 %28, %27
  store i64 %29, i64* %10, align 8
  %30 = load i8*, i8** @g_buf, align 8
  %31 = load i64, i64* %10, align 8
  %32 = sub i64 %31, 2
  %33 = getelementptr inbounds i8, i8* %30, i64 %32
  store i8 34, i8* %33, align 1
  %34 = load i8*, i8** @g_buf, align 8
  %35 = load i64, i64* %10, align 8
  %36 = sub i64 %35, 1
  %37 = getelementptr inbounds i8, i8* %34, i64 %36
  store i8 0, i8* %37, align 1
  %38 = load i8*, i8** @g_buf, align 8
  %39 = call i32 @DPRINTF_S(i8* %38)
  %40 = load i32, i32* %6, align 4
  %41 = call i32* @fdopen(i32 %40, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i32* %41, i32** %7, align 8
  %42 = load i32*, i32** %7, align 8
  %43 = icmp ne i32* %42, null
  br i1 %43, label %48, label %44

44:                                               ; preds = %17
  %45 = load i32, i32* %6, align 4
  %46 = call i32 @close(i32 %45)
  %47 = load i32, i32* @FALSE, align 4
  store i32 %47, i32* %3, align 4
  br label %106

48:                                               ; preds = %17
  %49 = load i8*, i8** @g_buf, align 8
  %50 = load i32*, i32** %7, align 8
  %51 = call i32 @pipetof(i8* %49, i32* %50)
  %52 = load %struct.stat*, %struct.stat** %5, align 8
  %53 = getelementptr inbounds %struct.stat, %struct.stat* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i64 @S_ISREG(i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %92

57:                                               ; preds = %48
  %58 = load i8*, i8** @g_buf, align 8
  %59 = load i32, i32* @CMD_LEN_MAX, align 4
  %60 = load i8*, i8** %4, align 8
  %61 = load i32, i32* @FALSE, align 4
  %62 = call i8* @get_output(i8* %58, i32 %59, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* %60, i32 %61)
  store i8* %62, i8** %8, align 8
  %63 = load i8*, i8** %8, align 8
  %64 = icmp ne i8* %63, null
  br i1 %64, label %65, label %91

65:                                               ; preds = %57
  %66 = load i32*, i32** %7, align 8
  %67 = call i32 (i32*, i8*, ...) @fprintf(i32* %66, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0))
  br label %68

68:                                               ; preds = %84, %65
  %69 = load i8*, i8** %8, align 8
  %70 = load i8, i8* %69, align 1
  %71 = icmp ne i8 %70, 0
  br i1 %71, label %72, label %87

72:                                               ; preds = %68
  %73 = load i8*, i8** %8, align 8
  %74 = load i8, i8* %73, align 1
  %75 = sext i8 %74 to i32
  %76 = icmp eq i32 %75, 44
  br i1 %76, label %77, label %84

77:                                               ; preds = %72
  %78 = load i8*, i8** %8, align 8
  store i8 0, i8* %78, align 1
  %79 = load i32*, i32** %7, align 8
  %80 = load i8*, i8** %9, align 8
  %81 = call i32 (i32*, i8*, ...) @fprintf(i32* %79, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i8* %80)
  %82 = load i8*, i8** %8, align 8
  %83 = getelementptr inbounds i8, i8* %82, i64 1
  store i8* %83, i8** %9, align 8
  br label %84

84:                                               ; preds = %77, %72
  %85 = load i8*, i8** %8, align 8
  %86 = getelementptr inbounds i8, i8* %85, i32 1
  store i8* %86, i8** %8, align 8
  br label %68

87:                                               ; preds = %68
  %88 = load i32*, i32** %7, align 8
  %89 = load i8*, i8** %9, align 8
  %90 = call i32 (i32*, i8*, ...) @fprintf(i32* %88, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), i8* %89)
  br label %91

91:                                               ; preds = %87, %57
  br label %92

92:                                               ; preds = %91, %48
  %93 = load i32*, i32** %7, align 8
  %94 = call i32 (i32*, i8*, ...) @fprintf(i32* %93, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0))
  %95 = load i32*, i32** %7, align 8
  %96 = call i32 @fclose(i32* %95)
  %97 = load i32, i32* %6, align 4
  %98 = call i32 @close(i32 %97)
  %99 = load i32, i32* @pager, align 4
  %100 = load i32, i32* @g_tmpfpath, align 4
  %101 = load i32, i32* @F_CLI, align 4
  %102 = call i32 @spawn(i32 %99, i32 %100, i32* null, i32* null, i32 %101)
  %103 = load i32, i32* @g_tmpfpath, align 4
  %104 = call i32 @unlink(i32 %103)
  %105 = load i32, i32* @TRUE, align 4
  store i32 %105, i32* %3, align 4
  br label %106

106:                                              ; preds = %92, %44, %15
  %107 = load i32, i32* %3, align 4
  ret i32 %107
}

declare dso_local i32 @create_tmp_file(...) #1

declare dso_local i64 @xstrlcpy(i8*, i8*, i32) #1

declare dso_local i32 @DPRINTF_S(i8*) #1

declare dso_local i32* @fdopen(i32, i8*) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @pipetof(i8*, i32*) #1

declare dso_local i64 @S_ISREG(i32) #1

declare dso_local i8* @get_output(i8*, i32, i8*, i8*, i8*, i32) #1

declare dso_local i32 @fprintf(i32*, i8*, ...) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i32 @spawn(i32, i32, i32*, i32*, i32) #1

declare dso_local i32 @unlink(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
