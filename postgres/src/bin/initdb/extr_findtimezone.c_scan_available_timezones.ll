; ModuleID = '/home/carl/AnghaBench/postgres/src/bin/initdb/extr_findtimezone.c_scan_available_timezones.c'
source_filename = "/home/carl/AnghaBench/postgres/src/bin/initdb/extr_findtimezone.c_scan_available_timezones.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tztry = type { i32 }
%struct.stat = type { i32 }

@MAXPGPATH = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [4 x i8] c"/%s\00", align 1
@TZ_STRLEN_MAX = common dso_local global i64 0, align 8
@errno = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*, %struct.tztry*, i32*, i8*)* @scan_available_timezones to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @scan_available_timezones(i8* %0, i8* %1, %struct.tztry* %2, i32* %3, i8* %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.tztry*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8**, align 8
  %13 = alloca i8**, align 8
  %14 = alloca i8*, align 8
  %15 = alloca %struct.stat, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store %struct.tztry* %2, %struct.tztry** %8, align 8
  store i32* %3, i32** %9, align 8
  store i8* %4, i8** %10, align 8
  %18 = load i8*, i8** %6, align 8
  %19 = call i32 @strlen(i8* %18)
  store i32 %19, i32* %11, align 4
  %20 = load i8*, i8** %6, align 8
  %21 = call i8** @pgfnames(i8* %20)
  store i8** %21, i8*** %12, align 8
  %22 = load i8**, i8*** %12, align 8
  %23 = icmp ne i8** %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %5
  br label %139

25:                                               ; preds = %5
  %26 = load i8**, i8*** %12, align 8
  store i8** %26, i8*** %13, align 8
  br label %27

27:                                               ; preds = %133, %25
  %28 = load i8**, i8*** %13, align 8
  %29 = load i8*, i8** %28, align 8
  %30 = icmp ne i8* %29, null
  br i1 %30, label %31, label %136

31:                                               ; preds = %27
  %32 = load i8**, i8*** %13, align 8
  %33 = load i8*, i8** %32, align 8
  store i8* %33, i8** %14, align 8
  %34 = load i8*, i8** %14, align 8
  %35 = getelementptr inbounds i8, i8* %34, i64 0
  %36 = load i8, i8* %35, align 1
  %37 = sext i8 %36 to i32
  %38 = icmp eq i32 %37, 46
  br i1 %38, label %39, label %40

39:                                               ; preds = %31
  br label %133

40:                                               ; preds = %31
  %41 = load i8*, i8** %6, align 8
  %42 = load i32, i32* %11, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i8, i8* %41, i64 %43
  %45 = load i64, i64* @MAXPGPATH, align 8
  %46 = load i32, i32* %11, align 4
  %47 = sext i32 %46 to i64
  %48 = sub nsw i64 %45, %47
  %49 = load i8*, i8** %14, align 8
  %50 = call i32 @snprintf(i8* %44, i64 %48, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* %49)
  %51 = load i8*, i8** %6, align 8
  %52 = call i64 @stat(i8* %51, %struct.stat* %15)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %59

54:                                               ; preds = %40
  %55 = load i8*, i8** %6, align 8
  %56 = load i32, i32* %11, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i8, i8* %55, i64 %57
  store i8 0, i8* %58, align 1
  br label %133

59:                                               ; preds = %40
  %60 = getelementptr inbounds %struct.stat, %struct.stat* %15, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i64 @S_ISDIR(i32 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %70

64:                                               ; preds = %59
  %65 = load i8*, i8** %6, align 8
  %66 = load i8*, i8** %7, align 8
  %67 = load %struct.tztry*, %struct.tztry** %8, align 8
  %68 = load i32*, i32** %9, align 8
  %69 = load i8*, i8** %10, align 8
  call void @scan_available_timezones(i8* %65, i8* %66, %struct.tztry* %67, i32* %68, i8* %69)
  br label %128

70:                                               ; preds = %59
  %71 = load i8*, i8** %7, align 8
  %72 = load %struct.tztry*, %struct.tztry** %8, align 8
  %73 = call i32 @score_timezone(i8* %71, %struct.tztry* %72)
  store i32 %73, i32* %16, align 4
  %74 = load i32, i32* %16, align 4
  %75 = load i32*, i32** %9, align 8
  %76 = load i32, i32* %75, align 4
  %77 = icmp sgt i32 %74, %76
  br i1 %77, label %78, label %86

78:                                               ; preds = %70
  %79 = load i32, i32* %16, align 4
  %80 = load i32*, i32** %9, align 8
  store i32 %79, i32* %80, align 4
  %81 = load i8*, i8** %10, align 8
  %82 = load i8*, i8** %7, align 8
  %83 = load i64, i64* @TZ_STRLEN_MAX, align 8
  %84 = add nsw i64 %83, 1
  %85 = call i32 @strlcpy(i8* %81, i8* %82, i64 %84)
  br label %127

86:                                               ; preds = %70
  %87 = load i32, i32* %16, align 4
  %88 = load i32*, i32** %9, align 8
  %89 = load i32, i32* %88, align 4
  %90 = icmp eq i32 %87, %89
  br i1 %90, label %91, label %126

91:                                               ; preds = %86
  %92 = load i8*, i8** %7, align 8
  %93 = call i32 @zone_name_pref(i8* %92)
  %94 = load i8*, i8** %10, align 8
  %95 = call i32 @zone_name_pref(i8* %94)
  %96 = sub nsw i32 %93, %95
  store i32 %96, i32* %17, align 4
  %97 = load i32, i32* %17, align 4
  %98 = icmp sgt i32 %97, 0
  br i1 %98, label %119, label %99

99:                                               ; preds = %91
  %100 = load i32, i32* %17, align 4
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %102, label %125

102:                                              ; preds = %99
  %103 = load i8*, i8** %7, align 8
  %104 = call i32 @strlen(i8* %103)
  %105 = load i8*, i8** %10, align 8
  %106 = call i32 @strlen(i8* %105)
  %107 = icmp slt i32 %104, %106
  br i1 %107, label %119, label %108

108:                                              ; preds = %102
  %109 = load i8*, i8** %7, align 8
  %110 = call i32 @strlen(i8* %109)
  %111 = load i8*, i8** %10, align 8
  %112 = call i32 @strlen(i8* %111)
  %113 = icmp eq i32 %110, %112
  br i1 %113, label %114, label %125

114:                                              ; preds = %108
  %115 = load i8*, i8** %7, align 8
  %116 = load i8*, i8** %10, align 8
  %117 = call i64 @strcmp(i8* %115, i8* %116)
  %118 = icmp slt i64 %117, 0
  br i1 %118, label %119, label %125

119:                                              ; preds = %114, %102, %91
  %120 = load i8*, i8** %10, align 8
  %121 = load i8*, i8** %7, align 8
  %122 = load i64, i64* @TZ_STRLEN_MAX, align 8
  %123 = add nsw i64 %122, 1
  %124 = call i32 @strlcpy(i8* %120, i8* %121, i64 %123)
  br label %125

125:                                              ; preds = %119, %114, %108, %99
  br label %126

126:                                              ; preds = %125, %86
  br label %127

127:                                              ; preds = %126, %78
  br label %128

128:                                              ; preds = %127, %64
  %129 = load i8*, i8** %6, align 8
  %130 = load i32, i32* %11, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds i8, i8* %129, i64 %131
  store i8 0, i8* %132, align 1
  br label %133

133:                                              ; preds = %128, %54, %39
  %134 = load i8**, i8*** %13, align 8
  %135 = getelementptr inbounds i8*, i8** %134, i32 1
  store i8** %135, i8*** %13, align 8
  br label %27

136:                                              ; preds = %27
  %137 = load i8**, i8*** %12, align 8
  %138 = call i32 @pgfnames_cleanup(i8** %137)
  br label %139

139:                                              ; preds = %136, %24
  ret void
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i8** @pgfnames(i8*) #1

declare dso_local i32 @snprintf(i8*, i64, i8*, i8*) #1

declare dso_local i64 @stat(i8*, %struct.stat*) #1

declare dso_local i64 @S_ISDIR(i32) #1

declare dso_local i32 @score_timezone(i8*, %struct.tztry*) #1

declare dso_local i32 @strlcpy(i8*, i8*, i64) #1

declare dso_local i32 @zone_name_pref(i8*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @pgfnames_cleanup(i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
