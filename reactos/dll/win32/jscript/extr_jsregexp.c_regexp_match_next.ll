; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/jscript/extr_jsregexp.c_regexp_match_next.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/jscript/extr_jsregexp.c_regexp_match_next.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32 }
%struct.TYPE_15__ = type { i32, i32 }
%struct.TYPE_16__ = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32 }

@REM_CHECK_GLOBAL = common dso_local global i32 0, align 4
@REG_GLOB = common dso_local global i32 0, align 4
@REM_ALLOC_RESULT = common dso_local global i32 0, align 4
@S_FALSE = common dso_local global i64 0, align 8
@E_OUTOFMEMORY = common dso_local global i64 0, align 8
@REM_NO_PARENS = common dso_local global i32 0, align 4
@S_OK = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @regexp_match_next(%struct.TYPE_14__* %0, i32* %1, i32 %2, i32* %3, %struct.TYPE_15__** %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_14__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_15__**, align 8
  %12 = alloca %struct.TYPE_16__*, align 8
  %13 = alloca %struct.TYPE_15__*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i64, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store %struct.TYPE_15__** %4, %struct.TYPE_15__*** %11, align 8
  %17 = load i32*, i32** %8, align 8
  %18 = call %struct.TYPE_16__* @regexp_from_jsdisp(i32* %17)
  store %struct.TYPE_16__* %18, %struct.TYPE_16__** %12, align 8
  %19 = load i32, i32* %9, align 4
  %20 = load i32, i32* @REM_CHECK_GLOBAL, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %41

23:                                               ; preds = %5
  %24 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %25 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_13__*, %struct.TYPE_13__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @REG_GLOB, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %41, label %32

32:                                               ; preds = %23
  %33 = load i32, i32* %9, align 4
  %34 = load i32, i32* @REM_ALLOC_RESULT, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %32
  %38 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %11, align 8
  store %struct.TYPE_15__* null, %struct.TYPE_15__** %38, align 8
  br label %39

39:                                               ; preds = %37, %32
  %40 = load i64, i64* @S_FALSE, align 8
  store i64 %40, i64* %6, align 8
  br label %145

41:                                               ; preds = %23, %5
  %42 = load i32*, i32** %10, align 8
  %43 = call i32* @jsstr_flatten(i32* %42)
  store i32* %43, i32** %15, align 8
  %44 = load i32*, i32** %15, align 8
  %45 = icmp ne i32* %44, null
  br i1 %45, label %48, label %46

46:                                               ; preds = %41
  %47 = load i64, i64* @E_OUTOFMEMORY, align 8
  store i64 %47, i64* %6, align 8
  br label %145

48:                                               ; preds = %41
  %49 = load i32, i32* %9, align 4
  %50 = load i32, i32* @REM_ALLOC_RESULT, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %66

53:                                               ; preds = %48
  %54 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %55 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %54, i32 0, i32 0
  %56 = load %struct.TYPE_13__*, %struct.TYPE_13__** %55, align 8
  %57 = load i32*, i32** %15, align 8
  %58 = call %struct.TYPE_15__* @alloc_match_state(%struct.TYPE_13__* %56, i32* null, i32* %57)
  store %struct.TYPE_15__* %58, %struct.TYPE_15__** %13, align 8
  %59 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %60 = icmp ne %struct.TYPE_15__* %59, null
  br i1 %60, label %63, label %61

61:                                               ; preds = %53
  %62 = load i64, i64* @E_OUTOFMEMORY, align 8
  store i64 %62, i64* %6, align 8
  br label %145

63:                                               ; preds = %53
  %64 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %65 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %11, align 8
  store %struct.TYPE_15__* %64, %struct.TYPE_15__** %65, align 8
  br label %66

66:                                               ; preds = %63, %48
  %67 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %68 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %67, i32 0, i32 0
  %69 = call i32* @heap_pool_mark(i32* %68)
  store i32* %69, i32** %14, align 8
  %70 = load i32, i32* %9, align 4
  %71 = load i32, i32* @REM_NO_PARENS, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %100

74:                                               ; preds = %66
  %75 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %76 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %75, i32 0, i32 0
  %77 = load %struct.TYPE_13__*, %struct.TYPE_13__** %76, align 8
  %78 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %79 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %78, i32 0, i32 0
  %80 = call %struct.TYPE_15__* @alloc_match_state(%struct.TYPE_13__* %77, i32* %79, i32* null)
  store %struct.TYPE_15__* %80, %struct.TYPE_15__** %13, align 8
  %81 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %82 = icmp ne %struct.TYPE_15__* %81, null
  br i1 %82, label %87, label %83

83:                                               ; preds = %74
  %84 = load i32*, i32** %14, align 8
  %85 = call i32 @heap_pool_clear(i32* %84)
  %86 = load i64, i64* @E_OUTOFMEMORY, align 8
  store i64 %86, i64* %6, align 8
  br label %145

87:                                               ; preds = %74
  %88 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %11, align 8
  %89 = load %struct.TYPE_15__*, %struct.TYPE_15__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %93 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %92, i32 0, i32 1
  store i32 %91, i32* %93, align 4
  %94 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %11, align 8
  %95 = load %struct.TYPE_15__*, %struct.TYPE_15__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %99 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %98, i32 0, i32 0
  store i32 %97, i32* %99, align 4
  br label %103

100:                                              ; preds = %66
  %101 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %11, align 8
  %102 = load %struct.TYPE_15__*, %struct.TYPE_15__** %101, align 8
  store %struct.TYPE_15__* %102, %struct.TYPE_15__** %13, align 8
  br label %103

103:                                              ; preds = %100, %87
  %104 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %105 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %106 = load i32, i32* %9, align 4
  %107 = load i32*, i32** %10, align 8
  %108 = load i32*, i32** %15, align 8
  %109 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %110 = call i64 @do_regexp_match_next(%struct.TYPE_14__* %104, %struct.TYPE_16__* %105, i32 %106, i32* %107, i32* %108, %struct.TYPE_15__* %109)
  store i64 %110, i64* %16, align 8
  %111 = load i32, i32* %9, align 4
  %112 = load i32, i32* @REM_NO_PARENS, align 4
  %113 = and i32 %111, %112
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %128

115:                                              ; preds = %103
  %116 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %117 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %11, align 8
  %120 = load %struct.TYPE_15__*, %struct.TYPE_15__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %120, i32 0, i32 1
  store i32 %118, i32* %121, align 4
  %122 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %123 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %11, align 8
  %126 = load %struct.TYPE_15__*, %struct.TYPE_15__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %126, i32 0, i32 0
  store i32 %124, i32* %127, align 4
  br label %128

128:                                              ; preds = %115, %103
  %129 = load i32*, i32** %14, align 8
  %130 = call i32 @heap_pool_clear(i32* %129)
  %131 = load i64, i64* %16, align 8
  %132 = load i64, i64* @S_OK, align 8
  %133 = icmp ne i64 %131, %132
  br i1 %133, label %134, label %143

134:                                              ; preds = %128
  %135 = load i32, i32* %9, align 4
  %136 = load i32, i32* @REM_ALLOC_RESULT, align 4
  %137 = and i32 %135, %136
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %143

139:                                              ; preds = %134
  %140 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %141 = call i32 @heap_free(%struct.TYPE_15__* %140)
  %142 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %11, align 8
  store %struct.TYPE_15__* null, %struct.TYPE_15__** %142, align 8
  br label %143

143:                                              ; preds = %139, %134, %128
  %144 = load i64, i64* %16, align 8
  store i64 %144, i64* %6, align 8
  br label %145

145:                                              ; preds = %143, %83, %61, %46, %39
  %146 = load i64, i64* %6, align 8
  ret i64 %146
}

declare dso_local %struct.TYPE_16__* @regexp_from_jsdisp(i32*) #1

declare dso_local i32* @jsstr_flatten(i32*) #1

declare dso_local %struct.TYPE_15__* @alloc_match_state(%struct.TYPE_13__*, i32*, i32*) #1

declare dso_local i32* @heap_pool_mark(i32*) #1

declare dso_local i32 @heap_pool_clear(i32*) #1

declare dso_local i64 @do_regexp_match_next(%struct.TYPE_14__*, %struct.TYPE_16__*, i32, i32*, i32*, %struct.TYPE_15__*) #1

declare dso_local i32 @heap_free(%struct.TYPE_15__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
