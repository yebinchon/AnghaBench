; ModuleID = '/home/carl/AnghaBench/oss-fuzz/projects/zlib/extr_example_dict_fuzzer.c_test_dict_inflate.c'
source_filename = "/home/carl/AnghaBench/oss-fuzz/projects/zlib/extr_example_dict_fuzzer.c_test_dict_inflate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i8*, i32, i8*, i32, i64, i8*, i32, i32 }

@zalloc = common dso_local global i32 0, align 4
@zfree = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"inflateInit\00", align 1
@dataLen = common dso_local global i64 0, align 8
@Z_NO_FLUSH = common dso_local global i32 0, align 4
@Z_STREAM_END = common dso_local global i32 0, align 4
@Z_NEED_DICT = common dso_local global i32 0, align 4
@dictId = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"unexpected dictionary\00", align 1
@data = common dso_local global i64 0, align 8
@dictionaryLen = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [18 x i8] c"inflate with dict\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"inflateEnd\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"bad inflate with dict\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_dict_inflate(i8* %0, i64 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_6__, align 8
  %7 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store i64 %1, i64* %4, align 8
  %8 = load i32, i32* @zalloc, align 4
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 7
  store i32 %8, i32* %9, align 4
  %10 = load i32, i32* @zfree, align 4
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 6
  store i32 %10, i32* %11, align 8
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 5
  store i8* null, i8** %12, align 8
  %13 = load i8*, i8** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 0
  store i8* %13, i8** %14, align 8
  %15 = load i64, i64* %4, align 8
  %16 = trunc i64 %15 to i32
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 1
  store i32 %16, i32* %17, align 8
  %18 = call i32 @inflateInit(%struct.TYPE_6__* %6)
  store i32 %18, i32* %5, align 4
  %19 = load i32, i32* %5, align 4
  %20 = call i32 @CHECK_ERR(i32 %19, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %21 = load i64, i64* @dataLen, align 8
  %22 = call i64 @calloc(i32 1, i64 %21)
  %23 = inttoptr i64 %22 to i8*
  store i8* %23, i8** %7, align 8
  %24 = load i8*, i8** %7, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 2
  store i8* %24, i8** %25, align 8
  %26 = load i64, i64* @dataLen, align 8
  %27 = trunc i64 %26 to i32
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 3
  store i32 %27, i32* %28, align 8
  br label %29

29:                                               ; preds = %54, %2
  %30 = load i32, i32* @Z_NO_FLUSH, align 4
  %31 = call i32 @inflate(%struct.TYPE_6__* %6, i32 %30)
  store i32 %31, i32* %5, align 4
  %32 = load i32, i32* %5, align 4
  %33 = load i32, i32* @Z_STREAM_END, align 4
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %29
  br label %57

36:                                               ; preds = %29
  %37 = load i32, i32* %5, align 4
  %38 = load i32, i32* @Z_NEED_DICT, align 4
  %39 = icmp eq i32 %37, %38
  br i1 %39, label %40, label %54

40:                                               ; preds = %36
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 4
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @dictId, align 8
  %44 = icmp ne i64 %42, %43
  br i1 %44, label %45, label %49

45:                                               ; preds = %40
  %46 = load i32, i32* @stderr, align 4
  %47 = call i32 @fprintf(i32 %46, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  %48 = call i32 @exit(i32 1) #3
  unreachable

49:                                               ; preds = %40
  %50 = load i64, i64* @data, align 8
  %51 = inttoptr i64 %50 to i8*
  %52 = load i32, i32* @dictionaryLen, align 4
  %53 = call i32 @inflateSetDictionary(%struct.TYPE_6__* %6, i8* %51, i32 %52)
  store i32 %53, i32* %5, align 4
  br label %54

54:                                               ; preds = %49, %36
  %55 = load i32, i32* %5, align 4
  %56 = call i32 @CHECK_ERR(i32 %55, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  br label %29

57:                                               ; preds = %35
  %58 = call i32 @inflateEnd(%struct.TYPE_6__* %6)
  store i32 %58, i32* %5, align 4
  %59 = load i32, i32* %5, align 4
  %60 = call i32 @CHECK_ERR(i32 %59, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0))
  %61 = load i8*, i8** %7, align 8
  %62 = load i64, i64* @data, align 8
  %63 = load i64, i64* @dataLen, align 8
  %64 = call i64 @memcmp(i8* %61, i64 %62, i64 %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %70

66:                                               ; preds = %57
  %67 = load i32, i32* @stderr, align 4
  %68 = call i32 @fprintf(i32 %67, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0))
  %69 = call i32 @exit(i32 1) #3
  unreachable

70:                                               ; preds = %57
  %71 = load i8*, i8** %7, align 8
  %72 = call i32 @free(i8* %71)
  ret void
}

declare dso_local i32 @inflateInit(%struct.TYPE_6__*) #1

declare dso_local i32 @CHECK_ERR(i32, i8*) #1

declare dso_local i64 @calloc(i32, i64) #1

declare dso_local i32 @inflate(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @fprintf(i32, i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @inflateSetDictionary(%struct.TYPE_6__*, i8*, i32) #1

declare dso_local i32 @inflateEnd(%struct.TYPE_6__*) #1

declare dso_local i64 @memcmp(i8*, i64, i64) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
