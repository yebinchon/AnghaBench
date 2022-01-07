; ModuleID = '/home/carl/AnghaBench/oss-fuzz/projects/zlib/extr_example_dict_fuzzer.c_test_dict_deflate.c'
source_filename = "/home/carl/AnghaBench/oss-fuzz/projects/zlib/extr_example_dict_fuzzer.c_test_dict_deflate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i8*, i32, i32, i32*, i32, i8*, i32, i32 }

@data = common dso_local global i32* null, align 8
@Z_DEFLATED = common dso_local global i32 0, align 4
@zalloc = common dso_local global i32 0, align 4
@zfree = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"deflateInit\00", align 1
@dictionaryLen = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"deflateSetDictionary\00", align 1
@dataLen = common dso_local global i32 0, align 4
@dictId = common dso_local global i32 0, align 4
@Z_FINISH = common dso_local global i32 0, align 4
@Z_STREAM_END = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [41 x i8] c"deflate dict should report Z_STREAM_END\0A\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"deflateEnd\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_dict_deflate(i8** %0, i64* %1) #0 {
  %3 = alloca i8**, align 8
  %4 = alloca i64*, align 8
  %5 = alloca %struct.TYPE_7__, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i8** %0, i8*** %3, align 8
  store i64* %1, i64** %4, align 8
  %12 = load i32*, i32** @data, align 8
  %13 = getelementptr inbounds i32, i32* %12, i64 0
  %14 = load i32, i32* %13, align 4
  %15 = srem i32 %14, 11
  %16 = sub nsw i32 %15, 1
  store i32 %16, i32* %7, align 4
  %17 = load i32, i32* @Z_DEFLATED, align 4
  store i32 %17, i32* %8, align 4
  %18 = load i32*, i32** @data, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 0
  %20 = load i32, i32* %19, align 4
  %21 = srem i32 %20, 8
  %22 = add nsw i32 8, %21
  store i32 %22, i32* %9, align 4
  %23 = load i32*, i32** @data, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 0
  %25 = load i32, i32* %24, align 4
  %26 = srem i32 %25, 9
  %27 = add nsw i32 1, %26
  store i32 %27, i32* %10, align 4
  %28 = load i32*, i32** @data, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 0
  %30 = load i32, i32* %29, align 4
  %31 = srem i32 %30, 5
  store i32 %31, i32* %11, align 4
  %32 = load i32, i32* %7, align 4
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %37, label %34

34:                                               ; preds = %2
  %35 = load i32, i32* %7, align 4
  %36 = icmp eq i32 %35, 1
  br i1 %36, label %37, label %38

37:                                               ; preds = %34, %2
  store i32 -1, i32* %7, align 4
  br label %38

38:                                               ; preds = %37, %34
  %39 = load i32, i32* @zalloc, align 4
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 7
  store i32 %39, i32* %40, align 4
  %41 = load i32, i32* @zfree, align 4
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 6
  store i32 %41, i32* %42, align 8
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 5
  store i8* null, i8** %43, align 8
  %44 = load i32, i32* %7, align 4
  %45 = load i32, i32* %8, align 4
  %46 = load i32, i32* %9, align 4
  %47 = load i32, i32* %10, align 4
  %48 = load i32, i32* %11, align 4
  %49 = call i32 @deflateInit2(%struct.TYPE_7__* %5, i32 %44, i32 %45, i32 %46, i32 %47, i32 %48)
  store i32 %49, i32* %6, align 4
  %50 = load i32, i32* %6, align 4
  %51 = call i32 @CHECK_ERR(i32 %50, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %52 = load i32*, i32** @data, align 8
  %53 = bitcast i32* %52 to i8*
  %54 = load i32, i32* @dictionaryLen, align 4
  %55 = call i32 @deflateSetDictionary(%struct.TYPE_7__* %5, i8* %53, i32 %54)
  store i32 %55, i32* %6, align 4
  %56 = load i32, i32* %6, align 4
  %57 = call i32 @CHECK_ERR(i32 %56, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %58 = load i32, i32* @dataLen, align 4
  %59 = call i32 @deflateBound(%struct.TYPE_7__* %5, i32 %58)
  %60 = mul nsw i32 2, %59
  %61 = add nsw i32 100, %60
  %62 = sext i32 %61 to i64
  %63 = load i64*, i64** %4, align 8
  store i64 %62, i64* %63, align 8
  %64 = load i64*, i64** %4, align 8
  %65 = load i64, i64* %64, align 8
  %66 = call i64 @calloc(i32 1, i64 %65)
  %67 = inttoptr i64 %66 to i8*
  %68 = load i8**, i8*** %3, align 8
  store i8* %67, i8** %68, align 8
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 4
  %70 = load i32, i32* %69, align 8
  store i32 %70, i32* @dictId, align 4
  %71 = load i8**, i8*** %3, align 8
  %72 = load i8*, i8** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 0
  store i8* %72, i8** %73, align 8
  %74 = load i64*, i64** %4, align 8
  %75 = load i64, i64* %74, align 8
  %76 = trunc i64 %75 to i32
  %77 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 1
  store i32 %76, i32* %77, align 8
  %78 = load i32*, i32** @data, align 8
  %79 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 3
  store i32* %78, i32** %79, align 8
  %80 = load i32, i32* @dataLen, align 4
  %81 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 2
  store i32 %80, i32* %81, align 4
  %82 = load i32, i32* @Z_FINISH, align 4
  %83 = call i32 @deflate(%struct.TYPE_7__* %5, i32 %82)
  store i32 %83, i32* %6, align 4
  %84 = load i32, i32* %6, align 4
  %85 = load i32, i32* @Z_STREAM_END, align 4
  %86 = icmp ne i32 %84, %85
  br i1 %86, label %87, label %91

87:                                               ; preds = %38
  %88 = load i32, i32* @stderr, align 4
  %89 = call i32 @fprintf(i32 %88, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0))
  %90 = call i32 @exit(i32 1) #3
  unreachable

91:                                               ; preds = %38
  %92 = call i32 @deflateEnd(%struct.TYPE_7__* %5)
  store i32 %92, i32* %6, align 4
  %93 = load i32, i32* %6, align 4
  %94 = call i32 @CHECK_ERR(i32 %93, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0))
  ret void
}

declare dso_local i32 @deflateInit2(%struct.TYPE_7__*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @CHECK_ERR(i32, i8*) #1

declare dso_local i32 @deflateSetDictionary(%struct.TYPE_7__*, i8*, i32) #1

declare dso_local i32 @deflateBound(%struct.TYPE_7__*, i32) #1

declare dso_local i64 @calloc(i32, i64) #1

declare dso_local i32 @deflate(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @fprintf(i32, i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @deflateEnd(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
