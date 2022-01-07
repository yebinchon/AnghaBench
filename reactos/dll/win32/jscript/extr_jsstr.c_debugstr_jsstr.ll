; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/jscript/extr_jsstr.c_debugstr_jsstr.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/jscript/extr_jsstr.c_debugstr_jsstr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_4__ = type { i32* }

@.str = private unnamed_addr constant [6 x i8] c"%s...\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @debugstr_jsstr(i32* %0) #0 {
  %2 = alloca i32*, align 8
  store i32* %0, i32** %2, align 8
  %3 = load i32*, i32** %2, align 8
  %4 = call i64 @jsstr_is_inline(i32* %3)
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %14

6:                                                ; preds = %1
  %7 = load i32*, i32** %2, align 8
  %8 = call %struct.TYPE_5__* @jsstr_as_inline(i32* %7)
  %9 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32*, i32** %2, align 8
  %12 = call i32 @jsstr_length(i32* %11)
  %13 = call i8* @debugstr_wn(i32 %10, i32 %12)
  br label %35

14:                                               ; preds = %1
  %15 = load i32*, i32** %2, align 8
  %16 = call i64 @jsstr_is_heap(i32* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %26

18:                                               ; preds = %14
  %19 = load i32*, i32** %2, align 8
  %20 = call %struct.TYPE_6__* @jsstr_as_heap(i32* %19)
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32*, i32** %2, align 8
  %24 = call i32 @jsstr_length(i32* %23)
  %25 = call i8* @debugstr_wn(i32 %22, i32 %24)
  br label %33

26:                                               ; preds = %14
  %27 = load i32*, i32** %2, align 8
  %28 = call %struct.TYPE_4__* @jsstr_as_rope(i32* %27)
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = call i8* @debugstr_jsstr(i32* %30)
  %32 = call i8* @wine_dbg_sprintf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %31)
  br label %33

33:                                               ; preds = %26, %18
  %34 = phi i8* [ %25, %18 ], [ %32, %26 ]
  br label %35

35:                                               ; preds = %33, %6
  %36 = phi i8* [ %13, %6 ], [ %34, %33 ]
  ret i8* %36
}

declare dso_local i64 @jsstr_is_inline(i32*) #1

declare dso_local i8* @debugstr_wn(i32, i32) #1

declare dso_local %struct.TYPE_5__* @jsstr_as_inline(i32*) #1

declare dso_local i32 @jsstr_length(i32*) #1

declare dso_local i64 @jsstr_is_heap(i32*) #1

declare dso_local %struct.TYPE_6__* @jsstr_as_heap(i32*) #1

declare dso_local i8* @wine_dbg_sprintf(i8*, i8*) #1

declare dso_local %struct.TYPE_4__* @jsstr_as_rope(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
