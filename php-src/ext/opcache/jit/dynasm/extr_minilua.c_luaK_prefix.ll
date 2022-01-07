; ModuleID = '/home/carl/AnghaBench/php-src/ext/opcache/jit/dynasm/extr_minilua.c_luaK_prefix.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/opcache/jit/dynasm/extr_minilua.c_luaK_prefix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32, %struct.TYPE_9__, i32 }
%struct.TYPE_9__ = type { i64 }

@VKNUM = common dso_local global i32 0, align 4
@OP_UNM = common dso_local global i32 0, align 4
@OP_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, %struct.TYPE_10__*)* @luaK_prefix to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @luaK_prefix(i32* %0, i32 %1, %struct.TYPE_10__* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_10__*, align 8
  %7 = alloca %struct.TYPE_10__, align 8
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.TYPE_10__* %2, %struct.TYPE_10__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %7, i32 0, i32 1
  store i32 -1, i32* %8, align 4
  %9 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %7, i32 0, i32 0
  store i32 -1, i32* %9, align 8
  %10 = load i32, i32* @VKNUM, align 4
  %11 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %7, i32 0, i32 3
  store i32 %10, i32* %11, align 8
  %12 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %7, i32 0, i32 2
  %13 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 0
  store i64 0, i64* %13, align 8
  %14 = load i32, i32* %5, align 4
  switch i32 %14, label %40 [
    i32 129, label %15
    i32 128, label %28
    i32 130, label %32
  ]

15:                                               ; preds = %3
  %16 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %17 = call i32 @isnumeral(%struct.TYPE_10__* %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %23, label %19

19:                                               ; preds = %15
  %20 = load i32*, i32** %4, align 8
  %21 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %22 = call i32 @luaK_exp2anyreg(i32* %20, %struct.TYPE_10__* %21)
  br label %23

23:                                               ; preds = %19, %15
  %24 = load i32*, i32** %4, align 8
  %25 = load i32, i32* @OP_UNM, align 4
  %26 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %27 = call i32 @codearith(i32* %24, i32 %25, %struct.TYPE_10__* %26, %struct.TYPE_10__* %7)
  br label %41

28:                                               ; preds = %3
  %29 = load i32*, i32** %4, align 8
  %30 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %31 = call i32 @codenot(i32* %29, %struct.TYPE_10__* %30)
  br label %41

32:                                               ; preds = %3
  %33 = load i32*, i32** %4, align 8
  %34 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %35 = call i32 @luaK_exp2anyreg(i32* %33, %struct.TYPE_10__* %34)
  %36 = load i32*, i32** %4, align 8
  %37 = load i32, i32* @OP_LEN, align 4
  %38 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %39 = call i32 @codearith(i32* %36, i32 %37, %struct.TYPE_10__* %38, %struct.TYPE_10__* %7)
  br label %41

40:                                               ; preds = %3
  br label %41

41:                                               ; preds = %40, %32, %28, %23
  ret void
}

declare dso_local i32 @isnumeral(%struct.TYPE_10__*) #1

declare dso_local i32 @luaK_exp2anyreg(i32*, %struct.TYPE_10__*) #1

declare dso_local i32 @codearith(i32*, i32, %struct.TYPE_10__*, %struct.TYPE_10__*) #1

declare dso_local i32 @codenot(i32*, %struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
