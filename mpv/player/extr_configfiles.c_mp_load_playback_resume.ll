; ModuleID = '/home/carl/AnghaBench/mpv/player/extr_configfiles.c_mp_load_playback_resume.c'
source_filename = "/home/carl/AnghaBench/mpv/player/extr_configfiles.c_mp_load_playback_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.MPContext = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [6 x i8] c"start\00", align 1
@.str.1 = private unnamed_addr constant [77 x i8] c"Resuming playback. This behavior can be disabled with --no-resume-playback.\0A\00", align 1
@M_SETOPT_PRESERVE_CMDLINE = common dso_local global i32 0, align 4
@MSGL_V = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mp_load_playback_resume(%struct.MPContext* %0, i8* %1) #0 {
  %3 = alloca %struct.MPContext*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  store %struct.MPContext* %0, %struct.MPContext** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load %struct.MPContext*, %struct.MPContext** %3, align 8
  %7 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %6, i32 0, i32 1
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %2
  br label %40

13:                                               ; preds = %2
  %14 = load %struct.MPContext*, %struct.MPContext** %3, align 8
  %15 = load i8*, i8** %4, align 8
  %16 = call i8* @mp_get_playback_resume_config_filename(%struct.MPContext* %14, i8* %15)
  store i8* %16, i8** %5, align 8
  %17 = load i8*, i8** %5, align 8
  %18 = icmp ne i8* %17, null
  br i1 %18, label %19, label %37

19:                                               ; preds = %13
  %20 = load i8*, i8** %5, align 8
  %21 = call i64 @mp_path_exists(i8* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %37

23:                                               ; preds = %19
  %24 = load %struct.MPContext*, %struct.MPContext** %3, align 8
  %25 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @m_config_backup_opt(i32 %26, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %28 = load %struct.MPContext*, %struct.MPContext** %3, align 8
  %29 = call i32 @MP_INFO(%struct.MPContext* %28, i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str.1, i64 0, i64 0))
  %30 = load %struct.MPContext*, %struct.MPContext** %3, align 8
  %31 = load i8*, i8** %5, align 8
  %32 = load i32, i32* @M_SETOPT_PRESERVE_CMDLINE, align 4
  %33 = load i32, i32* @MSGL_V, align 4
  %34 = call i32 @try_load_config(%struct.MPContext* %30, i8* %31, i32 %32, i32 %33)
  %35 = load i8*, i8** %5, align 8
  %36 = call i32 @unlink(i8* %35)
  br label %37

37:                                               ; preds = %23, %19, %13
  %38 = load i8*, i8** %5, align 8
  %39 = call i32 @talloc_free(i8* %38)
  br label %40

40:                                               ; preds = %37, %12
  ret void
}

declare dso_local i8* @mp_get_playback_resume_config_filename(%struct.MPContext*, i8*) #1

declare dso_local i64 @mp_path_exists(i8*) #1

declare dso_local i32 @m_config_backup_opt(i32, i8*) #1

declare dso_local i32 @MP_INFO(%struct.MPContext*, i8*) #1

declare dso_local i32 @try_load_config(%struct.MPContext*, i8*, i32, i32) #1

declare dso_local i32 @unlink(i8*) #1

declare dso_local i32 @talloc_free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
