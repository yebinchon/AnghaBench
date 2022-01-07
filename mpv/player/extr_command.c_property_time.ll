; ModuleID = '/home/carl/AnghaBench/mpv/player/extr_command.c_property_time.c'
source_filename = "/home/carl/AnghaBench/mpv/player/extr_command.c_property_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.m_option = type { i32 }
%struct.m_property_action_arg = type { i64, i32, i32 }

@MP_NOPTS_VALUE = common dso_local global double 0.000000e+00, align 8
@M_PROPERTY_UNAVAILABLE = common dso_local global i32 0, align 4
@CONF_TYPE_TIME = common dso_local global i32 0, align 4
@M_PROPERTY_OK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"full\00", align 1
@M_PROPERTY_UNKNOWN = common dso_local global i32 0, align 4
@M_PROPERTY_NOT_IMPLEMENTED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, double)* @property_time to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @property_time(i32 %0, i8* %1, double %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca double, align 8
  %8 = alloca %struct.m_option, align 4
  %9 = alloca %struct.m_property_action_arg*, align 8
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store double %2, double* %7, align 8
  %10 = load double, double* %7, align 8
  %11 = load double, double* @MP_NOPTS_VALUE, align 8
  %12 = fcmp oeq double %10, %11
  br i1 %12, label %13, label %15

13:                                               ; preds = %3
  %14 = load i32, i32* @M_PROPERTY_UNAVAILABLE, align 4
  store i32 %14, i32* %4, align 4
  br label %70

15:                                               ; preds = %3
  %16 = getelementptr inbounds %struct.m_option, %struct.m_option* %8, i32 0, i32 0
  %17 = load i32, i32* @CONF_TYPE_TIME, align 4
  store i32 %17, i32* %16, align 4
  %18 = load i32, i32* %5, align 4
  switch i32 %18, label %68 [
    i32 131, label %19
    i32 130, label %24
    i32 129, label %30
  ]

19:                                               ; preds = %15
  %20 = load double, double* %7, align 8
  %21 = load i8*, i8** %6, align 8
  %22 = bitcast i8* %21 to double*
  store double %20, double* %22, align 8
  %23 = load i32, i32* @M_PROPERTY_OK, align 4
  store i32 %23, i32* %4, align 4
  br label %70

24:                                               ; preds = %15
  %25 = load i8*, i8** %6, align 8
  %26 = bitcast i8* %25 to %struct.m_option*
  %27 = bitcast %struct.m_option* %26 to i8*
  %28 = bitcast %struct.m_option* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %27, i8* align 4 %28, i64 4, i1 false)
  %29 = load i32, i32* @M_PROPERTY_OK, align 4
  store i32 %29, i32* %4, align 4
  br label %70

30:                                               ; preds = %15
  %31 = load i8*, i8** %6, align 8
  %32 = bitcast i8* %31 to %struct.m_property_action_arg*
  store %struct.m_property_action_arg* %32, %struct.m_property_action_arg** %9, align 8
  %33 = load %struct.m_property_action_arg*, %struct.m_property_action_arg** %9, align 8
  %34 = getelementptr inbounds %struct.m_property_action_arg, %struct.m_property_action_arg* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @strcmp(i32 %35, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %30
  %39 = load i32, i32* @M_PROPERTY_UNKNOWN, align 4
  store i32 %39, i32* %4, align 4
  br label %70

40:                                               ; preds = %30
  %41 = load %struct.m_property_action_arg*, %struct.m_property_action_arg** %9, align 8
  %42 = getelementptr inbounds %struct.m_property_action_arg, %struct.m_property_action_arg* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  switch i32 %43, label %67 [
    i32 131, label %44
    i32 128, label %51
    i32 130, label %59
  ]

44:                                               ; preds = %40
  %45 = load double, double* %7, align 8
  %46 = load %struct.m_property_action_arg*, %struct.m_property_action_arg** %9, align 8
  %47 = getelementptr inbounds %struct.m_property_action_arg, %struct.m_property_action_arg* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = inttoptr i64 %48 to double*
  store double %45, double* %49, align 8
  %50 = load i32, i32* @M_PROPERTY_OK, align 4
  store i32 %50, i32* %4, align 4
  br label %70

51:                                               ; preds = %40
  %52 = load double, double* %7, align 8
  %53 = call i8* @mp_format_time(double %52, i32 1)
  %54 = load %struct.m_property_action_arg*, %struct.m_property_action_arg** %9, align 8
  %55 = getelementptr inbounds %struct.m_property_action_arg, %struct.m_property_action_arg* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = inttoptr i64 %56 to i8**
  store i8* %53, i8** %57, align 8
  %58 = load i32, i32* @M_PROPERTY_OK, align 4
  store i32 %58, i32* %4, align 4
  br label %70

59:                                               ; preds = %40
  %60 = load %struct.m_property_action_arg*, %struct.m_property_action_arg** %9, align 8
  %61 = getelementptr inbounds %struct.m_property_action_arg, %struct.m_property_action_arg* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = inttoptr i64 %62 to %struct.m_option*
  %64 = bitcast %struct.m_option* %63 to i8*
  %65 = bitcast %struct.m_option* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %64, i8* align 4 %65, i64 4, i1 false)
  %66 = load i32, i32* @M_PROPERTY_OK, align 4
  store i32 %66, i32* %4, align 4
  br label %70

67:                                               ; preds = %40
  br label %68

68:                                               ; preds = %67, %15
  %69 = load i32, i32* @M_PROPERTY_NOT_IMPLEMENTED, align 4
  store i32 %69, i32* %4, align 4
  br label %70

70:                                               ; preds = %68, %59, %51, %44, %38, %24, %19, %13
  %71 = load i32, i32* %4, align 4
  ret i32 %71
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @strcmp(i32, i8*) #2

declare dso_local i8* @mp_format_time(double, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
