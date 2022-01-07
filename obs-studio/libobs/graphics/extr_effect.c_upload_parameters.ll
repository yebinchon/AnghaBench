; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/graphics/extr_effect.c_upload_parameters.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/graphics/extr_effect.c_upload_parameters.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gs_effect = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { %struct.darray }
%struct.darray = type { i32 }
%struct.TYPE_4__ = type { %struct.darray }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gs_effect*, i32)* @upload_parameters to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @upload_parameters(%struct.gs_effect* %0, i32 %1) #0 {
  %3 = alloca %struct.gs_effect*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.darray*, align 8
  %6 = alloca %struct.darray*, align 8
  store %struct.gs_effect* %0, %struct.gs_effect** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.gs_effect*, %struct.gs_effect** %3, align 8
  %8 = getelementptr inbounds %struct.gs_effect, %struct.gs_effect* %7, i32 0, i32 0
  %9 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %10 = icmp ne %struct.TYPE_6__* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  br label %33

12:                                               ; preds = %2
  %13 = load %struct.gs_effect*, %struct.gs_effect** %3, align 8
  %14 = getelementptr inbounds %struct.gs_effect, %struct.gs_effect* %13, i32 0, i32 0
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  store %struct.darray* %17, %struct.darray** %5, align 8
  %18 = load %struct.gs_effect*, %struct.gs_effect** %3, align 8
  %19 = getelementptr inbounds %struct.gs_effect, %struct.gs_effect* %18, i32 0, i32 0
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  store %struct.darray* %22, %struct.darray** %6, align 8
  %23 = load %struct.darray*, %struct.darray** %5, align 8
  %24 = load i32, i32* %4, align 4
  %25 = call i32 @upload_shader_params(%struct.darray* %23, i32 %24)
  %26 = load %struct.darray*, %struct.darray** %6, align 8
  %27 = load i32, i32* %4, align 4
  %28 = call i32 @upload_shader_params(%struct.darray* %26, i32 %27)
  %29 = load %struct.darray*, %struct.darray** %5, align 8
  %30 = call i32 @reset_params(%struct.darray* %29)
  %31 = load %struct.darray*, %struct.darray** %6, align 8
  %32 = call i32 @reset_params(%struct.darray* %31)
  br label %33

33:                                               ; preds = %12, %11
  ret void
}

declare dso_local i32 @upload_shader_params(%struct.darray*, i32) #1

declare dso_local i32 @reset_params(%struct.darray*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
