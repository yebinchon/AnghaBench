; ModuleID = '/home/carl/AnghaBench/mpv/player/extr_command.c_cmd_mouse.c'
source_filename = "/home/carl/AnghaBench/mpv/player/extr_command.c_cmd_mouse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mp_cmd_ctx = type { i32, %struct.TYPE_4__*, %struct.MPContext* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.MPContext = type { i32 }

@MP_KEY_MOUSE_BTN_COUNT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"%d is not a valid mouse button number.\0A\00", align 1
@MP_MBTN_RIGHT = common dso_local global i32 0, align 4
@MP_MBTN_BASE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [51 x i8] c"%d is not a valid mouse button for double-clicks.\0A\00", align 1
@MP_MBTN_DBL_BASE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @cmd_mouse to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cmd_mouse(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.mp_cmd_ctx*, align 8
  %4 = alloca %struct.MPContext*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %9 = load i8*, i8** %2, align 8
  %10 = bitcast i8* %9 to %struct.mp_cmd_ctx*
  store %struct.mp_cmd_ctx* %10, %struct.mp_cmd_ctx** %3, align 8
  %11 = load %struct.mp_cmd_ctx*, %struct.mp_cmd_ctx** %3, align 8
  %12 = getelementptr inbounds %struct.mp_cmd_ctx, %struct.mp_cmd_ctx* %11, i32 0, i32 2
  %13 = load %struct.MPContext*, %struct.MPContext** %12, align 8
  store %struct.MPContext* %13, %struct.MPContext** %4, align 8
  %14 = load %struct.mp_cmd_ctx*, %struct.mp_cmd_ctx** %3, align 8
  %15 = getelementptr inbounds %struct.mp_cmd_ctx, %struct.mp_cmd_ctx* %14, i32 0, i32 1
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i64 0
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %5, align 4
  %21 = load %struct.mp_cmd_ctx*, %struct.mp_cmd_ctx** %3, align 8
  %22 = getelementptr inbounds %struct.mp_cmd_ctx, %struct.mp_cmd_ctx* %21, i32 0, i32 1
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i64 1
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %6, align 4
  %28 = load %struct.mp_cmd_ctx*, %struct.mp_cmd_ctx** %3, align 8
  %29 = getelementptr inbounds %struct.mp_cmd_ctx, %struct.mp_cmd_ctx* %28, i32 0, i32 1
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i64 2
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  store i32 %34, i32* %7, align 4
  %35 = load i32, i32* %7, align 4
  %36 = icmp eq i32 %35, -1
  br i1 %36, label %37, label %44

37:                                               ; preds = %1
  %38 = load %struct.MPContext*, %struct.MPContext** %4, align 8
  %39 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* %5, align 4
  %42 = load i32, i32* %6, align 4
  %43 = call i32 @mp_input_set_mouse_pos_artificial(i32 %40, i32 %41, i32 %42)
  br label %101

44:                                               ; preds = %1
  %45 = load i32, i32* %7, align 4
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %51, label %47

47:                                               ; preds = %44
  %48 = load i32, i32* %7, align 4
  %49 = load i32, i32* @MP_KEY_MOUSE_BTN_COUNT, align 4
  %50 = icmp sge i32 %48, %49
  br i1 %50, label %51, label %57

51:                                               ; preds = %47, %44
  %52 = load %struct.MPContext*, %struct.MPContext** %4, align 8
  %53 = load i32, i32* %7, align 4
  %54 = call i32 @MP_ERR(%struct.MPContext* %52, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %53)
  %55 = load %struct.mp_cmd_ctx*, %struct.mp_cmd_ctx** %3, align 8
  %56 = getelementptr inbounds %struct.mp_cmd_ctx, %struct.mp_cmd_ctx* %55, i32 0, i32 0
  store i32 0, i32* %56, align 8
  br label %101

57:                                               ; preds = %47
  %58 = load %struct.mp_cmd_ctx*, %struct.mp_cmd_ctx** %3, align 8
  %59 = getelementptr inbounds %struct.mp_cmd_ctx, %struct.mp_cmd_ctx* %58, i32 0, i32 1
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i64 3
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  store i32 %64, i32* %8, align 4
  %65 = load i32, i32* %8, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %79

67:                                               ; preds = %57
  %68 = load i32, i32* %7, align 4
  %69 = load i32, i32* @MP_MBTN_RIGHT, align 4
  %70 = load i32, i32* @MP_MBTN_BASE, align 4
  %71 = sub nsw i32 %69, %70
  %72 = icmp sgt i32 %68, %71
  br i1 %72, label %73, label %79

73:                                               ; preds = %67
  %74 = load %struct.MPContext*, %struct.MPContext** %4, align 8
  %75 = load i32, i32* %7, align 4
  %76 = call i32 @MP_ERR(%struct.MPContext* %74, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0), i32 %75)
  %77 = load %struct.mp_cmd_ctx*, %struct.mp_cmd_ctx** %3, align 8
  %78 = getelementptr inbounds %struct.mp_cmd_ctx, %struct.mp_cmd_ctx* %77, i32 0, i32 0
  store i32 0, i32* %78, align 8
  br label %101

79:                                               ; preds = %67, %57
  %80 = load i32, i32* %8, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %84

82:                                               ; preds = %79
  %83 = load i32, i32* @MP_MBTN_DBL_BASE, align 4
  br label %86

84:                                               ; preds = %79
  %85 = load i32, i32* @MP_MBTN_BASE, align 4
  br label %86

86:                                               ; preds = %84, %82
  %87 = phi i32 [ %83, %82 ], [ %85, %84 ]
  %88 = load i32, i32* %7, align 4
  %89 = add nsw i32 %88, %87
  store i32 %89, i32* %7, align 4
  %90 = load %struct.MPContext*, %struct.MPContext** %4, align 8
  %91 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = load i32, i32* %5, align 4
  %94 = load i32, i32* %6, align 4
  %95 = call i32 @mp_input_set_mouse_pos_artificial(i32 %92, i32 %93, i32 %94)
  %96 = load %struct.MPContext*, %struct.MPContext** %4, align 8
  %97 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = load i32, i32* %7, align 4
  %100 = call i32 @mp_input_put_key_artificial(i32 %98, i32 %99)
  br label %101

101:                                              ; preds = %86, %73, %51, %37
  ret void
}

declare dso_local i32 @mp_input_set_mouse_pos_artificial(i32, i32, i32) #1

declare dso_local i32 @MP_ERR(%struct.MPContext*, i8*, i32) #1

declare dso_local i32 @mp_input_put_key_artificial(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
