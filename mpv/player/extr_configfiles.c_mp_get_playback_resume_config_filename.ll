; ModuleID = '/home/carl/AnghaBench/mpv/player/extr_configfiles.c_mp_get_playback_resume_config_filename.c'
source_filename = "/home/carl/AnghaBench/mpv/player/extr_configfiles.c_mp_get_playback_resume_config_filename.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.MPContext = type { i8*, i32, %struct.MPOpts* }
%struct.MPOpts = type { i8*, i64 }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"%02X\00", align 1
@MP_WATCH_LATER_CONF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.MPContext*, i8*)* @mp_get_playback_resume_config_filename to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @mp_get_playback_resume_config_filename(%struct.MPContext* %0, i8* %1) #0 {
  %3 = alloca %struct.MPContext*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.MPOpts*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca [16 x i32], align 16
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  store %struct.MPContext* %0, %struct.MPContext** %3, align 8
  store i8* %1, i8** %4, align 8
  %15 = load %struct.MPContext*, %struct.MPContext** %3, align 8
  %16 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %15, i32 0, i32 2
  %17 = load %struct.MPOpts*, %struct.MPOpts** %16, align 8
  store %struct.MPOpts* %17, %struct.MPOpts** %5, align 8
  store i8* null, i8** %6, align 8
  %18 = call i8* @talloc_new(i32* null)
  store i8* %18, i8** %7, align 8
  %19 = load i8*, i8** %4, align 8
  store i8* %19, i8** %8, align 8
  %20 = load i8*, i8** %4, align 8
  %21 = call i32 @bstr0(i8* %20)
  store i32 %21, i32* %9, align 4
  %22 = load i32, i32* %9, align 4
  %23 = call i32 @mp_is_url(i32 %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %45, label %25

25:                                               ; preds = %2
  %26 = load %struct.MPOpts*, %struct.MPOpts** %5, align 8
  %27 = getelementptr inbounds %struct.MPOpts, %struct.MPOpts* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %25
  %31 = load i8*, i8** %4, align 8
  %32 = call i8* @mp_basename(i8* %31)
  store i8* %32, i8** %8, align 8
  br label %44

33:                                               ; preds = %25
  %34 = load i8*, i8** %7, align 8
  %35 = call i8* @mp_getcwd(i8* %34)
  store i8* %35, i8** %10, align 8
  %36 = load i8*, i8** %10, align 8
  %37 = icmp ne i8* %36, null
  br i1 %37, label %39, label %38

38:                                               ; preds = %33
  br label %121

39:                                               ; preds = %33
  %40 = load i8*, i8** %7, align 8
  %41 = load i8*, i8** %10, align 8
  %42 = load i8*, i8** %4, align 8
  %43 = call i8* @mp_path_join(i8* %40, i8* %41, i8* %42)
  store i8* %43, i8** %8, align 8
  br label %44

44:                                               ; preds = %39, %30
  br label %45

45:                                               ; preds = %44, %2
  %46 = getelementptr inbounds [16 x i32], [16 x i32]* %11, i64 0, i64 0
  %47 = load i8*, i8** %8, align 8
  %48 = load i8*, i8** %8, align 8
  %49 = call i32 @strlen(i8* %48)
  %50 = call i32 @av_md5_sum(i32* %46, i8* %47, i32 %49)
  %51 = load i8*, i8** %7, align 8
  %52 = call i8* @talloc_strdup(i8* %51, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  store i8* %52, i8** %12, align 8
  store i32 0, i32* %13, align 4
  br label %53

53:                                               ; preds = %63, %45
  %54 = load i32, i32* %13, align 4
  %55 = icmp slt i32 %54, 16
  br i1 %55, label %56, label %66

56:                                               ; preds = %53
  %57 = load i8*, i8** %12, align 8
  %58 = load i32, i32* %13, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds [16 x i32], [16 x i32]* %11, i64 0, i64 %59
  %61 = load i32, i32* %60, align 4
  %62 = call i8* @talloc_asprintf_append(i8* %57, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 %61)
  store i8* %62, i8** %12, align 8
  br label %63

63:                                               ; preds = %56
  %64 = load i32, i32* %13, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %13, align 4
  br label %53

66:                                               ; preds = %53
  %67 = load %struct.MPContext*, %struct.MPContext** %3, align 8
  %68 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %67, i32 0, i32 0
  %69 = load i8*, i8** %68, align 8
  %70 = icmp ne i8* %69, null
  br i1 %70, label %95, label %71

71:                                               ; preds = %66
  %72 = load %struct.MPContext*, %struct.MPContext** %3, align 8
  %73 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %72, i32 0, i32 2
  %74 = load %struct.MPOpts*, %struct.MPOpts** %73, align 8
  %75 = getelementptr inbounds %struct.MPOpts, %struct.MPOpts* %74, i32 0, i32 0
  %76 = load i8*, i8** %75, align 8
  store i8* %76, i8** %14, align 8
  %77 = load i8*, i8** %14, align 8
  %78 = icmp ne i8* %77, null
  br i1 %78, label %79, label %94

79:                                               ; preds = %71
  %80 = load i8*, i8** %14, align 8
  %81 = getelementptr inbounds i8, i8* %80, i64 0
  %82 = load i8, i8* %81, align 1
  %83 = sext i8 %82 to i32
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %94

85:                                               ; preds = %79
  %86 = load %struct.MPContext*, %struct.MPContext** %3, align 8
  %87 = load %struct.MPContext*, %struct.MPContext** %3, align 8
  %88 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 8
  %90 = load i8*, i8** %14, align 8
  %91 = call i8* @mp_get_user_path(%struct.MPContext* %86, i32 %89, i8* %90)
  %92 = load %struct.MPContext*, %struct.MPContext** %3, align 8
  %93 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %92, i32 0, i32 0
  store i8* %91, i8** %93, align 8
  br label %94

94:                                               ; preds = %85, %79, %71
  br label %95

95:                                               ; preds = %94, %66
  %96 = load %struct.MPContext*, %struct.MPContext** %3, align 8
  %97 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %96, i32 0, i32 0
  %98 = load i8*, i8** %97, align 8
  %99 = icmp ne i8* %98, null
  br i1 %99, label %109, label %100

100:                                              ; preds = %95
  %101 = load %struct.MPContext*, %struct.MPContext** %3, align 8
  %102 = load %struct.MPContext*, %struct.MPContext** %3, align 8
  %103 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 8
  %105 = load i32, i32* @MP_WATCH_LATER_CONF, align 4
  %106 = call i8* @mp_find_user_config_file(%struct.MPContext* %101, i32 %104, i32 %105)
  %107 = load %struct.MPContext*, %struct.MPContext** %3, align 8
  %108 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %107, i32 0, i32 0
  store i8* %106, i8** %108, align 8
  br label %109

109:                                              ; preds = %100, %95
  %110 = load %struct.MPContext*, %struct.MPContext** %3, align 8
  %111 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %110, i32 0, i32 0
  %112 = load i8*, i8** %111, align 8
  %113 = icmp ne i8* %112, null
  br i1 %113, label %114, label %120

114:                                              ; preds = %109
  %115 = load %struct.MPContext*, %struct.MPContext** %3, align 8
  %116 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %115, i32 0, i32 0
  %117 = load i8*, i8** %116, align 8
  %118 = load i8*, i8** %12, align 8
  %119 = call i8* @mp_path_join(i8* null, i8* %117, i8* %118)
  store i8* %119, i8** %6, align 8
  br label %120

120:                                              ; preds = %114, %109
  br label %121

121:                                              ; preds = %120, %38
  %122 = load i8*, i8** %7, align 8
  %123 = call i32 @talloc_free(i8* %122)
  %124 = load i8*, i8** %6, align 8
  ret i8* %124
}

declare dso_local i8* @talloc_new(i32*) #1

declare dso_local i32 @bstr0(i8*) #1

declare dso_local i32 @mp_is_url(i32) #1

declare dso_local i8* @mp_basename(i8*) #1

declare dso_local i8* @mp_getcwd(i8*) #1

declare dso_local i8* @mp_path_join(i8*, i8*, i8*) #1

declare dso_local i32 @av_md5_sum(i32*, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i8* @talloc_strdup(i8*, i8*) #1

declare dso_local i8* @talloc_asprintf_append(i8*, i8*, i32) #1

declare dso_local i8* @mp_get_user_path(%struct.MPContext*, i32, i8*) #1

declare dso_local i8* @mp_find_user_config_file(%struct.MPContext*, i32, i32) #1

declare dso_local i32 @talloc_free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
