; ModuleID = '/home/carl/AnghaBench/lz4/examples/extr_HCStreaming_ringBuffer.c_main.c'
source_filename = "/home/carl/AnghaBench/lz4/examples/extr_HCStreaming_ringBuffer.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [31 x i8] c"Please specify input filename\0A\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"-p\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"%s.lz4s-%d\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"%s.lz4s-%d.dec\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"input   = [%s]\0A\00", align 1
@.str.6 = private unnamed_addr constant [16 x i8] c"lz4     = [%s]\0A\00", align 1
@.str.7 = private unnamed_addr constant [16 x i8] c"decoded = [%s]\0A\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c"wb\00", align 1
@.str.10 = private unnamed_addr constant [13 x i8] c"Verify : OK\0A\00", align 1
@.str.11 = private unnamed_addr constant [31 x i8] c"Verify : NG : error at pos %u\0A\00", align 1
@.str.12 = private unnamed_addr constant [29 x i8] c"Press enter to continue ...\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca [256 x i8], align 16
  %7 = alloca [256 x i8], align 16
  %8 = alloca [256 x i8], align 16
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %19 = bitcast [256 x i8]* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %19, i8 0, i64 256, i1 false)
  %20 = bitcast [256 x i8]* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %20, i8 0, i64 256, i1 false)
  %21 = bitcast [256 x i8]* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %21, i8 0, i64 256, i1 false)
  store i32 1, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %22 = load i32, i32* %4, align 4
  %23 = icmp slt i32 %22, 2
  br i1 %23, label %24, label %26

24:                                               ; preds = %2
  %25 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %111

26:                                               ; preds = %2
  %27 = load i8**, i8*** %5, align 8
  %28 = getelementptr inbounds i8*, i8** %27, i64 1
  %29 = load i8*, i8** %28, align 8
  %30 = call i32 @strcmp(i8* %29, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %26
  store i32 1, i32* %10, align 4
  store i32 2, i32* %9, align 4
  br label %33

33:                                               ; preds = %32, %26
  %34 = getelementptr inbounds [256 x i8], [256 x i8]* %6, i64 0, i64 0
  %35 = load i8**, i8*** %5, align 8
  %36 = load i32, i32* %9, align 4
  %37 = zext i32 %36 to i64
  %38 = getelementptr inbounds i8*, i8** %35, i64 %37
  %39 = load i8*, i8** %38, align 8
  %40 = call i32 (i8*, i32, i8*, i8*, ...) @snprintf(i8* %34, i32 256, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* %39)
  %41 = getelementptr inbounds [256 x i8], [256 x i8]* %7, i64 0, i64 0
  %42 = load i8**, i8*** %5, align 8
  %43 = load i32, i32* %9, align 4
  %44 = zext i32 %43 to i64
  %45 = getelementptr inbounds i8*, i8** %42, i64 %44
  %46 = load i8*, i8** %45, align 8
  %47 = call i32 (i8*, i32, i8*, i8*, ...) @snprintf(i8* %41, i32 256, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i8* %46, i32 9)
  %48 = getelementptr inbounds [256 x i8], [256 x i8]* %8, i64 0, i64 0
  %49 = load i8**, i8*** %5, align 8
  %50 = load i32, i32* %9, align 4
  %51 = zext i32 %50 to i64
  %52 = getelementptr inbounds i8*, i8** %49, i64 %51
  %53 = load i8*, i8** %52, align 8
  %54 = call i32 (i8*, i32, i8*, i8*, ...) @snprintf(i8* %48, i32 256, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0), i8* %53, i32 9)
  %55 = getelementptr inbounds [256 x i8], [256 x i8]* %6, i64 0, i64 0
  %56 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0), i8* %55)
  %57 = getelementptr inbounds [256 x i8], [256 x i8]* %7, i64 0, i64 0
  %58 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i64 0, i64 0), i8* %57)
  %59 = getelementptr inbounds [256 x i8], [256 x i8]* %8, i64 0, i64 0
  %60 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i64 0, i64 0), i8* %59)
  %61 = getelementptr inbounds [256 x i8], [256 x i8]* %6, i64 0, i64 0
  %62 = call i32* @fopen(i8* %61, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0))
  store i32* %62, i32** %11, align 8
  %63 = getelementptr inbounds [256 x i8], [256 x i8]* %7, i64 0, i64 0
  %64 = call i32* @fopen(i8* %63, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i64 0, i64 0))
  store i32* %64, i32** %12, align 8
  %65 = load i32*, i32** %12, align 8
  %66 = load i32*, i32** %11, align 8
  %67 = call i32 @test_compress(i32* %65, i32* %66)
  %68 = load i32*, i32** %12, align 8
  %69 = call i32 @fclose(i32* %68)
  %70 = load i32*, i32** %11, align 8
  %71 = call i32 @fclose(i32* %70)
  %72 = getelementptr inbounds [256 x i8], [256 x i8]* %7, i64 0, i64 0
  %73 = call i32* @fopen(i8* %72, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0))
  store i32* %73, i32** %13, align 8
  %74 = getelementptr inbounds [256 x i8], [256 x i8]* %8, i64 0, i64 0
  %75 = call i32* @fopen(i8* %74, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i64 0, i64 0))
  store i32* %75, i32** %14, align 8
  %76 = load i32*, i32** %14, align 8
  %77 = load i32*, i32** %13, align 8
  %78 = call i32 @test_decompress(i32* %76, i32* %77)
  %79 = load i32*, i32** %14, align 8
  %80 = call i32 @fclose(i32* %79)
  %81 = load i32*, i32** %13, align 8
  %82 = call i32 @fclose(i32* %81)
  %83 = getelementptr inbounds [256 x i8], [256 x i8]* %6, i64 0, i64 0
  %84 = call i32* @fopen(i8* %83, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0))
  store i32* %84, i32** %15, align 8
  %85 = getelementptr inbounds [256 x i8], [256 x i8]* %8, i64 0, i64 0
  %86 = call i32* @fopen(i8* %85, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0))
  store i32* %86, i32** %16, align 8
  %87 = load i32*, i32** %15, align 8
  %88 = load i32*, i32** %16, align 8
  %89 = call i64 @compare(i32* %87, i32* %88)
  store i64 %89, i64* %17, align 8
  %90 = load i64, i64* %17, align 8
  %91 = icmp eq i64 0, %90
  br i1 %91, label %92, label %94

92:                                               ; preds = %33
  %93 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.10, i64 0, i64 0))
  br label %99

94:                                               ; preds = %33
  %95 = load i64, i64* %17, align 8
  %96 = trunc i64 %95 to i32
  %97 = sub i32 %96, 1
  %98 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.11, i64 0, i64 0), i32 %97)
  br label %99

99:                                               ; preds = %94, %92
  %100 = load i32*, i32** %16, align 8
  %101 = call i32 @fclose(i32* %100)
  %102 = load i32*, i32** %15, align 8
  %103 = call i32 @fclose(i32* %102)
  %104 = load i32, i32* %10, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %110

106:                                              ; preds = %99
  %107 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.12, i64 0, i64 0))
  %108 = call i32 (...) @getchar()
  store i32 %108, i32* %18, align 4
  %109 = load i32, i32* %18, align 4
  br label %110

110:                                              ; preds = %106, %99
  store i32 0, i32* %3, align 4
  br label %111

111:                                              ; preds = %110, %24
  %112 = load i32, i32* %3, align 4
  ret i32 %112
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @printf(i8*, ...) #2

declare dso_local i32 @strcmp(i8*, i8*) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, ...) #2

declare dso_local i32* @fopen(i8*, i8*) #2

declare dso_local i32 @test_compress(i32*, i32*) #2

declare dso_local i32 @fclose(i32*) #2

declare dso_local i32 @test_decompress(i32*, i32*) #2

declare dso_local i64 @compare(i32*, i32*) #2

declare dso_local i32 @getchar(...) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
