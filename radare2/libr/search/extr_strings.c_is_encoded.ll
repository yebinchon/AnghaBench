; ModuleID = '/home/carl/AnghaBench/radare2/libr/search/extr_strings.c_is_encoded.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/search/extr_strings.c_is_encoded.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8)* @is_encoded to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_encoded(i32 %0, i8 zeroext %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8, align 1
  store i32 %0, i32* %4, align 4
  store i8 %1, i8* %5, align 1
  %6 = load i32, i32* %4, align 4
  switch i32 %6, label %13 [
    i32 129, label %7
    i32 128, label %8
  ]

7:                                                ; preds = %2
  br label %13

8:                                                ; preds = %2
  %9 = load i8, i8* %5, align 1
  %10 = zext i8 %9 to i32
  switch i32 %10, label %12 [
    i32 128, label %11
    i32 133, label %11
    i32 135, label %11
    i32 160, label %11
    i32 161, label %11
    i32 129, label %11
    i32 130, label %11
    i32 139, label %11
    i32 162, label %11
    i32 163, label %11
    i32 164, label %11
    i32 165, label %11
    i32 181, label %11
    i32 144, label %11
    i32 214, label %11
    i32 224, label %11
    i32 233, label %11
  ]

11:                                               ; preds = %8, %8, %8, %8, %8, %8, %8, %8, %8, %8, %8, %8, %8, %8, %8, %8, %8
  store i32 1, i32* %3, align 4
  br label %14

12:                                               ; preds = %8
  br label %13

13:                                               ; preds = %2, %12, %7
  store i32 0, i32* %3, align 4
  br label %14

14:                                               ; preds = %13, %11
  %15 = load i32, i32* %3, align 4
  ret i32 %15
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
