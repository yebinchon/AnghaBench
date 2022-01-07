; ModuleID = '/home/carl/AnghaBench/php-src/ext/standard/extr_info.c_php_info_print_module.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/standard/extr_info.c_php_info_print_module.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32, i64, i32 (%struct.TYPE_5__*)* }

@sapi_module = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@.str = private unnamed_addr constant [37 x i8] c"<h2><a name=\22module_%s\22>%s</a></h2>\0A\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"Version\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"<tr><td class=\22v\22>%s</td></tr>\0A\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @php_info_print_module(%struct.TYPE_5__* %0) #0 {
  %2 = alloca %struct.TYPE_5__*, align 8
  %3 = alloca i32*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %2, align 8
  %4 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %5 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %4, i32 0, i32 2
  %6 = load i32 (%struct.TYPE_5__*)*, i32 (%struct.TYPE_5__*)** %5, align 8
  %7 = icmp ne i32 (%struct.TYPE_5__*)* %6, null
  br i1 %7, label %13, label %8

8:                                                ; preds = %1
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %65

13:                                               ; preds = %8, %1
  %14 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @sapi_module, i32 0, i32 0), align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %38, label %16

16:                                               ; preds = %13
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @strlen(i32 %22)
  %24 = call i32* @php_url_encode(i32 %19, i32 %23)
  store i32* %24, i32** %3, align 8
  %25 = load i32*, i32** %3, align 8
  %26 = call i32 @ZSTR_VAL(i32* %25)
  %27 = load i32*, i32** %3, align 8
  %28 = call i32 @ZSTR_LEN(i32* %27)
  %29 = call i32 @php_strtolower(i32 %26, i32 %28)
  %30 = load i32*, i32** %3, align 8
  %31 = call i32 @ZSTR_VAL(i32* %30)
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = call i32 (i8*, i32, ...) @php_info_printf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %31, i32 %34)
  %36 = load i32*, i32** %3, align 8
  %37 = call i32 @efree(i32* %36)
  br label %45

38:                                               ; preds = %13
  %39 = call i32 (...) @php_info_print_table_start()
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @php_info_print_table_header(i32 1, i32 %42)
  %44 = call i32 (...) @php_info_print_table_end()
  br label %45

45:                                               ; preds = %38, %16
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 2
  %48 = load i32 (%struct.TYPE_5__*)*, i32 (%struct.TYPE_5__*)** %47, align 8
  %49 = icmp ne i32 (%struct.TYPE_5__*)* %48, null
  br i1 %49, label %50, label %56

50:                                               ; preds = %45
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 2
  %53 = load i32 (%struct.TYPE_5__*)*, i32 (%struct.TYPE_5__*)** %52, align 8
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %55 = call i32 %53(%struct.TYPE_5__* %54)
  br label %64

56:                                               ; preds = %45
  %57 = call i32 (...) @php_info_print_table_start()
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = call i32 @php_info_print_table_row(i32 2, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i64 %60)
  %62 = call i32 (...) @php_info_print_table_end()
  %63 = call i32 (...) @DISPLAY_INI_ENTRIES()
  br label %64

64:                                               ; preds = %56, %50
  br label %79

65:                                               ; preds = %8
  %66 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @sapi_module, i32 0, i32 0), align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %73, label %68

68:                                               ; preds = %65
  %69 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = call i32 (i8*, i32, ...) @php_info_printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i32 %71)
  br label %78

73:                                               ; preds = %65
  %74 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = call i32 (i8*, i32, ...) @php_info_printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i32 %76)
  br label %78

78:                                               ; preds = %73, %68
  br label %79

79:                                               ; preds = %78, %64
  ret void
}

declare dso_local i32* @php_url_encode(i32, i32) #1

declare dso_local i32 @strlen(i32) #1

declare dso_local i32 @php_strtolower(i32, i32) #1

declare dso_local i32 @ZSTR_VAL(i32*) #1

declare dso_local i32 @ZSTR_LEN(i32*) #1

declare dso_local i32 @php_info_printf(i8*, i32, ...) #1

declare dso_local i32 @efree(i32*) #1

declare dso_local i32 @php_info_print_table_start(...) #1

declare dso_local i32 @php_info_print_table_header(i32, i32) #1

declare dso_local i32 @php_info_print_table_end(...) #1

declare dso_local i32 @php_info_print_table_row(i32, i8*, i64) #1

declare dso_local i32 @DISPLAY_INI_ENTRIES(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
