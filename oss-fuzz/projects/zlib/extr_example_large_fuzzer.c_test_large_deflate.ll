; ModuleID = '/home/carl/AnghaBench/oss-fuzz/projects/zlib/extr_example_large_fuzzer.c_test_large_deflate.c'
source_filename = "/home/carl/AnghaBench/oss-fuzz/projects/zlib/extr_example_large_fuzzer.c_test_large_deflate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i8*, i32, i8*, i32, i8*, i32, i32 }

@zalloc = common dso_local global i32 0, align 4
@zfree = common dso_local global i32 0, align 4
@Z_BEST_COMPRESSION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"deflateInit\00", align 1
@Z_NO_FLUSH = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"deflate large 1\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [20 x i8] c"deflate not greedy\0A\00", align 1
@Z_NO_COMPRESSION = common dso_local global i32 0, align 4
@Z_DEFAULT_STRATEGY = common dso_local global i32 0, align 4
@diff = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [16 x i8] c"deflate large 2\00", align 1
@Z_FILTERED = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [16 x i8] c"deflate large 3\00", align 1
@Z_FINISH = common dso_local global i32 0, align 4
@Z_STREAM_END = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [42 x i8] c"deflate large should report Z_STREAM_END\0A\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"deflateEnd\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_large_deflate(i8* %0, i64 %1, i8* %2, i64 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_6__, align 8
  %10 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i64 %1, i64* %6, align 8
  store i8* %2, i8** %7, align 8
  store i64 %3, i64* %8, align 8
  %11 = load i32, i32* @zalloc, align 4
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 6
  store i32 %11, i32* %12, align 4
  %13 = load i32, i32* @zfree, align 4
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 5
  store i32 %13, i32* %14, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 4
  store i8* null, i8** %15, align 8
  %16 = load i32, i32* @Z_BEST_COMPRESSION, align 4
  %17 = call i32 @deflateInit(%struct.TYPE_6__* %9, i32 %16)
  store i32 %17, i32* %10, align 4
  %18 = load i32, i32* %10, align 4
  %19 = call i32 @CHECK_ERR(i32 %18, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %20 = load i8*, i8** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  store i8* %20, i8** %21, align 8
  %22 = load i64, i64* %6, align 8
  %23 = trunc i64 %22 to i32
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 1
  store i32 %23, i32* %24, align 8
  %25 = load i8*, i8** %7, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 2
  store i8* %25, i8** %26, align 8
  %27 = load i64, i64* %8, align 8
  %28 = trunc i64 %27 to i32
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 3
  store i32 %28, i32* %29, align 8
  %30 = load i32, i32* @Z_NO_FLUSH, align 4
  %31 = call i32 @deflate(%struct.TYPE_6__* %9, i32 %30)
  store i32 %31, i32* %10, align 4
  %32 = load i32, i32* %10, align 4
  %33 = call i32 @CHECK_ERR(i32 %32, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 3
  %35 = load i32, i32* %34, align 8
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %4
  %38 = load i32, i32* @stderr, align 4
  %39 = call i32 @fprintf(i32 %38, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  %40 = call i32 @exit(i32 1) #3
  unreachable

41:                                               ; preds = %4
  %42 = load i32, i32* @Z_NO_COMPRESSION, align 4
  %43 = load i32, i32* @Z_DEFAULT_STRATEGY, align 4
  %44 = call i32 @deflateParams(%struct.TYPE_6__* %9, i32 %42, i32 %43)
  %45 = load i8*, i8** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 2
  store i8* %45, i8** %46, align 8
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  %48 = load i8*, i8** %47, align 8
  %49 = load i8*, i8** %5, align 8
  %50 = ptrtoint i8* %48 to i64
  %51 = ptrtoint i8* %49 to i64
  %52 = sub i64 %50, %51
  %53 = trunc i64 %52 to i32
  store i32 %53, i32* @diff, align 4
  %54 = load i32, i32* @diff, align 4
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 3
  store i32 %54, i32* %55, align 8
  %56 = load i32, i32* @Z_NO_FLUSH, align 4
  %57 = call i32 @deflate(%struct.TYPE_6__* %9, i32 %56)
  store i32 %57, i32* %10, align 4
  %58 = load i32, i32* %10, align 4
  %59 = call i32 @CHECK_ERR(i32 %58, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0))
  %60 = load i32, i32* @Z_BEST_COMPRESSION, align 4
  %61 = load i32, i32* @Z_FILTERED, align 4
  %62 = call i32 @deflateParams(%struct.TYPE_6__* %9, i32 %60, i32 %61)
  %63 = load i8*, i8** %7, align 8
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 2
  store i8* %63, i8** %64, align 8
  %65 = load i64, i64* %8, align 8
  %66 = trunc i64 %65 to i32
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 3
  store i32 %66, i32* %67, align 8
  %68 = load i32, i32* @Z_NO_FLUSH, align 4
  %69 = call i32 @deflate(%struct.TYPE_6__* %9, i32 %68)
  store i32 %69, i32* %10, align 4
  %70 = load i32, i32* %10, align 4
  %71 = call i32 @CHECK_ERR(i32 %70, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0))
  %72 = load i32, i32* @Z_FINISH, align 4
  %73 = call i32 @deflate(%struct.TYPE_6__* %9, i32 %72)
  store i32 %73, i32* %10, align 4
  %74 = load i32, i32* %10, align 4
  %75 = load i32, i32* @Z_STREAM_END, align 4
  %76 = icmp ne i32 %74, %75
  br i1 %76, label %77, label %81

77:                                               ; preds = %41
  %78 = load i32, i32* @stderr, align 4
  %79 = call i32 @fprintf(i32 %78, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.5, i64 0, i64 0))
  %80 = call i32 @exit(i32 1) #3
  unreachable

81:                                               ; preds = %41
  %82 = call i32 @deflateEnd(%struct.TYPE_6__* %9)
  store i32 %82, i32* %10, align 4
  %83 = load i32, i32* %10, align 4
  %84 = call i32 @CHECK_ERR(i32 %83, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0))
  ret void
}

declare dso_local i32 @deflateInit(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @CHECK_ERR(i32, i8*) #1

declare dso_local i32 @deflate(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @fprintf(i32, i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @deflateParams(%struct.TYPE_6__*, i32, i32) #1

declare dso_local i32 @deflateEnd(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
