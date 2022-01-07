; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/extr_obs-properties.c_new_prop.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/extr_obs-properties.c_new_prop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.obs_property = type { i32, i32, i32, i8*, i8*, %struct.obs_properties* }
%struct.obs_properties = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.obs_property* (%struct.obs_properties*, i8*, i8*, i32)* @new_prop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.obs_property* @new_prop(%struct.obs_properties* %0, i8* %1, i8* %2, i32 %3) #0 {
  %5 = alloca %struct.obs_properties*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca %struct.obs_property*, align 8
  store %struct.obs_properties* %0, %struct.obs_properties** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %11 = load i32, i32* %8, align 4
  %12 = call i64 @get_property_size(i32 %11)
  store i64 %12, i64* %9, align 8
  %13 = load i64, i64* %9, align 8
  %14 = add i64 40, %13
  %15 = trunc i64 %14 to i32
  %16 = call %struct.obs_property* @bzalloc(i32 %15)
  store %struct.obs_property* %16, %struct.obs_property** %10, align 8
  %17 = load %struct.obs_properties*, %struct.obs_properties** %5, align 8
  %18 = load %struct.obs_property*, %struct.obs_property** %10, align 8
  %19 = getelementptr inbounds %struct.obs_property, %struct.obs_property* %18, i32 0, i32 5
  store %struct.obs_properties* %17, %struct.obs_properties** %19, align 8
  %20 = load %struct.obs_property*, %struct.obs_property** %10, align 8
  %21 = getelementptr inbounds %struct.obs_property, %struct.obs_property* %20, i32 0, i32 0
  store i32 1, i32* %21, align 8
  %22 = load %struct.obs_property*, %struct.obs_property** %10, align 8
  %23 = getelementptr inbounds %struct.obs_property, %struct.obs_property* %22, i32 0, i32 1
  store i32 1, i32* %23, align 4
  %24 = load i32, i32* %8, align 4
  %25 = load %struct.obs_property*, %struct.obs_property** %10, align 8
  %26 = getelementptr inbounds %struct.obs_property, %struct.obs_property* %25, i32 0, i32 2
  store i32 %24, i32* %26, align 8
  %27 = load i8*, i8** %6, align 8
  %28 = call i8* @bstrdup(i8* %27)
  %29 = load %struct.obs_property*, %struct.obs_property** %10, align 8
  %30 = getelementptr inbounds %struct.obs_property, %struct.obs_property* %29, i32 0, i32 4
  store i8* %28, i8** %30, align 8
  %31 = load i8*, i8** %7, align 8
  %32 = call i8* @bstrdup(i8* %31)
  %33 = load %struct.obs_property*, %struct.obs_property** %10, align 8
  %34 = getelementptr inbounds %struct.obs_property, %struct.obs_property* %33, i32 0, i32 3
  store i8* %32, i8** %34, align 8
  %35 = load %struct.obs_properties*, %struct.obs_properties** %5, align 8
  %36 = load %struct.obs_property*, %struct.obs_property** %10, align 8
  %37 = call i32 @propertes_add(%struct.obs_properties* %35, %struct.obs_property* %36)
  %38 = load %struct.obs_property*, %struct.obs_property** %10, align 8
  ret %struct.obs_property* %38
}

declare dso_local i64 @get_property_size(i32) #1

declare dso_local %struct.obs_property* @bzalloc(i32) #1

declare dso_local i8* @bstrdup(i8*) #1

declare dso_local i32 @propertes_add(%struct.obs_properties*, %struct.obs_property*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
