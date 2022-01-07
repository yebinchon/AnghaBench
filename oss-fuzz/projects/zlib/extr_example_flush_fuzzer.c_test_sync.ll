; ModuleID = '/home/carl/AnghaBench/oss-fuzz/projects/zlib/extr_example_flush_fuzzer.c_test_sync.c'
source_filename = "/home/carl/AnghaBench/oss-fuzz/projects/zlib/extr_example_flush_fuzzer.c_test_sync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i8*, i32, i8*, i32, i8*, i32, i32 }

@zalloc = common dso_local global i32 0, align 4
@zfree = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"inflateInit\00", align 1
@Z_NO_FLUSH = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"inflate\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"inflateSync\00", align 1
@Z_FINISH = common dso_local global i32 0, align 4
@Z_DATA_ERROR = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [34 x i8] c"inflate should report DATA_ERROR\0A\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"inflateEnd\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_sync(i8* %0, i64 %1, i8* %2, i64 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_6__, align 8
  store i8* %0, i8** %5, align 8
  store i64 %1, i64* %6, align 8
  store i8* %2, i8** %7, align 8
  store i64 %3, i64* %8, align 8
  %11 = load i32, i32* @zalloc, align 4
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 6
  store i32 %11, i32* %12, align 4
  %13 = load i32, i32* @zfree, align 4
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 5
  store i32 %13, i32* %14, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 4
  store i8* null, i8** %15, align 8
  %16 = load i8*, i8** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  store i8* %16, i8** %17, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 1
  store i32 2, i32* %18, align 8
  %19 = call i32 @inflateInit(%struct.TYPE_6__* %10)
  store i32 %19, i32* %9, align 4
  %20 = load i32, i32* %9, align 4
  %21 = call i32 @CHECK_ERR(i32 %20, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %22 = load i8*, i8** %7, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 2
  store i8* %22, i8** %23, align 8
  %24 = load i64, i64* %8, align 8
  %25 = trunc i64 %24 to i32
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 3
  store i32 %25, i32* %26, align 8
  %27 = load i32, i32* @Z_NO_FLUSH, align 4
  %28 = call i32 @inflate(%struct.TYPE_6__* %10, i32 %27)
  store i32 %28, i32* %9, align 4
  %29 = load i32, i32* %9, align 4
  %30 = call i32 @CHECK_ERR(i32 %29, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %31 = load i64, i64* %6, align 8
  %32 = trunc i64 %31 to i32
  %33 = sub i32 %32, 2
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 1
  store i32 %33, i32* %34, align 8
  %35 = call i32 @inflateSync(%struct.TYPE_6__* %10)
  store i32 %35, i32* %9, align 4
  %36 = load i32, i32* %9, align 4
  %37 = call i32 @CHECK_ERR(i32 %36, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  %38 = load i32, i32* @Z_FINISH, align 4
  %39 = call i32 @inflate(%struct.TYPE_6__* %10, i32 %38)
  store i32 %39, i32* %9, align 4
  %40 = load i32, i32* %9, align 4
  %41 = load i32, i32* @Z_DATA_ERROR, align 4
  %42 = icmp ne i32 %40, %41
  br i1 %42, label %43, label %47

43:                                               ; preds = %4
  %44 = load i32, i32* @stderr, align 4
  %45 = call i32 @fprintf(i32 %44, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0))
  %46 = call i32 @exit(i32 1) #3
  unreachable

47:                                               ; preds = %4
  %48 = call i32 @inflateEnd(%struct.TYPE_6__* %10)
  store i32 %48, i32* %9, align 4
  %49 = load i32, i32* %9, align 4
  %50 = call i32 @CHECK_ERR(i32 %49, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0))
  ret void
}

declare dso_local i32 @inflateInit(%struct.TYPE_6__*) #1

declare dso_local i32 @CHECK_ERR(i32, i8*) #1

declare dso_local i32 @inflate(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @inflateSync(%struct.TYPE_6__*) #1

declare dso_local i32 @fprintf(i32, i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @inflateEnd(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
