; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/common/extr_reloptions.c_index_reloptions.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/common/extr_reloptions.c_index_reloptions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @index_reloptions(i32* (i32, i32)* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32* (i32, i32)*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32* (i32, i32)* %0, i32* (i32, i32)** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %8 = load i32* (i32, i32)*, i32* (i32, i32)** %5, align 8
  %9 = icmp ne i32* (i32, i32)* %8, null
  %10 = zext i1 %9 to i32
  %11 = call i32 @Assert(i32 %10)
  %12 = load i32, i32* %6, align 4
  %13 = call i32 @DatumGetPointer(i32 %12)
  %14 = call i32 @PointerIsValid(i32 %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %3
  store i32* null, i32** %4, align 8
  br label %22

17:                                               ; preds = %3
  %18 = load i32* (i32, i32)*, i32* (i32, i32)** %5, align 8
  %19 = load i32, i32* %6, align 4
  %20 = load i32, i32* %7, align 4
  %21 = call i32* %18(i32 %19, i32 %20)
  store i32* %21, i32** %4, align 8
  br label %22

22:                                               ; preds = %17, %16
  %23 = load i32*, i32** %4, align 8
  ret i32* %23
}

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @PointerIsValid(i32) #1

declare dso_local i32 @DatumGetPointer(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
