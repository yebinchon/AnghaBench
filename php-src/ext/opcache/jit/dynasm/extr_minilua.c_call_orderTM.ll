; ModuleID = '/home/carl/AnghaBench/php-src/ext/opcache/jit/dynasm/extr_minilua.c_call_orderTM.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/opcache/jit/dynasm/extr_minilua.c_call_orderTM.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*, i32*, i32*, i32)* @call_orderTM to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @call_orderTM(%struct.TYPE_5__* %0, i32* %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %13 = load i32*, i32** %7, align 8
  %14 = load i32, i32* %9, align 4
  %15 = call i32* @luaT_gettmbyobj(%struct.TYPE_5__* %12, i32* %13, i32 %14)
  store i32* %15, i32** %10, align 8
  %16 = load i32*, i32** %10, align 8
  %17 = call i64 @ttisnil(i32* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %4
  store i32 -1, i32* %5, align 4
  br label %46

20:                                               ; preds = %4
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %22 = load i32*, i32** %8, align 8
  %23 = load i32, i32* %9, align 4
  %24 = call i32* @luaT_gettmbyobj(%struct.TYPE_5__* %21, i32* %22, i32 %23)
  store i32* %24, i32** %11, align 8
  %25 = load i32*, i32** %10, align 8
  %26 = load i32*, i32** %11, align 8
  %27 = call i32 @luaO_rawequalObj(i32* %25, i32* %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %20
  store i32 -1, i32* %5, align 4
  br label %46

30:                                               ; preds = %20
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32*, i32** %10, align 8
  %36 = load i32*, i32** %7, align 8
  %37 = load i32*, i32** %8, align 8
  %38 = call i32 @callTMres(%struct.TYPE_5__* %31, i32 %34, i32* %35, i32* %36, i32* %37)
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @l_isfalse(i32 %41)
  %43 = icmp ne i32 %42, 0
  %44 = xor i1 %43, true
  %45 = zext i1 %44 to i32
  store i32 %45, i32* %5, align 4
  br label %46

46:                                               ; preds = %30, %29, %19
  %47 = load i32, i32* %5, align 4
  ret i32 %47
}

declare dso_local i32* @luaT_gettmbyobj(%struct.TYPE_5__*, i32*, i32) #1

declare dso_local i64 @ttisnil(i32*) #1

declare dso_local i32 @luaO_rawequalObj(i32*, i32*) #1

declare dso_local i32 @callTMres(%struct.TYPE_5__*, i32, i32*, i32*, i32*) #1

declare dso_local i32 @l_isfalse(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
