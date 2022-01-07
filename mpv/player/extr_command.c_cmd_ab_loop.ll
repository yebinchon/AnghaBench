; ModuleID = '/home/carl/AnghaBench/mpv/player/extr_command.c_cmd_ab_loop.c'
source_filename = "/home/carl/AnghaBench/mpv/player/extr_command.c_cmd_ab_loop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mp_cmd_ctx = type { i32, i64, %struct.MPContext* }
%struct.MPContext = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, double* }

@OSD_LEVEL_INVISIBLE = common dso_local global i32 0, align 4
@MP_NOPTS_VALUE = common dso_local global double 0.000000e+00, align 8
@.str = private unnamed_addr constant [10 x i8] c"ab-loop-a\00", align 1
@M_PROPERTY_SET = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"ab-loop-b\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"Clear A-B loop\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @cmd_ab_loop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cmd_ab_loop(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.mp_cmd_ctx*, align 8
  %4 = alloca %struct.MPContext*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca double, align 8
  store i8* %0, i8** %2, align 8
  %8 = load i8*, i8** %2, align 8
  %9 = bitcast i8* %8 to %struct.mp_cmd_ctx*
  store %struct.mp_cmd_ctx* %9, %struct.mp_cmd_ctx** %3, align 8
  %10 = load %struct.mp_cmd_ctx*, %struct.mp_cmd_ctx** %3, align 8
  %11 = getelementptr inbounds %struct.mp_cmd_ctx, %struct.mp_cmd_ctx* %10, i32 0, i32 2
  %12 = load %struct.MPContext*, %struct.MPContext** %11, align 8
  store %struct.MPContext* %12, %struct.MPContext** %4, align 8
  %13 = load %struct.MPContext*, %struct.MPContext** %4, align 8
  %14 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %13, i32 0, i32 0
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  store i32 %17, i32* %5, align 4
  %18 = load %struct.mp_cmd_ctx*, %struct.mp_cmd_ctx** %3, align 8
  %19 = getelementptr inbounds %struct.mp_cmd_ctx, %struct.mp_cmd_ctx* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %1
  br label %25

23:                                               ; preds = %1
  %24 = load i32, i32* @OSD_LEVEL_INVISIBLE, align 4
  br label %25

25:                                               ; preds = %23, %22
  %26 = phi i32 [ 1, %22 ], [ %24, %23 ]
  store i32 %26, i32* %6, align 4
  %27 = load %struct.MPContext*, %struct.MPContext** %4, align 8
  %28 = call double @get_current_time(%struct.MPContext* %27)
  store double %28, double* %7, align 8
  %29 = load %struct.MPContext*, %struct.MPContext** %4, align 8
  %30 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %29, i32 0, i32 0
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 1
  %33 = load double*, double** %32, align 8
  %34 = getelementptr inbounds double, double* %33, i64 0
  %35 = load double, double* %34, align 8
  %36 = load double, double* @MP_NOPTS_VALUE, align 8
  %37 = fcmp oeq double %35, %36
  br i1 %37, label %38, label %47

38:                                               ; preds = %25
  %39 = load i32, i32* @M_PROPERTY_SET, align 4
  %40 = load %struct.MPContext*, %struct.MPContext** %4, align 8
  %41 = call i32 @mp_property_do(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %39, double* %7, %struct.MPContext* %40)
  %42 = load %struct.MPContext*, %struct.MPContext** %4, align 8
  %43 = load %struct.mp_cmd_ctx*, %struct.mp_cmd_ctx** %3, align 8
  %44 = getelementptr inbounds %struct.mp_cmd_ctx, %struct.mp_cmd_ctx* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @show_property_osd(%struct.MPContext* %42, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %45)
  br label %79

47:                                               ; preds = %25
  %48 = load %struct.MPContext*, %struct.MPContext** %4, align 8
  %49 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %48, i32 0, i32 0
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 1
  %52 = load double*, double** %51, align 8
  %53 = getelementptr inbounds double, double* %52, i64 1
  %54 = load double, double* %53, align 8
  %55 = load double, double* @MP_NOPTS_VALUE, align 8
  %56 = fcmp oeq double %54, %55
  br i1 %56, label %57, label %66

57:                                               ; preds = %47
  %58 = load i32, i32* @M_PROPERTY_SET, align 4
  %59 = load %struct.MPContext*, %struct.MPContext** %4, align 8
  %60 = call i32 @mp_property_do(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 %58, double* %7, %struct.MPContext* %59)
  %61 = load %struct.MPContext*, %struct.MPContext** %4, align 8
  %62 = load %struct.mp_cmd_ctx*, %struct.mp_cmd_ctx** %3, align 8
  %63 = getelementptr inbounds %struct.mp_cmd_ctx, %struct.mp_cmd_ctx* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = call i32 @show_property_osd(%struct.MPContext* %61, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 %64)
  br label %78

66:                                               ; preds = %47
  %67 = load double, double* @MP_NOPTS_VALUE, align 8
  store double %67, double* %7, align 8
  %68 = load i32, i32* @M_PROPERTY_SET, align 4
  %69 = load %struct.MPContext*, %struct.MPContext** %4, align 8
  %70 = call i32 @mp_property_do(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %68, double* %7, %struct.MPContext* %69)
  %71 = load i32, i32* @M_PROPERTY_SET, align 4
  %72 = load %struct.MPContext*, %struct.MPContext** %4, align 8
  %73 = call i32 @mp_property_do(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 %71, double* %7, %struct.MPContext* %72)
  %74 = load %struct.MPContext*, %struct.MPContext** %4, align 8
  %75 = load i32, i32* %6, align 4
  %76 = load i32, i32* %5, align 4
  %77 = call i32 @set_osd_msg(%struct.MPContext* %74, i32 %75, i32 %76, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  br label %78

78:                                               ; preds = %66, %57
  br label %79

79:                                               ; preds = %78, %38
  ret void
}

declare dso_local double @get_current_time(%struct.MPContext*) #1

declare dso_local i32 @mp_property_do(i8*, i32, double*, %struct.MPContext*) #1

declare dso_local i32 @show_property_osd(%struct.MPContext*, i8*, i32) #1

declare dso_local i32 @set_osd_msg(%struct.MPContext*, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
