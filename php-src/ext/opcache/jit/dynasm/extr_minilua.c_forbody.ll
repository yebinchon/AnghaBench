; ModuleID = '/home/carl/AnghaBench/php-src/ext/opcache/jit/dynasm/extr_minilua.c_forbody.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/opcache/jit/dynasm/extr_minilua.c_forbody.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32* }

@TK_DO = common dso_local global i32 0, align 4
@OP_FORPREP = common dso_local global i32 0, align 4
@OP_FORLOOP = common dso_local global i32 0, align 4
@OP_TFORLOOP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_6__*, i32, i32, i32, i32)* @forbody to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @forbody(%struct.TYPE_6__* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  store i32* %17, i32** %12, align 8
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %19 = call i32 @adjustlocalvars(%struct.TYPE_6__* %18, i32 3)
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %21 = load i32, i32* @TK_DO, align 4
  %22 = call i32 @checknext(%struct.TYPE_6__* %20, i32 %21)
  %23 = load i32, i32* %10, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %5
  %26 = load i32*, i32** %12, align 8
  %27 = load i32, i32* @OP_FORPREP, align 4
  %28 = load i32, i32* %7, align 4
  %29 = call i32 @luaK_codeAsBx(i32* %26, i32 %27, i32 %28, i32 -1)
  br label %33

30:                                               ; preds = %5
  %31 = load i32*, i32** %12, align 8
  %32 = call i32 @luaK_jump(i32* %31)
  br label %33

33:                                               ; preds = %30, %25
  %34 = phi i32 [ %29, %25 ], [ %32, %30 ]
  store i32 %34, i32* %13, align 4
  %35 = load i32*, i32** %12, align 8
  %36 = call i32 @enterblock(i32* %35, i32* %11, i32 0)
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %38 = load i32, i32* %9, align 4
  %39 = call i32 @adjustlocalvars(%struct.TYPE_6__* %37, i32 %38)
  %40 = load i32*, i32** %12, align 8
  %41 = load i32, i32* %9, align 4
  %42 = call i32 @luaK_reserveregs(i32* %40, i32 %41)
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %44 = call i32 @block(%struct.TYPE_6__* %43)
  %45 = load i32*, i32** %12, align 8
  %46 = call i32 @leaveblock(i32* %45)
  %47 = load i32*, i32** %12, align 8
  %48 = load i32, i32* %13, align 4
  %49 = call i32 @luaK_patchtohere(i32* %47, i32 %48)
  %50 = load i32, i32* %10, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %57

52:                                               ; preds = %33
  %53 = load i32*, i32** %12, align 8
  %54 = load i32, i32* @OP_FORLOOP, align 4
  %55 = load i32, i32* %7, align 4
  %56 = call i32 @luaK_codeAsBx(i32* %53, i32 %54, i32 %55, i32 -1)
  br label %63

57:                                               ; preds = %33
  %58 = load i32*, i32** %12, align 8
  %59 = load i32, i32* @OP_TFORLOOP, align 4
  %60 = load i32, i32* %7, align 4
  %61 = load i32, i32* %9, align 4
  %62 = call i32 @luaK_codeABC(i32* %58, i32 %59, i32 %60, i32 0, i32 %61)
  br label %63

63:                                               ; preds = %57, %52
  %64 = phi i32 [ %56, %52 ], [ %62, %57 ]
  store i32 %64, i32* %14, align 4
  %65 = load i32*, i32** %12, align 8
  %66 = load i32, i32* %8, align 4
  %67 = call i32 @luaK_fixline(i32* %65, i32 %66)
  %68 = load i32*, i32** %12, align 8
  %69 = load i32, i32* %10, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %63
  %72 = load i32, i32* %14, align 4
  br label %76

73:                                               ; preds = %63
  %74 = load i32*, i32** %12, align 8
  %75 = call i32 @luaK_jump(i32* %74)
  br label %76

76:                                               ; preds = %73, %71
  %77 = phi i32 [ %72, %71 ], [ %75, %73 ]
  %78 = load i32, i32* %13, align 4
  %79 = add nsw i32 %78, 1
  %80 = call i32 @luaK_patchlist(i32* %68, i32 %77, i32 %79)
  ret void
}

declare dso_local i32 @adjustlocalvars(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @checknext(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @luaK_codeAsBx(i32*, i32, i32, i32) #1

declare dso_local i32 @luaK_jump(i32*) #1

declare dso_local i32 @enterblock(i32*, i32*, i32) #1

declare dso_local i32 @luaK_reserveregs(i32*, i32) #1

declare dso_local i32 @block(%struct.TYPE_6__*) #1

declare dso_local i32 @leaveblock(i32*) #1

declare dso_local i32 @luaK_patchtohere(i32*, i32) #1

declare dso_local i32 @luaK_codeABC(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @luaK_fixline(i32*, i32) #1

declare dso_local i32 @luaK_patchlist(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
