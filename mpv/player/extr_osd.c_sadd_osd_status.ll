; ModuleID = '/home/carl/AnghaBench/mpv/player/extr_osd.c_sadd_osd_status.c'
source_filename = "/home/carl/AnghaBench/mpv/player/extr_osd.c_sadd_osd_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.MPContext = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i8**, i32, i8* }

@.str = private unnamed_addr constant [4 x i8] c"%s \00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c" / \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8**, %struct.MPContext*, i32)* @sadd_osd_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sadd_osd_status(i8** %0, %struct.MPContext* %1, i32 %2) #0 {
  %4 = alloca i8**, align 8
  %5 = alloca %struct.MPContext*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca [10 x i8], align 1
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  store i8** %0, i8*** %4, align 8
  store %struct.MPContext* %1, %struct.MPContext** %5, align 8
  store i32 %2, i32* %6, align 4
  %13 = load i32, i32* %6, align 4
  %14 = icmp sge i32 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %3
  %16 = load i32, i32* %6, align 4
  %17 = icmp sle i32 %16, 3
  br label %18

18:                                               ; preds = %15, %3
  %19 = phi i1 [ false, %3 ], [ %17, %15 ]
  %20 = zext i1 %19 to i32
  %21 = call i32 @assert(i32 %20)
  %22 = load i32, i32* %6, align 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %18
  br label %114

25:                                               ; preds = %18
  %26 = load %struct.MPContext*, %struct.MPContext** %5, align 8
  %27 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %26, i32 0, i32 0
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i8**, i8*** %29, align 8
  %31 = load i32, i32* %6, align 4
  %32 = sub nsw i32 %31, 1
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i8*, i8** %30, i64 %33
  %35 = load i8*, i8** %34, align 8
  store i8* %35, i8** %7, align 8
  %36 = load i8*, i8** %7, align 8
  %37 = icmp ne i8* %36, null
  br i1 %37, label %38, label %55

38:                                               ; preds = %25
  %39 = load i8*, i8** %7, align 8
  %40 = getelementptr inbounds i8, i8* %39, i64 0
  %41 = load i8, i8* %40, align 1
  %42 = sext i8 %41 to i32
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %55

44:                                               ; preds = %38
  %45 = load %struct.MPContext*, %struct.MPContext** %5, align 8
  %46 = load i8*, i8** %7, align 8
  %47 = call i8* @mp_property_expand_escaped_string(%struct.MPContext* %45, i8* %46)
  store i8* %47, i8** %8, align 8
  %48 = load i8**, i8*** %4, align 8
  %49 = load i8*, i8** %48, align 8
  %50 = load i8*, i8** %8, align 8
  %51 = call i8* @talloc_strdup_append(i8* %49, i8* %50)
  %52 = load i8**, i8*** %4, align 8
  store i8* %51, i8** %52, align 8
  %53 = load i8*, i8** %8, align 8
  %54 = call i32 @talloc_free(i8* %53)
  br label %114

55:                                               ; preds = %38, %25
  %56 = load i32, i32* %6, align 4
  %57 = icmp sge i32 %56, 2
  br i1 %57, label %58, label %113

58:                                               ; preds = %55
  %59 = load %struct.MPContext*, %struct.MPContext** %5, align 8
  %60 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %59, i32 0, i32 0
  %61 = load %struct.TYPE_2__*, %struct.TYPE_2__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 8
  store i32 %63, i32* %9, align 4
  %64 = load %struct.MPContext*, %struct.MPContext** %5, align 8
  %65 = getelementptr inbounds [10 x i8], [10 x i8]* %10, i64 0, i64 0
  %66 = call i32 @get_current_osd_sym(%struct.MPContext* %64, i8* %65, i32 10)
  %67 = load i8**, i8*** %4, align 8
  %68 = getelementptr inbounds [10 x i8], [10 x i8]* %10, i64 0, i64 0
  %69 = call i32 (i8**, i8*, ...) @saddf(i8** %67, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* %68)
  %70 = load %struct.MPContext*, %struct.MPContext** %5, align 8
  %71 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %70, i32 0, i32 0
  %72 = load %struct.TYPE_2__*, %struct.TYPE_2__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 2
  %74 = load i8*, i8** %73, align 8
  store i8* %74, i8** %11, align 8
  %75 = load i8*, i8** %11, align 8
  %76 = icmp ne i8* %75, null
  br i1 %76, label %77, label %91

77:                                               ; preds = %58
  %78 = load i32, i32* %6, align 4
  %79 = icmp eq i32 %78, 3
  br i1 %79, label %80, label %91

80:                                               ; preds = %77
  %81 = load %struct.MPContext*, %struct.MPContext** %5, align 8
  %82 = load i8*, i8** %11, align 8
  %83 = call i8* @mp_property_expand_escaped_string(%struct.MPContext* %81, i8* %82)
  store i8* %83, i8** %12, align 8
  %84 = load i8**, i8*** %4, align 8
  %85 = load i8*, i8** %84, align 8
  %86 = load i8*, i8** %12, align 8
  %87 = call i8* @talloc_strdup_append(i8* %85, i8* %86)
  %88 = load i8**, i8*** %4, align 8
  store i8* %87, i8** %88, align 8
  %89 = load i8*, i8** %12, align 8
  %90 = call i32 @talloc_free(i8* %89)
  br label %112

91:                                               ; preds = %77, %58
  %92 = load i8**, i8*** %4, align 8
  %93 = load %struct.MPContext*, %struct.MPContext** %5, align 8
  %94 = call i32 @get_playback_time(%struct.MPContext* %93)
  %95 = load i32, i32* %9, align 4
  %96 = call i32 @sadd_hhmmssff(i8** %92, i32 %94, i32 %95)
  %97 = load i32, i32* %6, align 4
  %98 = icmp eq i32 %97, 3
  br i1 %98, label %99, label %111

99:                                               ; preds = %91
  %100 = load i8**, i8*** %4, align 8
  %101 = call i32 (i8**, i8*, ...) @saddf(i8** %100, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %102 = load i8**, i8*** %4, align 8
  %103 = load %struct.MPContext*, %struct.MPContext** %5, align 8
  %104 = call i32 @get_time_length(%struct.MPContext* %103)
  %105 = load i32, i32* %9, align 4
  %106 = call i32 @sadd_hhmmssff(i8** %102, i32 %104, i32 %105)
  %107 = load i8**, i8*** %4, align 8
  %108 = load %struct.MPContext*, %struct.MPContext** %5, align 8
  %109 = call i32 @get_percent_pos(%struct.MPContext* %108)
  %110 = call i32 @sadd_percentage(i8** %107, i32 %109)
  br label %111

111:                                              ; preds = %99, %91
  br label %112

112:                                              ; preds = %111, %80
  br label %113

113:                                              ; preds = %112, %55
  br label %114

114:                                              ; preds = %24, %113, %44
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i8* @mp_property_expand_escaped_string(%struct.MPContext*, i8*) #1

declare dso_local i8* @talloc_strdup_append(i8*, i8*) #1

declare dso_local i32 @talloc_free(i8*) #1

declare dso_local i32 @get_current_osd_sym(%struct.MPContext*, i8*, i32) #1

declare dso_local i32 @saddf(i8**, i8*, ...) #1

declare dso_local i32 @sadd_hhmmssff(i8**, i32, i32) #1

declare dso_local i32 @get_playback_time(%struct.MPContext*) #1

declare dso_local i32 @get_time_length(%struct.MPContext*) #1

declare dso_local i32 @sadd_percentage(i8**, i32) #1

declare dso_local i32 @get_percent_pos(%struct.MPContext*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
