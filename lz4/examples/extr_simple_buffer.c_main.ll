; ModuleID = '/home/carl/AnghaBench/lz4/examples/extr_simple_buffer.c_main.c'
source_filename = "/home/carl/AnghaBench/lz4/examples/extr_simple_buffer.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [86 x i8] c"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Lorem ipsum dolor site amat.\00", align 1
@.str.1 = private unnamed_addr constant [48 x i8] c"Failed to allocate memory for *compressed_data.\00", align 1
@.str.2 = private unnamed_addr constant [101 x i8] c"A 0 or negative result from LZ4_compress_default() indicates a failure trying to compress the data. \00", align 1
@.str.3 = private unnamed_addr constant [51 x i8] c"We successfully compressed some data! Ratio: %.2f\0A\00", align 1
@.str.4 = private unnamed_addr constant [55 x i8] c"Failed to re-alloc memory for compressed_data.  Sad :(\00", align 1
@.str.5 = private unnamed_addr constant [45 x i8] c"Failed to allocate memory for *regen_buffer.\00", align 1
@.str.6 = private unnamed_addr constant [139 x i8] c"A negative result from LZ4_decompress_safe indicates a failure trying to decompress the data.  See exit code (echo $?) for value returned.\00", align 1
@.str.7 = private unnamed_addr constant [41 x i8] c"We successfully decompressed some data!\0A\00", align 1
@.str.8 = private unnamed_addr constant [48 x i8] c"Decompressed data is different from original! \0A\00", align 1
@.str.9 = private unnamed_addr constant [57 x i8] c"Validation failed.  *src and *new_src are not identical.\00", align 1
@.str.10 = private unnamed_addr constant [53 x i8] c"Validation done. The string we ended up with is:\0A%s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  store i8* getelementptr inbounds ([86 x i8], [86 x i8]* @.str, i64 0, i64 0), i8** %2, align 8
  %9 = call i64 @strlen(i8* getelementptr inbounds ([86 x i8], [86 x i8]* @.str, i32 0, i32 0))
  %10 = add nsw i64 %9, 1
  %11 = trunc i64 %10 to i32
  store i32 %11, i32* %3, align 4
  %12 = load i32, i32* %3, align 4
  %13 = call i32 @LZ4_compressBound(i32 %12)
  store i32 %13, i32* %4, align 4
  %14 = load i32, i32* %4, align 4
  %15 = sext i32 %14 to i64
  %16 = trunc i64 %15 to i32
  %17 = call i8* @malloc(i32 %16)
  store i8* %17, i8** %5, align 8
  %18 = load i8*, i8** %5, align 8
  %19 = icmp eq i8* %18, null
  br i1 %19, label %20, label %22

20:                                               ; preds = %0
  %21 = call i32 @run_screaming(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0), i32 1)
  br label %22

22:                                               ; preds = %20, %0
  %23 = load i8*, i8** %5, align 8
  %24 = load i32, i32* %3, align 4
  %25 = load i32, i32* %4, align 4
  %26 = call i32 @LZ4_compress_default(i8* getelementptr inbounds ([86 x i8], [86 x i8]* @.str, i32 0, i32 0), i8* %23, i32 %24, i32 %25)
  store i32 %26, i32* %6, align 4
  %27 = load i32, i32* %6, align 4
  %28 = icmp sle i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %22
  %30 = call i32 @run_screaming(i8* getelementptr inbounds ([101 x i8], [101 x i8]* @.str.2, i64 0, i64 0), i32 1)
  br label %31

31:                                               ; preds = %29, %22
  %32 = load i32, i32* %6, align 4
  %33 = icmp sgt i32 %32, 0
  br i1 %33, label %34, label %42

34:                                               ; preds = %31
  %35 = load i32, i32* %6, align 4
  %36 = sitofp i32 %35 to float
  %37 = load i32, i32* %3, align 4
  %38 = sitofp i32 %37 to float
  %39 = fdiv float %36, %38
  %40 = fpext float %39 to double
  %41 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.3, i64 0, i64 0), double %40)
  br label %42

42:                                               ; preds = %34, %31
  %43 = load i8*, i8** %5, align 8
  %44 = load i32, i32* %6, align 4
  %45 = sext i32 %44 to i64
  %46 = call i64 @realloc(i8* %43, i64 %45)
  %47 = inttoptr i64 %46 to i8*
  store i8* %47, i8** %5, align 8
  %48 = load i8*, i8** %5, align 8
  %49 = icmp eq i8* %48, null
  br i1 %49, label %50, label %52

50:                                               ; preds = %42
  %51 = call i32 @run_screaming(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.4, i64 0, i64 0), i32 1)
  br label %52

52:                                               ; preds = %50, %42
  %53 = load i32, i32* %3, align 4
  %54 = call i8* @malloc(i32 %53)
  store i8* %54, i8** %7, align 8
  %55 = load i8*, i8** %7, align 8
  %56 = icmp eq i8* %55, null
  br i1 %56, label %57, label %59

57:                                               ; preds = %52
  %58 = call i32 @run_screaming(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.5, i64 0, i64 0), i32 1)
  br label %59

59:                                               ; preds = %57, %52
  %60 = load i8*, i8** %5, align 8
  %61 = load i8*, i8** %7, align 8
  %62 = load i32, i32* %6, align 4
  %63 = load i32, i32* %3, align 4
  %64 = call i32 @LZ4_decompress_safe(i8* %60, i8* %61, i32 %62, i32 %63)
  store i32 %64, i32* %8, align 4
  %65 = load i8*, i8** %5, align 8
  %66 = call i32 @free(i8* %65)
  %67 = load i32, i32* %8, align 4
  %68 = icmp slt i32 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %59
  %70 = load i32, i32* %8, align 4
  %71 = call i32 @run_screaming(i8* getelementptr inbounds ([139 x i8], [139 x i8]* @.str.6, i64 0, i64 0), i32 %70)
  br label %72

72:                                               ; preds = %69, %59
  %73 = load i32, i32* %8, align 4
  %74 = icmp sge i32 %73, 0
  br i1 %74, label %75, label %77

75:                                               ; preds = %72
  %76 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.7, i64 0, i64 0))
  br label %77

77:                                               ; preds = %75, %72
  %78 = load i32, i32* %8, align 4
  %79 = load i32, i32* %3, align 4
  %80 = icmp ne i32 %78, %79
  br i1 %80, label %81, label %83

81:                                               ; preds = %77
  %82 = call i32 @run_screaming(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.8, i64 0, i64 0), i32 1)
  br label %83

83:                                               ; preds = %81, %77
  %84 = load i8*, i8** %7, align 8
  %85 = load i32, i32* %3, align 4
  %86 = call i64 @memcmp(i8* getelementptr inbounds ([86 x i8], [86 x i8]* @.str, i32 0, i32 0), i8* %84, i32 %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %90

88:                                               ; preds = %83
  %89 = call i32 @run_screaming(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.9, i64 0, i64 0), i32 1)
  br label %90

90:                                               ; preds = %88, %83
  %91 = load i8*, i8** %7, align 8
  %92 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.10, i64 0, i64 0), i8* %91)
  ret i32 0
}

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @LZ4_compressBound(i32) #1

declare dso_local i8* @malloc(i32) #1

declare dso_local i32 @run_screaming(i8*, i32) #1

declare dso_local i32 @LZ4_compress_default(i8*, i8*, i32, i32) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i64 @realloc(i8*, i64) #1

declare dso_local i32 @LZ4_decompress_safe(i8*, i8*, i32, i32) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i64 @memcmp(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
