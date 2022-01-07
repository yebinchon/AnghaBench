; ModuleID = '/home/carl/AnghaBench/php-src/main/streams/extr_memory.c_php_stream_temp_set_option.c'
source_filename = "/home/carl/AnghaBench/php-src/main/streams/extr_memory.c_php_stream_temp_set_option.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64 }
%struct.TYPE_4__ = type { i32, i32 }

@IS_UNDEF = common dso_local global i32 0, align 4
@zval_add_ref = common dso_local global i32 0, align 4
@PHP_STREAM_OPTION_RETURN_OK = common dso_local global i32 0, align 4
@PHP_STREAM_OPTION_RETURN_NOTIMPL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*, i32, i32, i8*)* @php_stream_temp_set_option to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @php_stream_temp_set_option(%struct.TYPE_5__* %0, i32 %1, i32 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca %struct.TYPE_4__*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = inttoptr i64 %13 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %14, %struct.TYPE_4__** %10, align 8
  %15 = load i32, i32* %7, align 4
  switch i32 %15, label %35 [
    i32 128, label %16
  ]

16:                                               ; preds = %4
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @Z_TYPE(i32 %19)
  %21 = load i32, i32* @IS_UNDEF, align 4
  %22 = icmp ne i32 %20, %21
  br i1 %22, label %23, label %33

23:                                               ; preds = %16
  %24 = load i8*, i8** %9, align 8
  %25 = bitcast i8* %24 to i32*
  %26 = call i32 @Z_ARRVAL_P(i32* %25)
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @Z_ARRVAL(i32 %29)
  %31 = load i32, i32* @zval_add_ref, align 4
  %32 = call i32 @zend_hash_copy(i32 %26, i32 %30, i32 %31)
  br label %33

33:                                               ; preds = %23, %16
  %34 = load i32, i32* @PHP_STREAM_OPTION_RETURN_OK, align 4
  store i32 %34, i32* %5, align 4
  br label %50

35:                                               ; preds = %4
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %48

40:                                               ; preds = %35
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* %7, align 4
  %45 = load i32, i32* %8, align 4
  %46 = load i8*, i8** %9, align 8
  %47 = call i32 @php_stream_set_option(i32 %43, i32 %44, i32 %45, i8* %46)
  store i32 %47, i32* %5, align 4
  br label %50

48:                                               ; preds = %35
  %49 = load i32, i32* @PHP_STREAM_OPTION_RETURN_NOTIMPL, align 4
  store i32 %49, i32* %5, align 4
  br label %50

50:                                               ; preds = %48, %40, %33
  %51 = load i32, i32* %5, align 4
  ret i32 %51
}

declare dso_local i32 @Z_TYPE(i32) #1

declare dso_local i32 @zend_hash_copy(i32, i32, i32) #1

declare dso_local i32 @Z_ARRVAL_P(i32*) #1

declare dso_local i32 @Z_ARRVAL(i32) #1

declare dso_local i32 @php_stream_set_option(i32, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
