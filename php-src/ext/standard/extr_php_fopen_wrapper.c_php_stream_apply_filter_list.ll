; ModuleID = '/home/carl/AnghaBench/php-src/ext/standard/extr_php_fopen_wrapper.c_php_stream_apply_filter_list.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/standard/extr_php_fopen_wrapper.c_php_stream_apply_filter_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }

@.str = private unnamed_addr constant [2 x i8] c"|\00", align 1
@E_WARNING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"Unable to create filter (%s)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_4__*, i8*, i32, i32)* @php_stream_apply_filter_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @php_stream_apply_filter_list(%struct.TYPE_4__* %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  store i8* null, i8** %10, align 8
  %12 = load i8*, i8** %6, align 8
  %13 = call i8* @php_strtok_r(i8* %12, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i8** %10)
  store i8* %13, i8** %9, align 8
  br label %14

14:                                               ; preds = %59, %4
  %15 = load i8*, i8** %9, align 8
  %16 = icmp ne i8* %15, null
  br i1 %16, label %17, label %61

17:                                               ; preds = %14
  %18 = load i8*, i8** %9, align 8
  %19 = load i8*, i8** %9, align 8
  %20 = call i32 @strlen(i8* %19)
  %21 = call i32 @php_url_decode(i8* %18, i32 %20)
  %22 = load i32, i32* %7, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %40

24:                                               ; preds = %17
  %25 = load i8*, i8** %9, align 8
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %27 = call i32 @php_stream_is_persistent(%struct.TYPE_4__* %26)
  %28 = call i32* @php_stream_filter_create(i8* %25, i32* null, i32 %27)
  store i32* %28, i32** %11, align 8
  %29 = icmp ne i32* %28, null
  br i1 %29, label %30, label %35

30:                                               ; preds = %24
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 1
  %33 = load i32*, i32** %11, align 8
  %34 = call i32 @php_stream_filter_append(i32* %32, i32* %33)
  br label %39

35:                                               ; preds = %24
  %36 = load i32, i32* @E_WARNING, align 4
  %37 = load i8*, i8** %9, align 8
  %38 = call i32 @php_error_docref(i32* null, i32 %36, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i8* %37)
  br label %39

39:                                               ; preds = %35, %30
  br label %40

40:                                               ; preds = %39, %17
  %41 = load i32, i32* %8, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %59

43:                                               ; preds = %40
  %44 = load i8*, i8** %9, align 8
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %46 = call i32 @php_stream_is_persistent(%struct.TYPE_4__* %45)
  %47 = call i32* @php_stream_filter_create(i8* %44, i32* null, i32 %46)
  store i32* %47, i32** %11, align 8
  %48 = icmp ne i32* %47, null
  br i1 %48, label %49, label %54

49:                                               ; preds = %43
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = load i32*, i32** %11, align 8
  %53 = call i32 @php_stream_filter_append(i32* %51, i32* %52)
  br label %58

54:                                               ; preds = %43
  %55 = load i32, i32* @E_WARNING, align 4
  %56 = load i8*, i8** %9, align 8
  %57 = call i32 @php_error_docref(i32* null, i32 %55, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i8* %56)
  br label %58

58:                                               ; preds = %54, %49
  br label %59

59:                                               ; preds = %58, %40
  %60 = call i8* @php_strtok_r(i8* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i8** %10)
  store i8* %60, i8** %9, align 8
  br label %14

61:                                               ; preds = %14
  ret void
}

declare dso_local i8* @php_strtok_r(i8*, i8*, i8**) #1

declare dso_local i32 @php_url_decode(i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32* @php_stream_filter_create(i8*, i32*, i32) #1

declare dso_local i32 @php_stream_is_persistent(%struct.TYPE_4__*) #1

declare dso_local i32 @php_stream_filter_append(i32*, i32*) #1

declare dso_local i32 @php_error_docref(i32*, i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
