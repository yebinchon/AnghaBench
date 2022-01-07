; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/jscript/extr_lex.c_parse_string_literal.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/jscript/extr_lex.c_parse_string_literal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64*, i64*, i32 }

@FALSE = common dso_local global i64 0, align 8
@TRUE = common dso_local global i64 0, align 8
@JS_E_UNTERMINATED_STRING = common dso_local global i32 0, align 4
@E_OUTOFMEMORY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"unescape failed\0A\00", align 1
@E_FAIL = common dso_local global i32 0, align 4
@tStringLiteral = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*, i32**, i64)* @parse_string_literal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_string_literal(%struct.TYPE_5__* %0, i32** %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i32**, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i64, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %5, align 8
  store i32** %1, i32*** %6, align 8
  store i64 %2, i64* %7, align 8
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = load i64*, i64** %14, align 8
  %16 = getelementptr inbounds i64, i64* %15, i32 1
  store i64* %16, i64** %14, align 8
  store i64* %16, i64** %8, align 8
  %17 = load i64*, i64** %8, align 8
  store i64* %17, i64** %9, align 8
  %18 = load i64, i64* @FALSE, align 8
  store i64 %18, i64* %10, align 8
  br label %19

19:                                               ; preds = %49, %3
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = load i64*, i64** %21, align 8
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 1
  %25 = load i64*, i64** %24, align 8
  %26 = icmp ult i64* %22, %25
  br i1 %26, label %27, label %34

27:                                               ; preds = %19
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  %30 = load i64*, i64** %29, align 8
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* %7, align 8
  %33 = icmp ne i64 %31, %32
  br label %34

34:                                               ; preds = %27, %19
  %35 = phi i1 [ false, %19 ], [ %33, %27 ]
  br i1 %35, label %36, label %50

36:                                               ; preds = %34
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 0
  %39 = load i64*, i64** %38, align 8
  %40 = getelementptr inbounds i64, i64* %39, i32 1
  store i64* %40, i64** %38, align 8
  %41 = load i64, i64* %39, align 8
  %42 = icmp eq i64 %41, 92
  br i1 %42, label %43, label %49

43:                                               ; preds = %36
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 0
  %46 = load i64*, i64** %45, align 8
  %47 = getelementptr inbounds i64, i64* %46, i32 1
  store i64* %47, i64** %45, align 8
  %48 = load i64, i64* @TRUE, align 8
  store i64 %48, i64* %10, align 8
  br label %49

49:                                               ; preds = %43, %36
  br label %19

50:                                               ; preds = %34
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 0
  %53 = load i64*, i64** %52, align 8
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 1
  %56 = load i64*, i64** %55, align 8
  %57 = icmp eq i64* %53, %56
  br i1 %57, label %58, label %62

58:                                               ; preds = %50
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %60 = load i32, i32* @JS_E_UNTERMINATED_STRING, align 4
  %61 = call i32 @lex_error(%struct.TYPE_5__* %59, i32 %60)
  store i32 %61, i32* %4, align 4
  br label %118

62:                                               ; preds = %50
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 0
  %65 = load i64*, i64** %64, align 8
  %66 = load i64*, i64** %8, align 8
  %67 = ptrtoint i64* %65 to i64
  %68 = ptrtoint i64* %66 to i64
  %69 = sub i64 %67, %68
  %70 = sdiv exact i64 %69, 8
  store i64 %70, i64* %12, align 8
  %71 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 0
  %73 = load i64*, i64** %72, align 8
  %74 = getelementptr inbounds i64, i64* %73, i32 1
  store i64* %74, i64** %72, align 8
  %75 = load i64, i64* %10, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %103

77:                                               ; preds = %62
  %78 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %79 = load i64, i64* %12, align 8
  %80 = mul i64 %79, 8
  %81 = call i64* @parser_alloc(%struct.TYPE_5__* %78, i64 %80)
  store i64* %81, i64** %11, align 8
  store i64* %81, i64** %9, align 8
  %82 = load i64*, i64** %11, align 8
  %83 = icmp ne i64* %82, null
  br i1 %83, label %88, label %84

84:                                               ; preds = %77
  %85 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %86 = load i32, i32* @E_OUTOFMEMORY, align 4
  %87 = call i32 @lex_error(%struct.TYPE_5__* %85, i32 %86)
  store i32 %87, i32* %4, align 4
  br label %118

88:                                               ; preds = %77
  %89 = load i64*, i64** %11, align 8
  %90 = load i64*, i64** %8, align 8
  %91 = load i64, i64* %12, align 8
  %92 = mul i64 %91, 8
  %93 = call i32 @memcpy(i64* %89, i64* %90, i64 %92)
  %94 = load i64*, i64** %11, align 8
  %95 = call i32 @unescape(i64* %94, i64* %12)
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %102, label %97

97:                                               ; preds = %88
  %98 = call i32 @WARN(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %99 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %100 = load i32, i32* @E_FAIL, align 4
  %101 = call i32 @lex_error(%struct.TYPE_5__* %99, i32 %100)
  store i32 %101, i32* %4, align 4
  br label %118

102:                                              ; preds = %88
  br label %103

103:                                              ; preds = %102, %62
  %104 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %105 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %104, i32 0, i32 2
  %106 = load i32, i32* %105, align 8
  %107 = load i64*, i64** %9, align 8
  %108 = load i64, i64* %12, align 8
  %109 = call i32* @compiler_alloc_string_len(i32 %106, i64* %107, i64 %108)
  %110 = load i32**, i32*** %6, align 8
  store i32* %109, i32** %110, align 8
  %111 = icmp ne i32* %109, null
  br i1 %111, label %116, label %112

112:                                              ; preds = %103
  %113 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %114 = load i32, i32* @E_OUTOFMEMORY, align 4
  %115 = call i32 @lex_error(%struct.TYPE_5__* %113, i32 %114)
  store i32 %115, i32* %4, align 4
  br label %118

116:                                              ; preds = %103
  %117 = load i32, i32* @tStringLiteral, align 4
  store i32 %117, i32* %4, align 4
  br label %118

118:                                              ; preds = %116, %112, %97, %84, %58
  %119 = load i32, i32* %4, align 4
  ret i32 %119
}

declare dso_local i32 @lex_error(%struct.TYPE_5__*, i32) #1

declare dso_local i64* @parser_alloc(%struct.TYPE_5__*, i64) #1

declare dso_local i32 @memcpy(i64*, i64*, i64) #1

declare dso_local i32 @unescape(i64*, i64*) #1

declare dso_local i32 @WARN(i8*) #1

declare dso_local i32* @compiler_alloc_string_len(i32, i64*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
