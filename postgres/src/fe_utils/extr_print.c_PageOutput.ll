; ModuleID = '/home/carl/AnghaBench/postgres/src/fe_utils/extr_print.c_PageOutput.c'
source_filename = "/home/carl/AnghaBench/postgres/src/fe_utils/extr_print.c_PageOutput.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i16, i32 }

@stdin = common dso_local global i32* null, align 8
@stdout = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [11 x i8] c"PSQL_PAGER\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"PAGER\00", align 1
@DEFAULT_PAGER = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [5 x i8] c" \09\0D\0A\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@TIOCGWINSZ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @PageOutput(i32 %0, %struct.TYPE_3__* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  store i32 %0, i32* %4, align 4
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %5, align 8
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %9 = icmp ne %struct.TYPE_3__* %8, null
  br i1 %9, label %10, label %56

10:                                               ; preds = %2
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load i16, i16* %12, align 4
  %14 = zext i16 %13 to i32
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %56

16:                                               ; preds = %10
  %17 = load i32*, i32** @stdin, align 8
  %18 = call i32 @fileno(i32* %17)
  %19 = call i64 @isatty(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %56

21:                                               ; preds = %16
  %22 = load i32*, i32** @stdout, align 8
  %23 = call i32 @fileno(i32* %22)
  %24 = call i64 @isatty(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %56

26:                                               ; preds = %21
  %27 = call i8* @getenv(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  store i8* %27, i8** %6, align 8
  %28 = load i8*, i8** %6, align 8
  %29 = icmp ne i8* %28, null
  br i1 %29, label %32, label %30

30:                                               ; preds = %26
  %31 = call i8* @getenv(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  store i8* %31, i8** %6, align 8
  br label %32

32:                                               ; preds = %30, %26
  %33 = load i8*, i8** %6, align 8
  %34 = icmp ne i8* %33, null
  br i1 %34, label %37, label %35

35:                                               ; preds = %32
  %36 = load i8*, i8** @DEFAULT_PAGER, align 8
  store i8* %36, i8** %6, align 8
  br label %46

37:                                               ; preds = %32
  %38 = load i8*, i8** %6, align 8
  %39 = call i64 @strspn(i8* %38, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %40 = load i8*, i8** %6, align 8
  %41 = call i64 @strlen(i8* %40)
  %42 = icmp eq i64 %39, %41
  br i1 %42, label %43, label %45

43:                                               ; preds = %37
  %44 = load i32*, i32** @stdout, align 8
  store i32* %44, i32** %3, align 8
  br label %58

45:                                               ; preds = %37
  br label %46

46:                                               ; preds = %45, %35
  %47 = call i32 (...) @disable_sigpipe_trap()
  %48 = load i8*, i8** %6, align 8
  %49 = call i32* @popen(i8* %48, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  store i32* %49, i32** %7, align 8
  %50 = load i32*, i32** %7, align 8
  %51 = icmp ne i32* %50, null
  br i1 %51, label %52, label %54

52:                                               ; preds = %46
  %53 = load i32*, i32** %7, align 8
  store i32* %53, i32** %3, align 8
  br label %58

54:                                               ; preds = %46
  %55 = call i32 (...) @restore_sigpipe_trap()
  br label %56

56:                                               ; preds = %54, %21, %16, %10, %2
  %57 = load i32*, i32** @stdout, align 8
  store i32* %57, i32** %3, align 8
  br label %58

58:                                               ; preds = %56, %52, %43
  %59 = load i32*, i32** %3, align 8
  ret i32* %59
}

declare dso_local i64 @isatty(i32) #1

declare dso_local i32 @fileno(i32*) #1

declare dso_local i8* @getenv(i8*) #1

declare dso_local i64 @strspn(i8*, i8*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @disable_sigpipe_trap(...) #1

declare dso_local i32* @popen(i8*, i8*) #1

declare dso_local i32 @restore_sigpipe_trap(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
