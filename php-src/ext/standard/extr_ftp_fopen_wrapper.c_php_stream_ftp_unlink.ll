; ModuleID = '/home/carl/AnghaBench/php-src/ext/standard/extr_ftp_fopen_wrapper.c_php_stream_ftp_unlink.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/standard/extr_ftp_fopen_wrapper.c_php_stream_ftp_unlink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32* }

@.str = private unnamed_addr constant [2 x i8] c"r\00", align 1
@REPORT_ERRORS = common dso_local global i32 0, align 4
@E_WARNING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"Unable to connect to %s\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"Invalid path provided in %s\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"DELE %s\0D\0A\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.5 = private unnamed_addr constant [24 x i8] c"Error Deleting file: %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, i32, i32*)* @php_stream_ftp_unlink to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @php_stream_ftp_unlink(i32* %0, i8* %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_4__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca [512 x i8], align 16
  store i32* %0, i32** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  store i32* null, i32** %10, align 8
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %11, align 8
  %14 = load i32*, i32** %6, align 8
  %15 = load i8*, i8** %7, align 8
  %16 = load i32*, i32** %9, align 8
  %17 = call i32* @php_ftp_fopen_connect(i32* %14, i8* %15, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32 0, i32* null, i32* %16, i32* null, %struct.TYPE_4__** %11, i32* null, i32* null)
  store i32* %17, i32** %10, align 8
  %18 = load i32*, i32** %10, align 8
  %19 = icmp ne i32* %18, null
  br i1 %19, label %30, label %20

20:                                               ; preds = %4
  %21 = load i32, i32* %8, align 4
  %22 = load i32, i32* @REPORT_ERRORS, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %20
  %26 = load i32, i32* @E_WARNING, align 4
  %27 = load i8*, i8** %7, align 8
  %28 = call i32 @php_error_docref(i32* null, i32 %26, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i8* %27)
  br label %29

29:                                               ; preds = %25, %20
  br label %82

30:                                               ; preds = %4
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = icmp eq i32* %33, null
  br i1 %34, label %35, label %45

35:                                               ; preds = %30
  %36 = load i32, i32* %8, align 4
  %37 = load i32, i32* @REPORT_ERRORS, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %35
  %41 = load i32, i32* @E_WARNING, align 4
  %42 = load i8*, i8** %7, align 8
  %43 = call i32 @php_error_docref(i32* null, i32 %41, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i8* %42)
  br label %44

44:                                               ; preds = %40, %35
  br label %82

45:                                               ; preds = %30
  %46 = load i32*, i32** %10, align 8
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = load i32*, i32** %48, align 8
  %50 = icmp ne i32* %49, null
  br i1 %50, label %51, label %56

51:                                               ; preds = %45
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  %54 = load i32*, i32** %53, align 8
  %55 = call i8* @ZSTR_VAL(i32* %54)
  br label %57

56:                                               ; preds = %45
  br label %57

57:                                               ; preds = %56, %51
  %58 = phi i8* [ %55, %51 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0), %56 ]
  %59 = call i32 @php_stream_printf(i32* %46, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i8* %58)
  %60 = load i32*, i32** %10, align 8
  %61 = call i32 @GET_FTP_RESULT(i32* %60)
  store i32 %61, i32* %12, align 4
  %62 = load i32, i32* %12, align 4
  %63 = icmp slt i32 %62, 200
  br i1 %63, label %67, label %64

64:                                               ; preds = %57
  %65 = load i32, i32* %12, align 4
  %66 = icmp sgt i32 %65, 299
  br i1 %66, label %67, label %77

67:                                               ; preds = %64, %57
  %68 = load i32, i32* %8, align 4
  %69 = load i32, i32* @REPORT_ERRORS, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %76

72:                                               ; preds = %67
  %73 = load i32, i32* @E_WARNING, align 4
  %74 = getelementptr inbounds [512 x i8], [512 x i8]* %13, i64 0, i64 0
  %75 = call i32 @php_error_docref(i32* null, i32 %73, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0), i8* %74)
  br label %76

76:                                               ; preds = %72, %67
  br label %82

77:                                               ; preds = %64
  %78 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %79 = call i32 @php_url_free(%struct.TYPE_4__* %78)
  %80 = load i32*, i32** %10, align 8
  %81 = call i32 @php_stream_close(i32* %80)
  store i32 1, i32* %5, align 4
  br label %95

82:                                               ; preds = %76, %44, %29
  %83 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %84 = icmp ne %struct.TYPE_4__* %83, null
  br i1 %84, label %85, label %88

85:                                               ; preds = %82
  %86 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %87 = call i32 @php_url_free(%struct.TYPE_4__* %86)
  br label %88

88:                                               ; preds = %85, %82
  %89 = load i32*, i32** %10, align 8
  %90 = icmp ne i32* %89, null
  br i1 %90, label %91, label %94

91:                                               ; preds = %88
  %92 = load i32*, i32** %10, align 8
  %93 = call i32 @php_stream_close(i32* %92)
  br label %94

94:                                               ; preds = %91, %88
  store i32 0, i32* %5, align 4
  br label %95

95:                                               ; preds = %94, %77
  %96 = load i32, i32* %5, align 4
  ret i32 %96
}

declare dso_local i32* @php_ftp_fopen_connect(i32*, i8*, i8*, i32, i32*, i32*, i32*, %struct.TYPE_4__**, i32*, i32*) #1

declare dso_local i32 @php_error_docref(i32*, i32, i8*, i8*) #1

declare dso_local i32 @php_stream_printf(i32*, i8*, i8*) #1

declare dso_local i8* @ZSTR_VAL(i32*) #1

declare dso_local i32 @GET_FTP_RESULT(i32*) #1

declare dso_local i32 @php_url_free(%struct.TYPE_4__*) #1

declare dso_local i32 @php_stream_close(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
