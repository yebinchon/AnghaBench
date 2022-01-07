; ModuleID = '/home/carl/AnghaBench/php-src/main/streams/extr_memory.c_php_stream_memory_set_option.c'
source_filename = "/home/carl/AnghaBench/php-src/main/streams/extr_memory.c_php_stream_memory_set_option.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64 }
%struct.TYPE_4__ = type { i32, i64, i64, i64 }

@PHP_STREAM_OPTION_RETURN_OK = common dso_local global i32 0, align 4
@TEMP_STREAM_READONLY = common dso_local global i32 0, align 4
@PHP_STREAM_OPTION_RETURN_ERR = common dso_local global i32 0, align 4
@PHP_STREAM_OPTION_RETURN_NOTIMPL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*, i32, i32, i8*)* @php_stream_memory_set_option to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @php_stream_memory_set_option(%struct.TYPE_5__* %0, i32 %1, i32 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca %struct.TYPE_4__*, align 8
  %11 = alloca i64, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = inttoptr i64 %14 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %15, %struct.TYPE_4__** %10, align 8
  %16 = load i32, i32* %7, align 4
  switch i32 %16, label %81 [
    i32 130, label %17
  ]

17:                                               ; preds = %4
  %18 = load i32, i32* %8, align 4
  switch i32 %18, label %80 [
    i32 128, label %19
    i32 129, label %21
  ]

19:                                               ; preds = %17
  %20 = load i32, i32* @PHP_STREAM_OPTION_RETURN_OK, align 4
  store i32 %20, i32* %5, align 4
  br label %83

21:                                               ; preds = %17
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @TEMP_STREAM_READONLY, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %21
  %29 = load i32, i32* @PHP_STREAM_OPTION_RETURN_ERR, align 4
  store i32 %29, i32* %5, align 4
  br label %83

30:                                               ; preds = %21
  %31 = load i8*, i8** %9, align 8
  %32 = bitcast i8* %31 to i64*
  %33 = load i64, i64* %32, align 8
  store i64 %33, i64* %11, align 8
  %34 = load i64, i64* %11, align 8
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = icmp ule i64 %34, %37
  br i1 %38, label %39, label %50

39:                                               ; preds = %30
  %40 = load i64, i64* %11, align 8
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 2
  %43 = load i64, i64* %42, align 8
  %44 = icmp ult i64 %40, %43
  br i1 %44, label %45, label %49

45:                                               ; preds = %39
  %46 = load i64, i64* %11, align 8
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 2
  store i64 %46, i64* %48, align 8
  br label %49

49:                                               ; preds = %45, %39
  br label %75

50:                                               ; preds = %30
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 3
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* %11, align 8
  %55 = call i64 @erealloc(i64 %53, i64 %54)
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 3
  store i64 %55, i64* %57, align 8
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 3
  %60 = load i64, i64* %59, align 8
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = add i64 %60, %63
  %65 = load i64, i64* %11, align 8
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = sub i64 %65, %68
  %70 = trunc i64 %69 to i32
  %71 = call i32 @memset(i64 %64, i32 0, i32 %70)
  %72 = load i64, i64* %11, align 8
  %73 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 1
  store i64 %72, i64* %74, align 8
  br label %75

75:                                               ; preds = %50, %49
  %76 = load i64, i64* %11, align 8
  %77 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 1
  store i64 %76, i64* %78, align 8
  %79 = load i32, i32* @PHP_STREAM_OPTION_RETURN_OK, align 4
  store i32 %79, i32* %5, align 4
  br label %83

80:                                               ; preds = %17
  br label %81

81:                                               ; preds = %4, %80
  %82 = load i32, i32* @PHP_STREAM_OPTION_RETURN_NOTIMPL, align 4
  store i32 %82, i32* %5, align 4
  br label %83

83:                                               ; preds = %81, %75, %28, %19
  %84 = load i32, i32* %5, align 4
  ret i32 %84
}

declare dso_local i64 @erealloc(i64, i64) #1

declare dso_local i32 @memset(i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
