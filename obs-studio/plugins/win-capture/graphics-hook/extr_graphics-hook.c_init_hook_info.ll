; ModuleID = '/home/carl/AnghaBench/obs-studio/plugins/win-capture/graphics-hook/extr_graphics-hook.c_init_hook_info.c'
source_filename = "/home/carl/AnghaBench/obs-studio/plugins/win-capture/graphics-hook/extr_graphics-hook.c_init_hook_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@filemap_hook_info = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"Failed to create hook info file mapping: %lu\00", align 1
@FILE_MAP_ALL_ACCESS = common dso_local global i32 0, align 4
@global_hook_info = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [46 x i8] c"Failed to map the hook info file mapping: %lu\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @init_hook_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @init_hook_info() #0 {
  %1 = alloca i32, align 4
  %2 = call i32 (...) @GetCurrentProcessId()
  %3 = call i32 @create_hook_info(i32 %2)
  store i32 %3, i32* @filemap_hook_info, align 4
  %4 = load i32, i32* @filemap_hook_info, align 4
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %0
  %7 = call i32 (...) @GetLastError()
  %8 = call i32 @hlog(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %7)
  store i32 0, i32* %1, align 4
  br label %19

9:                                                ; preds = %0
  %10 = load i32, i32* @filemap_hook_info, align 4
  %11 = load i32, i32* @FILE_MAP_ALL_ACCESS, align 4
  %12 = call i32 @MapViewOfFile(i32 %10, i32 %11, i32 0, i32 0, i32 4)
  store i32 %12, i32* @global_hook_info, align 4
  %13 = load i32, i32* @global_hook_info, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %9
  %16 = call i32 (...) @GetLastError()
  %17 = call i32 @hlog(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0), i32 %16)
  store i32 0, i32* %1, align 4
  br label %19

18:                                               ; preds = %9
  store i32 1, i32* %1, align 4
  br label %19

19:                                               ; preds = %18, %15, %6
  %20 = load i32, i32* %1, align 4
  ret i32 %20
}

declare dso_local i32 @create_hook_info(i32) #1

declare dso_local i32 @GetCurrentProcessId(...) #1

declare dso_local i32 @hlog(i8*, i32) #1

declare dso_local i32 @GetLastError(...) #1

declare dso_local i32 @MapViewOfFile(i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
