; ModuleID = '/home/carl/AnghaBench/mpv/sub/extr_ass_mp.c_mp_ass_configure_fonts.c'
source_filename = "/home/carl/AnghaBench/mpv/sub/extr_ass_mp.c_mp_ass_configure_fonts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.osd_style_opts = type { i32, i32 }
%struct.mpv_global = type { i32 }
%struct.mp_log = type { i32 }

@.str = private unnamed_addr constant [12 x i8] c"subfont.ttf\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"fonts.conf\00", align 1
@ASS_FONTPROVIDER_AUTODETECT = common dso_local global i32 0, align 4
@ASS_FONTPROVIDER_NONE = common dso_local global i32 0, align 4
@ASS_FONTPROVIDER_FONTCONFIG = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [21 x i8] c"Setting up fonts...\0A\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"Done.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mp_ass_configure_fonts(i32* %0, %struct.osd_style_opts* %1, %struct.mpv_global* %2, %struct.mp_log* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca %struct.osd_style_opts*, align 8
  %7 = alloca %struct.mpv_global*, align 8
  %8 = alloca %struct.mp_log*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store %struct.osd_style_opts* %1, %struct.osd_style_opts** %6, align 8
  store %struct.mpv_global* %2, %struct.mpv_global** %7, align 8
  store %struct.mp_log* %3, %struct.mp_log** %8, align 8
  %13 = call i8* @talloc_new(i32* null)
  store i8* %13, i8** %9, align 8
  %14 = load i8*, i8** %9, align 8
  %15 = load %struct.mpv_global*, %struct.mpv_global** %7, align 8
  %16 = call i8* @mp_find_config_file(i8* %14, %struct.mpv_global* %15, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  store i8* %16, i8** %10, align 8
  %17 = load i8*, i8** %9, align 8
  %18 = load %struct.mpv_global*, %struct.mpv_global** %7, align 8
  %19 = call i8* @mp_find_config_file(i8* %17, %struct.mpv_global* %18, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  store i8* %19, i8** %11, align 8
  %20 = load i8*, i8** %10, align 8
  %21 = icmp ne i8* %20, null
  br i1 %21, label %22, label %27

22:                                               ; preds = %4
  %23 = load i8*, i8** %10, align 8
  %24 = call i32 @mp_path_exists(i8* %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %22
  store i8* null, i8** %10, align 8
  br label %27

27:                                               ; preds = %26, %22, %4
  %28 = load i32, i32* @ASS_FONTPROVIDER_AUTODETECT, align 4
  store i32 %28, i32* %12, align 4
  %29 = load %struct.osd_style_opts*, %struct.osd_style_opts** %6, align 8
  %30 = getelementptr inbounds %struct.osd_style_opts, %struct.osd_style_opts* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = icmp eq i32 %31, 1
  br i1 %32, label %33, label %35

33:                                               ; preds = %27
  %34 = load i32, i32* @ASS_FONTPROVIDER_NONE, align 4
  store i32 %34, i32* %12, align 4
  br label %35

35:                                               ; preds = %33, %27
  %36 = load %struct.osd_style_opts*, %struct.osd_style_opts** %6, align 8
  %37 = getelementptr inbounds %struct.osd_style_opts, %struct.osd_style_opts* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = icmp eq i32 %38, 2
  br i1 %39, label %40, label %42

40:                                               ; preds = %35
  %41 = load i32, i32* @ASS_FONTPROVIDER_FONTCONFIG, align 4
  store i32 %41, i32* %12, align 4
  br label %42

42:                                               ; preds = %40, %35
  %43 = load %struct.mp_log*, %struct.mp_log** %8, align 8
  %44 = call i32 @mp_verbose(%struct.mp_log* %43, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  %45 = load i32*, i32** %5, align 8
  %46 = load i8*, i8** %10, align 8
  %47 = load %struct.osd_style_opts*, %struct.osd_style_opts** %6, align 8
  %48 = getelementptr inbounds %struct.osd_style_opts, %struct.osd_style_opts* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* %12, align 4
  %51 = load i8*, i8** %11, align 8
  %52 = call i32 @ass_set_fonts(i32* %45, i8* %46, i32 %49, i32 %50, i8* %51, i32 1)
  %53 = load %struct.mp_log*, %struct.mp_log** %8, align 8
  %54 = call i32 @mp_verbose(%struct.mp_log* %53, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  %55 = load i8*, i8** %9, align 8
  %56 = call i32 @talloc_free(i8* %55)
  ret void
}

declare dso_local i8* @talloc_new(i32*) #1

declare dso_local i8* @mp_find_config_file(i8*, %struct.mpv_global*, i8*) #1

declare dso_local i32 @mp_path_exists(i8*) #1

declare dso_local i32 @mp_verbose(%struct.mp_log*, i8*) #1

declare dso_local i32 @ass_set_fonts(i32*, i8*, i32, i32, i8*, i32) #1

declare dso_local i32 @talloc_free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
