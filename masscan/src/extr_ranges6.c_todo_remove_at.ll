; ModuleID = '/home/carl/AnghaBench/masscan/src/extr_ranges6.c_todo_remove_at.c'
source_filename = "/home/carl/AnghaBench/masscan/src/extr_ranges6.c_todo_remove_at.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Range6List = type { i32, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.Range6List*, i32)* @todo_remove_at to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @todo_remove_at(%struct.Range6List* %0, i32 %1) #0 {
  %3 = alloca %struct.Range6List*, align 8
  %4 = alloca i32, align 4
  store %struct.Range6List* %0, %struct.Range6List** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.Range6List*, %struct.Range6List** %3, align 8
  %6 = getelementptr inbounds %struct.Range6List, %struct.Range6List* %5, i32 0, i32 1
  %7 = load i32*, i32** %6, align 8
  %8 = load i32, i32* %4, align 4
  %9 = zext i32 %8 to i64
  %10 = getelementptr inbounds i32, i32* %7, i64 %9
  %11 = load %struct.Range6List*, %struct.Range6List** %3, align 8
  %12 = getelementptr inbounds %struct.Range6List, %struct.Range6List* %11, i32 0, i32 1
  %13 = load i32*, i32** %12, align 8
  %14 = load i32, i32* %4, align 4
  %15 = add i32 %14, 1
  %16 = zext i32 %15 to i64
  %17 = getelementptr inbounds i32, i32* %13, i64 %16
  %18 = load %struct.Range6List*, %struct.Range6List** %3, align 8
  %19 = getelementptr inbounds %struct.Range6List, %struct.Range6List* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* %4, align 4
  %22 = sub i32 %20, %21
  %23 = zext i32 %22 to i64
  %24 = mul i64 %23, 4
  %25 = trunc i64 %24 to i32
  %26 = call i32 @memmove(i32* %10, i32* %17, i32 %25)
  %27 = load %struct.Range6List*, %struct.Range6List** %3, align 8
  %28 = getelementptr inbounds %struct.Range6List, %struct.Range6List* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = add i32 %29, -1
  store i32 %30, i32* %28, align 8
  ret void
}

declare dso_local i32 @memmove(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
