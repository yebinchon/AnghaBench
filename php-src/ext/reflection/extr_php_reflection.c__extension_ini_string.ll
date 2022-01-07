; ModuleID = '/home/carl/AnghaBench/php-src/ext/reflection/extr_php_reflection.c__extension_ini_string.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/reflection/extr_php_reflection.c__extension_ini_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i64, i64, i64, i64 }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"    %sEntry [ %s <\00", align 1
@ZEND_INI_ALL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [4 x i8] c"ALL\00", align 1
@ZEND_INI_USER = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [5 x i8] c"USER\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c",\00", align 1
@ZEND_INI_PERDIR = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [9 x i8] c"%sPERDIR\00", align 1
@ZEND_INI_SYSTEM = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [9 x i8] c"%sSYSTEM\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"> ]\0A\00", align 1
@.str.8 = private unnamed_addr constant [24 x i8] c"    %s  Current = '%s'\0A\00", align 1
@.str.9 = private unnamed_addr constant [24 x i8] c"    %s  Default = '%s'\0A\00", align 1
@.str.10 = private unnamed_addr constant [9 x i8] c"    %s}\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, i32*, i8*, i32)* @_extension_ini_string to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_extension_ini_string(%struct.TYPE_3__* %0, i32* %1, i8* %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %9, align 8
  %10 = load i32, i32* %8, align 4
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp eq i32 %10, %13
  br i1 %14, label %15, label %106

15:                                               ; preds = %4
  %16 = load i32*, i32** %6, align 8
  %17 = load i8*, i8** %7, align 8
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 5
  %20 = load i64, i64* %19, align 8
  %21 = call i8* @ZSTR_VAL(i64 %20)
  %22 = call i32 (i32*, i8*, i8*, ...) @smart_str_append_printf(i32* %16, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i8* %17, i8* %21)
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @ZEND_INI_ALL, align 4
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %28, label %31

28:                                               ; preds = %15
  %29 = load i32*, i32** %6, align 8
  %30 = call i32 @smart_str_appends(i32* %29, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  br label %64

31:                                               ; preds = %15
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @ZEND_INI_USER, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %31
  %39 = load i32*, i32** %6, align 8
  %40 = call i32 @smart_str_appends(i32* %39, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0), i8** %9, align 8
  br label %41

41:                                               ; preds = %38, %31
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @ZEND_INI_PERDIR, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %41
  %49 = load i32*, i32** %6, align 8
  %50 = load i8*, i8** %9, align 8
  %51 = call i32 (i32*, i8*, i8*, ...) @smart_str_append_printf(i32* %49, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0), i8* %50)
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0), i8** %9, align 8
  br label %52

52:                                               ; preds = %48, %41
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @ZEND_INI_SYSTEM, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %63

59:                                               ; preds = %52
  %60 = load i32*, i32** %6, align 8
  %61 = load i8*, i8** %9, align 8
  %62 = call i32 (i32*, i8*, i8*, ...) @smart_str_append_printf(i32* %60, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0), i8* %61)
  br label %63

63:                                               ; preds = %59, %52
  br label %64

64:                                               ; preds = %63, %28
  %65 = load i32*, i32** %6, align 8
  %66 = call i32 @smart_str_appends(i32* %65, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0))
  %67 = load i32*, i32** %6, align 8
  %68 = load i8*, i8** %7, align 8
  %69 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 4
  %71 = load i64, i64* %70, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %78

73:                                               ; preds = %64
  %74 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 4
  %76 = load i64, i64* %75, align 8
  %77 = call i8* @ZSTR_VAL(i64 %76)
  br label %79

78:                                               ; preds = %64
  br label %79

79:                                               ; preds = %78, %73
  %80 = phi i8* [ %77, %73 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), %78 ]
  %81 = call i32 (i32*, i8*, i8*, ...) @smart_str_append_printf(i32* %67, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.8, i64 0, i64 0), i8* %68, i8* %80)
  %82 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i32 0, i32 3
  %84 = load i64, i64* %83, align 8
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %102

86:                                               ; preds = %79
  %87 = load i32*, i32** %6, align 8
  %88 = load i8*, i8** %7, align 8
  %89 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i32 0, i32 2
  %91 = load i64, i64* %90, align 8
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %98

93:                                               ; preds = %86
  %94 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %95 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %94, i32 0, i32 2
  %96 = load i64, i64* %95, align 8
  %97 = call i8* @ZSTR_VAL(i64 %96)
  br label %99

98:                                               ; preds = %86
  br label %99

99:                                               ; preds = %98, %93
  %100 = phi i8* [ %97, %93 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), %98 ]
  %101 = call i32 (i32*, i8*, i8*, ...) @smart_str_append_printf(i32* %87, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.9, i64 0, i64 0), i8* %88, i8* %100)
  br label %102

102:                                              ; preds = %99, %79
  %103 = load i32*, i32** %6, align 8
  %104 = load i8*, i8** %7, align 8
  %105 = call i32 (i32*, i8*, i8*, ...) @smart_str_append_printf(i32* %103, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i64 0, i64 0), i8* %104)
  br label %106

106:                                              ; preds = %102, %4
  ret void
}

declare dso_local i32 @smart_str_append_printf(i32*, i8*, i8*, ...) #1

declare dso_local i8* @ZSTR_VAL(i64) #1

declare dso_local i32 @smart_str_appends(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
