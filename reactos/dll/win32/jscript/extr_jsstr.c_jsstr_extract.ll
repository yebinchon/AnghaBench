; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/jscript/extr_jsstr.c_jsstr_extract.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/jscript/extr_jsstr.c_jsstr_extract.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @jsstr_extract(i32* %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32* %3, i32** %8, align 8
  %9 = load i32*, i32** %5, align 8
  %10 = call i32 @jsstr_tag(i32* %9)
  switch i32 %10, label %44 [
    i32 129, label %11
    i32 130, label %24
    i32 128, label %37
  ]

11:                                               ; preds = %4
  %12 = load i32*, i32** %8, align 8
  %13 = load i32*, i32** %5, align 8
  %14 = call %struct.TYPE_3__* @jsstr_as_inline(i32* %13)
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* %6, align 4
  %18 = add i32 %16, %17
  %19 = load i32, i32* %7, align 4
  %20 = zext i32 %19 to i64
  %21 = mul i64 %20, 4
  %22 = trunc i64 %21 to i32
  %23 = call i32 @memcpy(i32* %12, i32 %18, i32 %22)
  br label %44

24:                                               ; preds = %4
  %25 = load i32*, i32** %8, align 8
  %26 = load i32*, i32** %5, align 8
  %27 = call %struct.TYPE_4__* @jsstr_as_heap(i32* %26)
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* %6, align 4
  %31 = add i32 %29, %30
  %32 = load i32, i32* %7, align 4
  %33 = zext i32 %32 to i64
  %34 = mul i64 %33, 4
  %35 = trunc i64 %34 to i32
  %36 = call i32 @memcpy(i32* %25, i32 %31, i32 %35)
  br label %44

37:                                               ; preds = %4
  %38 = load i32*, i32** %5, align 8
  %39 = call i32 @jsstr_as_rope(i32* %38)
  %40 = load i32, i32* %6, align 4
  %41 = load i32, i32* %7, align 4
  %42 = load i32*, i32** %8, align 8
  %43 = call i32 @jsstr_rope_extract(i32 %39, i32 %40, i32 %41, i32* %42)
  br label %44

44:                                               ; preds = %11, %24, %37, %4
  ret void
}

declare dso_local i32 @jsstr_tag(i32*) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

declare dso_local %struct.TYPE_3__* @jsstr_as_inline(i32*) #1

declare dso_local %struct.TYPE_4__* @jsstr_as_heap(i32*) #1

declare dso_local i32 @jsstr_rope_extract(i32, i32, i32, i32*) #1

declare dso_local i32 @jsstr_as_rope(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
