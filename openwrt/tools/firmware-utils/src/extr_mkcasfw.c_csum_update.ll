; ModuleID = '/home/carl/AnghaBench/openwrt/tools/firmware-utils/src/extr_mkcasfw.c_csum_update.c'
source_filename = "/home/carl/AnghaBench/openwrt/tools/firmware-utils/src/extr_mkcasfw.c_csum_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.csum_state = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @csum_update(i32* %0, i32 %1, %struct.csum_state* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.csum_state*, align 8
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.csum_state* %2, %struct.csum_state** %6, align 8
  %7 = load %struct.csum_state*, %struct.csum_state** %6, align 8
  %8 = getelementptr inbounds %struct.csum_state, %struct.csum_state* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  switch i32 %9, label %25 [
    i32 128, label %10
    i32 130, label %15
    i32 129, label %20
  ]

10:                                               ; preds = %3
  %11 = load i32*, i32** %4, align 8
  %12 = load i32, i32* %5, align 4
  %13 = load %struct.csum_state*, %struct.csum_state** %6, align 8
  %14 = call i32 @csum8_update(i32* %11, i32 %12, %struct.csum_state* %13)
  br label %25

15:                                               ; preds = %3
  %16 = load i32*, i32** %4, align 8
  %17 = load i32, i32* %5, align 4
  %18 = load %struct.csum_state*, %struct.csum_state** %6, align 8
  %19 = call i32 @csum16_update(i32* %16, i32 %17, %struct.csum_state* %18)
  br label %25

20:                                               ; preds = %3
  %21 = load i32*, i32** %4, align 8
  %22 = load i32, i32* %5, align 4
  %23 = load %struct.csum_state*, %struct.csum_state** %6, align 8
  %24 = call i32 @csum32_update(i32* %21, i32 %22, %struct.csum_state* %23)
  br label %25

25:                                               ; preds = %3, %20, %15, %10
  ret void
}

declare dso_local i32 @csum8_update(i32*, i32, %struct.csum_state*) #1

declare dso_local i32 @csum16_update(i32*, i32, %struct.csum_state*) #1

declare dso_local i32 @csum32_update(i32*, i32, %struct.csum_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
