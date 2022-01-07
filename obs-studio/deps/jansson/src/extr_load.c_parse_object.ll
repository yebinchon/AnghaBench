; ModuleID = '/home/carl/AnghaBench/obs-studio/deps/jansson/src/extr_load.c_parse_object.c'
source_filename = "/home/carl/AnghaBench/obs-studio/deps/jansson/src/extr_load.c_parse_object.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i8 }

@TOKEN_STRING = common dso_local global i8 0, align 1
@.str = private unnamed_addr constant [23 x i8] c"string or '}' expected\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"NUL byte in object key not supported\00", align 1
@JSON_REJECT_DUPLICATES = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [21 x i8] c"duplicate object key\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"':' expected\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"'}' expected\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_7__*, i64, i32*)* @parse_object to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @parse_object(%struct.TYPE_7__* %0, i64 %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32* %2, i32** %7, align 8
  %12 = call i32* (...) @json_object()
  store i32* %12, i32** %8, align 8
  %13 = load i32*, i32** %8, align 8
  %14 = icmp ne i32* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %3
  store i32* null, i32** %4, align 8
  br label %146

16:                                               ; preds = %3
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %18 = load i32*, i32** %7, align 8
  %19 = call i32 @lex_scan(%struct.TYPE_7__* %17, i32* %18)
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 0
  %22 = load i8, i8* %21, align 1
  %23 = sext i8 %22 to i32
  %24 = icmp eq i32 %23, 125
  br i1 %24, label %25, label %27

25:                                               ; preds = %16
  %26 = load i32*, i32** %8, align 8
  store i32* %26, i32** %4, align 8
  br label %146

27:                                               ; preds = %16
  br label %28

28:                                               ; preds = %27, %127
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 0
  %31 = load i8, i8* %30, align 1
  %32 = sext i8 %31 to i32
  %33 = load i8, i8* @TOKEN_STRING, align 1
  %34 = sext i8 %33 to i32
  %35 = icmp ne i32 %32, %34
  br i1 %35, label %36, label %40

36:                                               ; preds = %28
  %37 = load i32*, i32** %7, align 8
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %39 = call i32 @error_set(i32* %37, %struct.TYPE_7__* %38, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  br label %143

40:                                               ; preds = %28
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %42 = call i8* @lex_steal_string(%struct.TYPE_7__* %41, i64* %10)
  store i8* %42, i8** %9, align 8
  %43 = load i8*, i8** %9, align 8
  %44 = icmp ne i8* %43, null
  br i1 %44, label %46, label %45

45:                                               ; preds = %40
  store i32* null, i32** %4, align 8
  br label %146

46:                                               ; preds = %40
  %47 = load i8*, i8** %9, align 8
  %48 = load i64, i64* %10, align 8
  %49 = call i64 @memchr(i8* %47, i8 signext 0, i64 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %57

51:                                               ; preds = %46
  %52 = load i8*, i8** %9, align 8
  %53 = call i32 @jsonp_free(i8* %52)
  %54 = load i32*, i32** %7, align 8
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %56 = call i32 @error_set(i32* %54, %struct.TYPE_7__* %55, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  br label %143

57:                                               ; preds = %46
  %58 = load i64, i64* %6, align 8
  %59 = load i64, i64* @JSON_REJECT_DUPLICATES, align 8
  %60 = and i64 %58, %59
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %74

62:                                               ; preds = %57
  %63 = load i32*, i32** %8, align 8
  %64 = load i8*, i8** %9, align 8
  %65 = call i64 @json_object_get(i32* %63, i8* %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %73

67:                                               ; preds = %62
  %68 = load i8*, i8** %9, align 8
  %69 = call i32 @jsonp_free(i8* %68)
  %70 = load i32*, i32** %7, align 8
  %71 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %72 = call i32 @error_set(i32* %70, %struct.TYPE_7__* %71, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  br label %143

73:                                               ; preds = %62
  br label %74

74:                                               ; preds = %73, %57
  %75 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %76 = load i32*, i32** %7, align 8
  %77 = call i32 @lex_scan(%struct.TYPE_7__* %75, i32* %76)
  %78 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %79 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %78, i32 0, i32 0
  %80 = load i8, i8* %79, align 1
  %81 = sext i8 %80 to i32
  %82 = icmp ne i32 %81, 58
  br i1 %82, label %83, label %89

83:                                               ; preds = %74
  %84 = load i8*, i8** %9, align 8
  %85 = call i32 @jsonp_free(i8* %84)
  %86 = load i32*, i32** %7, align 8
  %87 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %88 = call i32 @error_set(i32* %86, %struct.TYPE_7__* %87, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0))
  br label %143

89:                                               ; preds = %74
  %90 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %91 = load i32*, i32** %7, align 8
  %92 = call i32 @lex_scan(%struct.TYPE_7__* %90, i32* %91)
  %93 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %94 = load i64, i64* %6, align 8
  %95 = load i32*, i32** %7, align 8
  %96 = call i32* @parse_value(%struct.TYPE_7__* %93, i64 %94, i32* %95)
  store i32* %96, i32** %11, align 8
  %97 = load i32*, i32** %11, align 8
  %98 = icmp ne i32* %97, null
  br i1 %98, label %102, label %99

99:                                               ; preds = %89
  %100 = load i8*, i8** %9, align 8
  %101 = call i32 @jsonp_free(i8* %100)
  br label %143

102:                                              ; preds = %89
  %103 = load i32*, i32** %8, align 8
  %104 = load i8*, i8** %9, align 8
  %105 = load i32*, i32** %11, align 8
  %106 = call i64 @json_object_set_nocheck(i32* %103, i8* %104, i32* %105)
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %113

108:                                              ; preds = %102
  %109 = load i8*, i8** %9, align 8
  %110 = call i32 @jsonp_free(i8* %109)
  %111 = load i32*, i32** %11, align 8
  %112 = call i32 @json_decref(i32* %111)
  br label %143

113:                                              ; preds = %102
  %114 = load i32*, i32** %11, align 8
  %115 = call i32 @json_decref(i32* %114)
  %116 = load i8*, i8** %9, align 8
  %117 = call i32 @jsonp_free(i8* %116)
  %118 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %119 = load i32*, i32** %7, align 8
  %120 = call i32 @lex_scan(%struct.TYPE_7__* %118, i32* %119)
  %121 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %122 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %121, i32 0, i32 0
  %123 = load i8, i8* %122, align 1
  %124 = sext i8 %123 to i32
  %125 = icmp ne i32 %124, 44
  br i1 %125, label %126, label %127

126:                                              ; preds = %113
  br label %131

127:                                              ; preds = %113
  %128 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %129 = load i32*, i32** %7, align 8
  %130 = call i32 @lex_scan(%struct.TYPE_7__* %128, i32* %129)
  br label %28

131:                                              ; preds = %126
  %132 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %133 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %132, i32 0, i32 0
  %134 = load i8, i8* %133, align 1
  %135 = sext i8 %134 to i32
  %136 = icmp ne i32 %135, 125
  br i1 %136, label %137, label %141

137:                                              ; preds = %131
  %138 = load i32*, i32** %7, align 8
  %139 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %140 = call i32 @error_set(i32* %138, %struct.TYPE_7__* %139, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0))
  br label %143

141:                                              ; preds = %131
  %142 = load i32*, i32** %8, align 8
  store i32* %142, i32** %4, align 8
  br label %146

143:                                              ; preds = %137, %108, %99, %83, %67, %51, %36
  %144 = load i32*, i32** %8, align 8
  %145 = call i32 @json_decref(i32* %144)
  store i32* null, i32** %4, align 8
  br label %146

146:                                              ; preds = %143, %141, %45, %25, %15
  %147 = load i32*, i32** %4, align 8
  ret i32* %147
}

declare dso_local i32* @json_object(...) #1

declare dso_local i32 @lex_scan(%struct.TYPE_7__*, i32*) #1

declare dso_local i32 @error_set(i32*, %struct.TYPE_7__*, i8*) #1

declare dso_local i8* @lex_steal_string(%struct.TYPE_7__*, i64*) #1

declare dso_local i64 @memchr(i8*, i8 signext, i64) #1

declare dso_local i32 @jsonp_free(i8*) #1

declare dso_local i64 @json_object_get(i32*, i8*) #1

declare dso_local i32* @parse_value(%struct.TYPE_7__*, i64, i32*) #1

declare dso_local i64 @json_object_set_nocheck(i32*, i8*, i32*) #1

declare dso_local i32 @json_decref(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
