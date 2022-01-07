; ModuleID = '/home/carl/AnghaBench/php-src/ext/session/extr_mod_files.c_ps_files_write.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/session/extr_mod_files.c_ps_files_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i64 }

@FAILURE = common dso_local global i32 0, align 4
@SEEK_SET = common dso_local global i32 0, align 4
@E_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"write failed: %s (%d)\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"write wrote less bytes than requested\00", align 1
@SUCCESS = common dso_local global i32 0, align 4
@UINT_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*, i32*, i32*)* @ps_files_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ps_files_write(%struct.TYPE_4__* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store i64 0, i64* %8, align 8
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %10 = load i32*, i32** %6, align 8
  %11 = call i8* @ZSTR_VAL(i32* %10)
  %12 = call i32 @ps_files_open(%struct.TYPE_4__* %9, i8* %11)
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp slt i64 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %3
  %18 = load i32, i32* @FAILURE, align 4
  store i32 %18, i32* %4, align 4
  br label %66

19:                                               ; preds = %3
  %20 = load i32*, i32** %7, align 8
  %21 = call i64 @ZSTR_LEN(i32* %20)
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = icmp ult i64 %21, %24
  br i1 %25, label %26, label %32

26:                                               ; preds = %19
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = call i32 @ftruncate(i64 %29, i32 0)
  %31 = call i32 @php_ignore_value(i32 %30)
  br label %32

32:                                               ; preds = %26, %19
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i32, i32* @SEEK_SET, align 4
  %37 = call i32 @lseek(i64 %35, i32 0, i32 %36)
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i32*, i32** %7, align 8
  %42 = call i8* @ZSTR_VAL(i32* %41)
  %43 = load i32*, i32** %7, align 8
  %44 = call i64 @ZSTR_LEN(i32* %43)
  %45 = call i64 @write(i64 %40, i8* %42, i64 %44)
  store i64 %45, i64* %8, align 8
  %46 = load i64, i64* %8, align 8
  %47 = load i32*, i32** %7, align 8
  %48 = call i64 @ZSTR_LEN(i32* %47)
  %49 = icmp ne i64 %46, %48
  br i1 %49, label %50, label %64

50:                                               ; preds = %32
  %51 = load i64, i64* %8, align 8
  %52 = icmp eq i64 %51, -1
  br i1 %52, label %53, label %59

53:                                               ; preds = %50
  %54 = load i32, i32* @E_WARNING, align 4
  %55 = load i32, i32* @errno, align 4
  %56 = call i32 @strerror(i32 %55)
  %57 = load i32, i32* @errno, align 4
  %58 = call i32 (i32*, i32, i8*, ...) @php_error_docref(i32* null, i32 %54, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %56, i32 %57)
  br label %62

59:                                               ; preds = %50
  %60 = load i32, i32* @E_WARNING, align 4
  %61 = call i32 (i32*, i32, i8*, ...) @php_error_docref(i32* null, i32 %60, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  br label %62

62:                                               ; preds = %59, %53
  %63 = load i32, i32* @FAILURE, align 4
  store i32 %63, i32* %4, align 4
  br label %66

64:                                               ; preds = %32
  %65 = load i32, i32* @SUCCESS, align 4
  store i32 %65, i32* %4, align 4
  br label %66

66:                                               ; preds = %64, %62, %17
  %67 = load i32, i32* %4, align 4
  ret i32 %67
}

declare dso_local i32 @ps_files_open(%struct.TYPE_4__*, i8*) #1

declare dso_local i8* @ZSTR_VAL(i32*) #1

declare dso_local i64 @ZSTR_LEN(i32*) #1

declare dso_local i32 @php_ignore_value(i32) #1

declare dso_local i32 @ftruncate(i64, i32) #1

declare dso_local i32 @lseek(i64, i32, i32) #1

declare dso_local i64 @write(i64, i8*, i64) #1

declare dso_local i32 @php_error_docref(i32*, i32, i8*, ...) #1

declare dso_local i32 @strerror(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
