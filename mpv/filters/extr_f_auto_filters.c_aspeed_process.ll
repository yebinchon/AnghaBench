; ModuleID = '/home/carl/AnghaBench/mpv/filters/extr_f_auto_filters.c_aspeed_process.c'
source_filename = "/home/carl/AnghaBench/mpv/filters/extr_f_auto_filters.c_aspeed_process.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mp_filter = type { %struct.aspeed_priv* }
%struct.aspeed_priv = type { %struct.TYPE_4__, i64 }
%struct.TYPE_4__ = type { i64 }
%struct.mp_filter_command = type { i64, i32 }

@.str = private unnamed_addr constant [21 x i8] c"removing scaletempo\0A\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"adding scaletempo\0A\00", align 1
@MP_OUTPUT_CHAIN_AUDIO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [11 x i8] c"scaletempo\00", align 1
@.str.3 = private unnamed_addr constant [36 x i8] c"could not create scaletempo filter\0A\00", align 1
@MP_FILTER_COMMAND_SET_SPEED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mp_filter*)* @aspeed_process to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @aspeed_process(%struct.mp_filter* %0) #0 {
  %2 = alloca %struct.mp_filter*, align 8
  %3 = alloca %struct.aspeed_priv*, align 8
  %4 = alloca %struct.mp_filter_command, align 8
  store %struct.mp_filter* %0, %struct.mp_filter** %2, align 8
  %5 = load %struct.mp_filter*, %struct.mp_filter** %2, align 8
  %6 = getelementptr inbounds %struct.mp_filter, %struct.mp_filter* %5, i32 0, i32 0
  %7 = load %struct.aspeed_priv*, %struct.aspeed_priv** %6, align 8
  store %struct.aspeed_priv* %7, %struct.aspeed_priv** %3, align 8
  %8 = load %struct.aspeed_priv*, %struct.aspeed_priv** %3, align 8
  %9 = getelementptr inbounds %struct.aspeed_priv, %struct.aspeed_priv* %8, i32 0, i32 0
  %10 = call i32 @mp_subfilter_read(%struct.TYPE_4__* %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %1
  br label %89

13:                                               ; preds = %1
  %14 = load %struct.aspeed_priv*, %struct.aspeed_priv** %3, align 8
  %15 = getelementptr inbounds %struct.aspeed_priv, %struct.aspeed_priv* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = sitofp i64 %16 to double
  %18 = fsub double %17, 1.000000e+00
  %19 = fptosi double %18 to i64
  %20 = call i32 @fabs(i64 %19)
  %21 = sitofp i32 %20 to double
  %22 = fcmp olt double %21, 1.000000e-08
  br i1 %22, label %23, label %39

23:                                               ; preds = %13
  %24 = load %struct.aspeed_priv*, %struct.aspeed_priv** %3, align 8
  %25 = getelementptr inbounds %struct.aspeed_priv, %struct.aspeed_priv* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %23
  %30 = load %struct.mp_filter*, %struct.mp_filter** %2, align 8
  %31 = call i32 @MP_VERBOSE(%struct.mp_filter* %30, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  br label %32

32:                                               ; preds = %29, %23
  %33 = load %struct.aspeed_priv*, %struct.aspeed_priv** %3, align 8
  %34 = getelementptr inbounds %struct.aspeed_priv, %struct.aspeed_priv* %33, i32 0, i32 0
  %35 = call i32 @mp_subfilter_drain_destroy(%struct.TYPE_4__* %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %38, label %37

37:                                               ; preds = %32
  br label %89

38:                                               ; preds = %32
  br label %67

39:                                               ; preds = %13
  %40 = load %struct.aspeed_priv*, %struct.aspeed_priv** %3, align 8
  %41 = getelementptr inbounds %struct.aspeed_priv, %struct.aspeed_priv* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %66, label %45

45:                                               ; preds = %39
  %46 = load %struct.mp_filter*, %struct.mp_filter** %2, align 8
  %47 = call i32 @MP_VERBOSE(%struct.mp_filter* %46, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  %48 = load %struct.mp_filter*, %struct.mp_filter** %2, align 8
  %49 = load i32, i32* @MP_OUTPUT_CHAIN_AUDIO, align 4
  %50 = call i64 @mp_create_user_filter(%struct.mp_filter* %48, i32 %49, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i32* null)
  %51 = load %struct.aspeed_priv*, %struct.aspeed_priv** %3, align 8
  %52 = getelementptr inbounds %struct.aspeed_priv, %struct.aspeed_priv* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  store i64 %50, i64* %53, align 8
  %54 = load %struct.aspeed_priv*, %struct.aspeed_priv** %3, align 8
  %55 = getelementptr inbounds %struct.aspeed_priv, %struct.aspeed_priv* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %65, label %59

59:                                               ; preds = %45
  %60 = load %struct.mp_filter*, %struct.mp_filter** %2, align 8
  %61 = call i32 @MP_ERR(%struct.mp_filter* %60, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0))
  %62 = load %struct.aspeed_priv*, %struct.aspeed_priv** %3, align 8
  %63 = getelementptr inbounds %struct.aspeed_priv, %struct.aspeed_priv* %62, i32 0, i32 0
  %64 = call i32 @mp_subfilter_continue(%struct.TYPE_4__* %63)
  br label %89

65:                                               ; preds = %45
  br label %66

66:                                               ; preds = %65, %39
  br label %67

67:                                               ; preds = %66, %38
  %68 = load %struct.aspeed_priv*, %struct.aspeed_priv** %3, align 8
  %69 = getelementptr inbounds %struct.aspeed_priv, %struct.aspeed_priv* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %85

73:                                               ; preds = %67
  %74 = getelementptr inbounds %struct.mp_filter_command, %struct.mp_filter_command* %4, i32 0, i32 0
  %75 = load %struct.aspeed_priv*, %struct.aspeed_priv** %3, align 8
  %76 = getelementptr inbounds %struct.aspeed_priv, %struct.aspeed_priv* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  store i64 %77, i64* %74, align 8
  %78 = getelementptr inbounds %struct.mp_filter_command, %struct.mp_filter_command* %4, i32 0, i32 1
  %79 = load i32, i32* @MP_FILTER_COMMAND_SET_SPEED, align 4
  store i32 %79, i32* %78, align 8
  %80 = load %struct.aspeed_priv*, %struct.aspeed_priv** %3, align 8
  %81 = getelementptr inbounds %struct.aspeed_priv, %struct.aspeed_priv* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = call i32 @mp_filter_command(i64 %83, %struct.mp_filter_command* %4)
  br label %85

85:                                               ; preds = %73, %67
  %86 = load %struct.aspeed_priv*, %struct.aspeed_priv** %3, align 8
  %87 = getelementptr inbounds %struct.aspeed_priv, %struct.aspeed_priv* %86, i32 0, i32 0
  %88 = call i32 @mp_subfilter_continue(%struct.TYPE_4__* %87)
  br label %89

89:                                               ; preds = %85, %59, %37, %12
  ret void
}

declare dso_local i32 @mp_subfilter_read(%struct.TYPE_4__*) #1

declare dso_local i32 @fabs(i64) #1

declare dso_local i32 @MP_VERBOSE(%struct.mp_filter*, i8*) #1

declare dso_local i32 @mp_subfilter_drain_destroy(%struct.TYPE_4__*) #1

declare dso_local i64 @mp_create_user_filter(%struct.mp_filter*, i32, i8*, i32*) #1

declare dso_local i32 @MP_ERR(%struct.mp_filter*, i8*) #1

declare dso_local i32 @mp_subfilter_continue(%struct.TYPE_4__*) #1

declare dso_local i32 @mp_filter_command(i64, %struct.mp_filter_command*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
