; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/network/ftp/extr_cmds.c_setnmap.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/network/ftp/extr_cmds.c_setnmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@mapflag = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"Nmap off.\0A\00", align 1
@stdout = common dso_local global i32 0, align 4
@code = common dso_local global i32 0, align 4
@line = common dso_local global i32* null, align 8
@.str.1 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"(mapout) \00", align 1
@margc = common dso_local global i32 0, align 4
@margv = common dso_local global i8** null, align 8
@.str.3 = private unnamed_addr constant [26 x i8] c"Usage: %s [mapin mapout]\0A\00", align 1
@altarg = common dso_local global i8* null, align 8
@proxy = common dso_local global i64 0, align 8
@mapin = common dso_local global i32 0, align 4
@MAXPATHLEN = common dso_local global i64 0, align 8
@mapout = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @setnmap(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  store i8** %1, i8*** %4, align 8
  %6 = load i32, i32* %3, align 4
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %13

8:                                                ; preds = %2
  store i32 0, i32* @mapflag, align 4
  %9 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %10 = load i32, i32* @stdout, align 4
  %11 = call i32 @fflush(i32 %10)
  %12 = load i32, i32* @mapflag, align 4
  store i32 %12, i32* @code, align 4
  br label %77

13:                                               ; preds = %2
  %14 = load i32, i32* %3, align 4
  %15 = icmp slt i32 %14, 3
  br i1 %15, label %16, label %30

16:                                               ; preds = %13
  %17 = load i32*, i32** @line, align 8
  %18 = call i32 @strcat(i32* %17, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %19 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  %20 = load i32, i32* @stdout, align 4
  %21 = call i32 @fflush(i32 %20)
  %22 = load i32*, i32** @line, align 8
  %23 = load i32*, i32** @line, align 8
  %24 = call i64 @strlen(i32* %23)
  %25 = getelementptr inbounds i32, i32* %22, i64 %24
  %26 = call i32 @gets(i32* %25)
  %27 = call i32 (...) @makeargv()
  %28 = load i32, i32* @margc, align 4
  store i32 %28, i32* %3, align 4
  %29 = load i8**, i8*** @margv, align 8
  store i8** %29, i8*** %4, align 8
  br label %30

30:                                               ; preds = %16, %13
  %31 = load i32, i32* %3, align 4
  %32 = icmp slt i32 %31, 3
  br i1 %32, label %33, label %40

33:                                               ; preds = %30
  %34 = load i8**, i8*** %4, align 8
  %35 = getelementptr inbounds i8*, i8** %34, i64 0
  %36 = load i8*, i8** %35, align 8
  %37 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i8* %36)
  %38 = load i32, i32* @stdout, align 4
  %39 = call i32 @fflush(i32 %38)
  store i32 -1, i32* @code, align 4
  br label %77

40:                                               ; preds = %30
  store i32 1, i32* @mapflag, align 4
  store i32 1, i32* @code, align 4
  %41 = load i8*, i8** @altarg, align 8
  %42 = call i8* @index(i8* %41, i8 signext 32)
  store i8* %42, i8** %5, align 8
  %43 = load i64, i64* @proxy, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %57

45:                                               ; preds = %40
  br label %46

46:                                               ; preds = %52, %45
  %47 = load i8*, i8** %5, align 8
  %48 = getelementptr inbounds i8, i8* %47, i32 1
  store i8* %48, i8** %5, align 8
  %49 = load i8, i8* %48, align 1
  %50 = sext i8 %49 to i32
  %51 = icmp eq i32 %50, 32
  br i1 %51, label %52, label %53

52:                                               ; preds = %46
  br label %46

53:                                               ; preds = %46
  %54 = load i8*, i8** %5, align 8
  store i8* %54, i8** @altarg, align 8
  %55 = load i8*, i8** @altarg, align 8
  %56 = call i8* @index(i8* %55, i8 signext 32)
  store i8* %56, i8** %5, align 8
  br label %57

57:                                               ; preds = %53, %40
  %58 = load i8*, i8** %5, align 8
  store i8 0, i8* %58, align 1
  %59 = load i32, i32* @mapin, align 4
  %60 = load i8*, i8** @altarg, align 8
  %61 = load i64, i64* @MAXPATHLEN, align 8
  %62 = sub nsw i64 %61, 1
  %63 = call i32 @strncpy(i32 %59, i8* %60, i64 %62)
  br label %64

64:                                               ; preds = %70, %57
  %65 = load i8*, i8** %5, align 8
  %66 = getelementptr inbounds i8, i8* %65, i32 1
  store i8* %66, i8** %5, align 8
  %67 = load i8, i8* %66, align 1
  %68 = sext i8 %67 to i32
  %69 = icmp eq i32 %68, 32
  br i1 %69, label %70, label %71

70:                                               ; preds = %64
  br label %64

71:                                               ; preds = %64
  %72 = load i32, i32* @mapout, align 4
  %73 = load i8*, i8** %5, align 8
  %74 = load i64, i64* @MAXPATHLEN, align 8
  %75 = sub nsw i64 %74, 1
  %76 = call i32 @strncpy(i32 %72, i8* %73, i64 %75)
  br label %77

77:                                               ; preds = %71, %33, %8
  ret void
}

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @fflush(i32) #1

declare dso_local i32 @strcat(i32*, i8*) #1

declare dso_local i32 @gets(i32*) #1

declare dso_local i64 @strlen(i32*) #1

declare dso_local i32 @makeargv(...) #1

declare dso_local i8* @index(i8*, i8 signext) #1

declare dso_local i32 @strncpy(i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
