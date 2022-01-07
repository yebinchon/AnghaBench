; ModuleID = '/home/carl/AnghaBench/mpv/player/extr_command.c_access_options.c'
source_filename = "/home/carl/AnghaBench/mpv/player/extr_command.c_access_options.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.m_property_action_arg = type { i32, i64, i32 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.m_config_option = type { %struct.m_option*, i32 }
%struct.m_option = type { i32 }

@M_PROPERTY_UNKNOWN = common dso_local global i32 0, align 4
@M_PROPERTY_UNAVAILABLE = common dso_local global i32 0, align 4
@M_PROPERTY_OK = common dso_local global i32 0, align 4
@M_PROPERTY_ERROR = common dso_local global i32 0, align 4
@M_SETOPT_BACKUP = common dso_local global i32 0, align 4
@M_PROPERTY_NOT_IMPLEMENTED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.m_property_action_arg*, i32, %struct.TYPE_4__*)* @access_options to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @access_options(%struct.m_property_action_arg* %0, i32 %1, %struct.TYPE_4__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.m_property_action_arg*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_4__*, align 8
  %8 = alloca %struct.m_config_option*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.m_property_action_arg* %0, %struct.m_property_action_arg** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.TYPE_4__* %2, %struct.TYPE_4__** %7, align 8
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.m_property_action_arg*, %struct.m_property_action_arg** %5, align 8
  %15 = getelementptr inbounds %struct.m_property_action_arg, %struct.m_property_action_arg* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @bstr0(i32 %16)
  %18 = call %struct.m_config_option* @m_config_get_co(i32 %13, i32 %17)
  store %struct.m_config_option* %18, %struct.m_config_option** %8, align 8
  %19 = load %struct.m_config_option*, %struct.m_config_option** %8, align 8
  %20 = icmp ne %struct.m_config_option* %19, null
  br i1 %20, label %23, label %21

21:                                               ; preds = %3
  %22 = load i32, i32* @M_PROPERTY_UNKNOWN, align 4
  store i32 %22, i32* %4, align 4
  br label %96

23:                                               ; preds = %3
  %24 = load %struct.m_config_option*, %struct.m_config_option** %8, align 8
  %25 = getelementptr inbounds %struct.m_config_option, %struct.m_config_option* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %30, label %28

28:                                               ; preds = %23
  %29 = load i32, i32* @M_PROPERTY_UNAVAILABLE, align 4
  store i32 %29, i32* %4, align 4
  br label %96

30:                                               ; preds = %23
  %31 = load %struct.m_property_action_arg*, %struct.m_property_action_arg** %5, align 8
  %32 = getelementptr inbounds %struct.m_property_action_arg, %struct.m_property_action_arg* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  switch i32 %33, label %94 [
    i32 130, label %34
    i32 128, label %46
    i32 129, label %83
  ]

34:                                               ; preds = %30
  %35 = load %struct.m_config_option*, %struct.m_config_option** %8, align 8
  %36 = getelementptr inbounds %struct.m_config_option, %struct.m_config_option* %35, i32 0, i32 0
  %37 = load %struct.m_option*, %struct.m_option** %36, align 8
  %38 = load %struct.m_property_action_arg*, %struct.m_property_action_arg** %5, align 8
  %39 = getelementptr inbounds %struct.m_property_action_arg, %struct.m_property_action_arg* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = load %struct.m_config_option*, %struct.m_config_option** %8, align 8
  %42 = getelementptr inbounds %struct.m_config_option, %struct.m_config_option* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @m_option_copy(%struct.m_option* %37, i64 %40, i32 %43)
  %45 = load i32, i32* @M_PROPERTY_OK, align 4
  store i32 %45, i32* %4, align 4
  br label %96

46:                                               ; preds = %30
  %47 = load i32, i32* %6, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %56

49:                                               ; preds = %46
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %56, label %54

54:                                               ; preds = %49
  %55 = load i32, i32* @M_PROPERTY_ERROR, align 4
  store i32 %55, i32* %4, align 4
  br label %96

56:                                               ; preds = %49, %46
  %57 = load i32, i32* %6, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %56
  %60 = load i32, i32* @M_SETOPT_BACKUP, align 4
  br label %62

61:                                               ; preds = %56
  br label %62

62:                                               ; preds = %61, %59
  %63 = phi i32 [ %60, %59 ], [ 0, %61 ]
  store i32 %63, i32* %9, align 4
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.m_config_option*, %struct.m_config_option** %8, align 8
  %68 = load %struct.m_property_action_arg*, %struct.m_property_action_arg** %5, align 8
  %69 = getelementptr inbounds %struct.m_property_action_arg, %struct.m_property_action_arg* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = load i32, i32* %9, align 4
  %72 = call i32 @m_config_set_option_raw(i32 %66, %struct.m_config_option* %67, i64 %70, i32 %71)
  store i32 %72, i32* %10, align 4
  %73 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %74 = call i32 @mp_wakeup_core(%struct.TYPE_4__* %73)
  %75 = load i32, i32* %10, align 4
  %76 = icmp slt i32 %75, 0
  br i1 %76, label %77, label %79

77:                                               ; preds = %62
  %78 = load i32, i32* @M_PROPERTY_ERROR, align 4
  br label %81

79:                                               ; preds = %62
  %80 = load i32, i32* @M_PROPERTY_OK, align 4
  br label %81

81:                                               ; preds = %79, %77
  %82 = phi i32 [ %78, %77 ], [ %80, %79 ]
  store i32 %82, i32* %4, align 4
  br label %96

83:                                               ; preds = %30
  %84 = load %struct.m_property_action_arg*, %struct.m_property_action_arg** %5, align 8
  %85 = getelementptr inbounds %struct.m_property_action_arg, %struct.m_property_action_arg* %84, i32 0, i32 1
  %86 = load i64, i64* %85, align 8
  %87 = inttoptr i64 %86 to %struct.m_option*
  %88 = load %struct.m_config_option*, %struct.m_config_option** %8, align 8
  %89 = getelementptr inbounds %struct.m_config_option, %struct.m_config_option* %88, i32 0, i32 0
  %90 = load %struct.m_option*, %struct.m_option** %89, align 8
  %91 = bitcast %struct.m_option* %87 to i8*
  %92 = bitcast %struct.m_option* %90 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %91, i8* align 4 %92, i64 4, i1 false)
  %93 = load i32, i32* @M_PROPERTY_OK, align 4
  store i32 %93, i32* %4, align 4
  br label %96

94:                                               ; preds = %30
  %95 = load i32, i32* @M_PROPERTY_NOT_IMPLEMENTED, align 4
  store i32 %95, i32* %4, align 4
  br label %96

96:                                               ; preds = %94, %83, %81, %54, %34, %28, %21
  %97 = load i32, i32* %4, align 4
  ret i32 %97
}

declare dso_local %struct.m_config_option* @m_config_get_co(i32, i32) #1

declare dso_local i32 @bstr0(i32) #1

declare dso_local i32 @m_option_copy(%struct.m_option*, i64, i32) #1

declare dso_local i32 @m_config_set_option_raw(i32, %struct.m_config_option*, i64, i32) #1

declare dso_local i32 @mp_wakeup_core(%struct.TYPE_4__*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
