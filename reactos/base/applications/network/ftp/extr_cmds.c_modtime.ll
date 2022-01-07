; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/network/ftp/extr_cmds.c_modtime.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/network/ftp/extr_cmds.c_modtime.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@line = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"(filename) \00", align 1
@stdout = common dso_local global i32 0, align 4
@margc = common dso_local global i32 0, align 4
@margv = common dso_local global i8** null, align 8
@.str.2 = private unnamed_addr constant [19 x i8] c"usage:%s filename\0A\00", align 1
@code = common dso_local global i32 0, align 4
@verbose = common dso_local global i32 0, align 4
@debug = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [8 x i8] c"MDTM %s\00", align 1
@COMPLETE = common dso_local global i64 0, align 8
@reply_string = common dso_local global i8* null, align 8
@.str.4 = private unnamed_addr constant [29 x i8] c"%*s %04d%02d%02d%02d%02d%02d\00", align 1
@.str.5 = private unnamed_addr constant [38 x i8] c"%s\09%02d/%02d/%04d %02d:%02d:%02d GMT\0A\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @modtime(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8** %1, i8*** %4, align 8
  %12 = load i32, i32* %3, align 4
  %13 = icmp slt i32 %12, 2
  br i1 %13, label %14, label %28

14:                                               ; preds = %2
  %15 = load i32*, i32** @line, align 8
  %16 = call i32 @strcat(i32* %15, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %17 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  %18 = load i32, i32* @stdout, align 4
  %19 = call i32 @fflush(i32 %18)
  %20 = load i32*, i32** @line, align 8
  %21 = load i32*, i32** @line, align 8
  %22 = call i64 @strlen(i32* %21)
  %23 = getelementptr inbounds i32, i32* %20, i64 %22
  %24 = call i32 @gets(i32* %23)
  %25 = call i32 (...) @makeargv()
  %26 = load i32, i32* @margc, align 4
  store i32 %26, i32* %3, align 4
  %27 = load i8**, i8*** @margv, align 8
  store i8** %27, i8*** %4, align 8
  br label %28

28:                                               ; preds = %14, %2
  %29 = load i32, i32* %3, align 4
  %30 = icmp slt i32 %29, 2
  br i1 %30, label %31, label %38

31:                                               ; preds = %28
  %32 = load i8**, i8*** %4, align 8
  %33 = getelementptr inbounds i8*, i8** %32, i64 0
  %34 = load i8*, i8** %33, align 8
  %35 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i8* %34)
  %36 = load i32, i32* @stdout, align 4
  %37 = call i32 @fflush(i32 %36)
  store i32 -1, i32* @code, align 4
  br label %70

38:                                               ; preds = %28
  %39 = load i32, i32* @verbose, align 4
  store i32 %39, i32* %5, align 4
  %40 = load i64, i64* @debug, align 8
  %41 = icmp eq i64 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %38
  store i32 -1, i32* @verbose, align 4
  br label %43

43:                                               ; preds = %42, %38
  %44 = load i8**, i8*** %4, align 8
  %45 = getelementptr inbounds i8*, i8** %44, i64 1
  %46 = load i8*, i8** %45, align 8
  %47 = call i64 @command(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i8* %46)
  %48 = load i64, i64* @COMPLETE, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %63

50:                                               ; preds = %43
  %51 = load i8*, i8** @reply_string, align 8
  %52 = call i32 @sscanf(i8* %51, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0), i32* %6, i32* %7, i32* %8, i32* %9, i32* %10, i32* %11)
  %53 = load i8**, i8*** %4, align 8
  %54 = getelementptr inbounds i8*, i8** %53, i64 1
  %55 = load i8*, i8** %54, align 8
  %56 = load i32, i32* %7, align 4
  %57 = load i32, i32* %8, align 4
  %58 = load i32, i32* %6, align 4
  %59 = load i32, i32* %9, align 4
  %60 = load i32, i32* %10, align 4
  %61 = load i32, i32* %11, align 4
  %62 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.5, i64 0, i64 0), i8* %55, i32 %56, i32 %57, i32 %58, i32 %59, i32 %60, i32 %61)
  br label %66

63:                                               ; preds = %43
  %64 = load i8*, i8** @reply_string, align 8
  %65 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), i8* %64)
  br label %66

66:                                               ; preds = %63, %50
  %67 = load i32, i32* %5, align 4
  store i32 %67, i32* @verbose, align 4
  %68 = load i32, i32* @stdout, align 4
  %69 = call i32 @fflush(i32 %68)
  br label %70

70:                                               ; preds = %66, %31
  ret void
}

declare dso_local i32 @strcat(i32*, i8*) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @fflush(i32) #1

declare dso_local i32 @gets(i32*) #1

declare dso_local i64 @strlen(i32*) #1

declare dso_local i32 @makeargv(...) #1

declare dso_local i64 @command(i8*, i8*) #1

declare dso_local i32 @sscanf(i8*, i8*, i32*, i32*, i32*, i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
