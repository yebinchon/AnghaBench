; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/graphics/extr_effect-parser.h_ep_func_init.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/graphics/extr_effect-parser.h_ep_func_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ep_func = type { i8*, i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ep_func*, i8*, i8*)* @ep_func_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ep_func_init(%struct.ep_func* %0, i8* %1, i8* %2) #0 {
  %4 = alloca %struct.ep_func*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store %struct.ep_func* %0, %struct.ep_func** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %7 = load %struct.ep_func*, %struct.ep_func** %4, align 8
  %8 = call i32 @memset(%struct.ep_func* %7, i32 0, i32 16)
  %9 = load i8*, i8** %6, align 8
  %10 = load %struct.ep_func*, %struct.ep_func** %4, align 8
  %11 = getelementptr inbounds %struct.ep_func, %struct.ep_func* %10, i32 0, i32 0
  store i8* %9, i8** %11, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = load %struct.ep_func*, %struct.ep_func** %4, align 8
  %14 = getelementptr inbounds %struct.ep_func, %struct.ep_func* %13, i32 0, i32 1
  store i8* %12, i8** %14, align 8
  ret void
}

declare dso_local i32 @memset(%struct.ep_func*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
