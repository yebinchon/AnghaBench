; ModuleID = '/home/carl/AnghaBench/obs-studio/plugins/win-capture/extr_funchook.c_hook_forward_chain.c'
source_filename = "/home/carl/AnghaBench/obs-studio/plugins/win-capture/extr_funchook.c_hook_forward_chain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.func_hook = type { i64, i32, i64, i8* }

@HOOKTYPE_FORWARD_OVERWRITE = common dso_local global i64 0, align 8
@JMP_32_SIZE = common dso_local global i64 0, align 8
@HOOKTYPE_FORWARD_CHAIN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.func_hook*, i32*, i64)* @hook_forward_chain to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hook_forward_chain(%struct.func_hook* %0, i32* %1, i64 %2) #0 {
  %4 = alloca %struct.func_hook*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.func_hook* %0, %struct.func_hook** %4, align 8
  store i32* %1, i32** %5, align 8
  store i64 %2, i64* %6, align 8
  %8 = load i32*, i32** %5, align 8
  %9 = getelementptr inbounds i32, i32* %8, i64 6
  %10 = bitcast i32* %9 to i64*
  %11 = load i64, i64* %10, align 8
  store i64 %11, i64* %7, align 8
  %12 = load %struct.func_hook*, %struct.func_hook** %4, align 8
  %13 = getelementptr inbounds %struct.func_hook, %struct.func_hook* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @HOOKTYPE_FORWARD_OVERWRITE, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %3
  br label %38

18:                                               ; preds = %3
  %19 = load %struct.func_hook*, %struct.func_hook** %4, align 8
  %20 = getelementptr inbounds %struct.func_hook, %struct.func_hook* %19, i32 0, i32 2
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @JMP_32_SIZE, align 8
  %23 = add nsw i64 %21, %22
  %24 = load i64, i64* %7, align 8
  %25 = add nsw i64 %23, %24
  %26 = inttoptr i64 %25 to i8*
  %27 = load %struct.func_hook*, %struct.func_hook** %4, align 8
  %28 = getelementptr inbounds %struct.func_hook, %struct.func_hook* %27, i32 0, i32 3
  store i8* %26, i8** %28, align 8
  %29 = load i64, i64* @HOOKTYPE_FORWARD_CHAIN, align 8
  %30 = load %struct.func_hook*, %struct.func_hook** %4, align 8
  %31 = getelementptr inbounds %struct.func_hook, %struct.func_hook* %30, i32 0, i32 0
  store i64 %29, i64* %31, align 8
  %32 = load %struct.func_hook*, %struct.func_hook** %4, align 8
  %33 = getelementptr inbounds %struct.func_hook, %struct.func_hook* %32, i32 0, i32 1
  store i32 1, i32* %33, align 8
  %34 = load i64, i64* %6, align 8
  %35 = load i32*, i32** %5, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 6
  %37 = bitcast i32* %36 to i64*
  store i64 %34, i64* %37, align 8
  br label %38

38:                                               ; preds = %18, %17
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
