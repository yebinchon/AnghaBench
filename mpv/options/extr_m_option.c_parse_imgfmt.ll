; ModuleID = '/home/carl/AnghaBench/mpv/options/extr_m_option.c_parse_imgfmt.c'
source_filename = "/home/carl/AnghaBench/mpv/options/extr_m_option.c_parse_imgfmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mp_log = type { i32 }
%struct.TYPE_3__ = type { i64 }
%struct.bstr = type { i64 }

@M_OPT_MISSING_PARAM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"Available formats:\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c" %s\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c" no\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@M_OPT_EXIT = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [3 x i8] c"no\00", align 1
@.str.6 = private unnamed_addr constant [42 x i8] c"Option %.*s: unknown format name: '%.*s'\0A\00", align 1
@M_OPT_INVALID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mp_log*, %struct.TYPE_3__*, i64, i64, i8*)* @parse_imgfmt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_imgfmt(%struct.mp_log* %0, %struct.TYPE_3__* %1, i64 %2, i64 %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.bstr, align 8
  %8 = alloca %struct.bstr, align 8
  %9 = alloca %struct.mp_log*, align 8
  %10 = alloca %struct.TYPE_3__*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8**, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = getelementptr inbounds %struct.bstr, %struct.bstr* %7, i32 0, i32 0
  store i64 %2, i64* %16, align 8
  %17 = getelementptr inbounds %struct.bstr, %struct.bstr* %8, i32 0, i32 0
  store i64 %3, i64* %17, align 8
  store %struct.mp_log* %0, %struct.mp_log** %9, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %10, align 8
  store i8* %4, i8** %11, align 8
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp slt i64 %20, 0
  %22 = zext i1 %21 to i32
  store i32 %22, i32* %12, align 4
  %23 = getelementptr inbounds %struct.bstr, %struct.bstr* %8, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %5
  %27 = load i32, i32* @M_OPT_MISSING_PARAM, align 4
  store i32 %27, i32* %6, align 4
  br label %99

28:                                               ; preds = %5
  %29 = getelementptr inbounds %struct.bstr, %struct.bstr* %8, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = call i32 @bstrcmp0(i64 %30, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %67, label %33

33:                                               ; preds = %28
  %34 = load %struct.mp_log*, %struct.mp_log** %9, align 8
  %35 = call i32 (%struct.mp_log*, i8*, ...) @mp_info(%struct.mp_log* %34, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  %36 = call i8** (...) @mp_imgfmt_name_list()
  store i8** %36, i8*** %13, align 8
  store i32 0, i32* %14, align 4
  br label %37

37:                                               ; preds = %52, %33
  %38 = load i8**, i8*** %13, align 8
  %39 = load i32, i32* %14, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i8*, i8** %38, i64 %40
  %42 = load i8*, i8** %41, align 8
  %43 = icmp ne i8* %42, null
  br i1 %43, label %44, label %55

44:                                               ; preds = %37
  %45 = load %struct.mp_log*, %struct.mp_log** %9, align 8
  %46 = load i8**, i8*** %13, align 8
  %47 = load i32, i32* %14, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i8*, i8** %46, i64 %48
  %50 = load i8*, i8** %49, align 8
  %51 = call i32 (%struct.mp_log*, i8*, ...) @mp_info(%struct.mp_log* %45, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* %50)
  br label %52

52:                                               ; preds = %44
  %53 = load i32, i32* %14, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %14, align 4
  br label %37

55:                                               ; preds = %37
  %56 = load i32, i32* %12, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %55
  %59 = load %struct.mp_log*, %struct.mp_log** %9, align 8
  %60 = call i32 (%struct.mp_log*, i8*, ...) @mp_info(%struct.mp_log* %59, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  br label %61

61:                                               ; preds = %58, %55
  %62 = load %struct.mp_log*, %struct.mp_log** %9, align 8
  %63 = call i32 (%struct.mp_log*, i8*, ...) @mp_info(%struct.mp_log* %62, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  %64 = load i8**, i8*** %13, align 8
  %65 = call i32 @talloc_free(i8** %64)
  %66 = load i32, i32* @M_OPT_EXIT, align 4
  store i32 %66, i32* %6, align 4
  br label %99

67:                                               ; preds = %28
  %68 = getelementptr inbounds %struct.bstr, %struct.bstr* %8, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = call i32 @mp_imgfmt_from_name(i64 %69)
  store i32 %70, i32* %15, align 4
  %71 = load i32, i32* %15, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %91, label %73

73:                                               ; preds = %67
  %74 = load i32, i32* %12, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %81

76:                                               ; preds = %73
  %77 = getelementptr inbounds %struct.bstr, %struct.bstr* %8, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = call i64 @bstr_equals0(i64 %78, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0))
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %91, label %81

81:                                               ; preds = %76, %73
  %82 = load %struct.mp_log*, %struct.mp_log** %9, align 8
  %83 = getelementptr inbounds %struct.bstr, %struct.bstr* %7, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = call i32 @BSTR_P(i64 %84)
  %86 = getelementptr inbounds %struct.bstr, %struct.bstr* %8, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = call i32 @BSTR_P(i64 %87)
  %89 = call i32 @mp_err(%struct.mp_log* %82, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.6, i64 0, i64 0), i32 %85, i32 %88)
  %90 = load i32, i32* @M_OPT_INVALID, align 4
  store i32 %90, i32* %6, align 4
  br label %99

91:                                               ; preds = %76, %67
  %92 = load i8*, i8** %11, align 8
  %93 = icmp ne i8* %92, null
  br i1 %93, label %94, label %98

94:                                               ; preds = %91
  %95 = load i32, i32* %15, align 4
  %96 = load i8*, i8** %11, align 8
  %97 = bitcast i8* %96 to i32*
  store i32 %95, i32* %97, align 4
  br label %98

98:                                               ; preds = %94, %91
  store i32 1, i32* %6, align 4
  br label %99

99:                                               ; preds = %98, %81, %61, %26
  %100 = load i32, i32* %6, align 4
  ret i32 %100
}

declare dso_local i32 @bstrcmp0(i64, i8*) #1

declare dso_local i32 @mp_info(%struct.mp_log*, i8*, ...) #1

declare dso_local i8** @mp_imgfmt_name_list(...) #1

declare dso_local i32 @talloc_free(i8**) #1

declare dso_local i32 @mp_imgfmt_from_name(i64) #1

declare dso_local i64 @bstr_equals0(i64, i8*) #1

declare dso_local i32 @mp_err(%struct.mp_log*, i8*, i32, i32) #1

declare dso_local i32 @BSTR_P(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
