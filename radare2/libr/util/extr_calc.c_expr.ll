; ModuleID = '/home/carl/AnghaBench/radare2/libr/util/extr_calc.c_expr.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/util/extr_calc.c_expr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_4__*, i32)* @expr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @expr(i32* %0, %struct.TYPE_4__* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load i32*, i32** %4, align 8
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %10 = load i32, i32* %6, align 4
  %11 = call i32 @term(i32* %8, %struct.TYPE_4__* %9, i32 %10)
  store i32 %11, i32* %7, align 4
  br label %12

12:                                               ; preds = %72, %3
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  switch i32 %15, label %70 [
    i32 130, label %16
    i32 129, label %22
    i32 132, label %28
    i32 131, label %34
    i32 133, label %40
    i32 135, label %46
    i32 128, label %52
    i32 134, label %58
    i32 136, label %64
  ]

16:                                               ; preds = %12
  %17 = load i32, i32* %7, align 4
  %18 = load i32*, i32** %4, align 8
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %20 = call i32 @term(i32* %18, %struct.TYPE_4__* %19, i32 1)
  %21 = call i32 @Nshl(i32 %17, i32 %20)
  store i32 %21, i32* %7, align 4
  br label %72

22:                                               ; preds = %12
  %23 = load i32, i32* %7, align 4
  %24 = load i32*, i32** %4, align 8
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %26 = call i32 @term(i32* %24, %struct.TYPE_4__* %25, i32 1)
  %27 = call i32 @Nshr(i32 %23, i32 %26)
  store i32 %27, i32* %7, align 4
  br label %72

28:                                               ; preds = %12
  %29 = load i32, i32* %7, align 4
  %30 = load i32*, i32** %4, align 8
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %32 = call i32 @term(i32* %30, %struct.TYPE_4__* %31, i32 1)
  %33 = call i32 @Nrol(i32 %29, i32 %32)
  store i32 %33, i32* %7, align 4
  br label %72

34:                                               ; preds = %12
  %35 = load i32, i32* %7, align 4
  %36 = load i32*, i32** %4, align 8
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %38 = call i32 @term(i32* %36, %struct.TYPE_4__* %37, i32 1)
  %39 = call i32 @Nror(i32 %35, i32 %38)
  store i32 %39, i32* %7, align 4
  br label %72

40:                                               ; preds = %12
  %41 = load i32, i32* %7, align 4
  %42 = load i32*, i32** %4, align 8
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %44 = call i32 @term(i32* %42, %struct.TYPE_4__* %43, i32 1)
  %45 = call i32 @Nadd(i32 %41, i32 %44)
  store i32 %45, i32* %7, align 4
  br label %72

46:                                               ; preds = %12
  %47 = load i32, i32* %7, align 4
  %48 = load i32*, i32** %4, align 8
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %50 = call i32 @term(i32* %48, %struct.TYPE_4__* %49, i32 1)
  %51 = call i32 @Nsub(i32 %47, i32 %50)
  store i32 %51, i32* %7, align 4
  br label %72

52:                                               ; preds = %12
  %53 = load i32, i32* %7, align 4
  %54 = load i32*, i32** %4, align 8
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %56 = call i32 @term(i32* %54, %struct.TYPE_4__* %55, i32 1)
  %57 = call i32 @Nxor(i32 %53, i32 %56)
  store i32 %57, i32* %7, align 4
  br label %72

58:                                               ; preds = %12
  %59 = load i32, i32* %7, align 4
  %60 = load i32*, i32** %4, align 8
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %62 = call i32 @term(i32* %60, %struct.TYPE_4__* %61, i32 1)
  %63 = call i32 @Norr(i32 %59, i32 %62)
  store i32 %63, i32* %7, align 4
  br label %72

64:                                               ; preds = %12
  %65 = load i32, i32* %7, align 4
  %66 = load i32*, i32** %4, align 8
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %68 = call i32 @term(i32* %66, %struct.TYPE_4__* %67, i32 1)
  %69 = call i32 @Nand(i32 %65, i32 %68)
  store i32 %69, i32* %7, align 4
  br label %72

70:                                               ; preds = %12
  %71 = load i32, i32* %7, align 4
  ret i32 %71

72:                                               ; preds = %64, %58, %52, %46, %40, %34, %28, %22, %16
  br label %12
}

declare dso_local i32 @term(i32*, %struct.TYPE_4__*, i32) #1

declare dso_local i32 @Nshl(i32, i32) #1

declare dso_local i32 @Nshr(i32, i32) #1

declare dso_local i32 @Nrol(i32, i32) #1

declare dso_local i32 @Nror(i32, i32) #1

declare dso_local i32 @Nadd(i32, i32) #1

declare dso_local i32 @Nsub(i32, i32) #1

declare dso_local i32 @Nxor(i32, i32) #1

declare dso_local i32 @Norr(i32, i32) #1

declare dso_local i32 @Nand(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
