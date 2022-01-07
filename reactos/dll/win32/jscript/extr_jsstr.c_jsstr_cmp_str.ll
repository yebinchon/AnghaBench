; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/jscript/extr_jsstr.c_jsstr_cmp_str.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/jscript/extr_jsstr.c_jsstr_cmp_str.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32*, i32* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_7__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32)* @jsstr_cmp_str to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @jsstr_cmp_str(i32* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_5__*, align 8
  %10 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load i32*, i32** %5, align 8
  %12 = call i32 @jsstr_tag(i32* %11)
  switch i32 %12, label %94 [
    i32 129, label %13
    i32 130, label %36
    i32 128, label %59
  ]

13:                                               ; preds = %3
  %14 = load i32*, i32** %5, align 8
  %15 = call %struct.TYPE_6__* @jsstr_as_inline(i32* %14)
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32*, i32** %6, align 8
  %19 = load i32, i32* %7, align 4
  %20 = zext i32 %19 to i64
  %21 = mul i64 %20, 4
  %22 = trunc i64 %21 to i32
  %23 = call i32 @memcmp(i32 %17, i32* %18, i32 %22)
  store i32 %23, i32* %8, align 4
  %24 = load i32, i32* %8, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %31, label %26

26:                                               ; preds = %13
  %27 = load i32*, i32** %5, align 8
  %28 = call i32 @jsstr_length(i32* %27)
  %29 = load i32, i32* %7, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %31, label %33

31:                                               ; preds = %26, %13
  %32 = load i32, i32* %8, align 4
  br label %34

33:                                               ; preds = %26
  br label %34

34:                                               ; preds = %33, %31
  %35 = phi i32 [ %32, %31 ], [ 1, %33 ]
  store i32 %35, i32* %4, align 4
  br label %96

36:                                               ; preds = %3
  %37 = load i32*, i32** %5, align 8
  %38 = call %struct.TYPE_7__* @jsstr_as_heap(i32* %37)
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32*, i32** %6, align 8
  %42 = load i32, i32* %7, align 4
  %43 = zext i32 %42 to i64
  %44 = mul i64 %43, 4
  %45 = trunc i64 %44 to i32
  %46 = call i32 @memcmp(i32 %40, i32* %41, i32 %45)
  store i32 %46, i32* %8, align 4
  %47 = load i32, i32* %8, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %54, label %49

49:                                               ; preds = %36
  %50 = load i32*, i32** %5, align 8
  %51 = call i32 @jsstr_length(i32* %50)
  %52 = load i32, i32* %7, align 4
  %53 = icmp eq i32 %51, %52
  br i1 %53, label %54, label %56

54:                                               ; preds = %49, %36
  %55 = load i32, i32* %8, align 4
  br label %57

56:                                               ; preds = %49
  br label %57

57:                                               ; preds = %56, %54
  %58 = phi i32 [ %55, %54 ], [ 1, %56 ]
  store i32 %58, i32* %4, align 4
  br label %96

59:                                               ; preds = %3
  %60 = load i32*, i32** %5, align 8
  %61 = call %struct.TYPE_5__* @jsstr_as_rope(i32* %60)
  store %struct.TYPE_5__* %61, %struct.TYPE_5__** %9, align 8
  %62 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 1
  %64 = load i32*, i32** %63, align 8
  %65 = call i32 @jsstr_length(i32* %64)
  store i32 %65, i32* %10, align 4
  %66 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 1
  %68 = load i32*, i32** %67, align 8
  %69 = load i32*, i32** %6, align 8
  %70 = load i32, i32* %7, align 4
  %71 = load i32, i32* %10, align 4
  %72 = call i32 @min(i32 %70, i32 %71)
  %73 = call i32 @jsstr_cmp_str(i32* %68, i32* %69, i32 %72)
  store i32 %73, i32* %8, align 4
  %74 = load i32, i32* %8, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %80, label %76

76:                                               ; preds = %59
  %77 = load i32, i32* %7, align 4
  %78 = load i32, i32* %10, align 4
  %79 = icmp ule i32 %77, %78
  br i1 %79, label %80, label %82

80:                                               ; preds = %76, %59
  %81 = load i32, i32* %8, align 4
  store i32 %81, i32* %4, align 4
  br label %96

82:                                               ; preds = %76
  %83 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %83, i32 0, i32 0
  %85 = load i32*, i32** %84, align 8
  %86 = load i32*, i32** %6, align 8
  %87 = load i32, i32* %10, align 4
  %88 = zext i32 %87 to i64
  %89 = getelementptr inbounds i32, i32* %86, i64 %88
  %90 = load i32, i32* %7, align 4
  %91 = load i32, i32* %10, align 4
  %92 = sub i32 %90, %91
  %93 = call i32 @jsstr_cmp_str(i32* %85, i32* %89, i32 %92)
  store i32 %93, i32* %4, align 4
  br label %96

94:                                               ; preds = %3
  %95 = call i32 @assert(i32 0)
  store i32 0, i32* %4, align 4
  br label %96

96:                                               ; preds = %94, %82, %80, %57, %34
  %97 = load i32, i32* %4, align 4
  ret i32 %97
}

declare dso_local i32 @jsstr_tag(i32*) #1

declare dso_local i32 @memcmp(i32, i32*, i32) #1

declare dso_local %struct.TYPE_6__* @jsstr_as_inline(i32*) #1

declare dso_local i32 @jsstr_length(i32*) #1

declare dso_local %struct.TYPE_7__* @jsstr_as_heap(i32*) #1

declare dso_local %struct.TYPE_5__* @jsstr_as_rope(i32*) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
