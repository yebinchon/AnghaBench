; ModuleID = '/home/carl/AnghaBench/php-src/ext/soap/extr_php_encoding.c_sdl_guess_convert_zval.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/soap/extr_php_encoding.c_sdl_guess_convert_zval.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32, %struct.TYPE_12__* }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }

@IS_ARRAY = common dso_local global i32 0, align 4
@SOAP_ENC_ARRAY = common dso_local global i32 0, align 4
@E_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Encoding: Internal Error\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @sdl_guess_convert_zval(i32* %0, %struct.TYPE_11__* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_10__*, align 8
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %10 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %9, i32 0, i32 1
  %11 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  store %struct.TYPE_10__* %11, %struct.TYPE_10__** %8, align 8
  %12 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %13 = icmp eq %struct.TYPE_10__* %12, null
  br i1 %13, label %14, label %19

14:                                               ; preds = %3
  %15 = load i32*, i32** %5, align 8
  %16 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %17 = load i32, i32* %7, align 4
  %18 = call i32* @guess_zval_convert(i32* %15, %struct.TYPE_11__* %16, i32 %17)
  store i32* %18, i32** %4, align 8
  br label %97

19:                                               ; preds = %3
  %20 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %21 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  switch i32 %22, label %90 [
    i32 129, label %23
    i32 131, label %47
    i32 128, label %52
    i32 133, label %57
    i32 130, label %57
    i32 132, label %57
  ]

23:                                               ; preds = %19
  %24 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %25 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %24, i32 0, i32 1
  %26 = load %struct.TYPE_12__*, %struct.TYPE_12__** %25, align 8
  %27 = icmp ne %struct.TYPE_12__* %26, null
  br i1 %27, label %28, label %42

28:                                               ; preds = %23
  %29 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %30 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %31 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %30, i32 0, i32 1
  %32 = load %struct.TYPE_12__*, %struct.TYPE_12__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %32, i32 0, i32 0
  %34 = icmp ne %struct.TYPE_11__* %29, %33
  br i1 %34, label %35, label %42

35:                                               ; preds = %28
  %36 = load i32*, i32** %5, align 8
  %37 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %38 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %37, i32 0, i32 1
  %39 = load %struct.TYPE_12__*, %struct.TYPE_12__** %38, align 8
  %40 = load i32, i32* %7, align 4
  %41 = call i32* @master_to_zval_int(i32* %36, %struct.TYPE_12__* %39, i32 %40)
  store i32* %41, i32** %4, align 8
  br label %97

42:                                               ; preds = %28, %23
  %43 = load i32*, i32** %5, align 8
  %44 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %45 = load i32, i32* %7, align 4
  %46 = call i32* @guess_zval_convert(i32* %43, %struct.TYPE_11__* %44, i32 %45)
  store i32* %46, i32** %4, align 8
  br label %97

47:                                               ; preds = %19
  %48 = load i32*, i32** %5, align 8
  %49 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %50 = load i32, i32* %7, align 4
  %51 = call i32* @to_zval_list(i32* %48, %struct.TYPE_11__* %49, i32 %50)
  store i32* %51, i32** %4, align 8
  br label %97

52:                                               ; preds = %19
  %53 = load i32*, i32** %5, align 8
  %54 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %55 = load i32, i32* %7, align 4
  %56 = call i32* @to_zval_union(i32* %53, %struct.TYPE_11__* %54, i32 %55)
  store i32* %56, i32** %4, align 8
  br label %97

57:                                               ; preds = %19, %19, %19
  %58 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %59 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %58, i32 0, i32 1
  %60 = load %struct.TYPE_12__*, %struct.TYPE_12__** %59, align 8
  %61 = icmp ne %struct.TYPE_12__* %60, null
  br i1 %61, label %62, label %85

62:                                               ; preds = %57
  %63 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %64 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %63, i32 0, i32 1
  %65 = load %struct.TYPE_12__*, %struct.TYPE_12__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = load i32, i32* @IS_ARRAY, align 4
  %70 = icmp eq i32 %68, %69
  br i1 %70, label %80, label %71

71:                                               ; preds = %62
  %72 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %73 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %72, i32 0, i32 1
  %74 = load %struct.TYPE_12__*, %struct.TYPE_12__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = load i32, i32* @SOAP_ENC_ARRAY, align 4
  %79 = icmp eq i32 %77, %78
  br i1 %79, label %80, label %85

80:                                               ; preds = %71, %62
  %81 = load i32*, i32** %5, align 8
  %82 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %83 = load i32, i32* %7, align 4
  %84 = call i32* @to_zval_array(i32* %81, %struct.TYPE_11__* %82, i32 %83)
  store i32* %84, i32** %4, align 8
  br label %97

85:                                               ; preds = %71, %57
  %86 = load i32*, i32** %5, align 8
  %87 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %88 = load i32, i32* %7, align 4
  %89 = call i32* @to_zval_object(i32* %86, %struct.TYPE_11__* %87, i32 %88)
  store i32* %89, i32** %4, align 8
  br label %97

90:                                               ; preds = %19
  %91 = load i32, i32* @E_ERROR, align 4
  %92 = call i32 @soap_error0(i32 %91, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %93 = load i32*, i32** %5, align 8
  %94 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %95 = load i32, i32* %7, align 4
  %96 = call i32* @guess_zval_convert(i32* %93, %struct.TYPE_11__* %94, i32 %95)
  store i32* %96, i32** %4, align 8
  br label %97

97:                                               ; preds = %90, %85, %80, %52, %47, %42, %35, %14
  %98 = load i32*, i32** %4, align 8
  ret i32* %98
}

declare dso_local i32* @guess_zval_convert(i32*, %struct.TYPE_11__*, i32) #1

declare dso_local i32* @master_to_zval_int(i32*, %struct.TYPE_12__*, i32) #1

declare dso_local i32* @to_zval_list(i32*, %struct.TYPE_11__*, i32) #1

declare dso_local i32* @to_zval_union(i32*, %struct.TYPE_11__*, i32) #1

declare dso_local i32* @to_zval_array(i32*, %struct.TYPE_11__*, i32) #1

declare dso_local i32* @to_zval_object(i32*, %struct.TYPE_11__*, i32) #1

declare dso_local i32 @soap_error0(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
