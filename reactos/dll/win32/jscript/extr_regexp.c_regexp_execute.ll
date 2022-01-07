; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/jscript/extr_regexp.c_regexp_execute.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/jscript/extr_regexp.c_regexp_execute.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32 }
%struct.TYPE_12__ = type { i32, i32, i32* }
%struct.TYPE_13__ = type { i32, i32, i32, i32*, i32*, i32* }

@.str = private unnamed_addr constant [18 x i8] c"InitMatch failed\0A\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"MatchRegExp failed\0A\00", align 1
@E_FAIL = common dso_local global i32 0, align 4
@S_FALSE = common dso_local global i32 0, align 4
@S_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @regexp_execute(%struct.TYPE_11__* %0, i8* %1, i32* %2, i32* %3, i32 %4, %struct.TYPE_12__* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_11__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_12__*, align 8
  %14 = alloca %struct.TYPE_12__*, align 8
  %15 = alloca %struct.TYPE_13__, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %8, align 8
  store i8* %1, i8** %9, align 8
  store i32* %2, i32** %10, align 8
  store i32* %3, i32** %11, align 8
  store i32 %4, i32* %12, align 4
  store %struct.TYPE_12__* %5, %struct.TYPE_12__** %13, align 8
  %19 = load i32*, i32** %10, align 8
  %20 = call i32* @heap_pool_mark(i32* %19)
  store i32* %20, i32** %16, align 8
  %21 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %22 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %21, i32 0, i32 2
  %23 = load i32*, i32** %22, align 8
  store i32* %23, i32** %17, align 8
  %24 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %25 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %24, i32 0, i32 2
  %26 = load i32*, i32** %25, align 8
  %27 = icmp ne i32* %26, null
  %28 = zext i1 %27 to i32
  %29 = call i32 @assert(i32 %28)
  %30 = load i32*, i32** %11, align 8
  %31 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %15, i32 0, i32 5
  store i32* %30, i32** %31, align 8
  %32 = load i32*, i32** %11, align 8
  %33 = load i32, i32* %12, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %32, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %15, i32 0, i32 4
  store i32* %35, i32** %36, align 8
  %37 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %38 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %37, i32 0, i32 2
  %39 = load i32*, i32** %38, align 8
  %40 = load i32*, i32** %11, align 8
  %41 = ptrtoint i32* %39 to i64
  %42 = ptrtoint i32* %40 to i64
  %43 = sub i64 %41, %42
  %44 = sdiv exact i64 %43, 4
  %45 = trunc i64 %44 to i32
  %46 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %15, i32 0, i32 0
  store i32 %45, i32* %46, align 8
  %47 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %15, i32 0, i32 1
  store i32 0, i32* %47, align 4
  %48 = load i32*, i32** %10, align 8
  %49 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %15, i32 0, i32 3
  store i32* %48, i32** %49, align 8
  %50 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %51 = load i8*, i8** %9, align 8
  %52 = load i32*, i32** %10, align 8
  %53 = call i32 @InitMatch(%struct.TYPE_11__* %50, i8* %51, i32* %52, %struct.TYPE_13__* %15)
  store i32 %53, i32* %18, align 4
  %54 = load i32, i32* %18, align 4
  %55 = call i64 @FAILED(i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %62

57:                                               ; preds = %6
  %58 = call i32 @WARN(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %59 = load i32*, i32** %16, align 8
  %60 = call i32 @heap_pool_clear(i32* %59)
  %61 = load i32, i32* %18, align 4
  store i32 %61, i32* %7, align 4
  br label %102

62:                                               ; preds = %6
  %63 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %64 = call %struct.TYPE_12__* @MatchRegExp(%struct.TYPE_13__* %15, %struct.TYPE_12__* %63)
  store %struct.TYPE_12__* %64, %struct.TYPE_12__** %14, align 8
  %65 = load i32*, i32** %16, align 8
  %66 = call i32 @heap_pool_clear(i32* %65)
  %67 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %15, i32 0, i32 2
  %68 = load i32, i32* %67, align 8
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %73, label %70

70:                                               ; preds = %62
  %71 = call i32 @WARN(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  %72 = load i32, i32* @E_FAIL, align 4
  store i32 %72, i32* %7, align 4
  br label %102

73:                                               ; preds = %62
  %74 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %75 = icmp ne %struct.TYPE_12__* %74, null
  br i1 %75, label %80, label %76

76:                                               ; preds = %73
  %77 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %78 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %77, i32 0, i32 0
  store i32 0, i32* %78, align 8
  %79 = load i32, i32* @S_FALSE, align 4
  store i32 %79, i32* %7, align 4
  br label %102

80:                                               ; preds = %73
  %81 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %82 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %81, i32 0, i32 2
  %83 = load i32*, i32** %82, align 8
  %84 = load i32*, i32** %17, align 8
  %85 = ptrtoint i32* %83 to i64
  %86 = ptrtoint i32* %84 to i64
  %87 = sub i64 %85, %86
  %88 = sdiv exact i64 %87, 4
  %89 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %15, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = sext i32 %90 to i64
  %92 = sub nsw i64 %88, %91
  %93 = trunc i64 %92 to i32
  %94 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %95 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %94, i32 0, i32 0
  store i32 %93, i32* %95, align 8
  %96 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %97 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %100 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %99, i32 0, i32 1
  store i32 %98, i32* %100, align 4
  %101 = load i32, i32* @S_OK, align 4
  store i32 %101, i32* %7, align 4
  br label %102

102:                                              ; preds = %80, %76, %70, %57
  %103 = load i32, i32* %7, align 4
  ret i32 %103
}

declare dso_local i32* @heap_pool_mark(i32*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @InitMatch(%struct.TYPE_11__*, i8*, i32*, %struct.TYPE_13__*) #1

declare dso_local i64 @FAILED(i32) #1

declare dso_local i32 @WARN(i8*) #1

declare dso_local i32 @heap_pool_clear(i32*) #1

declare dso_local %struct.TYPE_12__* @MatchRegExp(%struct.TYPE_13__*, %struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
