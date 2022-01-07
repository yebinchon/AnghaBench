; ModuleID = '/home/carl/AnghaBench/mpv/options/extr_m_property.c_m_property_multiply.c'
source_filename = "/home/carl/AnghaBench/mpv/options/extr_m_property.c_m_property_multiply.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mp_log = type { i32 }
%struct.m_property = type { i32 }
%union.m_option_value = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%union.m_option_value*, %union.m_option_value*, double)* }
%struct.m_option = type { %struct.TYPE_2__*, i32 }

@M_PROPERTY_GET_CONSTRICTED_TYPE = common dso_local global i32 0, align 4
@M_PROPERTY_OK = common dso_local global i32 0, align 4
@M_PROPERTY_NOT_IMPLEMENTED = common dso_local global i32 0, align 4
@M_PROPERTY_GET = common dso_local global i32 0, align 4
@M_PROPERTY_SET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mp_log*, %struct.m_property*, i8*, double, i8*)* @m_property_multiply to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @m_property_multiply(%struct.mp_log* %0, %struct.m_property* %1, i8* %2, double %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.mp_log*, align 8
  %8 = alloca %struct.m_property*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca double, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %union.m_option_value, align 8
  %13 = alloca %struct.m_option, align 8
  %14 = alloca i32, align 4
  store %struct.mp_log* %0, %struct.mp_log** %7, align 8
  store %struct.m_property* %1, %struct.m_property** %8, align 8
  store i8* %2, i8** %9, align 8
  store double %3, double* %10, align 8
  store i8* %4, i8** %11, align 8
  %15 = bitcast %union.m_option_value* %12 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %15, i8 0, i64 8, i1 false)
  %16 = bitcast %struct.m_option* %13 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %16, i8 0, i64 16, i1 false)
  %17 = load %struct.mp_log*, %struct.mp_log** %7, align 8
  %18 = load %struct.m_property*, %struct.m_property** %8, align 8
  %19 = load i8*, i8** %9, align 8
  %20 = load i32, i32* @M_PROPERTY_GET_CONSTRICTED_TYPE, align 4
  %21 = bitcast %struct.m_option* %13 to %union.m_option_value*
  %22 = load i8*, i8** %11, align 8
  %23 = call i32 @m_property_do(%struct.mp_log* %17, %struct.m_property* %18, i8* %19, i32 %20, %union.m_option_value* %21, i8* %22)
  store i32 %23, i32* %14, align 4
  %24 = load i32, i32* %14, align 4
  %25 = load i32, i32* @M_PROPERTY_OK, align 4
  %26 = icmp ne i32 %24, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %5
  %28 = load i32, i32* %14, align 4
  store i32 %28, i32* %6, align 4
  br label %69

29:                                               ; preds = %5
  %30 = getelementptr inbounds %struct.m_option, %struct.m_option* %13, i32 0, i32 0
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = call i32 @assert(%struct.TYPE_2__* %31)
  %33 = getelementptr inbounds %struct.m_option, %struct.m_option* %13, i32 0, i32 0
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i32 (%union.m_option_value*, %union.m_option_value*, double)*, i32 (%union.m_option_value*, %union.m_option_value*, double)** %35, align 8
  %37 = icmp ne i32 (%union.m_option_value*, %union.m_option_value*, double)* %36, null
  br i1 %37, label %40, label %38

38:                                               ; preds = %29
  %39 = load i32, i32* @M_PROPERTY_NOT_IMPLEMENTED, align 4
  store i32 %39, i32* %6, align 4
  br label %69

40:                                               ; preds = %29
  %41 = load %struct.mp_log*, %struct.mp_log** %7, align 8
  %42 = load %struct.m_property*, %struct.m_property** %8, align 8
  %43 = load i8*, i8** %9, align 8
  %44 = load i32, i32* @M_PROPERTY_GET, align 4
  %45 = load i8*, i8** %11, align 8
  %46 = call i32 @m_property_do(%struct.mp_log* %41, %struct.m_property* %42, i8* %43, i32 %44, %union.m_option_value* %12, i8* %45)
  store i32 %46, i32* %14, align 4
  %47 = load i32, i32* %14, align 4
  %48 = load i32, i32* @M_PROPERTY_OK, align 4
  %49 = icmp ne i32 %47, %48
  br i1 %49, label %50, label %52

50:                                               ; preds = %40
  %51 = load i32, i32* %14, align 4
  store i32 %51, i32* %6, align 4
  br label %69

52:                                               ; preds = %40
  %53 = getelementptr inbounds %struct.m_option, %struct.m_option* %13, i32 0, i32 0
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  %56 = load i32 (%union.m_option_value*, %union.m_option_value*, double)*, i32 (%union.m_option_value*, %union.m_option_value*, double)** %55, align 8
  %57 = bitcast %struct.m_option* %13 to %union.m_option_value*
  %58 = load double, double* %10, align 8
  %59 = call i32 %56(%union.m_option_value* %57, %union.m_option_value* %12, double %58)
  %60 = load %struct.mp_log*, %struct.mp_log** %7, align 8
  %61 = load %struct.m_property*, %struct.m_property** %8, align 8
  %62 = load i8*, i8** %9, align 8
  %63 = load i32, i32* @M_PROPERTY_SET, align 4
  %64 = load i8*, i8** %11, align 8
  %65 = call i32 @m_property_do(%struct.mp_log* %60, %struct.m_property* %61, i8* %62, i32 %63, %union.m_option_value* %12, i8* %64)
  store i32 %65, i32* %14, align 4
  %66 = bitcast %struct.m_option* %13 to %union.m_option_value*
  %67 = call i32 @m_option_free(%union.m_option_value* %66, %union.m_option_value* %12)
  %68 = load i32, i32* %14, align 4
  store i32 %68, i32* %6, align 4
  br label %69

69:                                               ; preds = %52, %50, %38, %27
  %70 = load i32, i32* %6, align 4
  ret i32 %70
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @m_property_do(%struct.mp_log*, %struct.m_property*, i8*, i32, %union.m_option_value*, i8*) #2

declare dso_local i32 @assert(%struct.TYPE_2__*) #2

declare dso_local i32 @m_option_free(%union.m_option_value*, %union.m_option_value*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
