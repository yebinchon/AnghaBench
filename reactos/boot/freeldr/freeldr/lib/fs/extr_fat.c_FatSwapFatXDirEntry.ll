; ModuleID = '/home/carl/AnghaBench/reactos/boot/freeldr/freeldr/lib/fs/extr_fat.c_FatSwapFatXDirEntry.c'
source_filename = "/home/carl/AnghaBench/reactos/boot/freeldr/freeldr/lib/fs/extr_fat.c_FatSwapFatXDirEntry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@StartCluster = common dso_local global i32 0, align 4
@Size = common dso_local global i32 0, align 4
@Time = common dso_local global i32 0, align 4
@Date = common dso_local global i32 0, align 4
@CreateTime = common dso_local global i32 0, align 4
@CreateDate = common dso_local global i32 0, align 4
@LastAccessTime = common dso_local global i32 0, align 4
@LastAccessDate = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @FatSwapFatXDirEntry(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  %5 = load i32, i32* @StartCluster, align 4
  %6 = call i32 @SD(i32 %4, i32 %5)
  %7 = load i32, i32* %3, align 4
  %8 = load i32, i32* @Size, align 4
  %9 = call i32 @SD(i32 %7, i32 %8)
  %10 = load i32, i32* %3, align 4
  %11 = load i32, i32* @Time, align 4
  %12 = call i32 @SW(i32 %10, i32 %11)
  %13 = load i32, i32* %3, align 4
  %14 = load i32, i32* @Date, align 4
  %15 = call i32 @SW(i32 %13, i32 %14)
  %16 = load i32, i32* %3, align 4
  %17 = load i32, i32* @CreateTime, align 4
  %18 = call i32 @SW(i32 %16, i32 %17)
  %19 = load i32, i32* %3, align 4
  %20 = load i32, i32* @CreateDate, align 4
  %21 = call i32 @SW(i32 %19, i32 %20)
  %22 = load i32, i32* %3, align 4
  %23 = load i32, i32* @LastAccessTime, align 4
  %24 = call i32 @SW(i32 %22, i32 %23)
  %25 = load i32, i32* %3, align 4
  %26 = load i32, i32* @LastAccessDate, align 4
  %27 = call i32 @SW(i32 %25, i32 %26)
  %28 = load i32, i32* %2, align 4
  ret i32 %28
}

declare dso_local i32 @SD(i32, i32) #1

declare dso_local i32 @SW(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
