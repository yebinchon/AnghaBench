; ModuleID = '/home/carl/AnghaBench/oss-fuzz/projects/zlib/extr_minigzip_fuzzer.c_LLVMFuzzerTestOneInput.c'
source_filename = "/home/carl/AnghaBench/oss-fuzz/projects/zlib/extr_minigzip_fuzzer.c_LLVMFuzzerTestOneInput.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [25 x i8] c"/tmp/minigzip_fuzzer.out\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"/tmp/minigzip_fuzzer.out.gz\00", align 1
@BUFLEN = common dso_local global i32 0, align 4
@LLVMFuzzerTestOneInput.kMaxSize = internal global i64 1048576, align 8
@.str.2 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"failed fwrite\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"failed fclose\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"wb\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"fread\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @LLVMFuzzerTestOneInput(i32* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca [20 x i8], align 16
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i64 %1, i64* %5, align 8
  store i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i8** %6, align 8
  store i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i8** %7, align 8
  %15 = load i32, i32* @BUFLEN, align 4
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %10, align 8
  %18 = alloca i8, i64 %16, align 16
  store i64 %16, i64* %11, align 8
  store i32 0, i32* %12, align 4
  %19 = load i64, i64* %5, align 8
  %20 = icmp ult i64 %19, 1
  br i1 %20, label %25, label %21

21:                                               ; preds = %2
  %22 = load i64, i64* %5, align 8
  %23 = load i64, i64* @LLVMFuzzerTestOneInput.kMaxSize, align 8
  %24 = icmp ugt i64 %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %21, %2
  store i32 0, i32* %3, align 4
  store i32 1, i32* %13, align 4
  br label %120

26:                                               ; preds = %21
  %27 = load i8*, i8** %6, align 8
  %28 = call i32* @fopen(i8* %27, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  store i32* %28, i32** %9, align 8
  %29 = load i32*, i32** %4, align 8
  %30 = load i64, i64* %5, align 8
  %31 = trunc i64 %30 to i32
  %32 = load i32*, i32** %9, align 8
  %33 = call i64 @fwrite(i32* %29, i32 1, i32 %31, i32* %32)
  %34 = load i64, i64* %5, align 8
  %35 = icmp ne i64 %33, %34
  br i1 %35, label %36, label %38

36:                                               ; preds = %26
  %37 = call i32 @error(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0))
  br label %38

38:                                               ; preds = %36, %26
  %39 = load i32*, i32** %9, align 8
  %40 = call i64 @fclose(i32* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %38
  %43 = call i32 @error(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0))
  br label %44

44:                                               ; preds = %42, %38
  %45 = getelementptr inbounds [20 x i8], [20 x i8]* %8, i64 0, i64 0
  %46 = call i32 @memset(i8* %45, i32 0, i32 20)
  %47 = getelementptr inbounds [20 x i8], [20 x i8]* %8, i64 0, i64 0
  %48 = call i32 @snprintf(i8* %47, i32 20, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0))
  %49 = load i32*, i32** %4, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 0
  %51 = load i32, i32* %50, align 4
  %52 = srem i32 %51, 10
  %53 = trunc i32 %52 to i8
  %54 = getelementptr inbounds [20 x i8], [20 x i8]* %8, i64 0, i64 2
  store i8 %53, i8* %54, align 2
  %55 = load i32*, i32** %4, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 0
  %57 = load i32, i32* %56, align 4
  %58 = srem i32 %57, 4
  switch i32 %58, label %59 [
    i32 0, label %60
    i32 1, label %62
    i32 2, label %64
    i32 3, label %66
  ]

59:                                               ; preds = %44
  br label %60

60:                                               ; preds = %44, %59
  %61 = getelementptr inbounds [20 x i8], [20 x i8]* %8, i64 0, i64 3
  store i8 0, i8* %61, align 1
  br label %68

62:                                               ; preds = %44
  %63 = getelementptr inbounds [20 x i8], [20 x i8]* %8, i64 0, i64 3
  store i8 102, i8* %63, align 1
  br label %68

64:                                               ; preds = %44
  %65 = getelementptr inbounds [20 x i8], [20 x i8]* %8, i64 0, i64 3
  store i8 104, i8* %65, align 1
  br label %68

66:                                               ; preds = %44
  %67 = getelementptr inbounds [20 x i8], [20 x i8]* %8, i64 0, i64 3
  store i8 82, i8* %67, align 1
  br label %68

68:                                               ; preds = %66, %64, %62, %60
  %69 = load i8*, i8** %6, align 8
  %70 = getelementptr inbounds [20 x i8], [20 x i8]* %8, i64 0, i64 0
  %71 = call i32 @file_compress(i8* %69, i8* %70)
  %72 = load i8*, i8** %7, align 8
  %73 = call i32 @file_uncompress(i8* %72)
  %74 = load i8*, i8** %6, align 8
  %75 = call i32* @fopen(i8* %74, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0))
  store i32* %75, i32** %9, align 8
  %76 = load i32*, i32** %9, align 8
  %77 = icmp eq i32* %76, null
  br i1 %77, label %78, label %82

78:                                               ; preds = %68
  %79 = load i8*, i8** %6, align 8
  %80 = call i32 @perror(i8* %79)
  %81 = call i32 @exit(i32 1) #4
  unreachable

82:                                               ; preds = %68
  %83 = trunc i64 %16 to i32
  %84 = call i32 @memset(i8* %18, i32 0, i32 %83)
  br label %85

85:                                               ; preds = %100, %82
  %86 = trunc i64 %16 to i32
  %87 = load i32*, i32** %9, align 8
  %88 = call i64 @fread(i8* %18, i32 1, i32 %86, i32* %87)
  %89 = trunc i64 %88 to i32
  store i32 %89, i32* %14, align 4
  %90 = load i32*, i32** %9, align 8
  %91 = call i64 @ferror(i32* %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %96

93:                                               ; preds = %85
  %94 = call i32 @perror(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0))
  %95 = call i32 @exit(i32 1) #4
  unreachable

96:                                               ; preds = %85
  %97 = load i32, i32* %14, align 4
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %99, label %100

99:                                               ; preds = %96
  br label %113

100:                                              ; preds = %96
  %101 = load i32*, i32** %4, align 8
  %102 = load i32, i32* %12, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i32, i32* %101, i64 %103
  %105 = load i32, i32* %14, align 4
  %106 = call i64 @memcmp(i32* %104, i8* %18, i32 %105)
  %107 = icmp eq i64 0, %106
  %108 = zext i1 %107 to i32
  %109 = call i32 @assert(i32 %108)
  %110 = load i32, i32* %14, align 4
  %111 = load i32, i32* %12, align 4
  %112 = add nsw i32 %111, %110
  store i32 %112, i32* %12, align 4
  br label %85

113:                                              ; preds = %99
  %114 = load i32*, i32** %9, align 8
  %115 = call i64 @fclose(i32* %114)
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %119

117:                                              ; preds = %113
  %118 = call i32 @error(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0))
  br label %119

119:                                              ; preds = %117, %113
  store i32 0, i32* %3, align 4
  store i32 1, i32* %13, align 4
  br label %120

120:                                              ; preds = %119, %25
  %121 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %121)
  %122 = load i32, i32* %3, align 4
  ret i32 %122
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32* @fopen(i8*, i8*) #2

declare dso_local i64 @fwrite(i32*, i32, i32, i32*) #2

declare dso_local i32 @error(i8*) #2

declare dso_local i64 @fclose(i32*) #2

declare dso_local i32 @memset(i8*, i32, i32) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #2

declare dso_local i32 @file_compress(i8*, i8*) #2

declare dso_local i32 @file_uncompress(i8*) #2

declare dso_local i32 @perror(i8*) #2

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #3

declare dso_local i64 @fread(i8*, i32, i32, i32*) #2

declare dso_local i64 @ferror(i32*) #2

declare dso_local i32 @assert(i32) #2

declare dso_local i64 @memcmp(i32*, i8*, i32) #2

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
