; ModuleID = '/home/carl/AnghaBench/lz4/examples/extr_frameCompress.c_main.c'
source_filename = "/home/carl/AnghaBench/lz4/examples/extr_frameCompress.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, double, i64 }

@.str = private unnamed_addr constant [31 x i8] c"Please specify input filename\0A\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"%s.lz4\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"%s.lz4.dec\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"inp = [%s]\0A\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"lz4 = [%s]\0A\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"dec = [%s]\0A\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"wb\00", align 1
@.str.9 = private unnamed_addr constant [21 x i8] c"compress : %s -> %s\0A\00", align 1
@.str.10 = private unnamed_addr constant [32 x i8] c"compress : failed with code %i\0A\00", align 1
@.str.11 = private unnamed_addr constant [31 x i8] c"%s: %zu \E2\86\92 %zu bytes, %.1f%%\0A\00", align 1
@.str.12 = private unnamed_addr constant [17 x i8] c"compress : done\0A\00", align 1
@.str.13 = private unnamed_addr constant [23 x i8] c"decompress : %s -> %s\0A\00", align 1
@.str.14 = private unnamed_addr constant [34 x i8] c"decompress : failed with code %i\0A\00", align 1
@.str.15 = private unnamed_addr constant [19 x i8] c"decompress : done\0A\00", align 1
@.str.16 = private unnamed_addr constant [20 x i8] c"verify : %s <-> %s\0A\00", align 1
@.str.17 = private unnamed_addr constant [63 x i8] c"corruption detected : decompressed file differs from original\0A\00", align 1
@.str.18 = private unnamed_addr constant [13 x i8] c"verify : OK\0A\00", align 1

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
  %11 = alloca %struct.TYPE_3__, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %18 = bitcast [256 x i8]* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %18, i8 0, i64 256, i1 false)
  %19 = bitcast [256 x i8]* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %19, i8 0, i64 256, i1 false)
  %20 = bitcast [256 x i8]* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %20, i8 0, i64 256, i1 false)
  %21 = load i32, i32* %4, align 4
  %22 = icmp slt i32 %21, 2
  br i1 %22, label %23, label %25

23:                                               ; preds = %2
  %24 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %128

25:                                               ; preds = %2
  %26 = getelementptr inbounds [256 x i8], [256 x i8]* %6, i64 0, i64 0
  %27 = load i8**, i8*** %5, align 8
  %28 = getelementptr inbounds i8*, i8** %27, i64 1
  %29 = load i8*, i8** %28, align 8
  %30 = call i32 @snprintf(i8* %26, i32 256, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %29)
  %31 = getelementptr inbounds [256 x i8], [256 x i8]* %7, i64 0, i64 0
  %32 = load i8**, i8*** %5, align 8
  %33 = getelementptr inbounds i8*, i8** %32, i64 1
  %34 = load i8*, i8** %33, align 8
  %35 = call i32 @snprintf(i8* %31, i32 256, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8* %34)
  %36 = getelementptr inbounds [256 x i8], [256 x i8]* %8, i64 0, i64 0
  %37 = load i8**, i8*** %5, align 8
  %38 = getelementptr inbounds i8*, i8** %37, i64 1
  %39 = load i8*, i8** %38, align 8
  %40 = call i32 @snprintf(i8* %36, i32 256, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i8* %39)
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
  %54 = load i32*, i32** %9, align 8
  %55 = load i32*, i32** %10, align 8
  call void @compress_file(%struct.TYPE_3__* sret %11, i32* %54, i32* %55)
  %56 = load i32*, i32** %10, align 8
  %57 = call i32 @fclose(i32* %56)
  %58 = load i32*, i32** %9, align 8
  %59 = call i32 @fclose(i32* %58)
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %69

63:                                               ; preds = %25
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.10, i64 0, i64 0), i32 %65)
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  store i32 %68, i32* %3, align 4
  br label %128

69:                                               ; preds = %25
  %70 = getelementptr inbounds [256 x i8], [256 x i8]* %6, i64 0, i64 0
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 1
  %72 = load double, double* %71, align 8
  %73 = fptoui double %72 to i64
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 2
  %75 = load i64, i64* %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 2
  %77 = load i64, i64* %76, align 8
  %78 = sitofp i64 %77 to double
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 1
  %80 = load double, double* %79, align 8
  %81 = fdiv double %78, %80
  %82 = fmul double %81, 1.000000e+02
  %83 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.11, i64 0, i64 0), i8* %70, i64 %73, i64 %75, double %82)
  %84 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.12, i64 0, i64 0))
  %85 = getelementptr inbounds [256 x i8], [256 x i8]* %7, i64 0, i64 0
  %86 = call i32* @fopen(i8* %85, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0))
  store i32* %86, i32** %12, align 8
  %87 = getelementptr inbounds [256 x i8], [256 x i8]* %8, i64 0, i64 0
  %88 = call i32* @fopen(i8* %87, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0))
  store i32* %88, i32** %13, align 8
  %89 = getelementptr inbounds [256 x i8], [256 x i8]* %7, i64 0, i64 0
  %90 = getelementptr inbounds [256 x i8], [256 x i8]* %8, i64 0, i64 0
  %91 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.13, i64 0, i64 0), i8* %89, i8* %90)
  %92 = load i32*, i32** %12, align 8
  %93 = load i32*, i32** %13, align 8
  %94 = call i32 @decompress_file(i32* %92, i32* %93)
  store i32 %94, i32* %14, align 4
  %95 = load i32*, i32** %13, align 8
  %96 = call i32 @fclose(i32* %95)
  %97 = load i32*, i32** %12, align 8
  %98 = call i32 @fclose(i32* %97)
  %99 = load i32, i32* %14, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %105

101:                                              ; preds = %69
  %102 = load i32, i32* %14, align 4
  %103 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.14, i64 0, i64 0), i32 %102)
  %104 = load i32, i32* %14, align 4
  store i32 %104, i32* %3, align 4
  br label %128

105:                                              ; preds = %69
  %106 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.15, i64 0, i64 0))
  %107 = getelementptr inbounds [256 x i8], [256 x i8]* %6, i64 0, i64 0
  %108 = call i32* @fopen(i8* %107, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0))
  store i32* %108, i32** %15, align 8
  %109 = getelementptr inbounds [256 x i8], [256 x i8]* %8, i64 0, i64 0
  %110 = call i32* @fopen(i8* %109, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0))
  store i32* %110, i32** %16, align 8
  %111 = getelementptr inbounds [256 x i8], [256 x i8]* %6, i64 0, i64 0
  %112 = getelementptr inbounds [256 x i8], [256 x i8]* %8, i64 0, i64 0
  %113 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16, i64 0, i64 0), i8* %111, i8* %112)
  %114 = load i32*, i32** %15, align 8
  %115 = load i32*, i32** %16, align 8
  %116 = call i32 @compareFiles(i32* %114, i32* %115)
  store i32 %116, i32* %17, align 4
  %117 = load i32*, i32** %16, align 8
  %118 = call i32 @fclose(i32* %117)
  %119 = load i32*, i32** %15, align 8
  %120 = call i32 @fclose(i32* %119)
  %121 = load i32, i32* %17, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %126

123:                                              ; preds = %105
  %124 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.17, i64 0, i64 0))
  %125 = load i32, i32* %17, align 4
  store i32 %125, i32* %3, align 4
  br label %128

126:                                              ; preds = %105
  %127 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.18, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %128

128:                                              ; preds = %126, %123, %101, %63, %23
  %129 = load i32, i32* %3, align 4
  ret i32 %129
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @printf(i8*, ...) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #2

declare dso_local i32* @fopen(i8*, i8*) #2

declare dso_local void @compress_file(%struct.TYPE_3__* sret, i32*, i32*) #2

declare dso_local i32 @fclose(i32*) #2

declare dso_local i32 @decompress_file(i32*, i32*) #2

declare dso_local i32 @compareFiles(i32*, i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
