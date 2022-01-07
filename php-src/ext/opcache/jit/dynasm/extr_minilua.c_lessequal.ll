; ModuleID = '/home/carl/AnghaBench/php-src/ext/opcache/jit/dynasm/extr_minilua.c_lessequal.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/opcache/jit/dynasm/extr_minilua.c_lessequal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TM_LE = common dso_local global i32 0, align 4
@TM_LT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32*)* @lessequal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lessequal(i32* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %9 = load i32*, i32** %6, align 8
  %10 = call i64 @ttype(i32* %9)
  %11 = load i32*, i32** %7, align 8
  %12 = call i64 @ttype(i32* %11)
  %13 = icmp ne i64 %10, %12
  br i1 %13, label %14, label %19

14:                                               ; preds = %3
  %15 = load i32*, i32** %5, align 8
  %16 = load i32*, i32** %6, align 8
  %17 = load i32*, i32** %7, align 8
  %18 = call i32 @luaG_ordererror(i32* %15, i32* %16, i32* %17)
  store i32 %18, i32* %4, align 4
  br label %71

19:                                               ; preds = %3
  %20 = load i32*, i32** %6, align 8
  %21 = call i64 @ttisnumber(i32* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %29

23:                                               ; preds = %19
  %24 = load i32*, i32** %6, align 8
  %25 = call i32 @nvalue(i32* %24)
  %26 = load i32*, i32** %7, align 8
  %27 = call i32 @nvalue(i32* %26)
  %28 = call i32 @luai_numle(i32 %25, i32 %27)
  store i32 %28, i32* %4, align 4
  br label %71

29:                                               ; preds = %19
  %30 = load i32*, i32** %6, align 8
  %31 = call i64 @ttisstring(i32* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %41

33:                                               ; preds = %29
  %34 = load i32*, i32** %6, align 8
  %35 = call i32 @rawtsvalue(i32* %34)
  %36 = load i32*, i32** %7, align 8
  %37 = call i32 @rawtsvalue(i32* %36)
  %38 = call i64 @l_strcmp(i32 %35, i32 %37)
  %39 = icmp sle i64 %38, 0
  %40 = zext i1 %39 to i32
  store i32 %40, i32* %4, align 4
  br label %71

41:                                               ; preds = %29
  %42 = load i32*, i32** %5, align 8
  %43 = load i32*, i32** %6, align 8
  %44 = load i32*, i32** %7, align 8
  %45 = load i32, i32* @TM_LE, align 4
  %46 = call i32 @call_orderTM(i32* %42, i32* %43, i32* %44, i32 %45)
  store i32 %46, i32* %8, align 4
  %47 = icmp ne i32 %46, -1
  br i1 %47, label %48, label %50

48:                                               ; preds = %41
  %49 = load i32, i32* %8, align 4
  store i32 %49, i32* %4, align 4
  br label %71

50:                                               ; preds = %41
  %51 = load i32*, i32** %5, align 8
  %52 = load i32*, i32** %7, align 8
  %53 = load i32*, i32** %6, align 8
  %54 = load i32, i32* @TM_LT, align 4
  %55 = call i32 @call_orderTM(i32* %51, i32* %52, i32* %53, i32 %54)
  store i32 %55, i32* %8, align 4
  %56 = icmp ne i32 %55, -1
  br i1 %56, label %57, label %62

57:                                               ; preds = %50
  %58 = load i32, i32* %8, align 4
  %59 = icmp ne i32 %58, 0
  %60 = xor i1 %59, true
  %61 = zext i1 %60 to i32
  store i32 %61, i32* %4, align 4
  br label %71

62:                                               ; preds = %50
  br label %63

63:                                               ; preds = %62
  br label %64

64:                                               ; preds = %63
  br label %65

65:                                               ; preds = %64
  br label %66

66:                                               ; preds = %65
  %67 = load i32*, i32** %5, align 8
  %68 = load i32*, i32** %6, align 8
  %69 = load i32*, i32** %7, align 8
  %70 = call i32 @luaG_ordererror(i32* %67, i32* %68, i32* %69)
  store i32 %70, i32* %4, align 4
  br label %71

71:                                               ; preds = %66, %57, %48, %33, %23, %14
  %72 = load i32, i32* %4, align 4
  ret i32 %72
}

declare dso_local i64 @ttype(i32*) #1

declare dso_local i32 @luaG_ordererror(i32*, i32*, i32*) #1

declare dso_local i64 @ttisnumber(i32*) #1

declare dso_local i32 @luai_numle(i32, i32) #1

declare dso_local i32 @nvalue(i32*) #1

declare dso_local i64 @ttisstring(i32*) #1

declare dso_local i64 @l_strcmp(i32, i32) #1

declare dso_local i32 @rawtsvalue(i32*) #1

declare dso_local i32 @call_orderTM(i32*, i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
