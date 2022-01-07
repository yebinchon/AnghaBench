; ModuleID = '/home/carl/AnghaBench/mpv/player/extr_client.c_free_prop_data.c'
source_filename = "/home/carl/AnghaBench/mpv/player/extr_client.c_free_prop_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mpv_event_property = type { i32, i32 }
%struct.m_option = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @free_prop_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @free_prop_data(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.mpv_event_property*, align 8
  %4 = alloca %struct.m_option*, align 8
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = bitcast i8* %5 to %struct.mpv_event_property*
  store %struct.mpv_event_property* %6, %struct.mpv_event_property** %3, align 8
  %7 = load %struct.mpv_event_property*, %struct.mpv_event_property** %3, align 8
  %8 = getelementptr inbounds %struct.mpv_event_property, %struct.mpv_event_property* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = call %struct.m_option* @get_mp_type_get(i32 %9)
  store %struct.m_option* %10, %struct.m_option** %4, align 8
  %11 = load %struct.m_option*, %struct.m_option** %4, align 8
  %12 = load %struct.mpv_event_property*, %struct.mpv_event_property** %3, align 8
  %13 = getelementptr inbounds %struct.mpv_event_property, %struct.mpv_event_property* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @m_option_free(%struct.m_option* %11, i32 %14)
  ret void
}

declare dso_local %struct.m_option* @get_mp_type_get(i32) #1

declare dso_local i32 @m_option_free(%struct.m_option*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
