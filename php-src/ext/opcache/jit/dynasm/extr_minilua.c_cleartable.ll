; ModuleID = '/home/carl/AnghaBench/php-src/ext/opcache/jit/dynasm/extr_minilua.c_cleartable.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/opcache/jit/dynasm/extr_minilua.c_cleartable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32*, i32*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @cleartable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cleartable(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  store i32* %0, i32** %2, align 8
  br label %7

7:                                                ; preds = %73, %1
  %8 = load i32*, i32** %2, align 8
  %9 = icmp ne i32* %8, null
  br i1 %9, label %10, label %77

10:                                               ; preds = %7
  %11 = load i32*, i32** %2, align 8
  %12 = call %struct.TYPE_5__* @gco2h(i32* %11)
  store %struct.TYPE_5__* %12, %struct.TYPE_5__** %3, align 8
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  store i32 %15, i32* %4, align 4
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 8
  %19 = call i64 @testbit(i32 %18, i32 4)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %41

21:                                               ; preds = %10
  br label %22

22:                                               ; preds = %39, %21
  %23 = load i32, i32* %4, align 4
  %24 = add nsw i32 %23, -1
  store i32 %24, i32* %4, align 4
  %25 = icmp ne i32 %23, 0
  br i1 %25, label %26, label %40

26:                                               ; preds = %22
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 2
  %29 = load i32*, i32** %28, align 8
  %30 = load i32, i32* %4, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i32, i32* %29, i64 %31
  store i32* %32, i32** %5, align 8
  %33 = load i32*, i32** %5, align 8
  %34 = call i64 @iscleared(i32* %33, i32 0)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %26
  %37 = load i32*, i32** %5, align 8
  %38 = call i32 @setnilvalue(i32* %37)
  br label %39

39:                                               ; preds = %36, %26
  br label %22

40:                                               ; preds = %22
  br label %41

41:                                               ; preds = %40, %10
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %43 = call i32 @sizenode(%struct.TYPE_5__* %42)
  store i32 %43, i32* %4, align 4
  br label %44

44:                                               ; preds = %72, %41
  %45 = load i32, i32* %4, align 4
  %46 = add nsw i32 %45, -1
  store i32 %46, i32* %4, align 4
  %47 = icmp ne i32 %45, 0
  br i1 %47, label %48, label %73

48:                                               ; preds = %44
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %50 = load i32, i32* %4, align 4
  %51 = call i32* @gnode(%struct.TYPE_5__* %49, i32 %50)
  store i32* %51, i32** %6, align 8
  %52 = load i32*, i32** %6, align 8
  %53 = call i32* @gval(i32* %52)
  %54 = call i32 @ttisnil(i32* %53)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %72, label %56

56:                                               ; preds = %48
  %57 = load i32*, i32** %6, align 8
  %58 = call i32* @key2tval(i32* %57)
  %59 = call i64 @iscleared(i32* %58, i32 1)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %66, label %61

61:                                               ; preds = %56
  %62 = load i32*, i32** %6, align 8
  %63 = call i32* @gval(i32* %62)
  %64 = call i64 @iscleared(i32* %63, i32 0)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %72

66:                                               ; preds = %61, %56
  %67 = load i32*, i32** %6, align 8
  %68 = call i32* @gval(i32* %67)
  %69 = call i32 @setnilvalue(i32* %68)
  %70 = load i32*, i32** %6, align 8
  %71 = call i32 @removeentry(i32* %70)
  br label %72

72:                                               ; preds = %66, %61, %48
  br label %44

73:                                               ; preds = %44
  %74 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 1
  %76 = load i32*, i32** %75, align 8
  store i32* %76, i32** %2, align 8
  br label %7

77:                                               ; preds = %7
  ret void
}

declare dso_local %struct.TYPE_5__* @gco2h(i32*) #1

declare dso_local i64 @testbit(i32, i32) #1

declare dso_local i64 @iscleared(i32*, i32) #1

declare dso_local i32 @setnilvalue(i32*) #1

declare dso_local i32 @sizenode(%struct.TYPE_5__*) #1

declare dso_local i32* @gnode(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @ttisnil(i32*) #1

declare dso_local i32* @gval(i32*) #1

declare dso_local i32* @key2tval(i32*) #1

declare dso_local i32 @removeentry(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
