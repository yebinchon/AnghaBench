; ModuleID = '/home/carl/AnghaBench/lwan/src/bin/tools/extr_mimegen.c_compress_output.c'
source_filename = "/home/carl/AnghaBench/lwan/src/bin/tools/extr_mimegen.c_compress_output.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.output = type { i64, i64 }

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"Could not allocate memory for compressed data\0A\00", align 1
@Z_OK = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [35 x i8] c"Could not compress data with zlib\0A\00", align 1
@BROTLI_MAX_QUALITY = common dso_local global i32 0, align 4
@BROTLI_MAX_WINDOW_BITS = common dso_local global i32 0, align 4
@BROTLI_MODE_TEXT = common dso_local global i32 0, align 4
@BROTLI_TRUE = common dso_local global i64 0, align 8
@ZOPFLI_FORMAT_ZLIB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.output*, i64*)* @compress_output to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @compress_output(%struct.output* %0, i64* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.output*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i8*, align 8
  store %struct.output* %0, %struct.output** %4, align 8
  store i64* %1, i64** %5, align 8
  %7 = load %struct.output*, %struct.output** %4, align 8
  %8 = getelementptr inbounds %struct.output, %struct.output* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = trunc i64 %9 to i32
  %11 = call i64 @compressBound(i32 %10)
  %12 = load i64*, i64** %5, align 8
  store i64 %11, i64* %12, align 8
  %13 = load i64*, i64** %5, align 8
  %14 = load i64, i64* %13, align 8
  %15 = call i8* @malloc(i64 %14)
  store i8* %15, i8** %6, align 8
  %16 = load i8*, i8** %6, align 8
  %17 = icmp ne i8* %16, null
  br i1 %17, label %22, label %18

18:                                               ; preds = %2
  %19 = load i32, i32* @stderr, align 4
  %20 = call i32 @fprintf(i32 %19, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0))
  %21 = call i32 @exit(i32 1) #3
  unreachable

22:                                               ; preds = %2
  %23 = load i8*, i8** %6, align 8
  %24 = bitcast i8* %23 to i32*
  %25 = load i64*, i64** %5, align 8
  %26 = load %struct.output*, %struct.output** %4, align 8
  %27 = getelementptr inbounds %struct.output, %struct.output* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = inttoptr i64 %28 to i32*
  %30 = load %struct.output*, %struct.output** %4, align 8
  %31 = getelementptr inbounds %struct.output, %struct.output* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = call i64 @compress2(i32* %24, i64* %25, i32* %29, i64 %32, i32 9)
  %34 = load i64, i64* @Z_OK, align 8
  %35 = icmp ne i64 %33, %34
  br i1 %35, label %36, label %40

36:                                               ; preds = %22
  %37 = load i32, i32* @stderr, align 4
  %38 = call i32 @fprintf(i32 %37, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  %39 = call i32 @exit(i32 1) #3
  unreachable

40:                                               ; preds = %22
  %41 = load i64*, i64** %5, align 8
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %47, label %44

44:                                               ; preds = %40
  %45 = load i8*, i8** %6, align 8
  %46 = call i32 @free(i8* %45)
  store i8* null, i8** %3, align 8
  br label %49

47:                                               ; preds = %40
  %48 = load i8*, i8** %6, align 8
  store i8* %48, i8** %3, align 8
  br label %49

49:                                               ; preds = %47, %44
  %50 = load i8*, i8** %3, align 8
  ret i8* %50
}

declare dso_local i64 @compressBound(i32) #1

declare dso_local i8* @malloc(i64) #1

declare dso_local i32 @fprintf(i32, i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i64 @compress2(i32*, i64*, i32*, i64, i32) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
