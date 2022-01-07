; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/jscript/extr_jsstr.h_jsstr_flatten.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/jscript/extr_jsstr.h_jsstr_flatten.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32* }
%struct.TYPE_4__ = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*)* @jsstr_flatten to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @jsstr_flatten(i32* %0) #0 {
  %2 = alloca i32*, align 8
  store i32* %0, i32** %2, align 8
  %3 = load i32*, i32** %2, align 8
  %4 = call i64 @jsstr_is_inline(i32* %3)
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %11

6:                                                ; preds = %1
  %7 = load i32*, i32** %2, align 8
  %8 = call %struct.TYPE_3__* @jsstr_as_inline(i32* %7)
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = load i32*, i32** %9, align 8
  br label %26

11:                                               ; preds = %1
  %12 = load i32*, i32** %2, align 8
  %13 = call i64 @jsstr_is_heap(i32* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %11
  %16 = load i32*, i32** %2, align 8
  %17 = call %struct.TYPE_4__* @jsstr_as_heap(i32* %16)
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  br label %24

20:                                               ; preds = %11
  %21 = load i32*, i32** %2, align 8
  %22 = call i32 @jsstr_as_rope(i32* %21)
  %23 = call i32* @jsstr_rope_flatten(i32 %22)
  br label %24

24:                                               ; preds = %20, %15
  %25 = phi i32* [ %19, %15 ], [ %23, %20 ]
  br label %26

26:                                               ; preds = %24, %6
  %27 = phi i32* [ %10, %6 ], [ %25, %24 ]
  ret i32* %27
}

declare dso_local i64 @jsstr_is_inline(i32*) #1

declare dso_local %struct.TYPE_3__* @jsstr_as_inline(i32*) #1

declare dso_local i64 @jsstr_is_heap(i32*) #1

declare dso_local %struct.TYPE_4__* @jsstr_as_heap(i32*) #1

declare dso_local i32* @jsstr_rope_flatten(i32) #1

declare dso_local i32 @jsstr_as_rope(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
