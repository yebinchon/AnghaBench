; ModuleID = '/home/carl/AnghaBench/mpv/player/extr_command.c_cmd_add_cycle.c'
source_filename = "/home/carl/AnghaBench/mpv/player/extr_command.c_cmd_add_cycle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mp_cmd_ctx = type { i32, %struct.TYPE_6__*, %struct.TYPE_4__*, i32, %struct.MPContext* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i8*, double }
%struct.TYPE_4__ = type { i32, double, i32, i64 }
%struct.MPContext = type { i32 }
%struct.m_property_switch_arg = type { double, i32 }

@.str = private unnamed_addr constant [49 x i8] c"Dropping command '%.*s' from auto-repeated key.\0A\00", align 1
@M_PROPERTY_SWITCH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @cmd_add_cycle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cmd_add_cycle(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.mp_cmd_ctx*, align 8
  %4 = alloca %struct.MPContext*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca double, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.m_property_switch_arg, align 8
  store i8* %0, i8** %2, align 8
  %11 = load i8*, i8** %2, align 8
  %12 = bitcast i8* %11 to %struct.mp_cmd_ctx*
  store %struct.mp_cmd_ctx* %12, %struct.mp_cmd_ctx** %3, align 8
  %13 = load %struct.mp_cmd_ctx*, %struct.mp_cmd_ctx** %3, align 8
  %14 = getelementptr inbounds %struct.mp_cmd_ctx, %struct.mp_cmd_ctx* %13, i32 0, i32 4
  %15 = load %struct.MPContext*, %struct.MPContext** %14, align 8
  store %struct.MPContext* %15, %struct.MPContext** %4, align 8
  %16 = load %struct.mp_cmd_ctx*, %struct.mp_cmd_ctx** %3, align 8
  %17 = getelementptr inbounds %struct.mp_cmd_ctx, %struct.mp_cmd_ctx* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 8
  %19 = icmp ne i32 %18, 0
  %20 = xor i1 %19, true
  %21 = xor i1 %20, true
  %22 = zext i1 %21 to i32
  store i32 %22, i32* %5, align 4
  %23 = load %struct.mp_cmd_ctx*, %struct.mp_cmd_ctx** %3, align 8
  %24 = getelementptr inbounds %struct.mp_cmd_ctx, %struct.mp_cmd_ctx* %23, i32 0, i32 1
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i64 0
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = load i8*, i8** %28, align 8
  store i8* %29, i8** %6, align 8
  %30 = load %struct.mp_cmd_ctx*, %struct.mp_cmd_ctx** %3, align 8
  %31 = getelementptr inbounds %struct.mp_cmd_ctx, %struct.mp_cmd_ctx* %30, i32 0, i32 2
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 3
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %50

36:                                               ; preds = %1
  %37 = load i8*, i8** %6, align 8
  %38 = load %struct.MPContext*, %struct.MPContext** %4, align 8
  %39 = call i32 @check_property_autorepeat(i8* %37, %struct.MPContext* %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %50, label %41

41:                                               ; preds = %36
  %42 = load %struct.MPContext*, %struct.MPContext** %4, align 8
  %43 = load %struct.mp_cmd_ctx*, %struct.mp_cmd_ctx** %3, align 8
  %44 = getelementptr inbounds %struct.mp_cmd_ctx, %struct.mp_cmd_ctx* %43, i32 0, i32 2
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @BSTR_P(i32 %47)
  %49 = call i32 @MP_VERBOSE(%struct.MPContext* %42, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i32 %48)
  br label %97

50:                                               ; preds = %36, %1
  store double 1.000000e+00, double* %7, align 8
  %51 = load %struct.mp_cmd_ctx*, %struct.mp_cmd_ctx** %3, align 8
  %52 = getelementptr inbounds %struct.mp_cmd_ctx, %struct.mp_cmd_ctx* %51, i32 0, i32 2
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  store i32 %55, i32* %8, align 4
  %56 = load i8*, i8** %6, align 8
  %57 = load %struct.MPContext*, %struct.MPContext** %4, align 8
  %58 = call i64 @check_property_scalable(i8* %56, %struct.MPContext* %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %66

60:                                               ; preds = %50
  %61 = load %struct.mp_cmd_ctx*, %struct.mp_cmd_ctx** %3, align 8
  %62 = getelementptr inbounds %struct.mp_cmd_ctx, %struct.mp_cmd_ctx* %61, i32 0, i32 2
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 1
  %65 = load double, double* %64, align 8
  store double %65, double* %7, align 8
  store i32 1, i32* %8, align 4
  br label %66

66:                                               ; preds = %60, %50
  store i32 0, i32* %9, align 4
  br label %67

67:                                               ; preds = %94, %66
  %68 = load i32, i32* %9, align 4
  %69 = load i32, i32* %8, align 4
  %70 = icmp slt i32 %68, %69
  br i1 %70, label %71, label %97

71:                                               ; preds = %67
  %72 = getelementptr inbounds %struct.m_property_switch_arg, %struct.m_property_switch_arg* %10, i32 0, i32 0
  %73 = load %struct.mp_cmd_ctx*, %struct.mp_cmd_ctx** %3, align 8
  %74 = getelementptr inbounds %struct.mp_cmd_ctx, %struct.mp_cmd_ctx* %73, i32 0, i32 1
  %75 = load %struct.TYPE_6__*, %struct.TYPE_6__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i64 1
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 1
  %79 = load double, double* %78, align 8
  %80 = load double, double* %7, align 8
  %81 = fmul double %79, %80
  store double %81, double* %72, align 8
  %82 = getelementptr inbounds %struct.m_property_switch_arg, %struct.m_property_switch_arg* %10, i32 0, i32 1
  %83 = load i32, i32* %5, align 4
  store i32 %83, i32* %82, align 8
  %84 = load %struct.mp_cmd_ctx*, %struct.mp_cmd_ctx** %3, align 8
  %85 = load i8*, i8** %6, align 8
  %86 = load i32, i32* @M_PROPERTY_SWITCH, align 4
  %87 = call i32 @change_property_cmd(%struct.mp_cmd_ctx* %84, i8* %85, i32 %86, %struct.m_property_switch_arg* %10)
  %88 = load %struct.mp_cmd_ctx*, %struct.mp_cmd_ctx** %3, align 8
  %89 = getelementptr inbounds %struct.mp_cmd_ctx, %struct.mp_cmd_ctx* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %93, label %92

92:                                               ; preds = %71
  br label %97

93:                                               ; preds = %71
  br label %94

94:                                               ; preds = %93
  %95 = load i32, i32* %9, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %9, align 4
  br label %67

97:                                               ; preds = %41, %92, %67
  ret void
}

declare dso_local i32 @check_property_autorepeat(i8*, %struct.MPContext*) #1

declare dso_local i32 @MP_VERBOSE(%struct.MPContext*, i8*, i32) #1

declare dso_local i32 @BSTR_P(i32) #1

declare dso_local i64 @check_property_scalable(i8*, %struct.MPContext*) #1

declare dso_local i32 @change_property_cmd(%struct.mp_cmd_ctx*, i8*, i32, %struct.m_property_switch_arg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
