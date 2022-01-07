; ModuleID = '/home/carl/AnghaBench/php-src/ext/opcache/jit/libudis86/extr_udis86.c_ud_insn_ptr.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/opcache/jit/libudis86/extr_udis86.c_ud_insn_ptr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ud = type { i32, i32, i32*, i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @ud_insn_ptr(%struct.ud* %0) #0 {
  %2 = alloca %struct.ud*, align 8
  store %struct.ud* %0, %struct.ud** %2, align 8
  %3 = load %struct.ud*, %struct.ud** %2, align 8
  %4 = getelementptr inbounds %struct.ud, %struct.ud* %3, i32 0, i32 2
  %5 = load i32*, i32** %4, align 8
  %6 = icmp eq i32* %5, null
  br i1 %6, label %7, label %11

7:                                                ; preds = %1
  %8 = load %struct.ud*, %struct.ud** %2, align 8
  %9 = getelementptr inbounds %struct.ud, %struct.ud* %8, i32 0, i32 3
  %10 = load i32*, i32** %9, align 8
  br label %24

11:                                               ; preds = %1
  %12 = load %struct.ud*, %struct.ud** %2, align 8
  %13 = getelementptr inbounds %struct.ud, %struct.ud* %12, i32 0, i32 2
  %14 = load i32*, i32** %13, align 8
  %15 = load %struct.ud*, %struct.ud** %2, align 8
  %16 = getelementptr inbounds %struct.ud, %struct.ud* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load %struct.ud*, %struct.ud** %2, align 8
  %19 = getelementptr inbounds %struct.ud, %struct.ud* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = sub nsw i32 %17, %20
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i32, i32* %14, i64 %22
  br label %24

24:                                               ; preds = %11, %7
  %25 = phi i32* [ %10, %7 ], [ %23, %11 ]
  ret i32* %25
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
