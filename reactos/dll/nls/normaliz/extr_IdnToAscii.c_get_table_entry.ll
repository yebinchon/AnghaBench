; ModuleID = '/home/carl/AnghaBench/reactos/dll/nls/normaliz/extr_IdnToAscii.c_get_table_entry.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/nls/normaliz/extr_IdnToAscii.c_get_table_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i16 (i16*, i32)* @get_table_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i16 @get_table_entry(i16* %0, i32 %1) #0 {
  %3 = alloca i16*, align 8
  %4 = alloca i32, align 4
  store i16* %0, i16** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i16*, i16** %3, align 8
  %6 = load i16*, i16** %3, align 8
  %7 = load i16*, i16** %3, align 8
  %8 = load i32, i32* %4, align 4
  %9 = ashr i32 %8, 8
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds i16, i16* %7, i64 %10
  %12 = load i16, i16* %11, align 2
  %13 = zext i16 %12 to i32
  %14 = load i32, i32* %4, align 4
  %15 = ashr i32 %14, 4
  %16 = and i32 %15, 15
  %17 = add nsw i32 %13, %16
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i16, i16* %6, i64 %18
  %20 = load i16, i16* %19, align 2
  %21 = zext i16 %20 to i32
  %22 = load i32, i32* %4, align 4
  %23 = and i32 %22, 15
  %24 = add nsw i32 %21, %23
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i16, i16* %5, i64 %25
  %27 = load i16, i16* %26, align 2
  ret i16 %27
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
