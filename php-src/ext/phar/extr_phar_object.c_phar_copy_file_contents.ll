; ModuleID = '/home/carl/AnghaBench/php-src/ext/phar/extr_phar_object.c_phar_copy_file_contents.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/phar/extr_phar_object.c_phar_copy_file_contents.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64, i32, i32*, i32*, i32, %struct.TYPE_9__*, i32 }
%struct.TYPE_9__ = type { i32 }

@FAILURE = common dso_local global i64 0, align 8
@spl_ce_UnexpectedValueException = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [73 x i8] c"Cannot convert phar archive \22%s\22, unable to open entry \22%s\22 contents: %s\00", align 1
@.str.1 = private unnamed_addr constant [69 x i8] c"Cannot convert phar archive \22%s\22, unable to open entry \22%s\22 contents\00", align 1
@SEEK_SET = common dso_local global i32 0, align 4
@SUCCESS = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [69 x i8] c"Cannot convert phar archive \22%s\22, unable to copy entry \22%s\22 contents\00", align 1
@PHAR_MOD = common dso_local global i64 0, align 8
@PHAR_FP = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_10__*, i32*)* @phar_copy_file_contents to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @phar_copy_file_contents(%struct.TYPE_10__* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_10__*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %4, align 8
  store i32* %1, i32** %5, align 8
  %9 = load i64, i64* @FAILURE, align 8
  %10 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %11 = call i64 @phar_open_entry_fp(%struct.TYPE_10__* %10, i8** %6, i32 1)
  %12 = icmp eq i64 %9, %11
  br i1 %12, label %13, label %44

13:                                               ; preds = %2
  %14 = load i8*, i8** %6, align 8
  %15 = icmp ne i8* %14, null
  br i1 %15, label %16, label %30

16:                                               ; preds = %13
  %17 = load i32, i32* @spl_ce_UnexpectedValueException, align 4
  %18 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %18, i32 0, i32 5
  %20 = load %struct.TYPE_9__*, %struct.TYPE_9__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %23, i32 0, i32 4
  %25 = load i32, i32* %24, align 8
  %26 = load i8*, i8** %6, align 8
  %27 = call i32 (i32, i32, i8*, i32, i32, ...) @zend_throw_exception_ex(i32 %17, i32 0, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str, i64 0, i64 0), i32 %22, i32 %25, i8* %26)
  %28 = load i8*, i8** %6, align 8
  %29 = call i32 @efree(i8* %28)
  br label %41

30:                                               ; preds = %13
  %31 = load i32, i32* @spl_ce_UnexpectedValueException, align 4
  %32 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %32, i32 0, i32 5
  %34 = load %struct.TYPE_9__*, %struct.TYPE_9__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %37, i32 0, i32 4
  %39 = load i32, i32* %38, align 8
  %40 = call i32 (i32, i32, i8*, i32, i32, ...) @zend_throw_exception_ex(i32 %31, i32 0, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.1, i64 0, i64 0), i32 %36, i32 %39)
  br label %41

41:                                               ; preds = %30, %16
  %42 = load i64, i64* @FAILURE, align 8
  %43 = trunc i64 %42 to i32
  store i32 %43, i32* %3, align 4
  br label %102

44:                                               ; preds = %2
  %45 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %46 = load i32, i32* @SEEK_SET, align 4
  %47 = call i32 @phar_seek_efp(%struct.TYPE_10__* %45, i32 0, i32 %46, i32 0, i32 1)
  %48 = load i32*, i32** %5, align 8
  %49 = call i32 @php_stream_tell(i32* %48)
  store i32 %49, i32* %7, align 4
  %50 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %51 = call %struct.TYPE_10__* @phar_get_link_source(%struct.TYPE_10__* %50)
  store %struct.TYPE_10__* %51, %struct.TYPE_10__** %8, align 8
  %52 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %53 = icmp ne %struct.TYPE_10__* %52, null
  br i1 %53, label %56, label %54

54:                                               ; preds = %44
  %55 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  store %struct.TYPE_10__* %55, %struct.TYPE_10__** %8, align 8
  br label %56

56:                                               ; preds = %54, %44
  %57 = load i64, i64* @SUCCESS, align 8
  %58 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %59 = call i32 @phar_get_efp(%struct.TYPE_10__* %58, i32 0)
  %60 = load i32*, i32** %5, align 8
  %61 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %62 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %61, i32 0, i32 6
  %63 = load i32, i32* %62, align 8
  %64 = call i64 @php_stream_copy_to_stream_ex(i32 %59, i32* %60, i32 %63, i32* null)
  %65 = icmp ne i64 %57, %64
  br i1 %65, label %66, label %79

66:                                               ; preds = %56
  %67 = load i32, i32* @spl_ce_UnexpectedValueException, align 4
  %68 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %69 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %68, i32 0, i32 5
  %70 = load %struct.TYPE_9__*, %struct.TYPE_9__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %74 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %73, i32 0, i32 4
  %75 = load i32, i32* %74, align 8
  %76 = call i32 (i32, i32, i8*, i32, i32, ...) @zend_throw_exception_ex(i32 %67, i32 0, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.2, i64 0, i64 0), i32 %72, i32 %75)
  %77 = load i64, i64* @FAILURE, align 8
  %78 = trunc i64 %77 to i32
  store i32 %78, i32* %3, align 4
  br label %102

79:                                               ; preds = %56
  %80 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %81 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = load i64, i64* @PHAR_MOD, align 8
  %84 = icmp eq i64 %82, %83
  br i1 %84, label %85, label %93

85:                                               ; preds = %79
  %86 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %87 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %86, i32 0, i32 2
  %88 = load i32*, i32** %87, align 8
  %89 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %90 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %89, i32 0, i32 3
  store i32* %88, i32** %90, align 8
  %91 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %92 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %91, i32 0, i32 2
  store i32* null, i32** %92, align 8
  br label %93

93:                                               ; preds = %85, %79
  %94 = load i64, i64* @PHAR_FP, align 8
  %95 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %96 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %95, i32 0, i32 0
  store i64 %94, i64* %96, align 8
  %97 = load i32, i32* %7, align 4
  %98 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %99 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %98, i32 0, i32 1
  store i32 %97, i32* %99, align 8
  %100 = load i64, i64* @SUCCESS, align 8
  %101 = trunc i64 %100 to i32
  store i32 %101, i32* %3, align 4
  br label %102

102:                                              ; preds = %93, %66, %41
  %103 = load i32, i32* %3, align 4
  ret i32 %103
}

declare dso_local i64 @phar_open_entry_fp(%struct.TYPE_10__*, i8**, i32) #1

declare dso_local i32 @zend_throw_exception_ex(i32, i32, i8*, i32, i32, ...) #1

declare dso_local i32 @efree(i8*) #1

declare dso_local i32 @phar_seek_efp(%struct.TYPE_10__*, i32, i32, i32, i32) #1

declare dso_local i32 @php_stream_tell(i32*) #1

declare dso_local %struct.TYPE_10__* @phar_get_link_source(%struct.TYPE_10__*) #1

declare dso_local i64 @php_stream_copy_to_stream_ex(i32, i32*, i32, i32*) #1

declare dso_local i32 @phar_get_efp(%struct.TYPE_10__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
