; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/network/ftp/extr_cmds.c_quote.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/network/ftp/extr_cmds.c_quote.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@BUFSIZ = common dso_local global i32 0, align 4
@line = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"(command line to send) \00", align 1
@stdout = common dso_local global i32 0, align 4
@margc = common dso_local global i32 0, align 4
@margv = common dso_local global i8** null, align 8
@.str.2 = private unnamed_addr constant [24 x i8] c"usage: %s line-to-send\0A\00", align 1
@code = common dso_local global i32 0, align 4
@PRELIM = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @quote(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8** %1, i8*** %4, align 8
  %9 = load i32, i32* @BUFSIZ, align 4
  %10 = zext i32 %9 to i64
  %11 = call i8* @llvm.stacksave()
  store i8* %11, i8** %6, align 8
  %12 = alloca i8, i64 %10, align 16
  store i64 %10, i64* %7, align 8
  %13 = load i32, i32* %3, align 4
  %14 = icmp slt i32 %13, 2
  br i1 %14, label %15, label %29

15:                                               ; preds = %2
  %16 = load i8*, i8** @line, align 8
  %17 = call i32 @strcat(i8* %16, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %18 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %19 = load i32, i32* @stdout, align 4
  %20 = call i32 @fflush(i32 %19)
  %21 = load i8*, i8** @line, align 8
  %22 = load i8*, i8** @line, align 8
  %23 = call i64 @strlen(i8* %22)
  %24 = getelementptr inbounds i8, i8* %21, i64 %23
  %25 = call i32 @gets(i8* %24)
  %26 = call i32 (...) @makeargv()
  %27 = load i32, i32* @margc, align 4
  store i32 %27, i32* %3, align 4
  %28 = load i8**, i8*** @margv, align 8
  store i8** %28, i8*** %4, align 8
  br label %29

29:                                               ; preds = %15, %2
  %30 = load i32, i32* %3, align 4
  %31 = icmp slt i32 %30, 2
  br i1 %31, label %32, label %39

32:                                               ; preds = %29
  %33 = load i8**, i8*** %4, align 8
  %34 = getelementptr inbounds i8*, i8** %33, i64 0
  %35 = load i8*, i8** %34, align 8
  %36 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i8* %35)
  %37 = load i32, i32* @stdout, align 4
  %38 = call i32 @fflush(i32 %37)
  store i32 -1, i32* @code, align 4
  store i32 1, i32* %8, align 4
  br label %71

39:                                               ; preds = %29
  %40 = load i8**, i8*** %4, align 8
  %41 = getelementptr inbounds i8*, i8** %40, i64 1
  %42 = load i8*, i8** %41, align 8
  %43 = call i32 @strcpy(i8* %12, i8* %42)
  store i32 2, i32* %5, align 4
  br label %44

44:                                               ; preds = %56, %39
  %45 = load i32, i32* %5, align 4
  %46 = load i32, i32* %3, align 4
  %47 = icmp slt i32 %45, %46
  br i1 %47, label %48, label %59

48:                                               ; preds = %44
  %49 = call i32 @strcat(i8* %12, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %50 = load i8**, i8*** %4, align 8
  %51 = load i32, i32* %5, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i8*, i8** %50, i64 %52
  %54 = load i8*, i8** %53, align 8
  %55 = call i32 @strcat(i8* %12, i8* %54)
  br label %56

56:                                               ; preds = %48
  %57 = load i32, i32* %5, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %5, align 4
  br label %44

59:                                               ; preds = %44
  %60 = call i64 @command(i8* %12)
  %61 = load i64, i64* @PRELIM, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %63, label %70

63:                                               ; preds = %59
  br label %64

64:                                               ; preds = %68, %63
  %65 = call i64 @getreply(i32 0)
  %66 = load i64, i64* @PRELIM, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %68, label %69

68:                                               ; preds = %64
  br label %64

69:                                               ; preds = %64
  br label %70

70:                                               ; preds = %69, %59
  store i32 0, i32* %8, align 4
  br label %71

71:                                               ; preds = %70, %32
  %72 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %72)
  %73 = load i32, i32* %8, align 4
  switch i32 %73, label %75 [
    i32 0, label %74
    i32 1, label %74
  ]

74:                                               ; preds = %71, %71
  ret void

75:                                               ; preds = %71
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @strcat(i8*, i8*) #2

declare dso_local i32 @printf(i8*, ...) #2

declare dso_local i32 @fflush(i32) #2

declare dso_local i32 @gets(i8*) #2

declare dso_local i64 @strlen(i8*) #2

declare dso_local i32 @makeargv(...) #2

declare dso_local i32 @strcpy(i8*, i8*) #2

declare dso_local i64 @command(i8*) #2

declare dso_local i64 @getreply(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
