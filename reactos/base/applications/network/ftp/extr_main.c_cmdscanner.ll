; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/network/ftp/extr_main.c_cmdscanner.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/network/ftp/extr_main.c_cmdscanner.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cmd = type { i32 (i64, i32*)*, i64, i64 }

@stdout = common dso_local global i32 0, align 4
@fromatty = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [6 x i8] c"ftp> \00", align 1
@line = common dso_local global i64* null, align 8
@stdin = common dso_local global i32 0, align 4
@margc = common dso_local global i64 0, align 8
@margv = common dso_local global i32* null, align 8
@.str.1 = private unnamed_addr constant [20 x i8] c"?Ambiguous command\0A\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"?Invalid command\0A\00", align 1
@connected = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [16 x i8] c"Not connected.\0A\00", align 1
@bell = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cmdscanner(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cmd*, align 8
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = call i32 @putchar(i8 signext 10)
  br label %8

8:                                                ; preds = %6, %1
  br label %9

9:                                                ; preds = %90, %66, %56, %51, %43, %8
  %10 = load i32, i32* @stdout, align 4
  %11 = call i32 @fflush(i32 %10)
  %12 = load i64, i64* @fromatty, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %9
  %15 = call i32 @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %16 = load i32, i32* @stdout, align 4
  %17 = call i32 @fflush(i32 %16)
  br label %18

18:                                               ; preds = %14, %9
  %19 = load i64*, i64** @line, align 8
  %20 = call i64 @gets(i64* %19)
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %22, label %33

22:                                               ; preds = %18
  %23 = load i32, i32* @stdin, align 4
  %24 = call i64 @feof(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %30, label %26

26:                                               ; preds = %22
  %27 = load i32, i32* @stdin, align 4
  %28 = call i64 @ferror(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %26, %22
  %31 = call i32 @quit(i32 0, i32* null)
  br label %32

32:                                               ; preds = %30, %26
  br label %91

33:                                               ; preds = %18
  %34 = load i64*, i64** @line, align 8
  %35 = getelementptr inbounds i64, i64* %34, i64 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp eq i64 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %33
  br label %91

39:                                               ; preds = %33
  %40 = call i32 (...) @makeargv()
  %41 = load i64, i64* @margc, align 8
  %42 = icmp eq i64 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %39
  br label %9

44:                                               ; preds = %39
  %45 = load i32*, i32** @margv, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 0
  %47 = load i32, i32* %46, align 4
  %48 = call %struct.cmd* @getcmd(i32 %47)
  store %struct.cmd* %48, %struct.cmd** %3, align 8
  %49 = load %struct.cmd*, %struct.cmd** %3, align 8
  %50 = icmp eq %struct.cmd* %49, inttoptr (i64 -1 to %struct.cmd*)
  br i1 %50, label %51, label %53

51:                                               ; preds = %44
  %52 = call i32 @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  br label %9

53:                                               ; preds = %44
  %54 = load %struct.cmd*, %struct.cmd** %3, align 8
  %55 = icmp eq %struct.cmd* %54, null
  br i1 %55, label %56, label %58

56:                                               ; preds = %53
  %57 = call i32 @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  br label %9

58:                                               ; preds = %53
  %59 = load %struct.cmd*, %struct.cmd** %3, align 8
  %60 = getelementptr inbounds %struct.cmd, %struct.cmd* %59, i32 0, i32 2
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %68

63:                                               ; preds = %58
  %64 = load i32, i32* @connected, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %68, label %66

66:                                               ; preds = %63
  %67 = call i32 @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0))
  br label %9

68:                                               ; preds = %63, %58
  %69 = load %struct.cmd*, %struct.cmd** %3, align 8
  %70 = getelementptr inbounds %struct.cmd, %struct.cmd* %69, i32 0, i32 0
  %71 = load i32 (i64, i32*)*, i32 (i64, i32*)** %70, align 8
  %72 = load i64, i64* @margc, align 8
  %73 = load i32*, i32** @margv, align 8
  %74 = call i32 %71(i64 %72, i32* %73)
  %75 = load i64, i64* @bell, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %84

77:                                               ; preds = %68
  %78 = load %struct.cmd*, %struct.cmd** %3, align 8
  %79 = getelementptr inbounds %struct.cmd, %struct.cmd* %78, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %84

82:                                               ; preds = %77
  %83 = call i32 @putchar(i8 signext 7)
  br label %84

84:                                               ; preds = %82, %77, %68
  %85 = load %struct.cmd*, %struct.cmd** %3, align 8
  %86 = getelementptr inbounds %struct.cmd, %struct.cmd* %85, i32 0, i32 0
  %87 = load i32 (i64, i32*)*, i32 (i64, i32*)** %86, align 8
  %88 = icmp ne i32 (i64, i32*)* %87, @help
  br i1 %88, label %89, label %90

89:                                               ; preds = %84
  br label %91

90:                                               ; preds = %84
  br label %9

91:                                               ; preds = %89, %38, %32
  %92 = load i32, i32* @stdout, align 4
  %93 = call i32 @fflush(i32 %92)
  ret void
}

declare dso_local i32 @putchar(i8 signext) #1

declare dso_local i32 @fflush(i32) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i64 @gets(i64*) #1

declare dso_local i64 @feof(i32) #1

declare dso_local i64 @ferror(i32) #1

declare dso_local i32 @quit(i32, i32*) #1

declare dso_local i32 @makeargv(...) #1

declare dso_local %struct.cmd* @getcmd(i32) #1

declare dso_local i32 @help(i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
