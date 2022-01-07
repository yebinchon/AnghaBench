; ModuleID = '/home/carl/AnghaBench/obs-studio/plugins/linux-jack/extr_jack-input.c_jack_input_properties.c'
source_filename = "/home/carl/AnghaBench/obs-studio/plugins/linux-jack/extr_jack-input.c_jack_input_properties.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [9 x i8] c"channels\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"Channels\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"startjack\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"StartJACKServer\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8*)* @jack_input_properties to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @jack_input_properties(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32*, align 8
  store i8* %0, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = call i32* (...) @obs_properties_create()
  store i32* %5, i32** %3, align 8
  %6 = load i32*, i32** %3, align 8
  %7 = call i32 @obs_module_text(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  %8 = call i32 @obs_properties_add_int(i32* %6, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %7, i32 1, i32 8, i32 1)
  %9 = load i32*, i32** %3, align 8
  %10 = call i32 @obs_module_text(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0))
  %11 = call i32 @obs_properties_add_bool(i32* %9, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 %10)
  %12 = load i32*, i32** %3, align 8
  ret i32* %12
}

declare dso_local i32* @obs_properties_create(...) #1

declare dso_local i32 @obs_properties_add_int(i32*, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @obs_module_text(i8*) #1

declare dso_local i32 @obs_properties_add_bool(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
