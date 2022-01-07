; ModuleID = '/home/carl/AnghaBench/poco/JSON/src/extr_pdjson.c_read_unicode.c'
source_filename = "/home/carl/AnghaBench/poco/JSON/src/extr_pdjson.c_read_unicode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 (%struct.TYPE_9__*)* }

@EOF = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"unterminated string literal in unicode\00", align 1
@.str.2 = private unnamed_addr constant [60 x i8] c"invalid continuation for surrogate pair: '%c', expected '\\'\00", align 1
@.str.3 = private unnamed_addr constant [60 x i8] c"invalid continuation for surrogate pair: '%c', expected 'u'\00", align 1
@.str.4 = private unnamed_addr constant [69 x i8] c"invalid surrogate pair continuation \\u%04lx out of range (dc00-dfff)\00", align 1
@.str.5 = private unnamed_addr constant [27 x i8] c"dangling surrogate \\u%04lx\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*)* @read_unicode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_unicode(%struct.TYPE_8__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %3, align 8
  %8 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %9 = call i64 @read_unicode_cp(%struct.TYPE_8__* %8)
  store i64 %9, i64* %4, align 8
  %10 = icmp eq i64 %9, -1
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %101

12:                                               ; preds = %1
  %13 = load i64, i64* %4, align 8
  %14 = icmp sge i64 %13, 55296
  br i1 %14, label %15, label %86

15:                                               ; preds = %12
  %16 = load i64, i64* %4, align 8
  %17 = icmp sle i64 %16, 56319
  br i1 %17, label %18, label %86

18:                                               ; preds = %15
  %19 = load i64, i64* %4, align 8
  store i64 %19, i64* %5, align 8
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %21, i32 0, i32 0
  %23 = load i32 (%struct.TYPE_9__*)*, i32 (%struct.TYPE_9__*)** %22, align 8
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 0
  %26 = call i32 %23(%struct.TYPE_9__* %25)
  store i32 %26, i32* %7, align 4
  %27 = load i32, i32* %7, align 4
  %28 = load i32, i32* @EOF, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %30, label %33

30:                                               ; preds = %18
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %32 = call i32 (%struct.TYPE_8__*, i8*, ...) @json_error(%struct.TYPE_8__* %31, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %101

33:                                               ; preds = %18
  %34 = load i32, i32* %7, align 4
  %35 = icmp ne i32 %34, 92
  br i1 %35, label %36, label %40

36:                                               ; preds = %33
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %38 = load i32, i32* %7, align 4
  %39 = call i32 (%struct.TYPE_8__*, i8*, ...) @json_error(%struct.TYPE_8__* %37, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.2, i64 0, i64 0), i32 %38)
  store i32 -1, i32* %2, align 4
  br label %101

40:                                               ; preds = %33
  br label %41

41:                                               ; preds = %40
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %43, i32 0, i32 0
  %45 = load i32 (%struct.TYPE_9__*)*, i32 (%struct.TYPE_9__*)** %44, align 8
  %46 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 0
  %48 = call i32 %45(%struct.TYPE_9__* %47)
  store i32 %48, i32* %7, align 4
  %49 = load i32, i32* %7, align 4
  %50 = load i32, i32* @EOF, align 4
  %51 = icmp eq i32 %49, %50
  br i1 %51, label %52, label %55

52:                                               ; preds = %41
  %53 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %54 = call i32 (%struct.TYPE_8__*, i8*, ...) @json_error(%struct.TYPE_8__* %53, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %101

55:                                               ; preds = %41
  %56 = load i32, i32* %7, align 4
  %57 = icmp ne i32 %56, 117
  br i1 %57, label %58, label %62

58:                                               ; preds = %55
  %59 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %60 = load i32, i32* %7, align 4
  %61 = call i32 (%struct.TYPE_8__*, i8*, ...) @json_error(%struct.TYPE_8__* %59, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.3, i64 0, i64 0), i32 %60)
  store i32 -1, i32* %2, align 4
  br label %101

62:                                               ; preds = %55
  br label %63

63:                                               ; preds = %62
  %64 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %65 = call i64 @read_unicode_cp(%struct.TYPE_8__* %64)
  store i64 %65, i64* %6, align 8
  %66 = icmp eq i64 %65, -1
  br i1 %66, label %67, label %68

67:                                               ; preds = %63
  store i32 -1, i32* %2, align 4
  br label %101

68:                                               ; preds = %63
  %69 = load i64, i64* %6, align 8
  %70 = icmp slt i64 %69, 56320
  br i1 %70, label %74, label %71

71:                                               ; preds = %68
  %72 = load i64, i64* %6, align 8
  %73 = icmp sgt i64 %72, 57343
  br i1 %73, label %74, label %78

74:                                               ; preds = %71, %68
  %75 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %76 = load i64, i64* %6, align 8
  %77 = call i32 (%struct.TYPE_8__*, i8*, ...) @json_error(%struct.TYPE_8__* %75, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.4, i64 0, i64 0), i64 %76)
  store i32 -1, i32* %2, align 4
  br label %101

78:                                               ; preds = %71
  %79 = load i64, i64* %5, align 8
  %80 = sub nsw i64 %79, 55296
  %81 = mul nsw i64 %80, 1024
  %82 = load i64, i64* %6, align 8
  %83 = sub nsw i64 %82, 56320
  %84 = add nsw i64 %83, 65536
  %85 = add nsw i64 %81, %84
  store i64 %85, i64* %4, align 8
  br label %97

86:                                               ; preds = %15, %12
  %87 = load i64, i64* %4, align 8
  %88 = icmp sge i64 %87, 56320
  br i1 %88, label %89, label %96

89:                                               ; preds = %86
  %90 = load i64, i64* %4, align 8
  %91 = icmp sle i64 %90, 57343
  br i1 %91, label %92, label %96

92:                                               ; preds = %89
  %93 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %94 = load i64, i64* %4, align 8
  %95 = call i32 (%struct.TYPE_8__*, i8*, ...) @json_error(%struct.TYPE_8__* %93, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0), i64 %94)
  store i32 -1, i32* %2, align 4
  br label %101

96:                                               ; preds = %89, %86
  br label %97

97:                                               ; preds = %96, %78
  %98 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %99 = load i64, i64* %4, align 8
  %100 = call i32 @encode_utf8(%struct.TYPE_8__* %98, i64 %99)
  store i32 %100, i32* %2, align 4
  br label %101

101:                                              ; preds = %97, %92, %74, %67, %58, %52, %36, %30, %11
  %102 = load i32, i32* %2, align 4
  ret i32 %102
}

declare dso_local i64 @read_unicode_cp(%struct.TYPE_8__*) #1

declare dso_local i32 @json_error(%struct.TYPE_8__*, i8*, ...) #1

declare dso_local i32 @encode_utf8(%struct.TYPE_8__*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
