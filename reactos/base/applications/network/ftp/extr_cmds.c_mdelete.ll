; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/network/ftp/extr_cmds.c_mdelete.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/network/ftp/extr_cmds.c_mdelete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@line = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"(remote-files) \00", align 1
@stdout = common dso_local global i32 0, align 4
@margc = common dso_local global i32 0, align 4
@margv = common dso_local global i8** null, align 8
@.str.2 = private unnamed_addr constant [23 x i8] c"usage:%s remote-files\0A\00", align 1
@code = common dso_local global i32 0, align 4
@mname = common dso_local global i8* null, align 8
@mflag = common dso_local global i32 0, align 4
@jabort = external dso_local global i32, align 4
@.str.3 = private unnamed_addr constant [8 x i8] c"DELE %s\00", align 1
@fromatty = common dso_local global i64 0, align 8
@interactive = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [14 x i8] c"Continue with\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"mdelete\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mdelete(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8** %1, i8*** %4, align 8
  %7 = load i32, i32* %3, align 4
  %8 = icmp slt i32 %7, 2
  br i1 %8, label %9, label %23

9:                                                ; preds = %2
  %10 = load i32*, i32** @line, align 8
  %11 = call i32 @strcat(i32* %10, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %12 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  %13 = load i32, i32* @stdout, align 4
  %14 = call i32 @fflush(i32 %13)
  %15 = load i32*, i32** @line, align 8
  %16 = load i32*, i32** @line, align 8
  %17 = call i64 @strlen(i32* %16)
  %18 = getelementptr inbounds i32, i32* %15, i64 %17
  %19 = call i32 @gets(i32* %18)
  %20 = call i32 (...) @makeargv()
  %21 = load i32, i32* @margc, align 4
  store i32 %21, i32* %3, align 4
  %22 = load i8**, i8*** @margv, align 8
  store i8** %22, i8*** %4, align 8
  br label %23

23:                                               ; preds = %9, %2
  %24 = load i32, i32* %3, align 4
  %25 = icmp slt i32 %24, 2
  br i1 %25, label %26, label %33

26:                                               ; preds = %23
  %27 = load i8**, i8*** %4, align 8
  %28 = getelementptr inbounds i8*, i8** %27, i64 0
  %29 = load i8*, i8** %28, align 8
  %30 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i8* %29)
  %31 = load i32, i32* @stdout, align 4
  %32 = call i32 @fflush(i32 %31)
  store i32 -1, i32* @code, align 4
  br label %79

33:                                               ; preds = %23
  %34 = load i8**, i8*** %4, align 8
  %35 = getelementptr inbounds i8*, i8** %34, i64 0
  %36 = load i8*, i8** %35, align 8
  store i8* %36, i8** @mname, align 8
  store i32 1, i32* @mflag, align 4
  %37 = load i32, i32* @jabort, align 4
  %38 = call i32 @setjmp(i32 %37) #3
  br label %39

39:                                               ; preds = %77, %48, %33
  %40 = load i8**, i8*** %4, align 8
  %41 = call i8* @remglob(i8** %40, i32 0)
  store i8* %41, i8** %5, align 8
  %42 = icmp ne i8* %41, null
  br i1 %42, label %43, label %78

43:                                               ; preds = %39
  %44 = load i8*, i8** %5, align 8
  %45 = load i8, i8* %44, align 1
  %46 = sext i8 %45 to i32
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %43
  store i32 0, i32* @mflag, align 4
  br label %39

49:                                               ; preds = %43
  %50 = load i32, i32* @mflag, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %77

52:                                               ; preds = %49
  %53 = load i8**, i8*** %4, align 8
  %54 = getelementptr inbounds i8*, i8** %53, i64 0
  %55 = load i8*, i8** %54, align 8
  %56 = load i8*, i8** %5, align 8
  %57 = call i64 @confirm(i8* %55, i8* %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %77

59:                                               ; preds = %52
  %60 = load i8*, i8** %5, align 8
  %61 = call i32 @command(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i8* %60)
  %62 = load i32, i32* @mflag, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %76, label %64

64:                                               ; preds = %59
  %65 = load i64, i64* @fromatty, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %76

67:                                               ; preds = %64
  %68 = load i32, i32* @interactive, align 4
  store i32 %68, i32* %6, align 4
  store i32 1, i32* @interactive, align 4
  %69 = call i64 @confirm(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0))
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %74

71:                                               ; preds = %67
  %72 = load i32, i32* @mflag, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* @mflag, align 4
  br label %74

74:                                               ; preds = %71, %67
  %75 = load i32, i32* %6, align 4
  store i32 %75, i32* @interactive, align 4
  br label %76

76:                                               ; preds = %74, %64, %59
  br label %77

77:                                               ; preds = %76, %52, %49
  br label %39

78:                                               ; preds = %39
  store i32 0, i32* @mflag, align 4
  br label %79

79:                                               ; preds = %78, %26
  ret void
}

declare dso_local i32 @strcat(i32*, i8*) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @fflush(i32) #1

declare dso_local i32 @gets(i32*) #1

declare dso_local i64 @strlen(i32*) #1

declare dso_local i32 @makeargv(...) #1

; Function Attrs: returns_twice
declare dso_local i32 @setjmp(i32) #2

declare dso_local i8* @remglob(i8**, i32) #1

declare dso_local i64 @confirm(i8*, i8*) #1

declare dso_local i32 @command(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { returns_twice "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { returns_twice }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
