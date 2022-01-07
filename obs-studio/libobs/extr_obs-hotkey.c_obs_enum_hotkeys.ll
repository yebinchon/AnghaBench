; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/extr_obs-hotkey.c_obs_enum_hotkeys.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/extr_obs-hotkey.c_obs_enum_hotkeys.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.obs_hotkey_internal_enum_forward = type { i8*, i32 }

@enum_hotkey = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @obs_enum_hotkeys(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.obs_hotkey_internal_enum_forward, align 8
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %6 = getelementptr inbounds %struct.obs_hotkey_internal_enum_forward, %struct.obs_hotkey_internal_enum_forward* %5, i32 0, i32 0
  %7 = load i32, i32* %3, align 4
  %8 = sext i32 %7 to i64
  %9 = inttoptr i64 %8 to i8*
  store i8* %9, i8** %6, align 8
  %10 = getelementptr inbounds %struct.obs_hotkey_internal_enum_forward, %struct.obs_hotkey_internal_enum_forward* %5, i32 0, i32 1
  %11 = load i8*, i8** %4, align 8
  %12 = ptrtoint i8* %11 to i32
  store i32 %12, i32* %10, align 8
  %13 = call i32 (...) @lock()
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %2
  br label %20

16:                                               ; preds = %2
  %17 = load i32, i32* @enum_hotkey, align 4
  %18 = call i32 @enum_hotkeys(i32 %17, %struct.obs_hotkey_internal_enum_forward* %5)
  %19 = call i32 (...) @unlock()
  br label %20

20:                                               ; preds = %16, %15
  ret void
}

declare dso_local i32 @lock(...) #1

declare dso_local i32 @enum_hotkeys(i32, %struct.obs_hotkey_internal_enum_forward*) #1

declare dso_local i32 @unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
