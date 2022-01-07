; ModuleID = '/home/carl/AnghaBench/mpv/player/extr_osd.c_term_osd_print_status_lazy.c'
source_filename = "/home/carl/AnghaBench/mpv/player/extr_osd.c_term_osd_print_status_lazy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.MPContext = type { i32, i64, i32, i32, i32, %struct.MPOpts* }
%struct.MPOpts = type { i64, i64, i32 }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.MPContext*)* @term_osd_print_status_lazy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @term_osd_print_status_lazy(%struct.MPContext* %0) #0 {
  %2 = alloca %struct.MPContext*, align 8
  %3 = alloca %struct.MPOpts*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.MPContext* %0, %struct.MPContext** %2, align 8
  %7 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %8 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %7, i32 0, i32 5
  %9 = load %struct.MPOpts*, %struct.MPOpts** %8, align 8
  store %struct.MPOpts* %9, %struct.MPOpts** %3, align 8
  %10 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %11 = call i32 @update_window_title(%struct.MPContext* %10, i32 0)
  %12 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %13 = call i32 @update_vo_playback_state(%struct.MPContext* %12)
  %14 = load %struct.MPOpts*, %struct.MPOpts** %3, align 8
  %15 = getelementptr inbounds %struct.MPOpts, %struct.MPOpts* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 8
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %1
  br label %76

19:                                               ; preds = %1
  %20 = load %struct.MPOpts*, %struct.MPOpts** %3, align 8
  %21 = getelementptr inbounds %struct.MPOpts, %struct.MPOpts* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %39, label %24

24:                                               ; preds = %19
  %25 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %26 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %25, i32 0, i32 4
  %27 = load i32, i32* %26, align 8
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %39

29:                                               ; preds = %24
  %30 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %31 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %29
  %35 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %36 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %57

39:                                               ; preds = %34, %29, %24, %19
  %40 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %41 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 8
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %39
  %45 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %46 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %56

49:                                               ; preds = %44, %39
  %50 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %51 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @mp_msg_flush_status_line(i32 %52)
  %54 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %55 = call i32 @term_osd_set_status_lazy(%struct.MPContext* %54, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  br label %56

56:                                               ; preds = %49, %44
  br label %76

57:                                               ; preds = %34
  %58 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %59 = call i8* @get_term_status_msg(%struct.MPContext* %58)
  store i8* %59, i8** %4, align 8
  %60 = load %struct.MPOpts*, %struct.MPOpts** %3, align 8
  %61 = getelementptr inbounds %struct.MPOpts, %struct.MPOpts* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %70

64:                                               ; preds = %57
  %65 = call i32 @saddf(i8** %4, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i32 80, i32* %5, align 4
  store i32 24, i32* %6, align 4
  %66 = call i32 @terminal_get_size(i32* %5, i32* %6)
  %67 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %68 = load i32, i32* %5, align 4
  %69 = call i32 @add_term_osd_bar(%struct.MPContext* %67, i8** %4, i32 %68)
  br label %70

70:                                               ; preds = %64, %57
  %71 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %72 = load i8*, i8** %4, align 8
  %73 = call i32 @term_osd_set_status_lazy(%struct.MPContext* %71, i8* %72)
  %74 = load i8*, i8** %4, align 8
  %75 = call i32 @talloc_free(i8* %74)
  br label %76

76:                                               ; preds = %70, %56, %18
  ret void
}

declare dso_local i32 @update_window_title(%struct.MPContext*, i32) #1

declare dso_local i32 @update_vo_playback_state(%struct.MPContext*) #1

declare dso_local i32 @mp_msg_flush_status_line(i32) #1

declare dso_local i32 @term_osd_set_status_lazy(%struct.MPContext*, i8*) #1

declare dso_local i8* @get_term_status_msg(%struct.MPContext*) #1

declare dso_local i32 @saddf(i8**, i8*) #1

declare dso_local i32 @terminal_get_size(i32*, i32*) #1

declare dso_local i32 @add_term_osd_bar(%struct.MPContext*, i8**, i32) #1

declare dso_local i32 @talloc_free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
