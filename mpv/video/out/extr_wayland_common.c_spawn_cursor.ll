; ModuleID = '/home/carl/AnghaBench/mpv/video/out/extr_wayland_common.c_spawn_cursor.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/extr_wayland_common.c_spawn_cursor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vo_wayland_state = type { i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [13 x i8] c"XCURSOR_SIZE\00", align 1
@errno = common dso_local global i64 0, align 8
@INT_MAX = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [30 x i8] c"Unable to load cursor theme!\0A\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"left_ptr\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vo_wayland_state*)* @spawn_cursor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @spawn_cursor(%struct.vo_wayland_state* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vo_wayland_state*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  store %struct.vo_wayland_state* %0, %struct.vo_wayland_state** %3, align 8
  %8 = load %struct.vo_wayland_state*, %struct.vo_wayland_state** %3, align 8
  %9 = getelementptr inbounds %struct.vo_wayland_state, %struct.vo_wayland_state* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.vo_wayland_state*, %struct.vo_wayland_state** %3, align 8
  %12 = getelementptr inbounds %struct.vo_wayland_state, %struct.vo_wayland_state* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = icmp eq i32 %10, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %90

16:                                               ; preds = %1
  %17 = load %struct.vo_wayland_state*, %struct.vo_wayland_state** %3, align 8
  %18 = getelementptr inbounds %struct.vo_wayland_state, %struct.vo_wayland_state* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %16
  %22 = load %struct.vo_wayland_state*, %struct.vo_wayland_state** %3, align 8
  %23 = getelementptr inbounds %struct.vo_wayland_state, %struct.vo_wayland_state* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @wl_cursor_theme_destroy(i32 %24)
  br label %26

26:                                               ; preds = %21, %16
  br label %27

27:                                               ; preds = %26
  %28 = call i8* @getenv(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  store i8* %28, i8** %4, align 8
  store i32 32, i32* %5, align 4
  %29 = load i8*, i8** %4, align 8
  %30 = icmp ne i8* %29, null
  br i1 %30, label %31, label %51

31:                                               ; preds = %27
  store i64 0, i64* @errno, align 8
  %32 = load i8*, i8** %4, align 8
  %33 = call i64 @strtol(i8* %32, i8** %6, i32 10)
  store i64 %33, i64* %7, align 8
  %34 = load i8*, i8** %6, align 8
  %35 = load i8, i8* %34, align 1
  %36 = icmp ne i8 %35, 0
  br i1 %36, label %50, label %37

37:                                               ; preds = %31
  %38 = load i64, i64* @errno, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %50, label %40

40:                                               ; preds = %37
  %41 = load i64, i64* %7, align 8
  %42 = icmp sgt i64 %41, 0
  br i1 %42, label %43, label %50

43:                                               ; preds = %40
  %44 = load i64, i64* %7, align 8
  %45 = load i64, i64* @INT_MAX, align 8
  %46 = icmp sle i64 %44, %45
  br i1 %46, label %47, label %50

47:                                               ; preds = %43
  %48 = load i64, i64* %7, align 8
  %49 = trunc i64 %48 to i32
  store i32 %49, i32* %5, align 4
  br label %50

50:                                               ; preds = %47, %43, %40, %37, %31
  br label %51

51:                                               ; preds = %50, %27
  %52 = load i32, i32* %5, align 4
  %53 = load %struct.vo_wayland_state*, %struct.vo_wayland_state** %3, align 8
  %54 = getelementptr inbounds %struct.vo_wayland_state, %struct.vo_wayland_state* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = mul nsw i32 %52, %55
  %57 = load %struct.vo_wayland_state*, %struct.vo_wayland_state** %3, align 8
  %58 = getelementptr inbounds %struct.vo_wayland_state, %struct.vo_wayland_state* %57, i32 0, i32 4
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @wl_cursor_theme_load(i32* null, i32 %56, i32 %59)
  %61 = load %struct.vo_wayland_state*, %struct.vo_wayland_state** %3, align 8
  %62 = getelementptr inbounds %struct.vo_wayland_state, %struct.vo_wayland_state* %61, i32 0, i32 3
  store i32 %60, i32* %62, align 4
  %63 = load %struct.vo_wayland_state*, %struct.vo_wayland_state** %3, align 8
  %64 = getelementptr inbounds %struct.vo_wayland_state, %struct.vo_wayland_state* %63, i32 0, i32 3
  %65 = load i32, i32* %64, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %70, label %67

67:                                               ; preds = %51
  %68 = load %struct.vo_wayland_state*, %struct.vo_wayland_state** %3, align 8
  %69 = call i32 @MP_ERR(%struct.vo_wayland_state* %68, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  store i32 1, i32* %2, align 4
  br label %90

70:                                               ; preds = %51
  %71 = load %struct.vo_wayland_state*, %struct.vo_wayland_state** %3, align 8
  %72 = getelementptr inbounds %struct.vo_wayland_state, %struct.vo_wayland_state* %71, i32 0, i32 3
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @wl_cursor_theme_get_cursor(i32 %73, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  %75 = load %struct.vo_wayland_state*, %struct.vo_wayland_state** %3, align 8
  %76 = getelementptr inbounds %struct.vo_wayland_state, %struct.vo_wayland_state* %75, i32 0, i32 2
  store i32 %74, i32* %76, align 4
  %77 = load %struct.vo_wayland_state*, %struct.vo_wayland_state** %3, align 8
  %78 = getelementptr inbounds %struct.vo_wayland_state, %struct.vo_wayland_state* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %84, label %81

81:                                               ; preds = %70
  %82 = load %struct.vo_wayland_state*, %struct.vo_wayland_state** %3, align 8
  %83 = call i32 @MP_ERR(%struct.vo_wayland_state* %82, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  store i32 1, i32* %2, align 4
  br label %90

84:                                               ; preds = %70
  %85 = load %struct.vo_wayland_state*, %struct.vo_wayland_state** %3, align 8
  %86 = getelementptr inbounds %struct.vo_wayland_state, %struct.vo_wayland_state* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.vo_wayland_state*, %struct.vo_wayland_state** %3, align 8
  %89 = getelementptr inbounds %struct.vo_wayland_state, %struct.vo_wayland_state* %88, i32 0, i32 0
  store i32 %87, i32* %89, align 4
  store i32 0, i32* %2, align 4
  br label %90

90:                                               ; preds = %84, %81, %67, %15
  %91 = load i32, i32* %2, align 4
  ret i32 %91
}

declare dso_local i32 @wl_cursor_theme_destroy(i32) #1

declare dso_local i8* @getenv(i8*) #1

declare dso_local i64 @strtol(i8*, i8**, i32) #1

declare dso_local i32 @wl_cursor_theme_load(i32*, i32, i32) #1

declare dso_local i32 @MP_ERR(%struct.vo_wayland_state*, i8*) #1

declare dso_local i32 @wl_cursor_theme_get_cursor(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
