; ModuleID = '/home/carl/AnghaBench/netdata/web/api/formatters/extr_rrd2json.c_rrdr_buffer_print_format.c'
source_filename = "/home/carl/AnghaBench/netdata/web/api/formatters/extr_rrd2json.c_rrdr_buffer_print_format.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DATASOURCE_FORMAT_JSON = common dso_local global i8* null, align 8
@DATASOURCE_FORMAT_DATATABLE_JSON = common dso_local global i8* null, align 8
@DATASOURCE_FORMAT_DATATABLE_JSONP = common dso_local global i8* null, align 8
@DATASOURCE_FORMAT_JSONP = common dso_local global i8* null, align 8
@DATASOURCE_FORMAT_SSV = common dso_local global i8* null, align 8
@DATASOURCE_FORMAT_CSV = common dso_local global i8* null, align 8
@DATASOURCE_FORMAT_TSV = common dso_local global i8* null, align 8
@DATASOURCE_FORMAT_HTML = common dso_local global i8* null, align 8
@DATASOURCE_FORMAT_JS_ARRAY = common dso_local global i8* null, align 8
@DATASOURCE_FORMAT_SSV_COMMA = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [8 x i8] c"unknown\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rrdr_buffer_print_format(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  switch i32 %5, label %46 [
    i32 133, label %6
    i32 136, label %10
    i32 135, label %14
    i32 132, label %18
    i32 130, label %22
    i32 137, label %26
    i32 128, label %30
    i32 134, label %34
    i32 131, label %38
    i32 129, label %42
  ]

6:                                                ; preds = %2
  %7 = load i32*, i32** %3, align 8
  %8 = load i8*, i8** @DATASOURCE_FORMAT_JSON, align 8
  %9 = call i32 @buffer_strcat(i32* %7, i8* %8)
  br label %49

10:                                               ; preds = %2
  %11 = load i32*, i32** %3, align 8
  %12 = load i8*, i8** @DATASOURCE_FORMAT_DATATABLE_JSON, align 8
  %13 = call i32 @buffer_strcat(i32* %11, i8* %12)
  br label %49

14:                                               ; preds = %2
  %15 = load i32*, i32** %3, align 8
  %16 = load i8*, i8** @DATASOURCE_FORMAT_DATATABLE_JSONP, align 8
  %17 = call i32 @buffer_strcat(i32* %15, i8* %16)
  br label %49

18:                                               ; preds = %2
  %19 = load i32*, i32** %3, align 8
  %20 = load i8*, i8** @DATASOURCE_FORMAT_JSONP, align 8
  %21 = call i32 @buffer_strcat(i32* %19, i8* %20)
  br label %49

22:                                               ; preds = %2
  %23 = load i32*, i32** %3, align 8
  %24 = load i8*, i8** @DATASOURCE_FORMAT_SSV, align 8
  %25 = call i32 @buffer_strcat(i32* %23, i8* %24)
  br label %49

26:                                               ; preds = %2
  %27 = load i32*, i32** %3, align 8
  %28 = load i8*, i8** @DATASOURCE_FORMAT_CSV, align 8
  %29 = call i32 @buffer_strcat(i32* %27, i8* %28)
  br label %49

30:                                               ; preds = %2
  %31 = load i32*, i32** %3, align 8
  %32 = load i8*, i8** @DATASOURCE_FORMAT_TSV, align 8
  %33 = call i32 @buffer_strcat(i32* %31, i8* %32)
  br label %49

34:                                               ; preds = %2
  %35 = load i32*, i32** %3, align 8
  %36 = load i8*, i8** @DATASOURCE_FORMAT_HTML, align 8
  %37 = call i32 @buffer_strcat(i32* %35, i8* %36)
  br label %49

38:                                               ; preds = %2
  %39 = load i32*, i32** %3, align 8
  %40 = load i8*, i8** @DATASOURCE_FORMAT_JS_ARRAY, align 8
  %41 = call i32 @buffer_strcat(i32* %39, i8* %40)
  br label %49

42:                                               ; preds = %2
  %43 = load i32*, i32** %3, align 8
  %44 = load i8*, i8** @DATASOURCE_FORMAT_SSV_COMMA, align 8
  %45 = call i32 @buffer_strcat(i32* %43, i8* %44)
  br label %49

46:                                               ; preds = %2
  %47 = load i32*, i32** %3, align 8
  %48 = call i32 @buffer_strcat(i32* %47, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  br label %49

49:                                               ; preds = %46, %42, %38, %34, %30, %26, %22, %18, %14, %10, %6
  ret void
}

declare dso_local i32 @buffer_strcat(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
