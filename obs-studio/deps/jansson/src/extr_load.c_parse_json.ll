; ModuleID = '/home/carl/AnghaBench/obs-studio/deps/jansson/src/extr_load.c_parse_json.c'
source_filename = "/home/carl/AnghaBench/obs-studio/deps/jansson/src/extr_load.c_parse_json.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i8, %struct.TYPE_12__, i64 }
%struct.TYPE_12__ = type { i64 }
%struct.TYPE_14__ = type { i32 }

@JSON_DECODE_ANY = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [20 x i8] c"'[' or '{' expected\00", align 1
@JSON_DISABLE_EOF_CHECK = common dso_local global i64 0, align 8
@TOKEN_EOF = common dso_local global i8 0, align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"end of file expected\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_13__*, i64, %struct.TYPE_14__*)* @parse_json to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @parse_json(%struct.TYPE_13__* %0, i64 %1, %struct.TYPE_14__* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_13__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_14__*, align 8
  %8 = alloca i32*, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.TYPE_14__* %2, %struct.TYPE_14__** %7, align 8
  %9 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %10 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %9, i32 0, i32 2
  store i64 0, i64* %10, align 8
  %11 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %12 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %13 = call i32 @lex_scan(%struct.TYPE_13__* %11, %struct.TYPE_14__* %12)
  %14 = load i64, i64* %6, align 8
  %15 = load i64, i64* @JSON_DECODE_ANY, align 8
  %16 = and i64 %14, %15
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %35, label %18

18:                                               ; preds = %3
  %19 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %19, i32 0, i32 0
  %21 = load i8, i8* %20, align 8
  %22 = sext i8 %21 to i32
  %23 = icmp ne i32 %22, 91
  br i1 %23, label %24, label %34

24:                                               ; preds = %18
  %25 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %25, i32 0, i32 0
  %27 = load i8, i8* %26, align 8
  %28 = sext i8 %27 to i32
  %29 = icmp ne i32 %28, 123
  br i1 %29, label %30, label %34

30:                                               ; preds = %24
  %31 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %32 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %33 = call i32 @error_set(%struct.TYPE_14__* %31, %struct.TYPE_13__* %32, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  store i32* null, i32** %4, align 8
  br label %79

34:                                               ; preds = %24, %18
  br label %35

35:                                               ; preds = %34, %3
  %36 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %37 = load i64, i64* %6, align 8
  %38 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %39 = call i32* @parse_value(%struct.TYPE_13__* %36, i64 %37, %struct.TYPE_14__* %38)
  store i32* %39, i32** %8, align 8
  %40 = load i32*, i32** %8, align 8
  %41 = icmp ne i32* %40, null
  br i1 %41, label %43, label %42

42:                                               ; preds = %35
  store i32* null, i32** %4, align 8
  br label %79

43:                                               ; preds = %35
  %44 = load i64, i64* %6, align 8
  %45 = load i64, i64* @JSON_DISABLE_EOF_CHECK, align 8
  %46 = and i64 %44, %45
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %66, label %48

48:                                               ; preds = %43
  %49 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %50 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %51 = call i32 @lex_scan(%struct.TYPE_13__* %49, %struct.TYPE_14__* %50)
  %52 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %53 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %52, i32 0, i32 0
  %54 = load i8, i8* %53, align 8
  %55 = sext i8 %54 to i32
  %56 = load i8, i8* @TOKEN_EOF, align 1
  %57 = sext i8 %56 to i32
  %58 = icmp ne i32 %55, %57
  br i1 %58, label %59, label %65

59:                                               ; preds = %48
  %60 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %61 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %62 = call i32 @error_set(%struct.TYPE_14__* %60, %struct.TYPE_13__* %61, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %63 = load i32*, i32** %8, align 8
  %64 = call i32 @json_decref(i32* %63)
  store i32* null, i32** %4, align 8
  br label %79

65:                                               ; preds = %48
  br label %66

66:                                               ; preds = %65, %43
  %67 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %68 = icmp ne %struct.TYPE_14__* %67, null
  br i1 %68, label %69, label %77

69:                                               ; preds = %66
  %70 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %71 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = trunc i64 %73 to i32
  %75 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %76 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %75, i32 0, i32 0
  store i32 %74, i32* %76, align 4
  br label %77

77:                                               ; preds = %69, %66
  %78 = load i32*, i32** %8, align 8
  store i32* %78, i32** %4, align 8
  br label %79

79:                                               ; preds = %77, %59, %42, %30
  %80 = load i32*, i32** %4, align 8
  ret i32* %80
}

declare dso_local i32 @lex_scan(%struct.TYPE_13__*, %struct.TYPE_14__*) #1

declare dso_local i32 @error_set(%struct.TYPE_14__*, %struct.TYPE_13__*, i8*) #1

declare dso_local i32* @parse_value(%struct.TYPE_13__*, i64, %struct.TYPE_14__*) #1

declare dso_local i32 @json_decref(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
