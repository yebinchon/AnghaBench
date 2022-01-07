; ModuleID = '/home/carl/AnghaBench/postgres/src/test/regress/extr_pg_regress.c_open_result_files.c'
source_filename = "/home/carl/AnghaBench/postgres/src/test/regress/extr_pg_regress.c_open_result_files.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAXPGPATH = common dso_local global i32 0, align 4
@outputdir = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [18 x i8] c"%s/regression.out\00", align 1
@logfilename = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@logfile = common dso_local global i8* null, align 8
@stderr = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [46 x i8] c"%s: could not open file \22%s\22 for writing: %s\0A\00", align 1
@progname = common dso_local global i8* null, align 8
@errno = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [20 x i8] c"%s/regression.diffs\00", align 1
@difffilename = common dso_local global i8* null, align 8
@.str.4 = private unnamed_addr constant [11 x i8] c"%s/results\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @open_result_files to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @open_result_files() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i64, align 8
  %3 = alloca i32*, align 8
  %4 = load i32, i32* @MAXPGPATH, align 4
  %5 = zext i32 %4 to i64
  %6 = call i8* @llvm.stacksave()
  store i8* %6, i8** %1, align 8
  %7 = alloca i8, i64 %5, align 16
  store i64 %5, i64* %2, align 8
  %8 = load i8*, i8** @outputdir, align 8
  %9 = call i32 @directory_exists(i8* %8)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %14, label %11

11:                                               ; preds = %0
  %12 = load i8*, i8** @outputdir, align 8
  %13 = call i32 @make_directory(i8* %12)
  br label %14

14:                                               ; preds = %11, %0
  %15 = trunc i64 %5 to i32
  %16 = load i8*, i8** @outputdir, align 8
  %17 = call i32 @snprintf(i8* %7, i32 %15, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i8* %16)
  %18 = call i8* @pg_strdup(i8* %7)
  store i8* %18, i8** @logfilename, align 8
  %19 = load i8*, i8** @logfilename, align 8
  %20 = call i8* @fopen(i8* %19, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i8* %20, i8** @logfile, align 8
  %21 = load i8*, i8** @logfile, align 8
  %22 = icmp ne i8* %21, null
  br i1 %22, label %32, label %23

23:                                               ; preds = %14
  %24 = load i32, i32* @stderr, align 4
  %25 = call i8* @_(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0))
  %26 = load i8*, i8** @progname, align 8
  %27 = load i8*, i8** @logfilename, align 8
  %28 = load i32, i32* @errno, align 4
  %29 = call i8* @strerror(i32 %28)
  %30 = call i32 @fprintf(i32 %24, i8* %25, i8* %26, i8* %27, i8* %29)
  %31 = call i32 @exit(i32 2) #4
  unreachable

32:                                               ; preds = %14
  %33 = trunc i64 %5 to i32
  %34 = load i8*, i8** @outputdir, align 8
  %35 = call i32 @snprintf(i8* %7, i32 %33, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i8* %34)
  %36 = call i8* @pg_strdup(i8* %7)
  store i8* %36, i8** @difffilename, align 8
  %37 = load i8*, i8** @difffilename, align 8
  %38 = call i8* @fopen(i8* %37, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %39 = bitcast i8* %38 to i32*
  store i32* %39, i32** %3, align 8
  %40 = load i32*, i32** %3, align 8
  %41 = icmp ne i32* %40, null
  br i1 %41, label %51, label %42

42:                                               ; preds = %32
  %43 = load i32, i32* @stderr, align 4
  %44 = call i8* @_(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0))
  %45 = load i8*, i8** @progname, align 8
  %46 = load i8*, i8** @difffilename, align 8
  %47 = load i32, i32* @errno, align 4
  %48 = call i8* @strerror(i32 %47)
  %49 = call i32 @fprintf(i32 %43, i8* %44, i8* %45, i8* %46, i8* %48)
  %50 = call i32 @exit(i32 2) #4
  unreachable

51:                                               ; preds = %32
  %52 = load i32*, i32** %3, align 8
  %53 = call i32 @fclose(i32* %52)
  %54 = trunc i64 %5 to i32
  %55 = load i8*, i8** @outputdir, align 8
  %56 = call i32 @snprintf(i8* %7, i32 %54, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i8* %55)
  %57 = call i32 @directory_exists(i8* %7)
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %61, label %59

59:                                               ; preds = %51
  %60 = call i32 @make_directory(i8* %7)
  br label %61

61:                                               ; preds = %59, %51
  %62 = load i8*, i8** %1, align 8
  call void @llvm.stackrestore(i8* %62)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @directory_exists(i8*) #2

declare dso_local i32 @make_directory(i8*) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #2

declare dso_local i8* @pg_strdup(i8*) #2

declare dso_local i8* @fopen(i8*, i8*) #2

declare dso_local i32 @fprintf(i32, i8*, i8*, i8*, i8*) #2

declare dso_local i8* @_(i8*) #2

declare dso_local i8* @strerror(i32) #2

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #3

declare dso_local i32 @fclose(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
