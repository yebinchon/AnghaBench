; ModuleID = '/home/carl/AnghaBench/mpv/player/extr_command.c_property_filter.c'
source_filename = "/home/carl/AnghaBench/mpv/player/extr_command.c_property_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.m_property = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.m_config_option = type { i64 }
%struct.m_obj_settings = type { i32 }

@M_PROPERTY_OK = common dso_local global i32 0, align 4
@M_PROPERTY_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.m_property*, i32, i8*, %struct.TYPE_5__*, i32)* @property_filter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @property_filter(%struct.m_property* %0, i32 %1, i8* %2, %struct.TYPE_5__* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.m_property*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca %struct.TYPE_5__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.m_config_option*, align 8
  store %struct.m_property* %0, %struct.m_property** %7, align 8
  store i32 %1, i32* %8, align 4
  store i8* %2, i8** %9, align 8
  store %struct.TYPE_5__* %3, %struct.TYPE_5__** %10, align 8
  store i32 %4, i32* %11, align 4
  %13 = load i32, i32* %8, align 4
  switch i32 %13, label %46 [
    i32 129, label %14
    i32 128, label %32
  ]

14:                                               ; preds = %5
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.m_property*, %struct.m_property** %7, align 8
  %19 = getelementptr inbounds %struct.m_property, %struct.m_property* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @bstr0(i32 %20)
  %22 = call %struct.m_config_option* @m_config_get_co(i32 %17, i32 %21)
  store %struct.m_config_option* %22, %struct.m_config_option** %12, align 8
  %23 = load %struct.m_config_option*, %struct.m_config_option** %12, align 8
  %24 = getelementptr inbounds %struct.m_config_option, %struct.m_config_option* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = inttoptr i64 %25 to %struct.m_obj_settings**
  %27 = load %struct.m_obj_settings*, %struct.m_obj_settings** %26, align 8
  %28 = call i8* @print_obj_osd_list(%struct.m_obj_settings* %27)
  %29 = load i8*, i8** %9, align 8
  %30 = bitcast i8* %29 to i8**
  store i8* %28, i8** %30, align 8
  %31 = load i32, i32* @M_PROPERTY_OK, align 4
  store i32 %31, i32* %6, align 4
  br label %52

32:                                               ; preds = %5
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %34 = load i32, i32* %11, align 4
  %35 = load i8*, i8** %9, align 8
  %36 = bitcast i8* %35 to %struct.m_obj_settings**
  %37 = load %struct.m_obj_settings*, %struct.m_obj_settings** %36, align 8
  %38 = call i32 @set_filters(%struct.TYPE_5__* %33, i32 %34, %struct.m_obj_settings* %37)
  %39 = icmp sge i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %32
  %41 = load i32, i32* @M_PROPERTY_OK, align 4
  br label %44

42:                                               ; preds = %32
  %43 = load i32, i32* @M_PROPERTY_ERROR, align 4
  br label %44

44:                                               ; preds = %42, %40
  %45 = phi i32 [ %41, %40 ], [ %43, %42 ]
  store i32 %45, i32* %6, align 4
  br label %52

46:                                               ; preds = %5
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %48 = load %struct.m_property*, %struct.m_property** %7, align 8
  %49 = load i32, i32* %8, align 4
  %50 = load i8*, i8** %9, align 8
  %51 = call i32 @mp_property_generic_option(%struct.TYPE_5__* %47, %struct.m_property* %48, i32 %49, i8* %50)
  store i32 %51, i32* %6, align 4
  br label %52

52:                                               ; preds = %46, %44, %14
  %53 = load i32, i32* %6, align 4
  ret i32 %53
}

declare dso_local %struct.m_config_option* @m_config_get_co(i32, i32) #1

declare dso_local i32 @bstr0(i32) #1

declare dso_local i8* @print_obj_osd_list(%struct.m_obj_settings*) #1

declare dso_local i32 @set_filters(%struct.TYPE_5__*, i32, %struct.m_obj_settings*) #1

declare dso_local i32 @mp_property_generic_option(%struct.TYPE_5__*, %struct.m_property*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
