; ModuleID = '/home/carl/AnghaBench/php-src/ext/zip/extr_php_zip.c_php_zip_property_reader.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/zip/extr_php_zip.c_php_zip_property_reader.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32* }
%struct.TYPE_6__ = type { i8* (i32*, i32*)*, i32 (i32*)*, i8* (%struct.TYPE_7__*)*, i32 }

@E_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Internal zip error returned\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_7__*, %struct.TYPE_6__*, i32*)* @php_zip_property_reader to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @php_zip_property_reader(%struct.TYPE_7__* %0, %struct.TYPE_6__* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %5, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %6, align 8
  store i32* %2, i32** %7, align 8
  store i8* null, i8** %8, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %11 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %12 = icmp ne %struct.TYPE_7__* %11, null
  br i1 %12, label %13, label %66

13:                                               ; preds = %3
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  %17 = icmp ne i32* %16, null
  br i1 %17, label %18, label %66

18:                                               ; preds = %13
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = load i8* (i32*, i32*)*, i8* (i32*, i32*)** %20, align 8
  %22 = icmp ne i8* (i32*, i32*)* %21, null
  br i1 %22, label %23, label %31

23:                                               ; preds = %18
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = load i8* (i32*, i32*)*, i8* (i32*, i32*)** %25, align 8
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = call i8* %26(i32* %29, i32* %10)
  store i8* %30, i8** %8, align 8
  br label %65

31:                                               ; preds = %18
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 1
  %34 = load i32 (i32*)*, i32 (i32*)** %33, align 8
  %35 = icmp ne i32 (i32*)* %34, null
  br i1 %35, label %36, label %50

36:                                               ; preds = %31
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 1
  %39 = load i32 (i32*)*, i32 (i32*)** %38, align 8
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 0
  %42 = load i32*, i32** %41, align 8
  %43 = call i32 %39(i32* %42)
  store i32 %43, i32* %9, align 4
  %44 = load i32, i32* %9, align 4
  %45 = icmp eq i32 %44, -1
  br i1 %45, label %46, label %49

46:                                               ; preds = %36
  %47 = load i32, i32* @E_WARNING, align 4
  %48 = call i32 @php_error_docref(i32* null, i32 %47, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  store i32* null, i32** %4, align 8
  br label %95

49:                                               ; preds = %36
  br label %64

50:                                               ; preds = %31
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 2
  %53 = load i8* (%struct.TYPE_7__*)*, i8* (%struct.TYPE_7__*)** %52, align 8
  %54 = icmp ne i8* (%struct.TYPE_7__*)* %53, null
  br i1 %54, label %55, label %63

55:                                               ; preds = %50
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 2
  %58 = load i8* (%struct.TYPE_7__*)*, i8* (%struct.TYPE_7__*)** %57, align 8
  %59 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %60 = call i8* %58(%struct.TYPE_7__* %59)
  store i8* %60, i8** %8, align 8
  %61 = load i8*, i8** %8, align 8
  %62 = call i32 @strlen(i8* %61)
  store i32 %62, i32* %10, align 4
  br label %63

63:                                               ; preds = %55, %50
  br label %64

64:                                               ; preds = %63, %49
  br label %65

65:                                               ; preds = %64, %23
  br label %66

66:                                               ; preds = %65, %13, %3
  %67 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 3
  %69 = load i32, i32* %68, align 8
  switch i32 %69, label %90 [
    i32 128, label %70
    i32 130, label %82
    i32 129, label %86
  ]

70:                                               ; preds = %66
  %71 = load i8*, i8** %8, align 8
  %72 = icmp ne i8* %71, null
  br i1 %72, label %73, label %78

73:                                               ; preds = %70
  %74 = load i32*, i32** %7, align 8
  %75 = load i8*, i8** %8, align 8
  %76 = load i32, i32* %10, align 4
  %77 = call i32 @ZVAL_STRINGL(i32* %74, i8* %75, i32 %76)
  br label %81

78:                                               ; preds = %70
  %79 = load i32*, i32** %7, align 8
  %80 = call i32 @ZVAL_EMPTY_STRING(i32* %79)
  br label %81

81:                                               ; preds = %78, %73
  br label %93

82:                                               ; preds = %66
  %83 = load i32*, i32** %7, align 8
  %84 = load i32, i32* %9, align 4
  %85 = call i32 @ZVAL_BOOL(i32* %83, i32 %84)
  br label %93

86:                                               ; preds = %66
  %87 = load i32*, i32** %7, align 8
  %88 = load i32, i32* %9, align 4
  %89 = call i32 @ZVAL_LONG(i32* %87, i32 %88)
  br label %93

90:                                               ; preds = %66
  %91 = load i32*, i32** %7, align 8
  %92 = call i32 @ZVAL_NULL(i32* %91)
  br label %93

93:                                               ; preds = %90, %86, %82, %81
  %94 = load i32*, i32** %7, align 8
  store i32* %94, i32** %4, align 8
  br label %95

95:                                               ; preds = %93, %46
  %96 = load i32*, i32** %4, align 8
  ret i32* %96
}

declare dso_local i32 @php_error_docref(i32*, i32, i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @ZVAL_STRINGL(i32*, i8*, i32) #1

declare dso_local i32 @ZVAL_EMPTY_STRING(i32*) #1

declare dso_local i32 @ZVAL_BOOL(i32*, i32) #1

declare dso_local i32 @ZVAL_LONG(i32*, i32) #1

declare dso_local i32 @ZVAL_NULL(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
