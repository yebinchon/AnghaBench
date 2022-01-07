; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/network/ftp/extr_cmds.c_doproxy.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/network/ftp/extr_cmds.c_doproxy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cmd = type { i32 (i32, i8**)*, i64, i32 }

@line = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"(command) \00", align 1
@stdout = common dso_local global i32 0, align 4
@margc = common dso_local global i32 0, align 4
@margv = common dso_local global i8** null, align 8
@.str.2 = private unnamed_addr constant [18 x i8] c"usage:%s command\0A\00", align 1
@code = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [20 x i8] c"?Ambiguous command\0A\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"?Invalid command\0A\00", align 1
@.str.5 = private unnamed_addr constant [24 x i8] c"?Invalid proxy command\0A\00", align 1
@abortprox = external dso_local global i32, align 4
@connected = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [15 x i8] c"Not connected\0A\00", align 1
@proxflag = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @doproxy(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca %struct.cmd*, align 8
  store i32 %0, i32* %3, align 4
  store i8** %1, i8*** %4, align 8
  %6 = load i32, i32* %3, align 4
  %7 = icmp slt i32 %6, 2
  br i1 %7, label %8, label %22

8:                                                ; preds = %2
  %9 = load i32*, i32** @line, align 8
  %10 = call i32 @strcat(i32* %9, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %11 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  %12 = load i32, i32* @stdout, align 4
  %13 = call i32 @fflush(i32 %12)
  %14 = load i32*, i32** @line, align 8
  %15 = load i32*, i32** @line, align 8
  %16 = call i64 @strlen(i32* %15)
  %17 = getelementptr inbounds i32, i32* %14, i64 %16
  %18 = call i32 @gets(i32* %17)
  %19 = call i32 (...) @makeargv()
  %20 = load i32, i32* @margc, align 4
  store i32 %20, i32* %3, align 4
  %21 = load i8**, i8*** @margv, align 8
  store i8** %21, i8*** %4, align 8
  br label %22

22:                                               ; preds = %8, %2
  %23 = load i32, i32* %3, align 4
  %24 = icmp slt i32 %23, 2
  br i1 %24, label %25, label %32

25:                                               ; preds = %22
  %26 = load i8**, i8*** %4, align 8
  %27 = getelementptr inbounds i8*, i8** %26, i64 0
  %28 = load i8*, i8** %27, align 8
  %29 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i8* %28)
  %30 = load i32, i32* @stdout, align 4
  %31 = call i32 @fflush(i32 %30)
  store i32 -1, i32* @code, align 4
  br label %93

32:                                               ; preds = %22
  %33 = load i8**, i8*** %4, align 8
  %34 = getelementptr inbounds i8*, i8** %33, i64 1
  %35 = load i8*, i8** %34, align 8
  %36 = call %struct.cmd* (i8*, ...) bitcast (%struct.cmd* (...)* @getcmd to %struct.cmd* (i8*, ...)*)(i8* %35)
  store %struct.cmd* %36, %struct.cmd** %5, align 8
  %37 = load %struct.cmd*, %struct.cmd** %5, align 8
  %38 = icmp eq %struct.cmd* %37, inttoptr (i64 -1 to %struct.cmd*)
  br i1 %38, label %39, label %43

39:                                               ; preds = %32
  %40 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0))
  %41 = load i32, i32* @stdout, align 4
  %42 = call i32 @fflush(i32 %41)
  store i32 -1, i32* @code, align 4
  br label %93

43:                                               ; preds = %32
  %44 = load %struct.cmd*, %struct.cmd** %5, align 8
  %45 = icmp eq %struct.cmd* %44, null
  br i1 %45, label %46, label %50

46:                                               ; preds = %43
  %47 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0))
  %48 = load i32, i32* @stdout, align 4
  %49 = call i32 @fflush(i32 %48)
  store i32 -1, i32* @code, align 4
  br label %93

50:                                               ; preds = %43
  %51 = load %struct.cmd*, %struct.cmd** %5, align 8
  %52 = getelementptr inbounds %struct.cmd, %struct.cmd* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 8
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %59, label %55

55:                                               ; preds = %50
  %56 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0))
  %57 = load i32, i32* @stdout, align 4
  %58 = call i32 @fflush(i32 %57)
  store i32 -1, i32* @code, align 4
  br label %93

59:                                               ; preds = %50
  %60 = load i32, i32* @abortprox, align 4
  %61 = call i64 @setjmp(i32 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %59
  store i32 -1, i32* @code, align 4
  br label %93

64:                                               ; preds = %59
  %65 = call i32 @pswitch(i32 1)
  %66 = load %struct.cmd*, %struct.cmd** %5, align 8
  %67 = getelementptr inbounds %struct.cmd, %struct.cmd* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %78

70:                                               ; preds = %64
  %71 = load i64, i64* @connected, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %78, label %73

73:                                               ; preds = %70
  %74 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0))
  %75 = load i32, i32* @stdout, align 4
  %76 = call i32 @fflush(i32 %75)
  %77 = call i32 @pswitch(i32 0)
  store i32 -1, i32* @code, align 4
  br label %93

78:                                               ; preds = %70, %64
  %79 = load %struct.cmd*, %struct.cmd** %5, align 8
  %80 = getelementptr inbounds %struct.cmd, %struct.cmd* %79, i32 0, i32 0
  %81 = load i32 (i32, i8**)*, i32 (i32, i8**)** %80, align 8
  %82 = load i32, i32* %3, align 4
  %83 = sub nsw i32 %82, 1
  %84 = load i8**, i8*** %4, align 8
  %85 = getelementptr inbounds i8*, i8** %84, i64 1
  %86 = call i32 %81(i32 %83, i8** %85)
  %87 = load i64, i64* @connected, align 8
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %78
  store i32 1, i32* @proxflag, align 4
  br label %91

90:                                               ; preds = %78
  store i32 0, i32* @proxflag, align 4
  br label %91

91:                                               ; preds = %90, %89
  %92 = call i32 @pswitch(i32 0)
  br label %93

93:                                               ; preds = %91, %73, %63, %55, %46, %39, %25
  ret void
}

declare dso_local i32 @strcat(i32*, i8*) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @fflush(i32) #1

declare dso_local i32 @gets(i32*) #1

declare dso_local i64 @strlen(i32*) #1

declare dso_local i32 @makeargv(...) #1

declare dso_local %struct.cmd* @getcmd(...) #1

declare dso_local i64 @setjmp(i32) #1

declare dso_local i32 @pswitch(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
