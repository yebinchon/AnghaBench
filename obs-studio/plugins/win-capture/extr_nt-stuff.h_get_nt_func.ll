; ModuleID = '/home/carl/AnghaBench/obs-studio/plugins/win-capture/extr_nt-stuff.h_get_nt_func.c'
source_filename = "/home/carl/AnghaBench/obs-studio/plugins/win-capture/extr_nt-stuff.h_get_nt_func.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@get_nt_func.initialized = internal global i32 0, align 4
@get_nt_func.ntdll = internal global i32* null, align 8
@.str = private unnamed_addr constant [6 x i32] [i32 110, i32 116, i32 100, i32 108, i32 108, i32 0], align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @get_nt_func to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_nt_func(i8* %0) #0 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %3 = load i32, i32* @get_nt_func.initialized, align 4
  %4 = icmp ne i32 %3, 0
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = call i32* @GetModuleHandleW(i8* bitcast ([6 x i32]* @.str to i8*))
  store i32* %6, i32** @get_nt_func.ntdll, align 8
  store i32 1, i32* @get_nt_func.initialized, align 4
  br label %7

7:                                                ; preds = %5, %1
  %8 = load i32*, i32** @get_nt_func.ntdll, align 8
  %9 = load i8*, i8** %2, align 8
  %10 = call i32 @GetProcAddress(i32* %8, i8* %9)
  ret i32 %10
}

declare dso_local i32* @GetModuleHandleW(i8*) #1

declare dso_local i32 @GetProcAddress(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
