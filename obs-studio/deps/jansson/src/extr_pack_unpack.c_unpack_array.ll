; ModuleID = '/home/carl/AnghaBench/obs-studio/deps/jansson/src/extr_pack_unpack.c_unpack_array.c'
source_filename = "/home/carl/AnghaBench/obs-studio/deps/jansson/src/extr_pack_unpack.c_unpack_array.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }

@.str = private unnamed_addr constant [13 x i8] c"<validation>\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"Expected array, got %s\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"<format>\00", align 1
@.str.3 = private unnamed_addr constant [34 x i8] c"Expected ']' after '%c', got '%c'\00", align 1
@.str.4 = private unnamed_addr constant [32 x i8] c"Unexpected end of format string\00", align 1
@unpack_value_starters = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [33 x i8] c"Unexpected format character '%c'\00", align 1
@.str.6 = private unnamed_addr constant [29 x i8] c"Array index %lu out of range\00", align 1
@JSON_STRICT = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [32 x i8] c"%li array item(s) left unpacked\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*, i32*, i32*)* @unpack_array to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @unpack_array(%struct.TYPE_7__* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store i64 0, i64* %8, align 8
  store i32 0, i32* %9, align 4
  %12 = load i32*, i32** %6, align 8
  %13 = icmp ne i32* %12, null
  br i1 %13, label %14, label %23

14:                                               ; preds = %3
  %15 = load i32*, i32** %6, align 8
  %16 = call i32 @json_is_array(i32* %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %23, label %18

18:                                               ; preds = %14
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %20 = load i32*, i32** %6, align 8
  %21 = call i64 @type_name(i32* %20)
  %22 = call i32 (%struct.TYPE_7__*, i8*, i8*, ...) @set_error(%struct.TYPE_7__* %19, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i64 %21)
  store i32 -1, i32* %4, align 4
  br label %134

23:                                               ; preds = %14, %3
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %25 = call i32 @next_token(%struct.TYPE_7__* %24)
  br label %26

26:                                               ; preds = %98, %57, %23
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %28 = call i64 @token(%struct.TYPE_7__* %27)
  %29 = icmp ne i64 %28, 93
  br i1 %29, label %30, label %103

30:                                               ; preds = %26
  %31 = load i32, i32* %9, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %42

33:                                               ; preds = %30
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %35 = load i32, i32* %9, align 4
  %36 = icmp eq i32 %35, 1
  %37 = zext i1 %36 to i64
  %38 = select i1 %36, i32 33, i32 42
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %40 = call i64 @token(%struct.TYPE_7__* %39)
  %41 = call i32 (%struct.TYPE_7__*, i8*, i8*, ...) @set_error(%struct.TYPE_7__* %34, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0), i32 %38, i64 %40)
  store i32 -1, i32* %4, align 4
  br label %134

42:                                               ; preds = %30
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %44 = call i64 @token(%struct.TYPE_7__* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %49, label %46

46:                                               ; preds = %42
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %48 = call i32 (%struct.TYPE_7__*, i8*, i8*, ...) @set_error(%struct.TYPE_7__* %47, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %134

49:                                               ; preds = %42
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %51 = call i64 @token(%struct.TYPE_7__* %50)
  %52 = icmp eq i64 %51, 33
  br i1 %52, label %57, label %53

53:                                               ; preds = %49
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %55 = call i64 @token(%struct.TYPE_7__* %54)
  %56 = icmp eq i64 %55, 42
  br i1 %56, label %57, label %65

57:                                               ; preds = %53, %49
  %58 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %59 = call i64 @token(%struct.TYPE_7__* %58)
  %60 = icmp eq i64 %59, 33
  %61 = zext i1 %60 to i64
  %62 = select i1 %60, i32 1, i32 -1
  store i32 %62, i32* %9, align 4
  %63 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %64 = call i32 @next_token(%struct.TYPE_7__* %63)
  br label %26

65:                                               ; preds = %53
  %66 = load i32, i32* @unpack_value_starters, align 4
  %67 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %68 = call i64 @token(%struct.TYPE_7__* %67)
  %69 = call i32 @strchr(i32 %66, i64 %68)
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %76, label %71

71:                                               ; preds = %65
  %72 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %73 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %74 = call i64 @token(%struct.TYPE_7__* %73)
  %75 = call i32 (%struct.TYPE_7__*, i8*, i8*, ...) @set_error(%struct.TYPE_7__* %72, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.5, i64 0, i64 0), i64 %74)
  store i32 -1, i32* %4, align 4
  br label %134

76:                                               ; preds = %65
  %77 = load i32*, i32** %6, align 8
  %78 = icmp ne i32* %77, null
  br i1 %78, label %80, label %79

79:                                               ; preds = %76
  store i32* null, i32** %10, align 8
  br label %91

80:                                               ; preds = %76
  %81 = load i32*, i32** %6, align 8
  %82 = load i64, i64* %8, align 8
  %83 = call i32* @json_array_get(i32* %81, i64 %82)
  store i32* %83, i32** %10, align 8
  %84 = load i32*, i32** %10, align 8
  %85 = icmp ne i32* %84, null
  br i1 %85, label %90, label %86

86:                                               ; preds = %80
  %87 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %88 = load i64, i64* %8, align 8
  %89 = call i32 (%struct.TYPE_7__*, i8*, i8*, ...) @set_error(%struct.TYPE_7__* %87, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.6, i64 0, i64 0), i64 %88)
  store i32 -1, i32* %4, align 4
  br label %134

90:                                               ; preds = %80
  br label %91

91:                                               ; preds = %90, %79
  %92 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %93 = load i32*, i32** %10, align 8
  %94 = load i32*, i32** %7, align 8
  %95 = call i64 @unpack(%struct.TYPE_7__* %92, i32* %93, i32* %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %98

97:                                               ; preds = %91
  store i32 -1, i32* %4, align 4
  br label %134

98:                                               ; preds = %91
  %99 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %100 = call i32 @next_token(%struct.TYPE_7__* %99)
  %101 = load i64, i64* %8, align 8
  %102 = add i64 %101, 1
  store i64 %102, i64* %8, align 8
  br label %26

103:                                              ; preds = %26
  %104 = load i32, i32* %9, align 4
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %106, label %114

106:                                              ; preds = %103
  %107 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %108 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = load i32, i32* @JSON_STRICT, align 4
  %111 = and i32 %109, %110
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %114

113:                                              ; preds = %106
  store i32 1, i32* %9, align 4
  br label %114

114:                                              ; preds = %113, %106, %103
  %115 = load i32*, i32** %6, align 8
  %116 = icmp ne i32* %115, null
  br i1 %116, label %117, label %133

117:                                              ; preds = %114
  %118 = load i32, i32* %9, align 4
  %119 = icmp eq i32 %118, 1
  br i1 %119, label %120, label %133

120:                                              ; preds = %117
  %121 = load i64, i64* %8, align 8
  %122 = load i32*, i32** %6, align 8
  %123 = call i64 @json_array_size(i32* %122)
  %124 = icmp ne i64 %121, %123
  br i1 %124, label %125, label %133

125:                                              ; preds = %120
  %126 = load i32*, i32** %6, align 8
  %127 = call i64 @json_array_size(i32* %126)
  %128 = load i64, i64* %8, align 8
  %129 = sub nsw i64 %127, %128
  store i64 %129, i64* %11, align 8
  %130 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %131 = load i64, i64* %11, align 8
  %132 = call i32 (%struct.TYPE_7__*, i8*, i8*, ...) @set_error(%struct.TYPE_7__* %130, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7, i64 0, i64 0), i64 %131)
  store i32 -1, i32* %4, align 4
  br label %134

133:                                              ; preds = %120, %117, %114
  store i32 0, i32* %4, align 4
  br label %134

134:                                              ; preds = %133, %125, %97, %86, %71, %46, %33, %18
  %135 = load i32, i32* %4, align 4
  ret i32 %135
}

declare dso_local i32 @json_is_array(i32*) #1

declare dso_local i32 @set_error(%struct.TYPE_7__*, i8*, i8*, ...) #1

declare dso_local i64 @type_name(i32*) #1

declare dso_local i32 @next_token(%struct.TYPE_7__*) #1

declare dso_local i64 @token(%struct.TYPE_7__*) #1

declare dso_local i32 @strchr(i32, i64) #1

declare dso_local i32* @json_array_get(i32*, i64) #1

declare dso_local i64 @unpack(%struct.TYPE_7__*, i32*, i32*) #1

declare dso_local i64 @json_array_size(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
