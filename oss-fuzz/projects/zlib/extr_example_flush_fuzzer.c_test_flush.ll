; ModuleID = '/home/carl/AnghaBench/oss-fuzz/projects/zlib/extr_example_flush_fuzzer.c_test_flush.c'
source_filename = "/home/carl/AnghaBench/oss-fuzz/projects/zlib/extr_example_flush_fuzzer.c_test_flush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i8*, i32, i32, i64, i32*, i8*, i32, i32 }

@dataLen = common dso_local global i32 0, align 4
@zalloc = common dso_local global i32 0, align 4
@zfree = common dso_local global i32 0, align 4
@Z_DEFAULT_COMPRESSION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"deflateInit\00", align 1
@data = common dso_local global i64 0, align 8
@Z_FULL_FLUSH = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"deflate flush 1\00", align 1
@Z_FINISH = common dso_local global i32 0, align 4
@Z_STREAM_END = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [16 x i8] c"deflate flush 2\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"deflateEnd\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_flush(i8* %0, i64* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i64*, align 8
  %5 = alloca %struct.TYPE_5__, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i64* %1, i64** %4, align 8
  %8 = load i32, i32* @dataLen, align 4
  store i32 %8, i32* %7, align 4
  %9 = load i32, i32* @zalloc, align 4
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 7
  store i32 %9, i32* %10, align 4
  %11 = load i32, i32* @zfree, align 4
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 6
  store i32 %11, i32* %12, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 5
  store i8* null, i8** %13, align 8
  %14 = load i32, i32* @Z_DEFAULT_COMPRESSION, align 4
  %15 = call i32 @deflateInit(%struct.TYPE_5__* %5, i32 %14)
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %6, align 4
  %17 = call i32 @CHECK_ERR(i32 %16, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %18 = load i64, i64* @data, align 8
  %19 = inttoptr i64 %18 to i32*
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 4
  store i32* %19, i32** %20, align 8
  %21 = load i8*, i8** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 0
  store i8* %21, i8** %22, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 1
  store i32 3, i32* %23, align 8
  %24 = load i64*, i64** %4, align 8
  %25 = load i64, i64* %24, align 8
  %26 = trunc i64 %25 to i32
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 2
  store i32 %26, i32* %27, align 4
  %28 = load i32, i32* @Z_FULL_FLUSH, align 4
  %29 = call i32 @deflate(%struct.TYPE_5__* %5, i32 %28)
  store i32 %29, i32* %6, align 4
  %30 = load i32, i32* %6, align 4
  %31 = call i32 @CHECK_ERR(i32 %30, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  %32 = load i8*, i8** %3, align 8
  %33 = getelementptr inbounds i8, i8* %32, i64 3
  %34 = load i8, i8* %33, align 1
  %35 = add i8 %34, 1
  store i8 %35, i8* %33, align 1
  %36 = load i32, i32* %7, align 4
  %37 = sub i32 %36, 3
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 1
  store i32 %37, i32* %38, align 8
  %39 = load i32, i32* @Z_FINISH, align 4
  %40 = call i32 @deflate(%struct.TYPE_5__* %5, i32 %39)
  store i32 %40, i32* %6, align 4
  %41 = load i32, i32* %6, align 4
  %42 = load i32, i32* @Z_STREAM_END, align 4
  %43 = icmp ne i32 %41, %42
  br i1 %43, label %44, label %47

44:                                               ; preds = %2
  %45 = load i32, i32* %6, align 4
  %46 = call i32 @CHECK_ERR(i32 %45, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  br label %47

47:                                               ; preds = %44, %2
  %48 = call i32 @deflateEnd(%struct.TYPE_5__* %5)
  store i32 %48, i32* %6, align 4
  %49 = load i32, i32* %6, align 4
  %50 = call i32 @CHECK_ERR(i32 %49, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0))
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 3
  %52 = load i64, i64* %51, align 8
  %53 = load i64*, i64** %4, align 8
  store i64 %52, i64* %53, align 8
  ret void
}

declare dso_local i32 @deflateInit(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @CHECK_ERR(i32, i8*) #1

declare dso_local i32 @deflate(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @deflateEnd(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
