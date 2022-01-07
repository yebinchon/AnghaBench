; ModuleID = '/home/carl/AnghaBench/lz4/examples/extr_blockStreaming_lineByLine.c_main.c'
source_filename = "/home/carl/AnghaBench/lz4/examples/extr_blockStreaming_lineByLine.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [31 x i8] c"Please specify input filename\0A\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"%s.lz4s\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"%s.lz4s.dec\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"inp = [%s]\0A\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"lz4 = [%s]\0A\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"dec = [%s]\0A\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"wb\00", align 1
@.str.9 = private unnamed_addr constant [13 x i8] c"Verify : OK\0A\00", align 1
@.str.10 = private unnamed_addr constant [13 x i8] c"Verify : NG\0A\00", align 1

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
  br label %85

23:                                               ; preds = %2
  %24 = getelementptr inbounds [256 x i8], [256 x i8]* %6, i64 0, i64 0
  %25 = load i8**, i8*** %5, align 8
  %26 = getelementptr inbounds i8*, i8** %25, i64 1
  %27 = load i8*, i8** %26, align 8
  %28 = call i32 @snprintf(i8* %24, i32 256, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %27)
  %29 = getelementptr inbounds [256 x i8], [256 x i8]* %7, i64 0, i64 0
  %30 = load i8**, i8*** %5, align 8
  %31 = getelementptr inbounds i8*, i8** %30, i64 1
  %32 = load i8*, i8** %31, align 8
  %33 = call i32 @snprintf(i8* %29, i32 256, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i8* %32)
  %34 = getelementptr inbounds [256 x i8], [256 x i8]* %8, i64 0, i64 0
  %35 = load i8**, i8*** %5, align 8
  %36 = getelementptr inbounds i8*, i8** %35, i64 1
  %37 = load i8*, i8** %36, align 8
  %38 = call i32 @snprintf(i8* %34, i32 256, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i8* %37)
  %39 = getelementptr inbounds [256 x i8], [256 x i8]* %6, i64 0, i64 0
  %40 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i8* %39)
  %41 = getelementptr inbounds [256 x i8], [256 x i8]* %7, i64 0, i64 0
  %42 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0), i8* %41)
  %43 = getelementptr inbounds [256 x i8], [256 x i8]* %8, i64 0, i64 0
  %44 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0), i8* %43)
  %45 = getelementptr inbounds [256 x i8], [256 x i8]* %6, i64 0, i64 0
  %46 = call i32* @fopen(i8* %45, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0))
  store i32* %46, i32** %9, align 8
  %47 = getelementptr inbounds [256 x i8], [256 x i8]* %7, i64 0, i64 0
  %48 = call i32* @fopen(i8* %47, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0))
  store i32* %48, i32** %10, align 8
  %49 = load i32*, i32** %10, align 8
  %50 = load i32*, i32** %9, align 8
  %51 = call i32 @test_compress(i32* %49, i32* %50, i32 1024, i32 263168)
  %52 = load i32*, i32** %10, align 8
  %53 = call i32 @fclose(i32* %52)
  %54 = load i32*, i32** %9, align 8
  %55 = call i32 @fclose(i32* %54)
  %56 = getelementptr inbounds [256 x i8], [256 x i8]* %7, i64 0, i64 0
  %57 = call i32* @fopen(i8* %56, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0))
  store i32* %57, i32** %11, align 8
  %58 = getelementptr inbounds [256 x i8], [256 x i8]* %8, i64 0, i64 0
  %59 = call i32* @fopen(i8* %58, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0))
  store i32* %59, i32** %12, align 8
  %60 = load i32*, i32** %12, align 8
  %61 = load i32*, i32** %11, align 8
  %62 = call i32 @test_decompress(i32* %60, i32* %61, i32 1024, i32 263168)
  %63 = load i32*, i32** %12, align 8
  %64 = call i32 @fclose(i32* %63)
  %65 = load i32*, i32** %11, align 8
  %66 = call i32 @fclose(i32* %65)
  %67 = getelementptr inbounds [256 x i8], [256 x i8]* %6, i64 0, i64 0
  %68 = call i32* @fopen(i8* %67, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0))
  store i32* %68, i32** %13, align 8
  %69 = getelementptr inbounds [256 x i8], [256 x i8]* %8, i64 0, i64 0
  %70 = call i32* @fopen(i8* %69, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0))
  store i32* %70, i32** %14, align 8
  %71 = load i32*, i32** %13, align 8
  %72 = load i32*, i32** %14, align 8
  %73 = call i32 @compare(i32* %71, i32* %72)
  store i32 %73, i32* %15, align 4
  %74 = load i32, i32* %15, align 4
  %75 = icmp eq i32 0, %74
  br i1 %75, label %76, label %78

76:                                               ; preds = %23
  %77 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i64 0, i64 0))
  br label %80

78:                                               ; preds = %23
  %79 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.10, i64 0, i64 0))
  br label %80

80:                                               ; preds = %78, %76
  %81 = load i32*, i32** %14, align 8
  %82 = call i32 @fclose(i32* %81)
  %83 = load i32*, i32** %13, align 8
  %84 = call i32 @fclose(i32* %83)
  store i32 0, i32* %3, align 4
  br label %85

85:                                               ; preds = %80, %21
  %86 = load i32, i32* %3, align 4
  ret i32 %86
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @printf(i8*, ...) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #2

declare dso_local i32* @fopen(i8*, i8*) #2

declare dso_local i32 @test_compress(i32*, i32*, i32, i32) #2

declare dso_local i32 @fclose(i32*) #2

declare dso_local i32 @test_decompress(i32*, i32*, i32, i32) #2

declare dso_local i32 @compare(i32*, i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
