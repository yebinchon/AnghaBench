; ModuleID = '/home/carl/AnghaBench/lwan/src/lib/extr_lwan-template.c_next.c'
source_filename = "/home/carl/AnghaBench/lwan/src/lib/extr_lwan-template.c_next.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lexer = type { i32*, i32* }

@EOF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lexer*)* @next to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @next(%struct.lexer* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.lexer*, align 8
  %4 = alloca i32, align 4
  store %struct.lexer* %0, %struct.lexer** %3, align 8
  %5 = load %struct.lexer*, %struct.lexer** %3, align 8
  %6 = getelementptr inbounds %struct.lexer, %struct.lexer* %5, i32 0, i32 0
  %7 = load i32*, i32** %6, align 8
  %8 = load %struct.lexer*, %struct.lexer** %3, align 8
  %9 = getelementptr inbounds %struct.lexer, %struct.lexer* %8, i32 0, i32 1
  %10 = load i32*, i32** %9, align 8
  %11 = icmp uge i32* %7, %10
  br i1 %11, label %12, label %14

12:                                               ; preds = %1
  %13 = load i32, i32* @EOF, align 4
  store i32 %13, i32* %2, align 4
  br label %24

14:                                               ; preds = %1
  %15 = load %struct.lexer*, %struct.lexer** %3, align 8
  %16 = getelementptr inbounds %struct.lexer, %struct.lexer* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %4, align 4
  %19 = load %struct.lexer*, %struct.lexer** %3, align 8
  %20 = getelementptr inbounds %struct.lexer, %struct.lexer* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = getelementptr inbounds i32, i32* %21, i32 1
  store i32* %22, i32** %20, align 8
  %23 = load i32, i32* %4, align 4
  store i32 %23, i32* %2, align 4
  br label %24

24:                                               ; preds = %14, %12
  %25 = load i32, i32* %2, align 4
  ret i32 %25
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
