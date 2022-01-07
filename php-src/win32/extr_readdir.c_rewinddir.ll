; ModuleID = '/home/carl/AnghaBench/php-src/win32/extr_readdir.c_rewinddir.c'
source_filename = "/home/carl/AnghaBench/php-src/win32/extr_readdir.c_rewinddir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32*, i32, i32, i64 }

@_MAX_PATH = common dso_local global i64 0, align 8
@PHP_WIN32_IOUTIL_LONG_PATH_PREFIX_LENW = common dso_local global i64 0, align 8
@PHP_WIN32_IOUTIL_LONG_PATH_PREFIXW = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [3 x i32] [i32 92, i32 42, i32 0], align 4
@FindExInfoBasic = common dso_local global i32 0, align 4
@FindExSearchNameMatch = common dso_local global i32 0, align 4
@FIND_FIRST_EX_LARGE_FETCH = common dso_local global i32 0, align 4
@INVALID_HANDLE_VALUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rewinddir(%struct.TYPE_3__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 8
  %13 = call i32 @FindClose(i32 %12)
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 4
  store i64 0, i64* %15, align 8
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  store i32 0, i32* %17, align 8
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 1
  %20 = load i32*, i32** %19, align 8
  %21 = call i64 @wcslen(i32* %20)
  store i64 %21, i64* %6, align 8
  %22 = load i64, i64* %6, align 8
  %23 = icmp uge i64 %22, 3
  br i1 %23, label %24, label %47

24:                                               ; preds = %1
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 1
  %27 = load i32*, i32** %26, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 0
  %29 = load i32, i32* %28, align 4
  %30 = call i64 @PHP_WIN32_IOUTIL_IS_LETTERW(i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %47

32:                                               ; preds = %24
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 1
  %35 = load i32*, i32** %34, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 1
  %37 = load i32, i32* %36, align 4
  %38 = icmp eq i32 58, %37
  br i1 %38, label %39, label %47

39:                                               ; preds = %32
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 1
  %42 = load i32*, i32** %41, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 2
  %44 = load i32, i32* %43, align 4
  %45 = call i64 @PHP_WIN32_IOUTIL_IS_SLASHW(i32 %44)
  %46 = icmp ne i64 %45, 0
  br label %47

47:                                               ; preds = %39, %32, %24, %1
  %48 = phi i1 [ false, %32 ], [ false, %24 ], [ false, %1 ], [ %46, %39 ]
  %49 = zext i1 %48 to i32
  store i32 %49, i32* %9, align 4
  %50 = load i64, i64* %6, align 8
  %51 = add i64 %50, 2
  store i64 %51, i64* %7, align 8
  %52 = load i64, i64* %7, align 8
  %53 = load i64, i64* @_MAX_PATH, align 8
  %54 = icmp uge i64 %52, %53
  br i1 %54, label %55, label %62

55:                                               ; preds = %47
  %56 = load i32, i32* %9, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %62

58:                                               ; preds = %55
  %59 = load i64, i64* @PHP_WIN32_IOUTIL_LONG_PATH_PREFIX_LENW, align 8
  %60 = load i64, i64* %7, align 8
  %61 = add i64 %60, %59
  store i64 %61, i64* %7, align 8
  br label %62

62:                                               ; preds = %58, %55, %47
  %63 = load i64, i64* %7, align 8
  %64 = add i64 %63, 1
  %65 = mul i64 %64, 4
  %66 = call i64 @malloc(i64 %65)
  %67 = inttoptr i64 %66 to i32*
  store i32* %67, i32** %4, align 8
  %68 = load i32*, i32** %4, align 8
  %69 = icmp eq i32* %68, null
  br i1 %69, label %70, label %71

70:                                               ; preds = %62
  store i32 -1, i32* %2, align 4
  br label %144

71:                                               ; preds = %62
  %72 = load i64, i64* %7, align 8
  %73 = load i64, i64* @_MAX_PATH, align 8
  %74 = icmp uge i64 %72, %73
  br i1 %74, label %75, label %93

75:                                               ; preds = %71
  %76 = load i32, i32* %9, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %93

78:                                               ; preds = %75
  %79 = load i32*, i32** %4, align 8
  %80 = load i32*, i32** @PHP_WIN32_IOUTIL_LONG_PATH_PREFIXW, align 8
  %81 = call i32 @wcscpy(i32* %79, i32* %80)
  %82 = load i32*, i32** %4, align 8
  %83 = load i64, i64* @PHP_WIN32_IOUTIL_LONG_PATH_PREFIX_LENW, align 8
  %84 = getelementptr inbounds i32, i32* %82, i64 %83
  %85 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i32 0, i32 1
  %87 = load i32*, i32** %86, align 8
  %88 = call i32 @wcscpy(i32* %84, i32* %87)
  %89 = load i64, i64* %6, align 8
  %90 = load i64, i64* @PHP_WIN32_IOUTIL_LONG_PATH_PREFIX_LENW, align 8
  %91 = add i64 %89, %90
  %92 = sub i64 %91, 1
  store i64 %92, i64* %8, align 8
  br label %101

93:                                               ; preds = %75, %71
  %94 = load i32*, i32** %4, align 8
  %95 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %96 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %95, i32 0, i32 1
  %97 = load i32*, i32** %96, align 8
  %98 = call i32 @wcscpy(i32* %94, i32* %97)
  %99 = load i64, i64* %6, align 8
  %100 = sub i64 %99, 1
  store i64 %100, i64* %8, align 8
  br label %101

101:                                              ; preds = %93, %78
  %102 = load i64, i64* %8, align 8
  %103 = icmp uge i64 %102, 0
  br i1 %103, label %104, label %123

104:                                              ; preds = %101
  %105 = load i32*, i32** %4, align 8
  %106 = load i64, i64* %8, align 8
  %107 = getelementptr inbounds i32, i32* %105, i64 %106
  %108 = load i32, i32* %107, align 4
  %109 = icmp eq i32 %108, 47
  br i1 %109, label %119, label %110

110:                                              ; preds = %104
  %111 = load i32*, i32** %4, align 8
  %112 = load i64, i64* %8, align 8
  %113 = getelementptr inbounds i32, i32* %111, i64 %112
  %114 = load i32, i32* %113, align 4
  %115 = icmp eq i32 %114, 92
  br i1 %115, label %116, label %123

116:                                              ; preds = %110
  %117 = load i64, i64* %8, align 8
  %118 = icmp eq i64 %117, 0
  br i1 %118, label %119, label %123

119:                                              ; preds = %116, %104
  %120 = load i32*, i32** %4, align 8
  %121 = load i64, i64* %8, align 8
  %122 = getelementptr inbounds i32, i32* %120, i64 %121
  store i32 0, i32* %122, align 4
  br label %123

123:                                              ; preds = %119, %116, %110, %101
  %124 = load i32*, i32** %4, align 8
  %125 = call i32 @wcscat(i32* %124, i8* bitcast ([3 x i32]* @.str to i8*))
  %126 = load i32*, i32** %4, align 8
  %127 = load i32, i32* @FindExInfoBasic, align 4
  %128 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %129 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %128, i32 0, i32 3
  %130 = load i32, i32* @FindExSearchNameMatch, align 4
  %131 = load i32, i32* @FIND_FIRST_EX_LARGE_FETCH, align 4
  %132 = call i32 @FindFirstFileExW(i32* %126, i32 %127, i32* %129, i32 %130, i32* null, i32 %131)
  store i32 %132, i32* %5, align 4
  %133 = load i32, i32* @INVALID_HANDLE_VALUE, align 4
  %134 = icmp eq i32 %132, %133
  br i1 %134, label %135, label %138

135:                                              ; preds = %123
  %136 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %137 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %136, i32 0, i32 0
  store i32 1, i32* %137, align 8
  br label %138

138:                                              ; preds = %135, %123
  %139 = load i32*, i32** %4, align 8
  %140 = call i32 @free(i32* %139)
  %141 = load i32, i32* %5, align 4
  %142 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %143 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %142, i32 0, i32 2
  store i32 %141, i32* %143, align 8
  store i32 0, i32* %2, align 4
  br label %144

144:                                              ; preds = %138, %70
  %145 = load i32, i32* %2, align 4
  ret i32 %145
}

declare dso_local i32 @FindClose(i32) #1

declare dso_local i64 @wcslen(i32*) #1

declare dso_local i64 @PHP_WIN32_IOUTIL_IS_LETTERW(i32) #1

declare dso_local i64 @PHP_WIN32_IOUTIL_IS_SLASHW(i32) #1

declare dso_local i64 @malloc(i64) #1

declare dso_local i32 @wcscpy(i32*, i32*) #1

declare dso_local i32 @wcscat(i32*, i8*) #1

declare dso_local i32 @FindFirstFileExW(i32*, i32, i32*, i32, i32*, i32) #1

declare dso_local i32 @free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
