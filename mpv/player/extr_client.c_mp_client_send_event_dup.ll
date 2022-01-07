; ModuleID = '/home/carl/AnghaBench/mpv/player/extr_client.c_mp_client_send_event_dup.c'
source_filename = "/home/carl/AnghaBench/mpv/player/extr_client.c_mp_client_send_event_dup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.MPContext = type { i32 }
%struct.mpv_event = type { i32, i8* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mp_client_send_event_dup(%struct.MPContext* %0, i8* %1, i32 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.MPContext*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca %struct.mpv_event, align 8
  store %struct.MPContext* %0, %struct.MPContext** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  %11 = load i8*, i8** %7, align 8
  %12 = icmp ne i8* %11, null
  br i1 %12, label %18, label %13

13:                                               ; preds = %4
  %14 = load %struct.MPContext*, %struct.MPContext** %6, align 8
  %15 = load i32, i32* %8, align 4
  %16 = load i8*, i8** %9, align 8
  %17 = call i32 @mp_client_broadcast_event(%struct.MPContext* %14, i32 %15, i8* %16)
  store i32 0, i32* %5, align 4
  br label %30

18:                                               ; preds = %4
  %19 = getelementptr inbounds %struct.mpv_event, %struct.mpv_event* %10, i32 0, i32 0
  %20 = load i32, i32* %8, align 4
  store i32 %20, i32* %19, align 8
  %21 = getelementptr inbounds %struct.mpv_event, %struct.mpv_event* %10, i32 0, i32 1
  %22 = load i8*, i8** %9, align 8
  store i8* %22, i8** %21, align 8
  %23 = call i32 @dup_event_data(%struct.mpv_event* %10)
  %24 = load %struct.MPContext*, %struct.MPContext** %6, align 8
  %25 = load i8*, i8** %7, align 8
  %26 = load i32, i32* %8, align 4
  %27 = getelementptr inbounds %struct.mpv_event, %struct.mpv_event* %10, i32 0, i32 1
  %28 = load i8*, i8** %27, align 8
  %29 = call i32 @mp_client_send_event(%struct.MPContext* %24, i8* %25, i32 0, i32 %26, i8* %28)
  store i32 %29, i32* %5, align 4
  br label %30

30:                                               ; preds = %18, %13
  %31 = load i32, i32* %5, align 4
  ret i32 %31
}

declare dso_local i32 @mp_client_broadcast_event(%struct.MPContext*, i32, i8*) #1

declare dso_local i32 @dup_event_data(%struct.mpv_event*) #1

declare dso_local i32 @mp_client_send_event(%struct.MPContext*, i8*, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
