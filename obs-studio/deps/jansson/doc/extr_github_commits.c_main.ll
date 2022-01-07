; ModuleID = '/home/carl/AnghaBench/obs-studio/deps/jansson/doc/extr_github_commits.c_main.c'
source_filename = "/home/carl/AnghaBench/obs-studio/deps/jansson/doc/extr_github_commits.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i8* }

@URL_SIZE = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"usage: %s USER REPOSITORY\0A\0A\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"List commits at USER's REPOSITORY.\0A\0A\00", align 1
@URL_FORMAT = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [23 x i8] c"error: on line %d: %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"error: root is not an array\0A\00", align 1
@.str.4 = private unnamed_addr constant [40 x i8] c"error: commit data %d is not an object\0A\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"sha\00", align 1
@.str.6 = private unnamed_addr constant [39 x i8] c"error: commit %d: sha is not a string\0A\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"commit\00", align 1
@.str.8 = private unnamed_addr constant [43 x i8] c"error: commit %d: commit is not an object\0A\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"message\00", align 1
@.str.10 = private unnamed_addr constant [43 x i8] c"error: commit %d: message is not a string\0A\00", align 1
@.str.11 = private unnamed_addr constant [11 x i8] c"%.8s %.*s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_3__, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i8*, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %18 = load i32, i32* @URL_SIZE, align 4
  %19 = zext i32 %18 to i64
  %20 = call i8* @llvm.stacksave()
  store i8* %20, i8** %8, align 8
  %21 = alloca i8, i64 %19, align 16
  store i64 %19, i64* %9, align 8
  %22 = load i32, i32* %4, align 4
  %23 = icmp ne i32 %22, 3
  br i1 %23, label %24, label %32

24:                                               ; preds = %2
  %25 = load i32, i32* @stderr, align 4
  %26 = load i8**, i8*** %5, align 8
  %27 = getelementptr inbounds i8*, i8** %26, i64 0
  %28 = load i8*, i8** %27, align 8
  %29 = call i32 (i32, i8*, ...) @fprintf(i32 %25, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i8* %28)
  %30 = load i32, i32* @stderr, align 4
  %31 = call i32 (i32, i8*, ...) @fprintf(i32 %30, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  store i32 2, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %145

32:                                               ; preds = %2
  %33 = load i32, i32* @URL_SIZE, align 4
  %34 = load i8*, i8** @URL_FORMAT, align 8
  %35 = load i8**, i8*** %5, align 8
  %36 = getelementptr inbounds i8*, i8** %35, i64 1
  %37 = load i8*, i8** %36, align 8
  %38 = load i8**, i8*** %5, align 8
  %39 = getelementptr inbounds i8*, i8** %38, i64 2
  %40 = load i8*, i8** %39, align 8
  %41 = call i32 @snprintf(i8* %21, i32 %33, i8* %34, i8* %37, i8* %40)
  %42 = call i8* @request(i8* %21)
  store i8* %42, i8** %7, align 8
  %43 = load i8*, i8** %7, align 8
  %44 = icmp ne i8* %43, null
  br i1 %44, label %46, label %45

45:                                               ; preds = %32
  store i32 1, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %145

46:                                               ; preds = %32
  %47 = load i8*, i8** %7, align 8
  %48 = call i32* @json_loads(i8* %47, i32 0, %struct.TYPE_3__* %11)
  store i32* %48, i32** %10, align 8
  %49 = load i8*, i8** %7, align 8
  %50 = call i32 @free(i8* %49)
  %51 = load i32*, i32** %10, align 8
  %52 = icmp ne i32* %51, null
  br i1 %52, label %60, label %53

53:                                               ; preds = %46
  %54 = load i32, i32* @stderr, align 4
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 1
  %58 = load i8*, i8** %57, align 8
  %59 = call i32 (i32, i8*, ...) @fprintf(i32 %54, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i32 %56, i8* %58)
  store i32 1, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %145

60:                                               ; preds = %46
  %61 = load i32*, i32** %10, align 8
  %62 = call i32 @json_is_array(i32* %61)
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %69, label %64

64:                                               ; preds = %60
  %65 = load i32, i32* @stderr, align 4
  %66 = call i32 (i32, i8*, ...) @fprintf(i32 %65, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0))
  %67 = load i32*, i32** %10, align 8
  %68 = call i32 @json_decref(i32* %67)
  store i32 1, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %145

69:                                               ; preds = %60
  store i64 0, i64* %6, align 8
  br label %70

70:                                               ; preds = %139, %69
  %71 = load i64, i64* %6, align 8
  %72 = load i32*, i32** %10, align 8
  %73 = call i64 @json_array_size(i32* %72)
  %74 = icmp ult i64 %71, %73
  br i1 %74, label %75, label %142

75:                                               ; preds = %70
  %76 = load i32*, i32** %10, align 8
  %77 = load i64, i64* %6, align 8
  %78 = call i32* @json_array_get(i32* %76, i64 %77)
  store i32* %78, i32** %13, align 8
  %79 = load i32*, i32** %13, align 8
  %80 = call i32 @json_is_object(i32* %79)
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %90, label %82

82:                                               ; preds = %75
  %83 = load i32, i32* @stderr, align 4
  %84 = load i64, i64* %6, align 8
  %85 = add i64 %84, 1
  %86 = trunc i64 %85 to i32
  %87 = call i32 (i32, i8*, ...) @fprintf(i32 %83, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.4, i64 0, i64 0), i32 %86)
  %88 = load i32*, i32** %10, align 8
  %89 = call i32 @json_decref(i32* %88)
  store i32 1, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %145

90:                                               ; preds = %75
  %91 = load i32*, i32** %13, align 8
  %92 = call i32* @json_object_get(i32* %91, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  store i32* %92, i32** %14, align 8
  %93 = load i32*, i32** %14, align 8
  %94 = call i32 @json_is_string(i32* %93)
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %102, label %96

96:                                               ; preds = %90
  %97 = load i32, i32* @stderr, align 4
  %98 = load i64, i64* %6, align 8
  %99 = add i64 %98, 1
  %100 = trunc i64 %99 to i32
  %101 = call i32 (i32, i8*, ...) @fprintf(i32 %97, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.6, i64 0, i64 0), i32 %100)
  store i32 1, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %145

102:                                              ; preds = %90
  %103 = load i32*, i32** %13, align 8
  %104 = call i32* @json_object_get(i32* %103, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0))
  store i32* %104, i32** %15, align 8
  %105 = load i32*, i32** %15, align 8
  %106 = call i32 @json_is_object(i32* %105)
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %116, label %108

108:                                              ; preds = %102
  %109 = load i32, i32* @stderr, align 4
  %110 = load i64, i64* %6, align 8
  %111 = add i64 %110, 1
  %112 = trunc i64 %111 to i32
  %113 = call i32 (i32, i8*, ...) @fprintf(i32 %109, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.8, i64 0, i64 0), i32 %112)
  %114 = load i32*, i32** %10, align 8
  %115 = call i32 @json_decref(i32* %114)
  store i32 1, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %145

116:                                              ; preds = %102
  %117 = load i32*, i32** %15, align 8
  %118 = call i32* @json_object_get(i32* %117, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0))
  store i32* %118, i32** %16, align 8
  %119 = load i32*, i32** %16, align 8
  %120 = call i32 @json_is_string(i32* %119)
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %130, label %122

122:                                              ; preds = %116
  %123 = load i32, i32* @stderr, align 4
  %124 = load i64, i64* %6, align 8
  %125 = add i64 %124, 1
  %126 = trunc i64 %125 to i32
  %127 = call i32 (i32, i8*, ...) @fprintf(i32 %123, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.10, i64 0, i64 0), i32 %126)
  %128 = load i32*, i32** %10, align 8
  %129 = call i32 @json_decref(i32* %128)
  store i32 1, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %145

130:                                              ; preds = %116
  %131 = load i32*, i32** %16, align 8
  %132 = call i8* @json_string_value(i32* %131)
  store i8* %132, i8** %17, align 8
  %133 = load i32*, i32** %14, align 8
  %134 = call i8* @json_string_value(i32* %133)
  %135 = load i8*, i8** %17, align 8
  %136 = call i8* @newline_offset(i8* %135)
  %137 = load i8*, i8** %17, align 8
  %138 = call i32 @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.11, i64 0, i64 0), i8* %134, i8* %136, i8* %137)
  br label %139

139:                                              ; preds = %130
  %140 = load i64, i64* %6, align 8
  %141 = add i64 %140, 1
  store i64 %141, i64* %6, align 8
  br label %70

142:                                              ; preds = %70
  %143 = load i32*, i32** %10, align 8
  %144 = call i32 @json_decref(i32* %143)
  store i32 0, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %145

145:                                              ; preds = %142, %122, %108, %96, %82, %64, %53, %45, %24
  %146 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %146)
  %147 = load i32, i32* %3, align 4
  ret i32 %147
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @fprintf(i32, i8*, ...) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i8*) #2

declare dso_local i8* @request(i8*) #2

declare dso_local i32* @json_loads(i8*, i32, %struct.TYPE_3__*) #2

declare dso_local i32 @free(i8*) #2

declare dso_local i32 @json_is_array(i32*) #2

declare dso_local i32 @json_decref(i32*) #2

declare dso_local i64 @json_array_size(i32*) #2

declare dso_local i32* @json_array_get(i32*, i64) #2

declare dso_local i32 @json_is_object(i32*) #2

declare dso_local i32* @json_object_get(i32*, i8*) #2

declare dso_local i32 @json_is_string(i32*) #2

declare dso_local i8* @json_string_value(i32*) #2

declare dso_local i32 @printf(i8*, i8*, i8*, i8*) #2

declare dso_local i8* @newline_offset(i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
