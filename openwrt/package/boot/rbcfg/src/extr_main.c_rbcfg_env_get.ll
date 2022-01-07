; ModuleID = '/home/carl/AnghaBench/openwrt/package/boot/rbcfg/src/extr_main.c_rbcfg_env_get.c'
source_filename = "/home/carl/AnghaBench/openwrt/package/boot/rbcfg/src/extr_main.c_rbcfg_env_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rbcfg_env = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.rbcfg_env*)* @rbcfg_env_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @rbcfg_env_get(%struct.rbcfg_env* %0) #0 {
  %2 = alloca %struct.rbcfg_env*, align 8
  %3 = alloca i8*, align 8
  store %struct.rbcfg_env* %0, %struct.rbcfg_env** %2, align 8
  store i8* null, i8** %3, align 8
  %4 = load %struct.rbcfg_env*, %struct.rbcfg_env** %2, align 8
  %5 = getelementptr inbounds %struct.rbcfg_env, %struct.rbcfg_env* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  switch i32 %6, label %10 [
    i32 128, label %7
  ]

7:                                                ; preds = %1
  %8 = load %struct.rbcfg_env*, %struct.rbcfg_env** %2, align 8
  %9 = call i8* @rbcfg_env_get_u32(%struct.rbcfg_env* %8)
  store i8* %9, i8** %3, align 8
  br label %10

10:                                               ; preds = %1, %7
  %11 = load i8*, i8** %3, align 8
  ret i8* %11
}

declare dso_local i8* @rbcfg_env_get_u32(%struct.rbcfg_env*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
