; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/extr_obs-properties.c_get_type_data.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/extr_obs-properties.c_get_type_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.obs_property = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.obs_property*, i32)* @get_type_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @get_type_data(%struct.obs_property* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.obs_property*, align 8
  %5 = alloca i32, align 4
  store %struct.obs_property* %0, %struct.obs_property** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load %struct.obs_property*, %struct.obs_property** %4, align 8
  %7 = icmp ne %struct.obs_property* %6, null
  br i1 %7, label %8, label %14

8:                                                ; preds = %2
  %9 = load %struct.obs_property*, %struct.obs_property** %4, align 8
  %10 = getelementptr inbounds %struct.obs_property, %struct.obs_property* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* %5, align 4
  %13 = icmp ne i32 %11, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %8, %2
  store i8* null, i8** %3, align 8
  br label %18

15:                                               ; preds = %8
  %16 = load %struct.obs_property*, %struct.obs_property** %4, align 8
  %17 = call i8* @get_property_data(%struct.obs_property* %16)
  store i8* %17, i8** %3, align 8
  br label %18

18:                                               ; preds = %15, %14
  %19 = load i8*, i8** %3, align 8
  ret i8* %19
}

declare dso_local i8* @get_property_data(%struct.obs_property*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
