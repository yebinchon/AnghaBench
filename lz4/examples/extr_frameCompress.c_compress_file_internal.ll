; ModuleID = '/home/carl/AnghaBench/lz4/examples/extr_frameCompress.c_compress_file_internal.c'
source_filename = "/home/carl/AnghaBench/lz4/examples/extr_frameCompress.c_compress_file_internal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i64, i64, i64, i32, i32 }

@LZ4F_HEADER_SIZE_MAX = common dso_local global i64 0, align 8
@kPrefs = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"Failed to start compression: error %u \0A\00", align 1
@.str.1 = private unnamed_addr constant [48 x i8] c"Buffer size is %u bytes, header size %u bytes \0A\00", align 1
@IN_CHUNK_SIZE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [31 x i8] c"Compression failed: error %u \0A\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"Writing %u bytes\0A\00", align 1
@.str.4 = private unnamed_addr constant [38 x i8] c"Failed to end compression: error %u \0A\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"Writing %u bytes \0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, i32*, i32*, i32*, i8*, i64, i8*, i64)* @compress_file_internal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @compress_file_internal(%struct.TYPE_3__* noalias sret %0, i32* %1, i32* %2, i32* %3, i8* %4, i64 %5, i8* %6, i64 %7) #0 {
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  store i32* %1, i32** %9, align 8
  store i32* %2, i32** %10, align 8
  store i32* %3, i32** %11, align 8
  store i8* %4, i8** %12, align 8
  store i64 %5, i64* %13, align 8
  store i8* %6, i8** %14, align 8
  store i64 %7, i64* %15, align 8
  %22 = bitcast %struct.TYPE_3__* %0 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %22, i8 0, i64 40, i1 false)
  %23 = bitcast i8* %22 to %struct.TYPE_3__*
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  store i32 1, i32* %24, align 8
  store i64 0, i64* %16, align 8
  %25 = load i32*, i32** %9, align 8
  %26 = icmp ne i32* %25, null
  %27 = zext i1 %26 to i32
  %28 = call i32 @assert(i32 %27)
  %29 = load i32*, i32** %10, align 8
  %30 = icmp ne i32* %29, null
  %31 = zext i1 %30 to i32
  %32 = call i32 @assert(i32 %31)
  %33 = load i32*, i32** %11, align 8
  %34 = icmp ne i32* %33, null
  %35 = zext i1 %34 to i32
  %36 = call i32 @assert(i32 %35)
  %37 = load i64, i64* %15, align 8
  %38 = load i64, i64* @LZ4F_HEADER_SIZE_MAX, align 8
  %39 = icmp uge i64 %37, %38
  %40 = zext i1 %39 to i32
  %41 = call i32 @assert(i32 %40)
  %42 = load i64, i64* %15, align 8
  %43 = load i64, i64* %13, align 8
  %44 = call i64 @LZ4F_compressBound(i64 %43, i32* @kPrefs)
  %45 = icmp uge i64 %42, %44
  %46 = zext i1 %45 to i32
  %47 = call i32 @assert(i32 %46)
  %48 = load i32*, i32** %11, align 8
  %49 = load i8*, i8** %14, align 8
  %50 = load i64, i64* %15, align 8
  %51 = call i64 @LZ4F_compressBegin(i32* %48, i8* %49, i64 %50, i32* @kPrefs)
  store i64 %51, i64* %18, align 8
  %52 = load i64, i64* %18, align 8
  %53 = call i64 @LZ4F_isError(i64 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %59

55:                                               ; preds = %8
  %56 = load i64, i64* %18, align 8
  %57 = trunc i64 %56 to i32
  %58 = call i32 (i8*, i32, ...) @printf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %57)
  br label %134

59:                                               ; preds = %8
  %60 = load i64, i64* %18, align 8
  store i64 %60, i64* %17, align 8
  %61 = load i64, i64* %15, align 8
  %62 = trunc i64 %61 to i32
  %63 = load i64, i64* %18, align 8
  %64 = trunc i64 %63 to i32
  %65 = call i32 (i8*, i32, ...) @printf(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0), i32 %62, i32 %64)
  %66 = load i8*, i8** %14, align 8
  %67 = load i64, i64* %18, align 8
  %68 = load i32*, i32** %10, align 8
  %69 = call i32 @safe_fwrite(i8* %66, i32 1, i64 %67, i32* %68)
  br label %70

70:                                               ; preds = %95, %59
  %71 = load i8*, i8** %12, align 8
  %72 = load i32, i32* @IN_CHUNK_SIZE, align 4
  %73 = load i32*, i32** %9, align 8
  %74 = call i64 @fread(i8* %71, i32 1, i32 %72, i32* %73)
  store i64 %74, i64* %19, align 8
  %75 = load i64, i64* %19, align 8
  %76 = icmp eq i64 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %70
  br label %106

78:                                               ; preds = %70
  %79 = load i64, i64* %19, align 8
  %80 = load i64, i64* %16, align 8
  %81 = add i64 %80, %79
  store i64 %81, i64* %16, align 8
  %82 = load i32*, i32** %11, align 8
  %83 = load i8*, i8** %14, align 8
  %84 = load i64, i64* %15, align 8
  %85 = load i8*, i8** %12, align 8
  %86 = load i64, i64* %19, align 8
  %87 = call i64 @LZ4F_compressUpdate(i32* %82, i8* %83, i64 %84, i8* %85, i64 %86, i32* null)
  store i64 %87, i64* %20, align 8
  %88 = load i64, i64* %20, align 8
  %89 = call i64 @LZ4F_isError(i64 %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %95

91:                                               ; preds = %78
  %92 = load i64, i64* %20, align 8
  %93 = trunc i64 %92 to i32
  %94 = call i32 (i8*, i32, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i32 %93)
  br label %134

95:                                               ; preds = %78
  %96 = load i64, i64* %20, align 8
  %97 = trunc i64 %96 to i32
  %98 = call i32 (i8*, i32, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i32 %97)
  %99 = load i8*, i8** %14, align 8
  %100 = load i64, i64* %20, align 8
  %101 = load i32*, i32** %10, align 8
  %102 = call i32 @safe_fwrite(i8* %99, i32 1, i64 %100, i32* %101)
  %103 = load i64, i64* %20, align 8
  %104 = load i64, i64* %17, align 8
  %105 = add i64 %104, %103
  store i64 %105, i64* %17, align 8
  br label %70

106:                                              ; preds = %77
  %107 = load i32*, i32** %11, align 8
  %108 = load i8*, i8** %14, align 8
  %109 = load i64, i64* %15, align 8
  %110 = call i64 @LZ4F_compressEnd(i32* %107, i8* %108, i64 %109, i32* null)
  store i64 %110, i64* %21, align 8
  %111 = load i64, i64* %21, align 8
  %112 = call i64 @LZ4F_isError(i64 %111)
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %118

114:                                              ; preds = %106
  %115 = load i64, i64* %21, align 8
  %116 = trunc i64 %115 to i32
  %117 = call i32 (i8*, i32, ...) @printf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.4, i64 0, i64 0), i32 %116)
  br label %134

118:                                              ; preds = %106
  %119 = load i64, i64* %21, align 8
  %120 = trunc i64 %119 to i32
  %121 = call i32 (i8*, i32, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0), i32 %120)
  %122 = load i8*, i8** %14, align 8
  %123 = load i64, i64* %21, align 8
  %124 = load i32*, i32** %10, align 8
  %125 = call i32 @safe_fwrite(i8* %122, i32 1, i64 %123, i32* %124)
  %126 = load i64, i64* %21, align 8
  %127 = load i64, i64* %17, align 8
  %128 = add i64 %127, %126
  store i64 %128, i64* %17, align 8
  %129 = load i64, i64* %16, align 8
  %130 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 1
  store i64 %129, i64* %130, align 8
  %131 = load i64, i64* %17, align 8
  %132 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 2
  store i64 %131, i64* %132, align 8
  %133 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 3
  store i64 0, i64* %133, align 8
  br label %134

134:                                              ; preds = %118, %114, %91, %55
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @assert(i32) #2

declare dso_local i64 @LZ4F_compressBound(i64, i32*) #2

declare dso_local i64 @LZ4F_compressBegin(i32*, i8*, i64, i32*) #2

declare dso_local i64 @LZ4F_isError(i64) #2

declare dso_local i32 @printf(i8*, i32, ...) #2

declare dso_local i32 @safe_fwrite(i8*, i32, i64, i32*) #2

declare dso_local i64 @fread(i8*, i32, i32, i32*) #2

declare dso_local i64 @LZ4F_compressUpdate(i32*, i8*, i64, i8*, i64, i32*) #2

declare dso_local i64 @LZ4F_compressEnd(i32*, i8*, i64, i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
