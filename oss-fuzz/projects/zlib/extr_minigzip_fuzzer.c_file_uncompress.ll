; ModuleID = '/home/carl/AnghaBench/oss-fuzz/projects/zlib/extr_minigzip_fuzzer.c_file_uncompress.c'
source_filename = "/home/carl/AnghaBench/oss-fuzz/projects/zlib/extr_minigzip_fuzzer.c_file_uncompress.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_NAME_LEN = common dso_local global i32 0, align 4
@GZ_SUFFIX = common dso_local global i8* null, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"%s: filename too long\0A\00", align 1
@prog = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@SUFFIX_LEN = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"%s: can't gzopen %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"wb\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @file_uncompress(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  store i8* %0, i8** %2, align 8
  %10 = load i32, i32* @MAX_NAME_LEN, align 4
  %11 = zext i32 %10 to i64
  %12 = call i8* @llvm.stacksave()
  store i8* %12, i8** %3, align 8
  %13 = alloca i8, i64 %11, align 16
  store i64 %11, i64* %4, align 8
  %14 = load i8*, i8** %2, align 8
  %15 = call i64 @strlen(i8* %14)
  store i64 %15, i64* %9, align 8
  %16 = load i64, i64* %9, align 8
  %17 = load i8*, i8** @GZ_SUFFIX, align 8
  %18 = call i64 @strlen(i8* %17)
  %19 = add i64 %16, %18
  %20 = icmp uge i64 %19, %11
  br i1 %20, label %21, label %26

21:                                               ; preds = %1
  %22 = load i32, i32* @stderr, align 4
  %23 = load i8*, i8** @prog, align 8
  %24 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %22, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i8* %23)
  %25 = call i32 @exit(i32 1) #4
  unreachable

26:                                               ; preds = %1
  %27 = trunc i64 %11 to i32
  %28 = load i8*, i8** %2, align 8
  %29 = call i32 @snprintf(i8* %13, i32 %27, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %28)
  %30 = load i64, i64* %9, align 8
  %31 = load i64, i64* @SUFFIX_LEN, align 8
  %32 = icmp ugt i64 %30, %31
  br i1 %32, label %33, label %49

33:                                               ; preds = %26
  %34 = load i8*, i8** %2, align 8
  %35 = load i64, i64* %9, align 8
  %36 = getelementptr inbounds i8, i8* %34, i64 %35
  %37 = load i64, i64* @SUFFIX_LEN, align 8
  %38 = sub i64 0, %37
  %39 = getelementptr inbounds i8, i8* %36, i64 %38
  %40 = load i8*, i8** @GZ_SUFFIX, align 8
  %41 = call i64 @strcmp(i8* %39, i8* %40)
  %42 = icmp eq i64 %41, 0
  br i1 %42, label %43, label %49

43:                                               ; preds = %33
  %44 = load i8*, i8** %2, align 8
  store i8* %44, i8** %5, align 8
  store i8* %13, i8** %6, align 8
  %45 = load i8*, i8** %6, align 8
  %46 = load i64, i64* %9, align 8
  %47 = sub i64 %46, 3
  %48 = getelementptr inbounds i8, i8* %45, i64 %47
  store i8 0, i8* %48, align 1
  br label %58

49:                                               ; preds = %33, %26
  %50 = load i8*, i8** %2, align 8
  store i8* %50, i8** %6, align 8
  store i8* %13, i8** %5, align 8
  %51 = load i64, i64* %9, align 8
  %52 = getelementptr inbounds i8, i8* %13, i64 %51
  %53 = load i64, i64* %9, align 8
  %54 = sub i64 %11, %53
  %55 = trunc i64 %54 to i32
  %56 = load i8*, i8** @GZ_SUFFIX, align 8
  %57 = call i32 @snprintf(i8* %52, i32 %55, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %56)
  br label %58

58:                                               ; preds = %49, %43
  %59 = load i8*, i8** %5, align 8
  %60 = call i32* @gzopen(i8* %59, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  store i32* %60, i32** %8, align 8
  %61 = load i32*, i32** %8, align 8
  %62 = icmp eq i32* %61, null
  br i1 %62, label %63, label %69

63:                                               ; preds = %58
  %64 = load i32, i32* @stderr, align 4
  %65 = load i8*, i8** @prog, align 8
  %66 = load i8*, i8** %5, align 8
  %67 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %64, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i8* %65, i8* %66)
  %68 = call i32 @exit(i32 1) #4
  unreachable

69:                                               ; preds = %58
  %70 = load i8*, i8** %6, align 8
  %71 = call i32* @fopen(i8* %70, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  store i32* %71, i32** %7, align 8
  %72 = load i32*, i32** %7, align 8
  %73 = icmp eq i32* %72, null
  br i1 %73, label %74, label %78

74:                                               ; preds = %69
  %75 = load i8*, i8** %2, align 8
  %76 = call i32 @perror(i8* %75)
  %77 = call i32 @exit(i32 1) #4
  unreachable

78:                                               ; preds = %69
  %79 = load i32*, i32** %8, align 8
  %80 = load i32*, i32** %7, align 8
  %81 = call i32 @gz_uncompress(i32* %79, i32* %80)
  %82 = load i8*, i8** %5, align 8
  %83 = call i32 @unlink(i8* %82)
  %84 = load i8*, i8** %3, align 8
  call void @llvm.stackrestore(i8* %84)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @strlen(i8*) #2

declare dso_local i32 @fprintf(i32, i8*, i8*, ...) #2

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #3

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #2

declare dso_local i64 @strcmp(i8*, i8*) #2

declare dso_local i32* @gzopen(i8*, i8*) #2

declare dso_local i32* @fopen(i8*, i8*) #2

declare dso_local i32 @perror(i8*) #2

declare dso_local i32 @gz_uncompress(i32*, i32*) #2

declare dso_local i32 @unlink(i8*) #2

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
