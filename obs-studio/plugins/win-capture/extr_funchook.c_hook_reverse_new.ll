; ModuleID = '/home/carl/AnghaBench/obs-studio/plugins/win-capture/extr_funchook.c_hook_reverse_new.c'
source_filename = "/home/carl/AnghaBench/obs-studio/plugins/win-capture/extr_funchook.c_hook_reverse_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.func_hook = type { i32, i64, i64, i32, i8* }

@HOOKTYPE_REVERSE_CHAIN = common dso_local global i32 0, align 4
@X86_JMP_NEG_5 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.func_hook*, i32*)* @hook_reverse_new to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hook_reverse_new(%struct.func_hook* %0, i32* %1) #0 {
  %3 = alloca %struct.func_hook*, align 8
  %4 = alloca i32*, align 8
  store %struct.func_hook* %0, %struct.func_hook** %3, align 8
  store i32* %1, i32** %4, align 8
  %5 = load %struct.func_hook*, %struct.func_hook** %3, align 8
  %6 = getelementptr inbounds %struct.func_hook, %struct.func_hook* %5, i32 0, i32 1
  %7 = load i64, i64* %6, align 8
  %8 = add nsw i64 %7, 2
  %9 = inttoptr i64 %8 to i8*
  %10 = load %struct.func_hook*, %struct.func_hook** %3, align 8
  %11 = getelementptr inbounds %struct.func_hook, %struct.func_hook* %10, i32 0, i32 4
  store i8* %9, i8** %11, align 8
  %12 = load i32, i32* @HOOKTYPE_REVERSE_CHAIN, align 4
  %13 = load %struct.func_hook*, %struct.func_hook** %3, align 8
  %14 = getelementptr inbounds %struct.func_hook, %struct.func_hook* %13, i32 0, i32 3
  store i32 %12, i32* %14, align 8
  %15 = load %struct.func_hook*, %struct.func_hook** %3, align 8
  %16 = getelementptr inbounds %struct.func_hook, %struct.func_hook* %15, i32 0, i32 0
  store i32 1, i32* %16, align 8
  %17 = load i32*, i32** %4, align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 0
  store i32 233, i32* %18, align 4
  %19 = load %struct.func_hook*, %struct.func_hook** %3, align 8
  %20 = getelementptr inbounds %struct.func_hook, %struct.func_hook* %19, i32 0, i32 2
  %21 = load i64, i64* %20, align 8
  %22 = load %struct.func_hook*, %struct.func_hook** %3, align 8
  %23 = getelementptr inbounds %struct.func_hook, %struct.func_hook* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = sub nsw i64 %21, %24
  %26 = load i32*, i32** %4, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 1
  %28 = bitcast i32* %27 to i64*
  store i64 %25, i64* %28, align 8
  %29 = load i32, i32* @X86_JMP_NEG_5, align 4
  %30 = load i32*, i32** %4, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 5
  store i32 %29, i32* %31, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
