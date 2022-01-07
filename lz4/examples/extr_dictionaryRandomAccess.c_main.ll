; ModuleID = '/home/carl/AnghaBench/lz4/examples/extr_dictionaryRandomAccess.c_main.c'
source_filename = "/home/carl/AnghaBench/lz4/examples/extr_dictionaryRandomAccess.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DICTIONARY_BYTES = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"Usage: %s input dictionary offset length\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"%s.lz4s-%d\00", align 1
@BLOCK_BYTES = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [15 x i8] c"%s.lz4s-%d.dec\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"inp    = [%s]\0A\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"lz4    = [%s]\0A\00", align 1
@.str.6 = private unnamed_addr constant [15 x i8] c"dec    = [%s]\0A\00", align 1
@.str.7 = private unnamed_addr constant [15 x i8] c"dict   = [%s]\0A\00", align 1
@.str.8 = private unnamed_addr constant [15 x i8] c"offset = [%d]\0A\00", align 1
@.str.9 = private unnamed_addr constant [15 x i8] c"length = [%d]\0A\00", align 1
@.str.10 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.11 = private unnamed_addr constant [3 x i8] c"wb\00", align 1
@.str.12 = private unnamed_addr constant [21 x i8] c"compress : %s -> %s\0A\00", align 1
@.str.13 = private unnamed_addr constant [17 x i8] c"compress : done\0A\00", align 1
@.str.14 = private unnamed_addr constant [23 x i8] c"decompress : %s -> %s\0A\00", align 1
@.str.15 = private unnamed_addr constant [19 x i8] c"decompress : done\0A\00", align 1
@SEEK_SET = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [20 x i8] c"verify : %s <-> %s\0A\00", align 1
@.str.17 = private unnamed_addr constant [13 x i8] c"verify : OK\0A\00", align 1
@.str.18 = private unnamed_addr constant [13 x i8] c"verify : NG\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca [256 x i8], align 16
  %7 = alloca [256 x i8], align 16
  %8 = alloca [256 x i8], align 16
  %9 = alloca [256 x i8], align 16
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i32*, align 8
  %23 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %24 = bitcast [256 x i8]* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %24, i8 0, i64 256, i1 false)
  %25 = bitcast [256 x i8]* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %25, i8 0, i64 256, i1 false)
  %26 = bitcast [256 x i8]* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %26, i8 0, i64 256, i1 false)
  %27 = bitcast [256 x i8]* %9 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %27, i8 0, i64 256, i1 false)
  %28 = load i32, i32* @DICTIONARY_BYTES, align 4
  %29 = zext i32 %28 to i64
  %30 = call i8* @llvm.stacksave()
  store i8* %30, i8** %12, align 8
  %31 = alloca i8, i64 %29, align 16
  store i64 %29, i64* %13, align 8
  %32 = load i32, i32* %4, align 4
  %33 = icmp slt i32 %32, 5
  br i1 %33, label %34, label %39

34:                                               ; preds = %2
  %35 = load i8**, i8*** %5, align 8
  %36 = getelementptr inbounds i8*, i8** %35, i64 0
  %37 = load i8*, i8** %36, align 8
  %38 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i8* %37)
  store i32 0, i32* %3, align 4
  store i32 1, i32* %15, align 4
  br label %150

39:                                               ; preds = %2
  %40 = getelementptr inbounds [256 x i8], [256 x i8]* %6, i64 0, i64 0
  %41 = load i8**, i8*** %5, align 8
  %42 = getelementptr inbounds i8*, i8** %41, i64 1
  %43 = load i8*, i8** %42, align 8
  %44 = call i32 (i8*, i32, i8*, i8*, ...) @snprintf(i8* %40, i32 256, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %43)
  %45 = getelementptr inbounds [256 x i8], [256 x i8]* %7, i64 0, i64 0
  %46 = load i8**, i8*** %5, align 8
  %47 = getelementptr inbounds i8*, i8** %46, i64 1
  %48 = load i8*, i8** %47, align 8
  %49 = load i32, i32* @BLOCK_BYTES, align 4
  %50 = call i32 (i8*, i32, i8*, i8*, ...) @snprintf(i8* %45, i32 256, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i8* %48, i32 %49)
  %51 = getelementptr inbounds [256 x i8], [256 x i8]* %8, i64 0, i64 0
  %52 = load i8**, i8*** %5, align 8
  %53 = getelementptr inbounds i8*, i8** %52, i64 1
  %54 = load i8*, i8** %53, align 8
  %55 = load i32, i32* @BLOCK_BYTES, align 4
  %56 = call i32 (i8*, i32, i8*, i8*, ...) @snprintf(i8* %51, i32 256, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i8* %54, i32 %55)
  %57 = getelementptr inbounds [256 x i8], [256 x i8]* %9, i64 0, i64 0
  %58 = load i8**, i8*** %5, align 8
  %59 = getelementptr inbounds i8*, i8** %58, i64 2
  %60 = load i8*, i8** %59, align 8
  %61 = call i32 (i8*, i32, i8*, i8*, ...) @snprintf(i8* %57, i32 256, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %60)
  %62 = load i8**, i8*** %5, align 8
  %63 = getelementptr inbounds i8*, i8** %62, i64 3
  %64 = load i8*, i8** %63, align 8
  %65 = call i32 @atoi(i8* %64)
  store i32 %65, i32* %10, align 4
  %66 = load i8**, i8*** %5, align 8
  %67 = getelementptr inbounds i8*, i8** %66, i64 4
  %68 = load i8*, i8** %67, align 8
  %69 = call i32 @atoi(i8* %68)
  store i32 %69, i32* %11, align 4
  %70 = getelementptr inbounds [256 x i8], [256 x i8]* %6, i64 0, i64 0
  %71 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0), i8* %70)
  %72 = getelementptr inbounds [256 x i8], [256 x i8]* %7, i64 0, i64 0
  %73 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0), i8* %72)
  %74 = getelementptr inbounds [256 x i8], [256 x i8]* %8, i64 0, i64 0
  %75 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0), i8* %74)
  %76 = getelementptr inbounds [256 x i8], [256 x i8]* %9, i64 0, i64 0
  %77 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i64 0, i64 0), i8* %76)
  %78 = load i32, i32* %10, align 4
  %79 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i64 0, i64 0), i32 %78)
  %80 = load i32, i32* %11, align 4
  %81 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.9, i64 0, i64 0), i32 %80)
  %82 = getelementptr inbounds [256 x i8], [256 x i8]* %9, i64 0, i64 0
  %83 = call i32* @fopen(i8* %82, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i64 0, i64 0))
  store i32* %83, i32** %16, align 8
  %84 = load i32*, i32** %16, align 8
  %85 = load i32, i32* @DICTIONARY_BYTES, align 4
  %86 = call i64 @read_bin(i32* %84, i8* %31, i32 %85)
  %87 = trunc i64 %86 to i32
  store i32 %87, i32* %14, align 4
  %88 = load i32*, i32** %16, align 8
  %89 = call i32 @fclose(i32* %88)
  %90 = getelementptr inbounds [256 x i8], [256 x i8]* %6, i64 0, i64 0
  %91 = call i32* @fopen(i8* %90, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i64 0, i64 0))
  store i32* %91, i32** %17, align 8
  %92 = getelementptr inbounds [256 x i8], [256 x i8]* %7, i64 0, i64 0
  %93 = call i32* @fopen(i8* %92, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.11, i64 0, i64 0))
  store i32* %93, i32** %18, align 8
  %94 = getelementptr inbounds [256 x i8], [256 x i8]* %6, i64 0, i64 0
  %95 = getelementptr inbounds [256 x i8], [256 x i8]* %7, i64 0, i64 0
  %96 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.12, i64 0, i64 0), i8* %94, i8* %95)
  %97 = load i32*, i32** %18, align 8
  %98 = load i32*, i32** %17, align 8
  %99 = load i32, i32* %14, align 4
  %100 = call i32 @test_compress(i32* %97, i32* %98, i8* %31, i32 %99)
  %101 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.13, i64 0, i64 0))
  %102 = load i32*, i32** %18, align 8
  %103 = call i32 @fclose(i32* %102)
  %104 = load i32*, i32** %17, align 8
  %105 = call i32 @fclose(i32* %104)
  %106 = getelementptr inbounds [256 x i8], [256 x i8]* %7, i64 0, i64 0
  %107 = call i32* @fopen(i8* %106, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i64 0, i64 0))
  store i32* %107, i32** %19, align 8
  %108 = getelementptr inbounds [256 x i8], [256 x i8]* %8, i64 0, i64 0
  %109 = call i32* @fopen(i8* %108, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.11, i64 0, i64 0))
  store i32* %109, i32** %20, align 8
  %110 = getelementptr inbounds [256 x i8], [256 x i8]* %7, i64 0, i64 0
  %111 = getelementptr inbounds [256 x i8], [256 x i8]* %8, i64 0, i64 0
  %112 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.14, i64 0, i64 0), i8* %110, i8* %111)
  %113 = load i32*, i32** %20, align 8
  %114 = load i32*, i32** %19, align 8
  %115 = load i32, i32* @DICTIONARY_BYTES, align 4
  %116 = load i32, i32* %10, align 4
  %117 = load i32, i32* %11, align 4
  %118 = call i32 @test_decompress(i32* %113, i32* %114, i8* %31, i32 %115, i32 %116, i32 %117)
  %119 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.15, i64 0, i64 0))
  %120 = load i32*, i32** %20, align 8
  %121 = call i32 @fclose(i32* %120)
  %122 = load i32*, i32** %19, align 8
  %123 = call i32 @fclose(i32* %122)
  %124 = getelementptr inbounds [256 x i8], [256 x i8]* %6, i64 0, i64 0
  %125 = call i32* @fopen(i8* %124, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i64 0, i64 0))
  store i32* %125, i32** %21, align 8
  %126 = getelementptr inbounds [256 x i8], [256 x i8]* %8, i64 0, i64 0
  %127 = call i32* @fopen(i8* %126, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i64 0, i64 0))
  store i32* %127, i32** %22, align 8
  %128 = load i32*, i32** %21, align 8
  %129 = load i32, i32* %10, align 4
  %130 = load i32, i32* @SEEK_SET, align 4
  %131 = call i32 @seek_bin(i32* %128, i32 %129, i32 %130)
  %132 = getelementptr inbounds [256 x i8], [256 x i8]* %6, i64 0, i64 0
  %133 = getelementptr inbounds [256 x i8], [256 x i8]* %8, i64 0, i64 0
  %134 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16, i64 0, i64 0), i8* %132, i8* %133)
  %135 = load i32*, i32** %21, align 8
  %136 = load i32*, i32** %22, align 8
  %137 = load i32, i32* %11, align 4
  %138 = call i32 @compare(i32* %135, i32* %136, i32 %137)
  store i32 %138, i32* %23, align 4
  %139 = load i32, i32* %23, align 4
  %140 = icmp eq i32 0, %139
  br i1 %140, label %141, label %143

141:                                              ; preds = %39
  %142 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.17, i64 0, i64 0))
  br label %145

143:                                              ; preds = %39
  %144 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.18, i64 0, i64 0))
  br label %145

145:                                              ; preds = %143, %141
  %146 = load i32*, i32** %22, align 8
  %147 = call i32 @fclose(i32* %146)
  %148 = load i32*, i32** %21, align 8
  %149 = call i32 @fclose(i32* %148)
  store i32 0, i32* %3, align 4
  store i32 1, i32* %15, align 4
  br label %150

150:                                              ; preds = %145, %34
  %151 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %151)
  %152 = load i32, i32* %3, align 4
  ret i32 %152
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @printf(i8*, ...) #3

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, ...) #3

declare dso_local i32 @atoi(i8*) #3

declare dso_local i32* @fopen(i8*, i8*) #3

declare dso_local i64 @read_bin(i32*, i8*, i32) #3

declare dso_local i32 @fclose(i32*) #3

declare dso_local i32 @test_compress(i32*, i32*, i8*, i32) #3

declare dso_local i32 @test_decompress(i32*, i32*, i8*, i32, i32, i32) #3

declare dso_local i32 @seek_bin(i32*, i32, i32) #3

declare dso_local i32 @compare(i32*, i32*, i32) #3

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { nounwind }
attributes #3 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
