; ModuleID = '/home/carl/AnghaBench/php-src/ext/fileinfo/libmagic/extr_is_json.c_json_parse_object.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/fileinfo/libmagic/extr_is_json.c_json_parse_object.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [15 x i8] c"Parse object: \00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"not string\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"next field\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"not colon\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"not json\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"Good object: \00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"not more\00", align 1
@.str.7 = private unnamed_addr constant [13 x i8] c"Bad object: \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8**, i8*, i64*, i64)* @json_parse_object to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @json_parse_object(i8** %0, i8* %1, i64* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8**, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  store i8** %0, i8*** %6, align 8
  store i8* %1, i8** %7, align 8
  store i64* %2, i64** %8, align 8
  store i64 %3, i64* %9, align 8
  %11 = load i8**, i8*** %6, align 8
  %12 = load i8*, i8** %11, align 8
  store i8* %12, i8** %10, align 8
  %13 = load i8*, i8** %10, align 8
  %14 = load i8**, i8*** %6, align 8
  %15 = load i8*, i8** %14, align 8
  %16 = call i32 @DPRINTF(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i8* %13, i8* %15)
  br label %17

17:                                               ; preds = %94, %4
  %18 = load i8*, i8** %10, align 8
  %19 = load i8*, i8** %7, align 8
  %20 = icmp ult i8* %18, %19
  br i1 %20, label %21, label %110

21:                                               ; preds = %17
  %22 = load i8*, i8** %10, align 8
  %23 = load i8*, i8** %7, align 8
  %24 = call i8* @json_skip_space(i8* %22, i8* %23)
  store i8* %24, i8** %10, align 8
  %25 = load i8*, i8** %10, align 8
  %26 = load i8*, i8** %7, align 8
  %27 = icmp eq i8* %25, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %21
  br label %111

29:                                               ; preds = %21
  %30 = load i8*, i8** %10, align 8
  %31 = getelementptr inbounds i8, i8* %30, i32 1
  store i8* %31, i8** %10, align 8
  %32 = load i8, i8* %30, align 1
  %33 = zext i8 %32 to i32
  %34 = icmp ne i32 %33, 34
  br i1 %34, label %35, label %40

35:                                               ; preds = %29
  %36 = load i8*, i8** %10, align 8
  %37 = load i8**, i8*** %6, align 8
  %38 = load i8*, i8** %37, align 8
  %39 = call i32 @DPRINTF(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i8* %36, i8* %38)
  br label %111

40:                                               ; preds = %29
  %41 = load i8*, i8** %10, align 8
  %42 = load i8**, i8*** %6, align 8
  %43 = load i8*, i8** %42, align 8
  %44 = call i32 @DPRINTF(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i8* %41, i8* %43)
  %45 = load i8*, i8** %7, align 8
  %46 = call i32 @json_parse_string(i8** %10, i8* %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %53, label %48

48:                                               ; preds = %40
  %49 = load i8*, i8** %10, align 8
  %50 = load i8**, i8*** %6, align 8
  %51 = load i8*, i8** %50, align 8
  %52 = call i32 @DPRINTF(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i8* %49, i8* %51)
  br label %111

53:                                               ; preds = %40
  %54 = load i8*, i8** %10, align 8
  %55 = load i8*, i8** %7, align 8
  %56 = call i8* @json_skip_space(i8* %54, i8* %55)
  store i8* %56, i8** %10, align 8
  %57 = load i8*, i8** %10, align 8
  %58 = load i8*, i8** %7, align 8
  %59 = icmp eq i8* %57, %58
  br i1 %59, label %60, label %61

60:                                               ; preds = %53
  br label %111

61:                                               ; preds = %53
  %62 = load i8*, i8** %10, align 8
  %63 = getelementptr inbounds i8, i8* %62, i32 1
  store i8* %63, i8** %10, align 8
  %64 = load i8, i8* %62, align 1
  %65 = zext i8 %64 to i32
  %66 = icmp ne i32 %65, 58
  br i1 %66, label %67, label %72

67:                                               ; preds = %61
  %68 = load i8*, i8** %10, align 8
  %69 = load i8**, i8*** %6, align 8
  %70 = load i8*, i8** %69, align 8
  %71 = call i32 @DPRINTF(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i8* %68, i8* %70)
  br label %111

72:                                               ; preds = %61
  %73 = load i8*, i8** %7, align 8
  %74 = load i64*, i64** %8, align 8
  %75 = load i64, i64* %9, align 8
  %76 = add i64 %75, 1
  %77 = call i32 @json_parse(i8** %10, i8* %73, i64* %74, i64 %76)
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %84, label %79

79:                                               ; preds = %72
  %80 = load i8*, i8** %10, align 8
  %81 = load i8**, i8*** %6, align 8
  %82 = load i8*, i8** %81, align 8
  %83 = call i32 @DPRINTF(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i8* %80, i8* %82)
  br label %111

84:                                               ; preds = %72
  %85 = load i8*, i8** %10, align 8
  %86 = load i8*, i8** %7, align 8
  %87 = icmp eq i8* %85, %86
  br i1 %87, label %88, label %89

88:                                               ; preds = %84
  br label %111

89:                                               ; preds = %84
  %90 = load i8*, i8** %10, align 8
  %91 = getelementptr inbounds i8, i8* %90, i32 1
  store i8* %91, i8** %10, align 8
  %92 = load i8, i8* %90, align 1
  %93 = zext i8 %92 to i32
  switch i32 %93, label %102 [
    i32 44, label %94
    i32 125, label %95
  ]

94:                                               ; preds = %89
  br label %17

95:                                               ; preds = %89
  %96 = load i8*, i8** %10, align 8
  %97 = load i8**, i8*** %6, align 8
  store i8* %96, i8** %97, align 8
  %98 = load i8*, i8** %10, align 8
  %99 = load i8**, i8*** %6, align 8
  %100 = load i8*, i8** %99, align 8
  %101 = call i32 @DPRINTF(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0), i8* %98, i8* %100)
  store i32 1, i32* %5, align 4
  br label %118

102:                                              ; preds = %89
  %103 = load i8*, i8** %10, align 8
  %104 = getelementptr inbounds i8, i8* %103, i64 -1
  %105 = load i8**, i8*** %6, align 8
  store i8* %104, i8** %105, align 8
  %106 = load i8*, i8** %10, align 8
  %107 = load i8**, i8*** %6, align 8
  %108 = load i8*, i8** %107, align 8
  %109 = call i32 @DPRINTF(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0), i8* %106, i8* %108)
  br label %111

110:                                              ; preds = %17
  br label %111

111:                                              ; preds = %110, %102, %88, %79, %67, %60, %48, %35, %28
  %112 = load i8*, i8** %10, align 8
  %113 = load i8**, i8*** %6, align 8
  %114 = load i8*, i8** %113, align 8
  %115 = call i32 @DPRINTF(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i64 0, i64 0), i8* %112, i8* %114)
  %116 = load i8*, i8** %10, align 8
  %117 = load i8**, i8*** %6, align 8
  store i8* %116, i8** %117, align 8
  store i32 0, i32* %5, align 4
  br label %118

118:                                              ; preds = %111, %95
  %119 = load i32, i32* %5, align 4
  ret i32 %119
}

declare dso_local i32 @DPRINTF(i8*, i8*, i8*) #1

declare dso_local i8* @json_skip_space(i8*, i8*) #1

declare dso_local i32 @json_parse_string(i8**, i8*) #1

declare dso_local i32 @json_parse(i8**, i8*, i64*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
