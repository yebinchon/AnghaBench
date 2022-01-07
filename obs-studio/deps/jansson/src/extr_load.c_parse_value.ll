; ModuleID = '/home/carl/AnghaBench/obs-studio/deps/jansson/src/extr_load.c_parse_value.c'
source_filename = "/home/carl/AnghaBench/obs-studio/deps/jansson/src/extr_load.c_parse_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64, i32, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i8*, i64 }

@JSON_PARSER_MAX_DEPTH = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [30 x i8] c"maximum parsing depth reached\00", align 1
@JSON_ALLOW_NUL = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [45 x i8] c"\\u0000 is not allowed without JSON_ALLOW_NUL\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"invalid token\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"unexpected token\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_10__*, i64, i32*)* @parse_value to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @parse_value(%struct.TYPE_10__* %0, i64 %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32* %2, i32** %7, align 8
  %11 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %12 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = add nsw i64 %13, 1
  store i64 %14, i64* %12, align 8
  %15 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @JSON_PARSER_MAX_DEPTH, align 8
  %19 = icmp sgt i64 %17, %18
  br i1 %19, label %20, label %24

20:                                               ; preds = %3
  %21 = load i32*, i32** %7, align 8
  %22 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %23 = call i32 @error_set(i32* %21, %struct.TYPE_10__* %22, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  store i32* null, i32** %4, align 8
  br label %115

24:                                               ; preds = %3
  %25 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  switch i32 %27, label %101 [
    i32 129, label %28
    i32 133, label %69
    i32 130, label %75
    i32 128, label %81
    i32 134, label %83
    i32 131, label %85
    i32 123, label %87
    i32 91, label %92
    i32 132, label %97
  ]

28:                                               ; preds = %24
  %29 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %29, i32 0, i32 2
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %30, i32 0, i32 2
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 0
  %33 = load i8*, i8** %32, align 8
  store i8* %33, i8** %9, align 8
  %34 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %34, i32 0, i32 2
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i32 0, i32 2
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  store i64 %38, i64* %10, align 8
  %39 = load i64, i64* %6, align 8
  %40 = load i64, i64* @JSON_ALLOW_NUL, align 8
  %41 = and i64 %39, %40
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %53, label %43

43:                                               ; preds = %28
  %44 = load i8*, i8** %9, align 8
  %45 = load i64, i64* %10, align 8
  %46 = call i32 @memchr(i8* %44, i8 signext 0, i64 %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %43
  %49 = load i32*, i32** %7, align 8
  %50 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %51 = call i32 @error_set(i32* %49, %struct.TYPE_10__* %50, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0))
  store i32* null, i32** %4, align 8
  br label %115

52:                                               ; preds = %43
  br label %53

53:                                               ; preds = %52, %28
  %54 = load i8*, i8** %9, align 8
  %55 = load i64, i64* %10, align 8
  %56 = call i32* @jsonp_stringn_nocheck_own(i8* %54, i64 %55)
  store i32* %56, i32** %8, align 8
  %57 = load i32*, i32** %8, align 8
  %58 = icmp ne i32* %57, null
  br i1 %58, label %59, label %68

59:                                               ; preds = %53
  %60 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %61 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %60, i32 0, i32 2
  %62 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %61, i32 0, i32 2
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 0
  store i8* null, i8** %63, align 8
  %64 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %65 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %64, i32 0, i32 2
  %66 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %65, i32 0, i32 2
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i32 0, i32 1
  store i64 0, i64* %67, align 8
  br label %68

68:                                               ; preds = %59, %53
  br label %105

69:                                               ; preds = %24
  %70 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %71 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %70, i32 0, i32 2
  %72 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = call i32* @json_integer(i32 %73)
  store i32* %74, i32** %8, align 8
  br label %105

75:                                               ; preds = %24
  %76 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %77 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %76, i32 0, i32 2
  %78 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = call i32* @json_real(i32 %79)
  store i32* %80, i32** %8, align 8
  br label %105

81:                                               ; preds = %24
  %82 = call i32* (...) @json_true()
  store i32* %82, i32** %8, align 8
  br label %105

83:                                               ; preds = %24
  %84 = call i32* (...) @json_false()
  store i32* %84, i32** %8, align 8
  br label %105

85:                                               ; preds = %24
  %86 = call i32* (...) @json_null()
  store i32* %86, i32** %8, align 8
  br label %105

87:                                               ; preds = %24
  %88 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %89 = load i64, i64* %6, align 8
  %90 = load i32*, i32** %7, align 8
  %91 = call i32* @parse_object(%struct.TYPE_10__* %88, i64 %89, i32* %90)
  store i32* %91, i32** %8, align 8
  br label %105

92:                                               ; preds = %24
  %93 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %94 = load i64, i64* %6, align 8
  %95 = load i32*, i32** %7, align 8
  %96 = call i32* @parse_array(%struct.TYPE_10__* %93, i64 %94, i32* %95)
  store i32* %96, i32** %8, align 8
  br label %105

97:                                               ; preds = %24
  %98 = load i32*, i32** %7, align 8
  %99 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %100 = call i32 @error_set(i32* %98, %struct.TYPE_10__* %99, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
  store i32* null, i32** %4, align 8
  br label %115

101:                                              ; preds = %24
  %102 = load i32*, i32** %7, align 8
  %103 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %104 = call i32 @error_set(i32* %102, %struct.TYPE_10__* %103, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0))
  store i32* null, i32** %4, align 8
  br label %115

105:                                              ; preds = %92, %87, %85, %83, %81, %75, %69, %68
  %106 = load i32*, i32** %8, align 8
  %107 = icmp ne i32* %106, null
  br i1 %107, label %109, label %108

108:                                              ; preds = %105
  store i32* null, i32** %4, align 8
  br label %115

109:                                              ; preds = %105
  %110 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %111 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = add nsw i64 %112, -1
  store i64 %113, i64* %111, align 8
  %114 = load i32*, i32** %8, align 8
  store i32* %114, i32** %4, align 8
  br label %115

115:                                              ; preds = %109, %108, %101, %97, %48, %20
  %116 = load i32*, i32** %4, align 8
  ret i32* %116
}

declare dso_local i32 @error_set(i32*, %struct.TYPE_10__*, i8*) #1

declare dso_local i32 @memchr(i8*, i8 signext, i64) #1

declare dso_local i32* @jsonp_stringn_nocheck_own(i8*, i64) #1

declare dso_local i32* @json_integer(i32) #1

declare dso_local i32* @json_real(i32) #1

declare dso_local i32* @json_true(...) #1

declare dso_local i32* @json_false(...) #1

declare dso_local i32* @json_null(...) #1

declare dso_local i32* @parse_object(%struct.TYPE_10__*, i64, i32*) #1

declare dso_local i32* @parse_array(%struct.TYPE_10__*, i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
