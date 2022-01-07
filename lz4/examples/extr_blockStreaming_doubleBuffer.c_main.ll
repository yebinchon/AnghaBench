; ModuleID = '/home/carl/AnghaBench/lz4/examples/extr_blockStreaming_doubleBuffer.c_main.c'
source_filename = "/home/carl/AnghaBench/lz4/examples/extr_blockStreaming_doubleBuffer.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [31 x i8] c"Please specify input filename\0A\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"%s.lz4s-%d\00", align 1
@BLOCK_BYTES = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [15 x i8] c"%s.lz4s-%d.dec\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"inp = [%s]\0A\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"lz4 = [%s]\0A\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"dec = [%s]\0A\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"wb\00", align 1
@.str.9 = private unnamed_addr constant [21 x i8] c"compress : %s -> %s\0A\00", align 1
@.str.10 = private unnamed_addr constant [17 x i8] c"compress : done\0A\00", align 1
@.str.11 = private unnamed_addr constant [23 x i8] c"decompress : %s -> %s\0A\00", align 1
@.str.12 = private unnamed_addr constant [19 x i8] c"decompress : done\0A\00", align 1
@.str.13 = private unnamed_addr constant [20 x i8] c"verify : %s <-> %s\0A\00", align 1
@.str.14 = private unnamed_addr constant [13 x i8] c"verify : OK\0A\00", align 1
@.str.15 = private unnamed_addr constant [13 x i8] c"verify : NG\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca [256 x i8], align 16
  %7 = alloca [256 x i8], align 16
  %8 = alloca [256 x i8], align 16
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %16 = bitcast [256 x i8]* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %16, i8 0, i64 256, i1 false)
  %17 = bitcast [256 x i8]* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %17, i8 0, i64 256, i1 false)
  %18 = bitcast [256 x i8]* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %18, i8 0, i64 256, i1 false)
  %19 = load i32, i32* %4, align 4
  %20 = icmp slt i32 %19, 2
  br i1 %20, label %21, label %23

21:                                               ; preds = %2
  %22 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %98

23:                                               ; preds = %2
  %24 = getelementptr inbounds [256 x i8], [256 x i8]* %6, i64 0, i64 0
  %25 = load i8**, i8*** %5, align 8
  %26 = getelementptr inbounds i8*, i8** %25, i64 1
  %27 = load i8*, i8** %26, align 8
  %28 = call i32 (i8*, i32, i8*, i8*, ...) @snprintf(i8* %24, i32 256, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %27)
  %29 = getelementptr inbounds [256 x i8], [256 x i8]* %7, i64 0, i64 0
  %30 = load i8**, i8*** %5, align 8
  %31 = getelementptr inbounds i8*, i8** %30, i64 1
  %32 = load i8*, i8** %31, align 8
  %33 = load i32, i32* @BLOCK_BYTES, align 4
  %34 = call i32 (i8*, i32, i8*, i8*, ...) @snprintf(i8* %29, i32 256, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i8* %32, i32 %33)
  %35 = getelementptr inbounds [256 x i8], [256 x i8]* %8, i64 0, i64 0
  %36 = load i8**, i8*** %5, align 8
  %37 = getelementptr inbounds i8*, i8** %36, i64 1
  %38 = load i8*, i8** %37, align 8
  %39 = load i32, i32* @BLOCK_BYTES, align 4
  %40 = call i32 (i8*, i32, i8*, i8*, ...) @snprintf(i8* %35, i32 256, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i8* %38, i32 %39)
  %41 = getelementptr inbounds [256 x i8], [256 x i8]* %6, i64 0, i64 0
  %42 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i8* %41)
  %43 = getelementptr inbounds [256 x i8], [256 x i8]* %7, i64 0, i64 0
  %44 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0), i8* %43)
  %45 = getelementptr inbounds [256 x i8], [256 x i8]* %8, i64 0, i64 0
  %46 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0), i8* %45)
  %47 = getelementptr inbounds [256 x i8], [256 x i8]* %6, i64 0, i64 0
  %48 = call i32* @fopen(i8* %47, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0))
  store i32* %48, i32** %9, align 8
  %49 = getelementptr inbounds [256 x i8], [256 x i8]* %7, i64 0, i64 0
  %50 = call i32* @fopen(i8* %49, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0))
  store i32* %50, i32** %10, align 8
  %51 = getelementptr inbounds [256 x i8], [256 x i8]* %6, i64 0, i64 0
  %52 = getelementptr inbounds [256 x i8], [256 x i8]* %7, i64 0, i64 0
  %53 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.9, i64 0, i64 0), i8* %51, i8* %52)
  %54 = load i32*, i32** %10, align 8
  %55 = load i32*, i32** %9, align 8
  %56 = call i32 @test_compress(i32* %54, i32* %55)
  %57 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.10, i64 0, i64 0))
  %58 = load i32*, i32** %10, align 8
  %59 = call i32 @fclose(i32* %58)
  %60 = load i32*, i32** %9, align 8
  %61 = call i32 @fclose(i32* %60)
  %62 = getelementptr inbounds [256 x i8], [256 x i8]* %7, i64 0, i64 0
  %63 = call i32* @fopen(i8* %62, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0))
  store i32* %63, i32** %11, align 8
  %64 = getelementptr inbounds [256 x i8], [256 x i8]* %8, i64 0, i64 0
  %65 = call i32* @fopen(i8* %64, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0))
  store i32* %65, i32** %12, align 8
  %66 = getelementptr inbounds [256 x i8], [256 x i8]* %7, i64 0, i64 0
  %67 = getelementptr inbounds [256 x i8], [256 x i8]* %8, i64 0, i64 0
  %68 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.11, i64 0, i64 0), i8* %66, i8* %67)
  %69 = load i32*, i32** %12, align 8
  %70 = load i32*, i32** %11, align 8
  %71 = call i32 @test_decompress(i32* %69, i32* %70)
  %72 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.12, i64 0, i64 0))
  %73 = load i32*, i32** %12, align 8
  %74 = call i32 @fclose(i32* %73)
  %75 = load i32*, i32** %11, align 8
  %76 = call i32 @fclose(i32* %75)
  %77 = getelementptr inbounds [256 x i8], [256 x i8]* %6, i64 0, i64 0
  %78 = call i32* @fopen(i8* %77, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0))
  store i32* %78, i32** %13, align 8
  %79 = getelementptr inbounds [256 x i8], [256 x i8]* %8, i64 0, i64 0
  %80 = call i32* @fopen(i8* %79, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0))
  store i32* %80, i32** %14, align 8
  %81 = getelementptr inbounds [256 x i8], [256 x i8]* %6, i64 0, i64 0
  %82 = getelementptr inbounds [256 x i8], [256 x i8]* %8, i64 0, i64 0
  %83 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.13, i64 0, i64 0), i8* %81, i8* %82)
  %84 = load i32*, i32** %13, align 8
  %85 = load i32*, i32** %14, align 8
  %86 = call i32 @compare(i32* %84, i32* %85)
  store i32 %86, i32* %15, align 4
  %87 = load i32, i32* %15, align 4
  %88 = icmp eq i32 0, %87
  br i1 %88, label %89, label %91

89:                                               ; preds = %23
  %90 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.14, i64 0, i64 0))
  br label %93

91:                                               ; preds = %23
  %92 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.15, i64 0, i64 0))
  br label %93

93:                                               ; preds = %91, %89
  %94 = load i32*, i32** %14, align 8
  %95 = call i32 @fclose(i32* %94)
  %96 = load i32*, i32** %13, align 8
  %97 = call i32 @fclose(i32* %96)
  store i32 0, i32* %3, align 4
  br label %98

98:                                               ; preds = %93, %21
  %99 = load i32, i32* %3, align 4
  ret i32 %99
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @printf(i8*, ...) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, ...) #2

declare dso_local i32* @fopen(i8*, i8*) #2

declare dso_local i32 @test_compress(i32*, i32*) #2

declare dso_local i32 @fclose(i32*) #2

declare dso_local i32 @test_decompress(i32*, i32*) #2

declare dso_local i32 @compare(i32*, i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
