; ModuleID = '/home/carl/AnghaBench/oss-fuzz/projects/tidy-html5/extr_fuzzer_temp_file.h_fuzzer_get_tmpfile.c'
source_filename = "/home/carl/AnghaBench/oss-fuzz/projects/tidy-html5/extr_fuzzer_temp_file.h_fuzzer_get_tmpfile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [36 x i8] c"/tmp/generate_temporary_file.XXXXXX\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"Failed to allocate file name buffer.\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"Failed to make temporary file.\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"wb\00", align 1
@.str.4 = private unnamed_addr constant [32 x i8] c"Failed to open file descriptor.\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [51 x i8] c"Failed to write all bytes to file (%zu out of %zu)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32*, i64)* @fuzzer_get_tmpfile to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @fuzzer_get_tmpfile(i32* %0, i64 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  store i32* %0, i32** %3, align 8
  store i64 %1, i64* %4, align 8
  %9 = call i8* @strdup(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  store i8* %9, i8** %5, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = icmp ne i8* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %2
  %13 = call i32 @perror(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  %14 = call i32 (...) @abort() #3
  unreachable

15:                                               ; preds = %2
  %16 = load i8*, i8** %5, align 8
  %17 = call i32 @mkstemp(i8* %16)
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* %6, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %15
  %21 = call i32 @perror(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  %22 = call i32 (...) @abort() #3
  unreachable

23:                                               ; preds = %15
  %24 = load i32, i32* %6, align 4
  %25 = call i32* @fdopen(i32 %24, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  store i32* %25, i32** %7, align 8
  %26 = load i32*, i32** %7, align 8
  %27 = icmp ne i32* %26, null
  br i1 %27, label %33, label %28

28:                                               ; preds = %23
  %29 = call i32 @perror(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0))
  %30 = load i32, i32* %6, align 4
  %31 = call i32 @close(i32 %30)
  %32 = call i32 (...) @abort() #3
  unreachable

33:                                               ; preds = %23
  %34 = load i32*, i32** %3, align 8
  %35 = load i64, i64* %4, align 8
  %36 = load i32*, i32** %7, align 8
  %37 = call i64 @fwrite(i32* %34, i32 4, i64 %35, i32* %36)
  store i64 %37, i64* %8, align 8
  %38 = load i64, i64* %8, align 8
  %39 = load i64, i64* %4, align 8
  %40 = icmp ult i64 %38, %39
  br i1 %40, label %41, label %49

41:                                               ; preds = %33
  %42 = load i32, i32* %6, align 4
  %43 = call i32 @close(i32 %42)
  %44 = load i32, i32* @stderr, align 4
  %45 = load i64, i64* %8, align 8
  %46 = load i64, i64* %4, align 8
  %47 = call i32 @fprintf(i32 %44, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.5, i64 0, i64 0), i64 %45, i64 %46)
  %48 = call i32 (...) @abort() #3
  unreachable

49:                                               ; preds = %33
  %50 = load i32*, i32** %7, align 8
  %51 = call i32 @fclose(i32* %50)
  %52 = load i8*, i8** %5, align 8
  ret i8* %52
}

declare dso_local i8* @strdup(i8*) #1

declare dso_local i32 @perror(i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #2

declare dso_local i32 @mkstemp(i8*) #1

declare dso_local i32* @fdopen(i32, i8*) #1

declare dso_local i32 @close(i32) #1

declare dso_local i64 @fwrite(i32*, i32, i64, i32*) #1

declare dso_local i32 @fprintf(i32, i8*, i64, i64) #1

declare dso_local i32 @fclose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
