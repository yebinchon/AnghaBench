; ModuleID = '/home/carl/AnghaBench/obs-studio/plugins/text-freetype2/extr_text-freetype2.c_obs_module_load.c'
source_filename = "/home/carl/AnghaBench/obs-studio/plugins/text-freetype2/extr_text-freetype2.c_obs_module_load.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@freetype2_source_info = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @obs_module_load() #0 {
  %1 = alloca i8*, align 8
  %2 = call i8* @obs_module_config_path(i32* null)
  store i8* %2, i8** %1, align 8
  %3 = load i8*, i8** %1, align 8
  %4 = icmp ne i8* %3, null
  br i1 %4, label %5, label %10

5:                                                ; preds = %0
  %6 = load i8*, i8** %1, align 8
  %7 = call i32 @os_mkdirs(i8* %6)
  %8 = load i8*, i8** %1, align 8
  %9 = call i32 @bfree(i8* %8)
  br label %10

10:                                               ; preds = %5, %0
  %11 = call i32 @obs_register_source(i32* @freetype2_source_info)
  ret i32 1
}

declare dso_local i8* @obs_module_config_path(i32*) #1

declare dso_local i32 @os_mkdirs(i8*) #1

declare dso_local i32 @bfree(i8*) #1

declare dso_local i32 @obs_register_source(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
