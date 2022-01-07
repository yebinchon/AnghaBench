; ModuleID = '/home/carl/AnghaBench/obs-studio/plugins/win-capture/extr_funchook.c_hook_reverse_chain.c'
source_filename = "/home/carl/AnghaBench/obs-studio/plugins/win-capture/extr_funchook.c_hook_reverse_chain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.func_hook = type { i64, i32, i64, i64, i8* }

@HOOKTYPE_FORWARD_OVERWRITE = common dso_local global i64 0, align 8
@HOOKTYPE_REVERSE_CHAIN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.func_hook*, i32*)* @hook_reverse_chain to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hook_reverse_chain(%struct.func_hook* %0, i32* %1) #0 {
  %3 = alloca %struct.func_hook*, align 8
  %4 = alloca i32*, align 8
  store %struct.func_hook* %0, %struct.func_hook** %3, align 8
  store i32* %1, i32** %4, align 8
  %5 = load %struct.func_hook*, %struct.func_hook** %3, align 8
  %6 = getelementptr inbounds %struct.func_hook, %struct.func_hook* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @HOOKTYPE_FORWARD_OVERWRITE, align 8
  %9 = icmp ne i64 %7, %8
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  br label %38

11:                                               ; preds = %2
  %12 = load %struct.func_hook*, %struct.func_hook** %3, align 8
  %13 = getelementptr inbounds %struct.func_hook, %struct.func_hook* %12, i32 0, i32 2
  %14 = load i64, i64* %13, align 8
  %15 = load i32*, i32** %4, align 8
  %16 = getelementptr inbounds i32, i32* %15, i64 1
  %17 = bitcast i32* %16 to i64*
  %18 = load i64, i64* %17, align 8
  %19 = add nsw i64 %14, %18
  %20 = inttoptr i64 %19 to i8*
  %21 = load %struct.func_hook*, %struct.func_hook** %3, align 8
  %22 = getelementptr inbounds %struct.func_hook, %struct.func_hook* %21, i32 0, i32 4
  store i8* %20, i8** %22, align 8
  %23 = load i64, i64* @HOOKTYPE_REVERSE_CHAIN, align 8
  %24 = load %struct.func_hook*, %struct.func_hook** %3, align 8
  %25 = getelementptr inbounds %struct.func_hook, %struct.func_hook* %24, i32 0, i32 0
  store i64 %23, i64* %25, align 8
  %26 = load %struct.func_hook*, %struct.func_hook** %3, align 8
  %27 = getelementptr inbounds %struct.func_hook, %struct.func_hook* %26, i32 0, i32 1
  store i32 1, i32* %27, align 8
  %28 = load %struct.func_hook*, %struct.func_hook** %3, align 8
  %29 = getelementptr inbounds %struct.func_hook, %struct.func_hook* %28, i32 0, i32 3
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.func_hook*, %struct.func_hook** %3, align 8
  %32 = getelementptr inbounds %struct.func_hook, %struct.func_hook* %31, i32 0, i32 2
  %33 = load i64, i64* %32, align 8
  %34 = sub nsw i64 %30, %33
  %35 = load i32*, i32** %4, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 1
  %37 = bitcast i32* %36 to i64*
  store i64 %34, i64* %37, align 8
  br label %38

38:                                               ; preds = %11, %10
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
