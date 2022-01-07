; ModuleID = '/home/carl/AnghaBench/poco/JSON/src/extr_pdjson.c_read_string.c'
source_filename = "/home/carl/AnghaBench/poco/JSON/src/extr_pdjson.c_read_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32 (%struct.TYPE_10__*)* }

@JSON_ERROR = common dso_local global i32 0, align 4
@EOF = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"unterminated string literal\00", align 1
@JSON_STRING = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [38 x i8] c"unescaped control character in string\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*)* @read_string to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_string(%struct.TYPE_9__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %3, align 8
  %5 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %6 = call i64 @init_string(%struct.TYPE_9__* %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %10

8:                                                ; preds = %1
  %9 = load i32, i32* @JSON_ERROR, align 4
  store i32 %9, i32* %2, align 4
  br label %78

10:                                               ; preds = %1
  br label %11

11:                                               ; preds = %10, %77
  %12 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %13, i32 0, i32 0
  %15 = load i32 (%struct.TYPE_10__*)*, i32 (%struct.TYPE_10__*)** %14, align 8
  %16 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 0
  %18 = call i32 %15(%struct.TYPE_10__* %17)
  store i32 %18, i32* %4, align 4
  %19 = load i32, i32* %4, align 4
  %20 = load i32, i32* @EOF, align 4
  %21 = icmp eq i32 %19, %20
  br i1 %21, label %22, label %26

22:                                               ; preds = %11
  %23 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %24 = call i32 @json_error(%struct.TYPE_9__* %23, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %25 = load i32, i32* @JSON_ERROR, align 4
  store i32 %25, i32* %2, align 4
  br label %78

26:                                               ; preds = %11
  %27 = load i32, i32* %4, align 4
  %28 = icmp eq i32 %27, 34
  br i1 %28, label %29, label %37

29:                                               ; preds = %26
  %30 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %31 = call i64 @pushchar(%struct.TYPE_9__* %30, i32 0)
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %29
  %34 = load i32, i32* @JSON_STRING, align 4
  store i32 %34, i32* %2, align 4
  br label %78

35:                                               ; preds = %29
  %36 = load i32, i32* @JSON_ERROR, align 4
  store i32 %36, i32* %2, align 4
  br label %78

37:                                               ; preds = %26
  %38 = load i32, i32* %4, align 4
  %39 = icmp eq i32 %38, 92
  br i1 %39, label %40, label %47

40:                                               ; preds = %37
  %41 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %42 = call i64 @read_escaped(%struct.TYPE_9__* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %40
  %45 = load i32, i32* @JSON_ERROR, align 4
  store i32 %45, i32* %2, align 4
  br label %78

46:                                               ; preds = %40
  br label %75

47:                                               ; preds = %37
  %48 = load i32, i32* %4, align 4
  %49 = icmp uge i32 %48, 128
  br i1 %49, label %50, label %58

50:                                               ; preds = %47
  %51 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %52 = load i32, i32* %4, align 4
  %53 = call i64 @read_utf8(%struct.TYPE_9__* %51, i32 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %50
  %56 = load i32, i32* @JSON_ERROR, align 4
  store i32 %56, i32* %2, align 4
  br label %78

57:                                               ; preds = %50
  br label %74

58:                                               ; preds = %47
  %59 = load i32, i32* %4, align 4
  %60 = call i64 @char_needs_escaping(i32 %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %66

62:                                               ; preds = %58
  %63 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %64 = call i32 @json_error(%struct.TYPE_9__* %63, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0))
  %65 = load i32, i32* @JSON_ERROR, align 4
  store i32 %65, i32* %2, align 4
  br label %78

66:                                               ; preds = %58
  %67 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %68 = load i32, i32* %4, align 4
  %69 = call i64 @pushchar(%struct.TYPE_9__* %67, i32 %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %66
  %72 = load i32, i32* @JSON_ERROR, align 4
  store i32 %72, i32* %2, align 4
  br label %78

73:                                               ; preds = %66
  br label %74

74:                                               ; preds = %73, %57
  br label %75

75:                                               ; preds = %74, %46
  br label %76

76:                                               ; preds = %75
  br label %77

77:                                               ; preds = %76
  br label %11

78:                                               ; preds = %71, %62, %55, %44, %35, %33, %22, %8
  %79 = load i32, i32* %2, align 4
  ret i32 %79
}

declare dso_local i64 @init_string(%struct.TYPE_9__*) #1

declare dso_local i32 @json_error(%struct.TYPE_9__*, i8*, i8*) #1

declare dso_local i64 @pushchar(%struct.TYPE_9__*, i32) #1

declare dso_local i64 @read_escaped(%struct.TYPE_9__*) #1

declare dso_local i64 @read_utf8(%struct.TYPE_9__*, i32) #1

declare dso_local i64 @char_needs_escaping(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
