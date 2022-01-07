; ModuleID = '/home/carl/AnghaBench/radare2/libr/magic/extr_apprentice.c_check_format.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/magic/extr_apprentice.c_check_format.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.r_magic = type { i8*, i64 }

@file_nformats = common dso_local global i64 0, align 8
@file_nnames = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [64 x i8] c"Internal error inconsistency between m->type and format strings\00", align 1
@magic_file_formats = common dso_local global i64* null, align 8
@FILE_FMT_NONE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [48 x i8] c"No format string for `%s' with description `%s'\00", align 1
@magic_file_names = common dso_local global i8** null, align 8
@.str.2 = private unnamed_addr constant [66 x i8] c"Printf format `%c' is not valid for type `%s' in description `%s'\00", align 1
@.str.3 = private unnamed_addr constant [81 x i8] c"Too many format strings (should have at most one) for `%s' with description `%s'\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.r_magic*)* @check_format to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_format(i32* %0, %struct.r_magic* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.r_magic*, align 8
  %6 = alloca i8*, align 8
  store i32* %0, i32** %4, align 8
  store %struct.r_magic* %1, %struct.r_magic** %5, align 8
  %7 = load %struct.r_magic*, %struct.r_magic** %5, align 8
  %8 = getelementptr inbounds %struct.r_magic, %struct.r_magic* %7, i32 0, i32 0
  %9 = load i8*, i8** %8, align 8
  store i8* %9, i8** %6, align 8
  br label %10

10:                                               ; preds = %21, %2
  %11 = load i8*, i8** %6, align 8
  %12 = load i8, i8* %11, align 1
  %13 = icmp ne i8 %12, 0
  br i1 %13, label %14, label %24

14:                                               ; preds = %10
  %15 = load i8*, i8** %6, align 8
  %16 = load i8, i8* %15, align 1
  %17 = sext i8 %16 to i32
  %18 = icmp eq i32 %17, 37
  br i1 %18, label %19, label %20

19:                                               ; preds = %14
  br label %24

20:                                               ; preds = %14
  br label %21

21:                                               ; preds = %20
  %22 = load i8*, i8** %6, align 8
  %23 = getelementptr inbounds i8, i8* %22, i32 1
  store i8* %23, i8** %6, align 8
  br label %10

24:                                               ; preds = %19, %10
  %25 = load i8*, i8** %6, align 8
  %26 = load i8, i8* %25, align 1
  %27 = sext i8 %26 to i32
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %24
  store i32 1, i32* %3, align 4
  br label %133

30:                                               ; preds = %24
  %31 = load i64, i64* @file_nformats, align 8
  %32 = load i64, i64* @file_nnames, align 8
  %33 = icmp ne i64 %31, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %30
  store i32 -1, i32* %3, align 4
  br label %133

35:                                               ; preds = %30
  %36 = load %struct.r_magic*, %struct.r_magic** %5, align 8
  %37 = getelementptr inbounds %struct.r_magic, %struct.r_magic* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @file_nformats, align 8
  %40 = icmp sge i64 %38, %39
  br i1 %40, label %41, label %44

41:                                               ; preds = %35
  %42 = load i32*, i32** %4, align 8
  %43 = call i32 (i32*, i8*, ...) @file_magwarn(i32* %42, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %133

44:                                               ; preds = %35
  %45 = load i64*, i64** @magic_file_formats, align 8
  %46 = load %struct.r_magic*, %struct.r_magic** %5, align 8
  %47 = getelementptr inbounds %struct.r_magic, %struct.r_magic* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = getelementptr inbounds i64, i64* %45, i64 %48
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @FILE_FMT_NONE, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %65

53:                                               ; preds = %44
  %54 = load i32*, i32** %4, align 8
  %55 = load %struct.r_magic*, %struct.r_magic** %5, align 8
  %56 = getelementptr inbounds %struct.r_magic, %struct.r_magic* %55, i32 0, i32 0
  %57 = load i8*, i8** %56, align 8
  %58 = load i8**, i8*** @magic_file_names, align 8
  %59 = load %struct.r_magic*, %struct.r_magic** %5, align 8
  %60 = getelementptr inbounds %struct.r_magic, %struct.r_magic* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = getelementptr inbounds i8*, i8** %58, i64 %61
  %63 = load i8*, i8** %62, align 8
  %64 = call i32 (i32*, i8*, ...) @file_magwarn(i32* %54, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0), i8* %57, i8* %63)
  store i32 -1, i32* %3, align 4
  br label %133

65:                                               ; preds = %44
  %66 = load i8*, i8** %6, align 8
  %67 = getelementptr inbounds i8, i8* %66, i32 1
  store i8* %67, i8** %6, align 8
  %68 = load i8*, i8** %6, align 8
  %69 = icmp ne i8* %68, null
  br i1 %69, label %70, label %106

70:                                               ; preds = %65
  %71 = load i8*, i8** %6, align 8
  %72 = load i64*, i64** @magic_file_formats, align 8
  %73 = load %struct.r_magic*, %struct.r_magic** %5, align 8
  %74 = getelementptr inbounds %struct.r_magic, %struct.r_magic* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = getelementptr inbounds i64, i64* %72, i64 %75
  %77 = load i64, i64* %76, align 8
  %78 = call i32 @check_format_type(i8* %71, i64 %77)
  %79 = icmp eq i32 %78, -1
  br i1 %79, label %80, label %106

80:                                               ; preds = %70
  %81 = load i32*, i32** %4, align 8
  %82 = load i8*, i8** %6, align 8
  %83 = icmp ne i8* %82, null
  br i1 %83, label %84, label %93

84:                                               ; preds = %80
  %85 = load i8*, i8** %6, align 8
  %86 = load i8, i8* %85, align 1
  %87 = sext i8 %86 to i32
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %93

89:                                               ; preds = %84
  %90 = load i8*, i8** %6, align 8
  %91 = load i8, i8* %90, align 1
  %92 = sext i8 %91 to i32
  br label %94

93:                                               ; preds = %84, %80
  br label %94

94:                                               ; preds = %93, %89
  %95 = phi i32 [ %92, %89 ], [ 63, %93 ]
  %96 = load i8**, i8*** @magic_file_names, align 8
  %97 = load %struct.r_magic*, %struct.r_magic** %5, align 8
  %98 = getelementptr inbounds %struct.r_magic, %struct.r_magic* %97, i32 0, i32 1
  %99 = load i64, i64* %98, align 8
  %100 = getelementptr inbounds i8*, i8** %96, i64 %99
  %101 = load i8*, i8** %100, align 8
  %102 = load %struct.r_magic*, %struct.r_magic** %5, align 8
  %103 = getelementptr inbounds %struct.r_magic, %struct.r_magic* %102, i32 0, i32 0
  %104 = load i8*, i8** %103, align 8
  %105 = call i32 (i32*, i8*, ...) @file_magwarn(i32* %81, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.2, i64 0, i64 0), i32 %95, i8* %101, i8* %104)
  store i32 -1, i32* %3, align 4
  br label %133

106:                                              ; preds = %70, %65
  br label %107

107:                                              ; preds = %129, %106
  %108 = load i8*, i8** %6, align 8
  %109 = load i8, i8* %108, align 1
  %110 = icmp ne i8 %109, 0
  br i1 %110, label %111, label %132

111:                                              ; preds = %107
  %112 = load i8*, i8** %6, align 8
  %113 = load i8, i8* %112, align 1
  %114 = sext i8 %113 to i32
  %115 = icmp eq i32 %114, 37
  br i1 %115, label %116, label %128

116:                                              ; preds = %111
  %117 = load i32*, i32** %4, align 8
  %118 = load i8**, i8*** @magic_file_names, align 8
  %119 = load %struct.r_magic*, %struct.r_magic** %5, align 8
  %120 = getelementptr inbounds %struct.r_magic, %struct.r_magic* %119, i32 0, i32 1
  %121 = load i64, i64* %120, align 8
  %122 = getelementptr inbounds i8*, i8** %118, i64 %121
  %123 = load i8*, i8** %122, align 8
  %124 = load %struct.r_magic*, %struct.r_magic** %5, align 8
  %125 = getelementptr inbounds %struct.r_magic, %struct.r_magic* %124, i32 0, i32 0
  %126 = load i8*, i8** %125, align 8
  %127 = call i32 (i32*, i8*, ...) @file_magwarn(i32* %117, i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.3, i64 0, i64 0), i8* %123, i8* %126)
  store i32 -1, i32* %3, align 4
  br label %133

128:                                              ; preds = %111
  br label %129

129:                                              ; preds = %128
  %130 = load i8*, i8** %6, align 8
  %131 = getelementptr inbounds i8, i8* %130, i32 1
  store i8* %131, i8** %6, align 8
  br label %107

132:                                              ; preds = %107
  store i32 0, i32* %3, align 4
  br label %133

133:                                              ; preds = %132, %116, %94, %53, %41, %34, %29
  %134 = load i32, i32* %3, align 4
  ret i32 %134
}

declare dso_local i32 @file_magwarn(i32*, i8*, ...) #1

declare dso_local i32 @check_format_type(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
