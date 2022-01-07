; ModuleID = '/home/carl/AnghaBench/mpv/player/extr_scripting.c_load_builtin_script.c'
source_filename = "/home/carl/AnghaBench/mpv/player/extr_scripting.c_load_builtin_script.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.MPContext = type { i32 }

@MPV_EVENT_SHUTDOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.MPContext*, i32, i8*)* @load_builtin_script to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @load_builtin_script(%struct.MPContext* %0, i32 %1, i8* %2) #0 {
  %4 = alloca %struct.MPContext*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store %struct.MPContext* %0, %struct.MPContext** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %9 = call i8* @talloc_new(i32* null)
  store i8* %9, i8** %7, align 8
  %10 = load i8*, i8** %7, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = call i8* @script_name_from_filename(i8* %10, i8* %11)
  store i8* %12, i8** %8, align 8
  %13 = load i32, i32* %5, align 4
  %14 = load %struct.MPContext*, %struct.MPContext** %4, align 8
  %15 = load i8*, i8** %8, align 8
  %16 = call i32 @mp_client_exists(%struct.MPContext* %14, i8* %15)
  %17 = icmp ne i32 %13, %16
  br i1 %17, label %18, label %31

18:                                               ; preds = %3
  %19 = load i32, i32* %5, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %18
  %22 = load %struct.MPContext*, %struct.MPContext** %4, align 8
  %23 = load i8*, i8** %6, align 8
  %24 = call i32 @mp_load_script(%struct.MPContext* %22, i8* %23)
  br label %30

25:                                               ; preds = %18
  %26 = load %struct.MPContext*, %struct.MPContext** %4, align 8
  %27 = load i8*, i8** %8, align 8
  %28 = load i32, i32* @MPV_EVENT_SHUTDOWN, align 4
  %29 = call i32 @mp_client_send_event(%struct.MPContext* %26, i8* %27, i32 0, i32 %28, i32* null)
  br label %30

30:                                               ; preds = %25, %21
  br label %31

31:                                               ; preds = %30, %3
  %32 = load i8*, i8** %7, align 8
  %33 = call i32 @talloc_free(i8* %32)
  ret void
}

declare dso_local i8* @talloc_new(i32*) #1

declare dso_local i8* @script_name_from_filename(i8*, i8*) #1

declare dso_local i32 @mp_client_exists(%struct.MPContext*, i8*) #1

declare dso_local i32 @mp_load_script(%struct.MPContext*, i8*) #1

declare dso_local i32 @mp_client_send_event(%struct.MPContext*, i8*, i32, i32, i32*) #1

declare dso_local i32 @talloc_free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
