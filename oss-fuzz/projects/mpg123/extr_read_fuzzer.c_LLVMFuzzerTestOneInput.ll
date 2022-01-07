; ModuleID = '/home/carl/AnghaBench/oss-fuzz/projects/mpg123/extr_read_fuzzer.c_LLVMFuzzerTestOneInput.c'
source_filename = "/home/carl/AnghaBench/oss-fuzz/projects/mpg123/extr_read_fuzzer.c_LLVMFuzzerTestOneInput.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LLVMFuzzerTestOneInput.initialized = internal global i32 0, align 4
@MPG123_ADD_FLAGS = common dso_local global i32 0, align 4
@MPG123_QUIET = common dso_local global i32 0, align 4
@MPG123_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @LLVMFuzzerTestOneInput(i32* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  store i32* %0, i32** %4, align 8
  store i64 %1, i64* %5, align 8
  %13 = load i32, i32* @LLVMFuzzerTestOneInput.initialized, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %17, label %15

15:                                               ; preds = %2
  %16 = call i32 (...) @mpg123_init()
  store i32 1, i32* @LLVMFuzzerTestOneInput.initialized, align 4
  br label %17

17:                                               ; preds = %15, %2
  %18 = load i32*, i32** %4, align 8
  %19 = load i64, i64* %5, align 8
  %20 = call i8* @fuzzer_get_tmpfile(i32* %18, i64 %19)
  store i8* %20, i8** %6, align 8
  %21 = load i8*, i8** %6, align 8
  %22 = icmp eq i8* %21, null
  br i1 %22, label %23, label %24

23:                                               ; preds = %17
  store i32 0, i32* %3, align 4
  br label %87

24:                                               ; preds = %17
  %25 = load i64, i64* %5, align 8
  %26 = mul i64 %25, 2
  store i64 %26, i64* %7, align 8
  %27 = load i64, i64* %7, align 8
  %28 = call i64 @malloc(i64 %27)
  %29 = inttoptr i64 %28 to i8*
  store i8* %29, i8** %8, align 8
  %30 = load i8*, i8** %8, align 8
  %31 = icmp eq i8* %30, null
  br i1 %31, label %32, label %35

32:                                               ; preds = %24
  %33 = load i8*, i8** %6, align 8
  %34 = call i32 @fuzzer_release_tmpfile(i8* %33)
  store i32 0, i32* %3, align 4
  br label %87

35:                                               ; preds = %24
  %36 = call i32* @mpg123_new(i32* null, i32* %9)
  store i32* %36, i32** %10, align 8
  %37 = load i32*, i32** %10, align 8
  %38 = icmp eq i32* %37, null
  br i1 %38, label %46, label %39

39:                                               ; preds = %35
  %40 = load i32*, i32** %10, align 8
  %41 = load i32, i32* @MPG123_ADD_FLAGS, align 4
  %42 = load i32, i32* @MPG123_QUIET, align 4
  %43 = call i32 @mpg123_param(i32* %40, i32 %41, i32 %42, i32 0)
  %44 = load i32, i32* @MPG123_OK, align 4
  %45 = icmp ne i32 %43, %44
  br i1 %45, label %46, label %51

46:                                               ; preds = %39, %35
  %47 = load i8*, i8** %8, align 8
  %48 = call i32 @free(i8* %47)
  %49 = load i8*, i8** %6, align 8
  %50 = call i32 @fuzzer_release_tmpfile(i8* %49)
  store i32 0, i32* %3, align 4
  br label %87

51:                                               ; preds = %39
  %52 = load i32*, i32** %10, align 8
  %53 = load i8*, i8** %6, align 8
  %54 = call i32 @mpg123_open(i32* %52, i8* %53)
  %55 = load i32, i32* @MPG123_OK, align 4
  %56 = icmp eq i32 %54, %55
  br i1 %56, label %57, label %78

57:                                               ; preds = %51
  br label %58

58:                                               ; preds = %75, %57
  %59 = load i32*, i32** %10, align 8
  %60 = load i8*, i8** %8, align 8
  %61 = load i64, i64* %7, align 8
  %62 = call i32 @mpg123_read(i32* %59, i8* %60, i64 %61, i64* %12)
  store i32 %62, i32* %11, align 4
  br label %63

63:                                               ; preds = %58
  %64 = load i32, i32* %11, align 4
  %65 = load i32, i32* @MPG123_OK, align 4
  %66 = icmp eq i32 %64, %65
  br i1 %66, label %67, label %75

67:                                               ; preds = %63
  %68 = load i32*, i32** %10, align 8
  %69 = call i32 @mpg123_tellframe(i32* %68)
  %70 = icmp sle i32 %69, 10000
  br i1 %70, label %71, label %75

71:                                               ; preds = %67
  %72 = load i32*, i32** %10, align 8
  %73 = call i32 @mpg123_tell_stream(i32* %72)
  %74 = icmp sle i32 %73, 1048576
  br label %75

75:                                               ; preds = %71, %67, %63
  %76 = phi i1 [ false, %67 ], [ false, %63 ], [ %74, %71 ]
  br i1 %76, label %58, label %77

77:                                               ; preds = %75
  br label %78

78:                                               ; preds = %77, %51
  %79 = load i32*, i32** %10, align 8
  %80 = call i32 @mpg123_close(i32* %79)
  %81 = load i32*, i32** %10, align 8
  %82 = call i32 @mpg123_delete(i32* %81)
  %83 = load i8*, i8** %8, align 8
  %84 = call i32 @free(i8* %83)
  %85 = load i8*, i8** %6, align 8
  %86 = call i32 @fuzzer_release_tmpfile(i8* %85)
  store i32 0, i32* %3, align 4
  br label %87

87:                                               ; preds = %78, %46, %32, %23
  %88 = load i32, i32* %3, align 4
  ret i32 %88
}

declare dso_local i32 @mpg123_init(...) #1

declare dso_local i8* @fuzzer_get_tmpfile(i32*, i64) #1

declare dso_local i64 @malloc(i64) #1

declare dso_local i32 @fuzzer_release_tmpfile(i8*) #1

declare dso_local i32* @mpg123_new(i32*, i32*) #1

declare dso_local i32 @mpg123_param(i32*, i32, i32, i32) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @mpg123_open(i32*, i8*) #1

declare dso_local i32 @mpg123_read(i32*, i8*, i64, i64*) #1

declare dso_local i32 @mpg123_tellframe(i32*) #1

declare dso_local i32 @mpg123_tell_stream(i32*) #1

declare dso_local i32 @mpg123_close(i32*) #1

declare dso_local i32 @mpg123_delete(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
