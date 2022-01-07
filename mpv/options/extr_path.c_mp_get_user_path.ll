; ModuleID = '/home/carl/AnghaBench/mpv/options/extr_path.c_mp_get_user_path.c'
source_filename = "/home/carl/AnghaBench/mpv/options/extr_path.c_mp_get_user_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mpv_global = type { i32 }
%struct.TYPE_11__ = type { i8* }

@.str = private unnamed_addr constant [2 x i8] c"~\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"home\00", align 1
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"HOME\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"USERPROFILE\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"%.*s\00", align 1
@.str.7 = private unnamed_addr constant [25 x i8] c"user path: '%s' -> '%s'\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @mp_get_user_path(i8* %0, %struct.mpv_global* %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.mpv_global*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.TYPE_11__, align 8
  %10 = alloca %struct.TYPE_11__, align 8
  %11 = alloca %struct.TYPE_11__, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca %struct.TYPE_11__, align 8
  %16 = alloca i8*, align 8
  %17 = alloca %struct.TYPE_11__, align 8
  %18 = alloca i8*, align 8
  %19 = alloca [80 x i8], align 16
  %20 = alloca i8*, align 8
  %21 = alloca %struct.TYPE_11__, align 8
  store i8* %0, i8** %5, align 8
  store %struct.mpv_global* %1, %struct.mpv_global** %6, align 8
  store i8* %2, i8** %7, align 8
  %22 = load i8*, i8** %7, align 8
  %23 = icmp ne i8* %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %3
  store i8* null, i8** %4, align 8
  br label %130

25:                                               ; preds = %3
  store i8* null, i8** %8, align 8
  %26 = load i8*, i8** %7, align 8
  %27 = call i8* @bstr0(i8* %26)
  %28 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %9, i32 0, i32 0
  store i8* %27, i8** %28, align 8
  %29 = call i64 @bstr_eatstart0(%struct.TYPE_11__* %9, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %117

31:                                               ; preds = %25
  %32 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %9, i32 0, i32 0
  %33 = load i8*, i8** %32, align 8
  %34 = call i64 @bstr_split_tok(i8* %33, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), %struct.TYPE_11__* %10, %struct.TYPE_11__* %11)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %116

36:                                               ; preds = %31
  %37 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %11, i32 0, i32 0
  %38 = load i8*, i8** %37, align 8
  store i8* %38, i8** %12, align 8
  %39 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %10, i32 0, i32 0
  %40 = load i8*, i8** %39, align 8
  %41 = call i64 @bstr_equals0(i8* %40, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %67

43:                                               ; preds = %36
  %44 = load i8*, i8** %5, align 8
  %45 = load %struct.mpv_global*, %struct.mpv_global** %6, align 8
  %46 = load i8*, i8** %12, align 8
  %47 = call i8* @mp_find_config_file(i8* %44, %struct.mpv_global* %45, i8* %46)
  store i8* %47, i8** %8, align 8
  %48 = load i8*, i8** %8, align 8
  %49 = icmp ne i8* %48, null
  br i1 %49, label %66, label %50

50:                                               ; preds = %43
  %51 = call i8* @talloc_new(i32* null)
  store i8* %51, i8** %13, align 8
  %52 = load i8*, i8** %13, align 8
  %53 = load %struct.mpv_global*, %struct.mpv_global** %6, align 8
  %54 = call i8* @mp_get_platform_path(i8* %52, %struct.mpv_global* %53, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  store i8* %54, i8** %14, align 8
  %55 = load i8*, i8** %5, align 8
  %56 = load i8*, i8** %14, align 8
  %57 = call i8* @bstr0(i8* %56)
  %58 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %15, i32 0, i32 0
  store i8* %57, i8** %58, align 8
  %59 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %15, i32 0, i32 0
  %60 = load i8*, i8** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %11, i32 0, i32 0
  %62 = load i8*, i8** %61, align 8
  %63 = call i8* @mp_path_join_bstr(i8* %55, i8* %60, i8* %62)
  store i8* %63, i8** %8, align 8
  %64 = load i8*, i8** %13, align 8
  %65 = call i32 @talloc_free(i8* %64)
  br label %66

66:                                               ; preds = %50, %43
  br label %115

67:                                               ; preds = %36
  %68 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %10, i32 0, i32 0
  %69 = load i8*, i8** %68, align 8
  %70 = call i64 @bstr_equals0(i8* %69, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0))
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %88

72:                                               ; preds = %67
  %73 = call i8* @getenv(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  store i8* %73, i8** %16, align 8
  %74 = load i8*, i8** %16, align 8
  %75 = icmp ne i8* %74, null
  br i1 %75, label %78, label %76

76:                                               ; preds = %72
  %77 = call i8* @getenv(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0))
  store i8* %77, i8** %16, align 8
  br label %78

78:                                               ; preds = %76, %72
  %79 = load i8*, i8** %5, align 8
  %80 = load i8*, i8** %16, align 8
  %81 = call i8* @bstr0(i8* %80)
  %82 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %17, i32 0, i32 0
  store i8* %81, i8** %82, align 8
  %83 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %17, i32 0, i32 0
  %84 = load i8*, i8** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %11, i32 0, i32 0
  %86 = load i8*, i8** %85, align 8
  %87 = call i8* @mp_path_join_bstr(i8* %79, i8* %84, i8* %86)
  store i8* %87, i8** %8, align 8
  br label %114

88:                                               ; preds = %67
  %89 = call i64 @bstr_eatstart0(%struct.TYPE_11__* %10, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %113

91:                                               ; preds = %88
  %92 = call i8* @talloc_new(i32* null)
  store i8* %92, i8** %18, align 8
  %93 = getelementptr inbounds [80 x i8], [80 x i8]* %19, i64 0, i64 0
  %94 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %10, i32 0, i32 0
  %95 = load i8*, i8** %94, align 8
  %96 = call i8* @BSTR_P(i8* %95)
  %97 = call i32 @snprintf(i8* %93, i32 80, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i8* %96)
  %98 = load i8*, i8** %18, align 8
  %99 = load %struct.mpv_global*, %struct.mpv_global** %6, align 8
  %100 = getelementptr inbounds [80 x i8], [80 x i8]* %19, i64 0, i64 0
  %101 = call i8* @mp_get_platform_path(i8* %98, %struct.mpv_global* %99, i8* %100)
  store i8* %101, i8** %20, align 8
  %102 = load i8*, i8** %5, align 8
  %103 = load i8*, i8** %20, align 8
  %104 = call i8* @bstr0(i8* %103)
  %105 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %21, i32 0, i32 0
  store i8* %104, i8** %105, align 8
  %106 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %21, i32 0, i32 0
  %107 = load i8*, i8** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %11, i32 0, i32 0
  %109 = load i8*, i8** %108, align 8
  %110 = call i8* @mp_path_join_bstr(i8* %102, i8* %107, i8* %109)
  store i8* %110, i8** %8, align 8
  %111 = load i8*, i8** %18, align 8
  %112 = call i32 @talloc_free(i8* %111)
  br label %113

113:                                              ; preds = %91, %88
  br label %114

114:                                              ; preds = %113, %78
  br label %115

115:                                              ; preds = %114, %66
  br label %116

116:                                              ; preds = %115, %31
  br label %117

117:                                              ; preds = %116, %25
  %118 = load i8*, i8** %8, align 8
  %119 = icmp ne i8* %118, null
  br i1 %119, label %124, label %120

120:                                              ; preds = %117
  %121 = load i8*, i8** %5, align 8
  %122 = load i8*, i8** %7, align 8
  %123 = call i8* @talloc_strdup(i8* %121, i8* %122)
  store i8* %123, i8** %8, align 8
  br label %124

124:                                              ; preds = %120, %117
  %125 = load %struct.mpv_global*, %struct.mpv_global** %6, align 8
  %126 = load i8*, i8** %7, align 8
  %127 = load i8*, i8** %8, align 8
  %128 = call i32 @MP_DBG(%struct.mpv_global* %125, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.7, i64 0, i64 0), i8* %126, i8* %127)
  %129 = load i8*, i8** %8, align 8
  store i8* %129, i8** %4, align 8
  br label %130

130:                                              ; preds = %124, %24
  %131 = load i8*, i8** %4, align 8
  ret i8* %131
}

declare dso_local i8* @bstr0(i8*) #1

declare dso_local i64 @bstr_eatstart0(%struct.TYPE_11__*, i8*) #1

declare dso_local i64 @bstr_split_tok(i8*, i8*, %struct.TYPE_11__*, %struct.TYPE_11__*) #1

declare dso_local i64 @bstr_equals0(i8*, i8*) #1

declare dso_local i8* @mp_find_config_file(i8*, %struct.mpv_global*, i8*) #1

declare dso_local i8* @talloc_new(i32*) #1

declare dso_local i8* @mp_get_platform_path(i8*, %struct.mpv_global*, i8*) #1

declare dso_local i8* @mp_path_join_bstr(i8*, i8*, i8*) #1

declare dso_local i32 @talloc_free(i8*) #1

declare dso_local i8* @getenv(i8*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #1

declare dso_local i8* @BSTR_P(i8*) #1

declare dso_local i8* @talloc_strdup(i8*, i8*) #1

declare dso_local i32 @MP_DBG(%struct.mpv_global*, i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
