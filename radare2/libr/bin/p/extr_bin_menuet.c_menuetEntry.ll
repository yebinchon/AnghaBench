; ModuleID = '/home/carl/AnghaBench/radare2/libr/bin/p/extr_bin_menuet.c_menuetEntry.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/bin/p/extr_bin_menuet.c_menuetEntry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@UT64_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32)* @menuetEntry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @menuetEntry(i32* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i32*, i32** %4, align 8
  %7 = call i32 @MENUET_VERSION(i32* %6)
  switch i32 %7, label %20 [
    i32 48, label %8
    i32 49, label %12
    i32 50, label %16
  ]

8:                                                ; preds = %2
  %9 = load i32*, i32** %4, align 8
  %10 = getelementptr inbounds i32, i32* %9, i64 12
  %11 = call i32 @r_read_ble32(i32* %10, i32 0)
  store i32 %11, i32* %3, align 4
  br label %22

12:                                               ; preds = %2
  %13 = load i32*, i32** %4, align 8
  %14 = getelementptr inbounds i32, i32* %13, i64 12
  %15 = call i32 @r_read_ble32(i32* %14, i32 0)
  store i32 %15, i32* %3, align 4
  br label %22

16:                                               ; preds = %2
  %17 = load i32*, i32** %4, align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 44
  %19 = call i32 @r_read_ble32(i32* %18, i32 0)
  store i32 %19, i32* %3, align 4
  br label %22

20:                                               ; preds = %2
  %21 = load i32, i32* @UT64_MAX, align 4
  store i32 %21, i32* %3, align 4
  br label %22

22:                                               ; preds = %20, %16, %12, %8
  %23 = load i32, i32* %3, align 4
  ret i32 %23
}

declare dso_local i32 @MENUET_VERSION(i32*) #1

declare dso_local i32 @r_read_ble32(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
