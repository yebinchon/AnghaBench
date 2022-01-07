; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/network/ftp/extr_cmds.c_renamefile.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/network/ftp/extr_cmds.c_renamefile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@line = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"(from-name) \00", align 1
@stdout = common dso_local global i32 0, align 4
@margc = common dso_local global i32 0, align 4
@margv = common dso_local global i8** null, align 8
@.str.2 = private unnamed_addr constant [22 x i8] c"%s from-name to-name\0A\00", align 1
@code = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [11 x i8] c"(to-name) \00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"RNFR %s\00", align 1
@CONTINUE = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [8 x i8] c"RNTO %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @renamefile(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  store i32 %0, i32* %3, align 4
  store i8** %1, i8*** %4, align 8
  %5 = load i32, i32* %3, align 4
  %6 = icmp slt i32 %5, 2
  br i1 %6, label %7, label %21

7:                                                ; preds = %2
  %8 = load i32*, i32** @line, align 8
  %9 = call i32 @strcat(i32* %8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %10 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  %11 = load i32, i32* @stdout, align 4
  %12 = call i32 @fflush(i32 %11)
  %13 = load i32*, i32** @line, align 8
  %14 = load i32*, i32** @line, align 8
  %15 = call i64 @strlen(i32* %14)
  %16 = getelementptr inbounds i32, i32* %13, i64 %15
  %17 = call i32 @gets(i32* %16)
  %18 = call i32 (...) @makeargv()
  %19 = load i32, i32* @margc, align 4
  store i32 %19, i32* %3, align 4
  %20 = load i8**, i8*** @margv, align 8
  store i8** %20, i8*** %4, align 8
  br label %21

21:                                               ; preds = %7, %2
  %22 = load i32, i32* %3, align 4
  %23 = icmp slt i32 %22, 2
  br i1 %23, label %24, label %32

24:                                               ; preds = %21
  br label %25

25:                                               ; preds = %52, %24
  %26 = load i8**, i8*** %4, align 8
  %27 = getelementptr inbounds i8*, i8** %26, i64 0
  %28 = load i8*, i8** %27, align 8
  %29 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i8* %28)
  %30 = load i32, i32* @stdout, align 4
  %31 = call i32 @fflush(i32 %30)
  store i32 -1, i32* @code, align 4
  br label %65

32:                                               ; preds = %21
  %33 = load i32, i32* %3, align 4
  %34 = icmp slt i32 %33, 3
  br i1 %34, label %35, label %49

35:                                               ; preds = %32
  %36 = load i32*, i32** @line, align 8
  %37 = call i32 @strcat(i32* %36, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %38 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0))
  %39 = load i32, i32* @stdout, align 4
  %40 = call i32 @fflush(i32 %39)
  %41 = load i32*, i32** @line, align 8
  %42 = load i32*, i32** @line, align 8
  %43 = call i64 @strlen(i32* %42)
  %44 = getelementptr inbounds i32, i32* %41, i64 %43
  %45 = call i32 @gets(i32* %44)
  %46 = call i32 (...) @makeargv()
  %47 = load i32, i32* @margc, align 4
  store i32 %47, i32* %3, align 4
  %48 = load i8**, i8*** @margv, align 8
  store i8** %48, i8*** %4, align 8
  br label %49

49:                                               ; preds = %35, %32
  %50 = load i32, i32* %3, align 4
  %51 = icmp slt i32 %50, 3
  br i1 %51, label %52, label %53

52:                                               ; preds = %49
  br label %25

53:                                               ; preds = %49
  %54 = load i8**, i8*** %4, align 8
  %55 = getelementptr inbounds i8*, i8** %54, i64 1
  %56 = load i8*, i8** %55, align 8
  %57 = call i64 @command(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i8* %56)
  %58 = load i64, i64* @CONTINUE, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %60, label %65

60:                                               ; preds = %53
  %61 = load i8**, i8*** %4, align 8
  %62 = getelementptr inbounds i8*, i8** %61, i64 2
  %63 = load i8*, i8** %62, align 8
  %64 = call i64 @command(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i8* %63)
  br label %65

65:                                               ; preds = %25, %60, %53
  ret void
}

declare dso_local i32 @strcat(i32*, i8*) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @fflush(i32) #1

declare dso_local i32 @gets(i32*) #1

declare dso_local i64 @strlen(i32*) #1

declare dso_local i32 @makeargv(...) #1

declare dso_local i64 @command(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
