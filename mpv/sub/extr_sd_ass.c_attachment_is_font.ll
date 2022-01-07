; ModuleID = '/home/carl/AnghaBench/mpv/sub/extr_sd_ass.c_attachment_is_font.c'
source_filename = "/home/carl/AnghaBench/mpv/sub/extr_sd_ass.c_attachment_is_font.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mp_log = type { i32 }
%struct.demux_attachment = type { i8*, i32, i32, i32 }

@font_mimetypes = common dso_local global i64* null, align 8
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@font_exts = common dso_local global i64* null, align 8
@.str.1 = private unnamed_addr constant [148 x i8] c"Loading font attachment '%s' with MIME type %s. Assuming this is a broken Matroska file, which was muxed without setting a correct font MIME type.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mp_log*, %struct.demux_attachment*)* @attachment_is_font to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @attachment_is_font(%struct.mp_log* %0, %struct.demux_attachment* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mp_log*, align 8
  %5 = alloca %struct.demux_attachment*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store %struct.mp_log* %0, %struct.mp_log** %4, align 8
  store %struct.demux_attachment* %1, %struct.demux_attachment** %5, align 8
  %9 = load %struct.demux_attachment*, %struct.demux_attachment** %5, align 8
  %10 = getelementptr inbounds %struct.demux_attachment, %struct.demux_attachment* %9, i32 0, i32 0
  %11 = load i8*, i8** %10, align 8
  %12 = icmp ne i8* %11, null
  br i1 %12, label %13, label %28

13:                                               ; preds = %2
  %14 = load %struct.demux_attachment*, %struct.demux_attachment** %5, align 8
  %15 = getelementptr inbounds %struct.demux_attachment, %struct.demux_attachment* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %28

18:                                               ; preds = %13
  %19 = load %struct.demux_attachment*, %struct.demux_attachment** %5, align 8
  %20 = getelementptr inbounds %struct.demux_attachment, %struct.demux_attachment* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 8
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %18
  %24 = load %struct.demux_attachment*, %struct.demux_attachment** %5, align 8
  %25 = getelementptr inbounds %struct.demux_attachment, %struct.demux_attachment* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %23, %18, %13, %2
  store i32 0, i32* %3, align 4
  br label %103

29:                                               ; preds = %23
  store i32 0, i32* %6, align 4
  br label %30

30:                                               ; preds = %50, %29
  %31 = load i64*, i64** @font_mimetypes, align 8
  %32 = load i32, i32* %6, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i64, i64* %31, i64 %33
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %53

37:                                               ; preds = %30
  %38 = load i64*, i64** @font_mimetypes, align 8
  %39 = load i32, i32* %6, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i64, i64* %38, i64 %40
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.demux_attachment*, %struct.demux_attachment** %5, align 8
  %44 = getelementptr inbounds %struct.demux_attachment, %struct.demux_attachment* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = call i64 @strcmp(i64 %42, i32 %45)
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %37
  store i32 1, i32* %3, align 4
  br label %103

49:                                               ; preds = %37
  br label %50

50:                                               ; preds = %49
  %51 = load i32, i32* %6, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %6, align 4
  br label %30

53:                                               ; preds = %30
  %54 = load %struct.demux_attachment*, %struct.demux_attachment** %5, align 8
  %55 = getelementptr inbounds %struct.demux_attachment, %struct.demux_attachment* %54, i32 0, i32 0
  %56 = load i8*, i8** %55, align 8
  %57 = call i32 @strlen(i8* %56)
  %58 = icmp sgt i32 %57, 4
  br i1 %58, label %59, label %70

59:                                               ; preds = %53
  %60 = load %struct.demux_attachment*, %struct.demux_attachment** %5, align 8
  %61 = getelementptr inbounds %struct.demux_attachment, %struct.demux_attachment* %60, i32 0, i32 0
  %62 = load i8*, i8** %61, align 8
  %63 = load %struct.demux_attachment*, %struct.demux_attachment** %5, align 8
  %64 = getelementptr inbounds %struct.demux_attachment, %struct.demux_attachment* %63, i32 0, i32 0
  %65 = load i8*, i8** %64, align 8
  %66 = call i32 @strlen(i8* %65)
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i8, i8* %62, i64 %67
  %69 = getelementptr inbounds i8, i8* %68, i64 -4
  br label %71

70:                                               ; preds = %53
  br label %71

71:                                               ; preds = %70, %59
  %72 = phi i8* [ %69, %59 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), %70 ]
  store i8* %72, i8** %7, align 8
  store i32 0, i32* %8, align 4
  br label %73

73:                                               ; preds = %99, %71
  %74 = load i64*, i64** @font_exts, align 8
  %75 = load i32, i32* %8, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i64, i64* %74, i64 %76
  %78 = load i64, i64* %77, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %102

80:                                               ; preds = %73
  %81 = load i8*, i8** %7, align 8
  %82 = load i64*, i64** @font_exts, align 8
  %83 = load i32, i32* %8, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i64, i64* %82, i64 %84
  %86 = load i64, i64* %85, align 8
  %87 = call i64 @strcasecmp(i8* %81, i64 %86)
  %88 = icmp eq i64 %87, 0
  br i1 %88, label %89, label %98

89:                                               ; preds = %80
  %90 = load %struct.mp_log*, %struct.mp_log** %4, align 8
  %91 = load %struct.demux_attachment*, %struct.demux_attachment** %5, align 8
  %92 = getelementptr inbounds %struct.demux_attachment, %struct.demux_attachment* %91, i32 0, i32 0
  %93 = load i8*, i8** %92, align 8
  %94 = load %struct.demux_attachment*, %struct.demux_attachment** %5, align 8
  %95 = getelementptr inbounds %struct.demux_attachment, %struct.demux_attachment* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 8
  %97 = call i32 @mp_warn(%struct.mp_log* %90, i8* getelementptr inbounds ([148 x i8], [148 x i8]* @.str.1, i64 0, i64 0), i8* %93, i32 %96)
  store i32 1, i32* %3, align 4
  br label %103

98:                                               ; preds = %80
  br label %99

99:                                               ; preds = %98
  %100 = load i32, i32* %8, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %8, align 4
  br label %73

102:                                              ; preds = %73
  store i32 0, i32* %3, align 4
  br label %103

103:                                              ; preds = %102, %89, %48, %28
  %104 = load i32, i32* %3, align 4
  ret i32 %104
}

declare dso_local i64 @strcmp(i64, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @strcasecmp(i8*, i64) #1

declare dso_local i32 @mp_warn(%struct.mp_log*, i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
