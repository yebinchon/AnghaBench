; ModuleID = '/home/carl/AnghaBench/obs-studio/deps/jansson/src/extr_load.c_parse_array.c'
source_filename = "/home/carl/AnghaBench/obs-studio/deps/jansson/src/extr_load.c_parse_array.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i8 }

@.str = private unnamed_addr constant [13 x i8] c"']' expected\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_6__*, i64, i32*)* @parse_array to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @parse_array(%struct.TYPE_6__* %0, i64 %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32* %2, i32** %7, align 8
  %10 = call i32* (...) @json_array()
  store i32* %10, i32** %8, align 8
  %11 = load i32*, i32** %8, align 8
  %12 = icmp ne i32* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %3
  store i32* null, i32** %4, align 8
  br label %78

14:                                               ; preds = %3
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %16 = load i32*, i32** %7, align 8
  %17 = call i32 @lex_scan(%struct.TYPE_6__* %15, i32* %16)
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = load i8, i8* %19, align 1
  %21 = sext i8 %20 to i32
  %22 = icmp eq i32 %21, 93
  br i1 %22, label %23, label %25

23:                                               ; preds = %14
  %24 = load i32*, i32** %8, align 8
  store i32* %24, i32** %4, align 8
  br label %78

25:                                               ; preds = %14
  br label %26

26:                                               ; preds = %59, %25
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  %29 = load i8, i8* %28, align 1
  %30 = icmp ne i8 %29, 0
  br i1 %30, label %31, label %63

31:                                               ; preds = %26
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %33 = load i64, i64* %6, align 8
  %34 = load i32*, i32** %7, align 8
  %35 = call i32* @parse_value(%struct.TYPE_6__* %32, i64 %33, i32* %34)
  store i32* %35, i32** %9, align 8
  %36 = load i32*, i32** %9, align 8
  %37 = icmp ne i32* %36, null
  br i1 %37, label %39, label %38

38:                                               ; preds = %31
  br label %75

39:                                               ; preds = %31
  %40 = load i32*, i32** %8, align 8
  %41 = load i32*, i32** %9, align 8
  %42 = call i64 @json_array_append(i32* %40, i32* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %39
  %45 = load i32*, i32** %9, align 8
  %46 = call i32 @json_decref(i32* %45)
  br label %75

47:                                               ; preds = %39
  %48 = load i32*, i32** %9, align 8
  %49 = call i32 @json_decref(i32* %48)
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %51 = load i32*, i32** %7, align 8
  %52 = call i32 @lex_scan(%struct.TYPE_6__* %50, i32* %51)
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 0
  %55 = load i8, i8* %54, align 1
  %56 = sext i8 %55 to i32
  %57 = icmp ne i32 %56, 44
  br i1 %57, label %58, label %59

58:                                               ; preds = %47
  br label %63

59:                                               ; preds = %47
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %61 = load i32*, i32** %7, align 8
  %62 = call i32 @lex_scan(%struct.TYPE_6__* %60, i32* %61)
  br label %26

63:                                               ; preds = %58, %26
  %64 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 0
  %66 = load i8, i8* %65, align 1
  %67 = sext i8 %66 to i32
  %68 = icmp ne i32 %67, 93
  br i1 %68, label %69, label %73

69:                                               ; preds = %63
  %70 = load i32*, i32** %7, align 8
  %71 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %72 = call i32 @error_set(i32* %70, %struct.TYPE_6__* %71, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  br label %75

73:                                               ; preds = %63
  %74 = load i32*, i32** %8, align 8
  store i32* %74, i32** %4, align 8
  br label %78

75:                                               ; preds = %69, %44, %38
  %76 = load i32*, i32** %8, align 8
  %77 = call i32 @json_decref(i32* %76)
  store i32* null, i32** %4, align 8
  br label %78

78:                                               ; preds = %75, %73, %23, %13
  %79 = load i32*, i32** %4, align 8
  ret i32* %79
}

declare dso_local i32* @json_array(...) #1

declare dso_local i32 @lex_scan(%struct.TYPE_6__*, i32*) #1

declare dso_local i32* @parse_value(%struct.TYPE_6__*, i64, i32*) #1

declare dso_local i64 @json_array_append(i32*, i32*) #1

declare dso_local i32 @json_decref(i32*) #1

declare dso_local i32 @error_set(i32*, %struct.TYPE_6__*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
