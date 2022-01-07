; ModuleID = '/home/carl/AnghaBench/obs-studio/plugins/rtmp-services/extr_twitch.c_twitch_ingests_refresh.c'
source_filename = "/home/carl/AnghaBench/obs-studio/plugins/rtmp-services/extr_twitch.c_twitch_ingests_refresh.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ingests_refreshed = common dso_local global i32 0, align 4
@ingests_refreshing = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"[twitch ingest update] \00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"https://ingest.twitch.tv/api/v2/ingests\00", align 1
@twitch_ingest_update = common dso_local global i32 0, align 4
@twitch_update_info = common dso_local global i32 0, align 4
@ingests_loaded = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @twitch_ingests_refresh(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %4 = call i64 @os_atomic_load_bool(i32* @ingests_refreshed)
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  br label %34

7:                                                ; preds = %1
  %8 = call i64 @os_atomic_load_bool(i32* @ingests_refreshing)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %15, label %10

10:                                               ; preds = %7
  %11 = call i32 @os_atomic_set_bool(i32* @ingests_refreshing, i32 1)
  %12 = call i32 (...) @get_module_name()
  %13 = load i32, i32* @twitch_ingest_update, align 4
  %14 = call i32 @update_info_create_single(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %12, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i32 %13, i32* null)
  store i32 %14, i32* @twitch_update_info, align 4
  br label %15

15:                                               ; preds = %10, %7
  %16 = call i64 @os_atomic_load_bool(i32* @ingests_loaded)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %34, label %18

18:                                               ; preds = %15
  store i32 0, i32* %3, align 4
  br label %19

19:                                               ; preds = %30, %18
  %20 = load i32, i32* %3, align 4
  %21 = load i32, i32* %2, align 4
  %22 = mul nsw i32 %21, 100
  %23 = icmp slt i32 %20, %22
  br i1 %23, label %24, label %33

24:                                               ; preds = %19
  %25 = call i64 @os_atomic_load_bool(i32* @ingests_refreshed)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %24
  br label %33

28:                                               ; preds = %24
  %29 = call i32 @os_sleep_ms(i32 10)
  br label %30

30:                                               ; preds = %28
  %31 = load i32, i32* %3, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %3, align 4
  br label %19

33:                                               ; preds = %27, %19
  br label %34

34:                                               ; preds = %6, %33, %15
  ret void
}

declare dso_local i64 @os_atomic_load_bool(i32*) #1

declare dso_local i32 @os_atomic_set_bool(i32*, i32) #1

declare dso_local i32 @update_info_create_single(i8*, i32, i8*, i32, i32*) #1

declare dso_local i32 @get_module_name(...) #1

declare dso_local i32 @os_sleep_ms(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
