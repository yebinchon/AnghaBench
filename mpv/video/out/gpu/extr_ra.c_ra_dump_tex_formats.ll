; ModuleID = '/home/carl/AnghaBench/mpv/video/out/gpu/extr_ra.c_ra_dump_tex_formats.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/gpu/extr_ra.c_ra_dump_tex_formats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ra = type { i32, %struct.ra_format**, i32 }
%struct.ra_format = type { i32, i32, i64, i64, i64, i64, i32, i32, i32*, i32* }

@.str = private unnamed_addr constant [18 x i8] c"Texture formats:\0A\00", align 1
@.str.1 = private unnamed_addr constant [55 x i8] c"  NAME       COMP*TYPE SIZE           DEPTH PER COMP.\0A\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"unknown\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"unorm\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"uint \00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"float\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"%s%d\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.8 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"/%d\00", align 1
@.str.10 = private unnamed_addr constant [37 x i8] c"  %-10s %d*%s %3dB %s %s %s %s {%s}\0A\00", align 1
@.str.11 = private unnamed_addr constant [3 x i8] c"LA\00", align 1
@.str.12 = private unnamed_addr constant [3 x i8] c"  \00", align 1
@.str.13 = private unnamed_addr constant [3 x i8] c"LF\00", align 1
@.str.14 = private unnamed_addr constant [3 x i8] c"CR\00", align 1
@.str.15 = private unnamed_addr constant [3 x i8] c"ST\00", align 1
@.str.16 = private unnamed_addr constant [35 x i8] c" LA = LUMINANCE_ALPHA hack format\0A\00", align 1
@.str.17 = private unnamed_addr constant [25 x i8] c" LF = linear filterable\0A\00", align 1
@.str.18 = private unnamed_addr constant [38 x i8] c" CR = can be used for render targets\0A\00", align 1
@.str.19 = private unnamed_addr constant [39 x i8] c" ST = can be used for storable images\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ra_dump_tex_formats(%struct.ra* %0, i32 %1) #0 {
  %3 = alloca %struct.ra*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.ra_format*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca [40 x i8], align 16
  %9 = alloca i32, align 4
  store %struct.ra* %0, %struct.ra** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load %struct.ra*, %struct.ra** %3, align 8
  %11 = getelementptr inbounds %struct.ra, %struct.ra* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* %4, align 4
  %14 = call i32 @mp_msg_test(i32 %12, i32 %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %2
  br label %152

17:                                               ; preds = %2
  %18 = load %struct.ra*, %struct.ra** %3, align 8
  %19 = load i32, i32* %4, align 4
  %20 = call i32 (%struct.ra*, i32, i8*, ...) @MP_MSG(%struct.ra* %18, i32 %19, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %21 = load %struct.ra*, %struct.ra** %3, align 8
  %22 = load i32, i32* %4, align 4
  %23 = call i32 (%struct.ra*, i32, i8*, ...) @MP_MSG(%struct.ra* %21, i32 %22, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  br label %24

24:                                               ; preds = %136, %17
  %25 = load i32, i32* %5, align 4
  %26 = load %struct.ra*, %struct.ra** %3, align 8
  %27 = getelementptr inbounds %struct.ra, %struct.ra* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp slt i32 %25, %28
  br i1 %29, label %30, label %139

30:                                               ; preds = %24
  %31 = load %struct.ra*, %struct.ra** %3, align 8
  %32 = getelementptr inbounds %struct.ra, %struct.ra* %31, i32 0, i32 1
  %33 = load %struct.ra_format**, %struct.ra_format*** %32, align 8
  %34 = load i32, i32* %5, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.ra_format*, %struct.ra_format** %33, i64 %35
  %37 = load %struct.ra_format*, %struct.ra_format** %36, align 8
  store %struct.ra_format* %37, %struct.ra_format** %6, align 8
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i8** %7, align 8
  %38 = load %struct.ra_format*, %struct.ra_format** %6, align 8
  %39 = getelementptr inbounds %struct.ra_format, %struct.ra_format* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  switch i32 %40, label %44 [
    i32 128, label %41
    i32 129, label %42
    i32 130, label %43
  ]

41:                                               ; preds = %30
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i8** %7, align 8
  br label %44

42:                                               ; preds = %30
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i8** %7, align 8
  br label %44

43:                                               ; preds = %30
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i8** %7, align 8
  br label %44

44:                                               ; preds = %30, %43, %42, %41
  %45 = bitcast [40 x i8]* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %45, i8 0, i64 40, i1 false)
  store i32 0, i32* %9, align 4
  br label %46

46:                                               ; preds = %94, %44
  %47 = load i32, i32* %9, align 4
  %48 = load %struct.ra_format*, %struct.ra_format** %6, align 8
  %49 = getelementptr inbounds %struct.ra_format, %struct.ra_format* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = icmp slt i32 %47, %50
  br i1 %51, label %52, label %97

52:                                               ; preds = %46
  %53 = getelementptr inbounds [40 x i8], [40 x i8]* %8, i64 0, i64 0
  %54 = load i32, i32* %9, align 4
  %55 = icmp ne i32 %54, 0
  %56 = zext i1 %55 to i64
  %57 = select i1 %55, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.8, i64 0, i64 0)
  %58 = load %struct.ra_format*, %struct.ra_format** %6, align 8
  %59 = getelementptr inbounds %struct.ra_format, %struct.ra_format* %58, i32 0, i32 9
  %60 = load i32*, i32** %59, align 8
  %61 = load i32, i32* %9, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i32, i32* %60, i64 %62
  %64 = load i32, i32* %63, align 4
  %65 = call i32 (i8*, i32, i8*, i8*, ...) @mp_snprintf_cat(i8* %53, i32 40, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i8* %57, i32 %64)
  %66 = load %struct.ra_format*, %struct.ra_format** %6, align 8
  %67 = getelementptr inbounds %struct.ra_format, %struct.ra_format* %66, i32 0, i32 9
  %68 = load i32*, i32** %67, align 8
  %69 = load i32, i32* %9, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i32, i32* %68, i64 %70
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.ra_format*, %struct.ra_format** %6, align 8
  %74 = getelementptr inbounds %struct.ra_format, %struct.ra_format* %73, i32 0, i32 8
  %75 = load i32*, i32** %74, align 8
  %76 = load i32, i32* %9, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i32, i32* %75, i64 %77
  %79 = load i32, i32* %78, align 4
  %80 = icmp ne i32 %72, %79
  br i1 %80, label %81, label %93

81:                                               ; preds = %52
  %82 = getelementptr inbounds [40 x i8], [40 x i8]* %8, i64 0, i64 0
  %83 = load %struct.ra_format*, %struct.ra_format** %6, align 8
  %84 = getelementptr inbounds %struct.ra_format, %struct.ra_format* %83, i32 0, i32 8
  %85 = load i32*, i32** %84, align 8
  %86 = load i32, i32* %9, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i32, i32* %85, i64 %87
  %89 = load i32, i32* %88, align 4
  %90 = sext i32 %89 to i64
  %91 = inttoptr i64 %90 to i8*
  %92 = call i32 (i8*, i32, i8*, i8*, ...) @mp_snprintf_cat(i8* %82, i32 40, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0), i8* %91)
  br label %93

93:                                               ; preds = %81, %52
  br label %94

94:                                               ; preds = %93
  %95 = load i32, i32* %9, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %9, align 4
  br label %46

97:                                               ; preds = %46
  %98 = load %struct.ra*, %struct.ra** %3, align 8
  %99 = load i32, i32* %4, align 4
  %100 = load %struct.ra_format*, %struct.ra_format** %6, align 8
  %101 = getelementptr inbounds %struct.ra_format, %struct.ra_format* %100, i32 0, i32 7
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.ra_format*, %struct.ra_format** %6, align 8
  %104 = getelementptr inbounds %struct.ra_format, %struct.ra_format* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = load i8*, i8** %7, align 8
  %107 = load %struct.ra_format*, %struct.ra_format** %6, align 8
  %108 = getelementptr inbounds %struct.ra_format, %struct.ra_format* %107, i32 0, i32 6
  %109 = load i32, i32* %108, align 8
  %110 = load %struct.ra_format*, %struct.ra_format** %6, align 8
  %111 = getelementptr inbounds %struct.ra_format, %struct.ra_format* %110, i32 0, i32 5
  %112 = load i64, i64* %111, align 8
  %113 = icmp ne i64 %112, 0
  %114 = zext i1 %113 to i64
  %115 = select i1 %113, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.12, i64 0, i64 0)
  %116 = load %struct.ra_format*, %struct.ra_format** %6, align 8
  %117 = getelementptr inbounds %struct.ra_format, %struct.ra_format* %116, i32 0, i32 4
  %118 = load i64, i64* %117, align 8
  %119 = icmp ne i64 %118, 0
  %120 = zext i1 %119 to i64
  %121 = select i1 %119, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.13, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.12, i64 0, i64 0)
  %122 = load %struct.ra_format*, %struct.ra_format** %6, align 8
  %123 = getelementptr inbounds %struct.ra_format, %struct.ra_format* %122, i32 0, i32 3
  %124 = load i64, i64* %123, align 8
  %125 = icmp ne i64 %124, 0
  %126 = zext i1 %125 to i64
  %127 = select i1 %125, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.14, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.12, i64 0, i64 0)
  %128 = load %struct.ra_format*, %struct.ra_format** %6, align 8
  %129 = getelementptr inbounds %struct.ra_format, %struct.ra_format* %128, i32 0, i32 2
  %130 = load i64, i64* %129, align 8
  %131 = icmp ne i64 %130, 0
  %132 = zext i1 %131 to i64
  %133 = select i1 %131, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.15, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.12, i64 0, i64 0)
  %134 = getelementptr inbounds [40 x i8], [40 x i8]* %8, i64 0, i64 0
  %135 = call i32 (%struct.ra*, i32, i8*, ...) @MP_MSG(%struct.ra* %98, i32 %99, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.10, i64 0, i64 0), i32 %102, i32 %105, i8* %106, i32 %109, i8* %115, i8* %121, i8* %127, i8* %133, i8* %134)
  br label %136

136:                                              ; preds = %97
  %137 = load i32, i32* %5, align 4
  %138 = add nsw i32 %137, 1
  store i32 %138, i32* %5, align 4
  br label %24

139:                                              ; preds = %24
  %140 = load %struct.ra*, %struct.ra** %3, align 8
  %141 = load i32, i32* %4, align 4
  %142 = call i32 (%struct.ra*, i32, i8*, ...) @MP_MSG(%struct.ra* %140, i32 %141, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.16, i64 0, i64 0))
  %143 = load %struct.ra*, %struct.ra** %3, align 8
  %144 = load i32, i32* %4, align 4
  %145 = call i32 (%struct.ra*, i32, i8*, ...) @MP_MSG(%struct.ra* %143, i32 %144, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.17, i64 0, i64 0))
  %146 = load %struct.ra*, %struct.ra** %3, align 8
  %147 = load i32, i32* %4, align 4
  %148 = call i32 (%struct.ra*, i32, i8*, ...) @MP_MSG(%struct.ra* %146, i32 %147, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.18, i64 0, i64 0))
  %149 = load %struct.ra*, %struct.ra** %3, align 8
  %150 = load i32, i32* %4, align 4
  %151 = call i32 (%struct.ra*, i32, i8*, ...) @MP_MSG(%struct.ra* %149, i32 %150, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.19, i64 0, i64 0))
  br label %152

152:                                              ; preds = %139, %16
  ret void
}

declare dso_local i32 @mp_msg_test(i32, i32) #1

declare dso_local i32 @MP_MSG(%struct.ra*, i32, i8*, ...) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @mp_snprintf_cat(i8*, i32, i8*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
