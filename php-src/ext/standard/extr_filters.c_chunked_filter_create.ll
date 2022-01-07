; ModuleID = '/home/carl/AnghaBench/php-src/ext/standard/extr_filters.c_chunked_filter_create.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/standard/extr_filters.c_chunked_filter_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i64, i32 }

@.str = private unnamed_addr constant [8 x i8] c"dechunk\00", align 1
@CHUNK_SIZE_START = common dso_local global i32 0, align 4
@chunked_filter_ops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8*, i32*, i32)* @chunked_filter_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @chunked_filter_create(i8* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_3__*, align 8
  store i8* %0, i8** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32* null, i32** %8, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = call i64 @strcasecmp(i8* %10, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %3
  store i32* null, i32** %4, align 8
  br label %30

14:                                               ; preds = %3
  %15 = load i32, i32* %7, align 4
  %16 = call i64 @pecalloc(i32 1, i32 24, i32 %15)
  %17 = inttoptr i64 %16 to %struct.TYPE_3__*
  store %struct.TYPE_3__* %17, %struct.TYPE_3__** %9, align 8
  %18 = load i32, i32* @CHUNK_SIZE_START, align 4
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 2
  store i32 %18, i32* %20, align 8
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 1
  store i64 0, i64* %22, align 8
  %23 = load i32, i32* %7, align 4
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 8
  store i32* @chunked_filter_ops, i32** %8, align 8
  %26 = load i32*, i32** %8, align 8
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %28 = load i32, i32* %7, align 4
  %29 = call i32* @php_stream_filter_alloc(i32* %26, %struct.TYPE_3__* %27, i32 %28)
  store i32* %29, i32** %4, align 8
  br label %30

30:                                               ; preds = %14, %13
  %31 = load i32*, i32** %4, align 8
  ret i32* %31
}

declare dso_local i64 @strcasecmp(i8*, i8*) #1

declare dso_local i64 @pecalloc(i32, i32, i32) #1

declare dso_local i32* @php_stream_filter_alloc(i32*, %struct.TYPE_3__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
