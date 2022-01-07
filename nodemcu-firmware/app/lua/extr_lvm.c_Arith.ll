; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/lua/extr_lvm.c_Arith.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/lua/extr_lvm.c_Arith.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32*, i32*, i32)* @Arith to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @Arith(i32* %0, i32 %1, i32* %2, i32* %3, i32 %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32 %4, i32* %10, align 4
  %19 = load i32*, i32** %8, align 8
  %20 = call i32* @luaV_tonumber(i32* %19, i32* %11)
  store i32* %20, i32** %13, align 8
  %21 = icmp ne i32* %20, null
  br i1 %21, label %22, label %76

22:                                               ; preds = %5
  %23 = load i32*, i32** %9, align 8
  %24 = call i32* @luaV_tonumber(i32* %23, i32* %12)
  store i32* %24, i32** %14, align 8
  %25 = icmp ne i32* %24, null
  br i1 %25, label %26, label %76

26:                                               ; preds = %22
  %27 = load i32*, i32** %13, align 8
  %28 = call i32 @nvalue(i32* %27)
  store i32 %28, i32* %15, align 4
  %29 = load i32*, i32** %14, align 8
  %30 = call i32 @nvalue(i32* %29)
  store i32 %30, i32* %16, align 4
  %31 = load i32, i32* %10, align 4
  switch i32 %31, label %73 [
    i32 134, label %32
    i32 129, label %38
    i32 131, label %44
    i32 133, label %50
    i32 132, label %56
    i32 130, label %62
    i32 128, label %68
  ]

32:                                               ; preds = %26
  %33 = load i32, i32* %7, align 4
  %34 = load i32, i32* %15, align 4
  %35 = load i32, i32* %16, align 4
  %36 = call i32 @luai_numadd(i32 %34, i32 %35)
  %37 = call i32 @setnvalue(i32 %33, i32 %36)
  br label %75

38:                                               ; preds = %26
  %39 = load i32, i32* %7, align 4
  %40 = load i32, i32* %15, align 4
  %41 = load i32, i32* %16, align 4
  %42 = call i32 @luai_numsub(i32 %40, i32 %41)
  %43 = call i32 @setnvalue(i32 %39, i32 %42)
  br label %75

44:                                               ; preds = %26
  %45 = load i32, i32* %7, align 4
  %46 = load i32, i32* %15, align 4
  %47 = load i32, i32* %16, align 4
  %48 = call i32 @luai_nummul(i32 %46, i32 %47)
  %49 = call i32 @setnvalue(i32 %45, i32 %48)
  br label %75

50:                                               ; preds = %26
  %51 = load i32, i32* %7, align 4
  %52 = load i32, i32* %15, align 4
  %53 = load i32, i32* %16, align 4
  %54 = call i32 @luai_lnumdiv(i32 %52, i32 %53)
  %55 = call i32 @setnvalue(i32 %51, i32 %54)
  br label %75

56:                                               ; preds = %26
  %57 = load i32, i32* %7, align 4
  %58 = load i32, i32* %15, align 4
  %59 = load i32, i32* %16, align 4
  %60 = call i32 @luai_lnummod(i32 %58, i32 %59)
  %61 = call i32 @setnvalue(i32 %57, i32 %60)
  br label %75

62:                                               ; preds = %26
  %63 = load i32, i32* %7, align 4
  %64 = load i32, i32* %15, align 4
  %65 = load i32, i32* %16, align 4
  %66 = call i32 @luai_numpow(i32 %64, i32 %65)
  %67 = call i32 @setnvalue(i32 %63, i32 %66)
  br label %75

68:                                               ; preds = %26
  %69 = load i32, i32* %7, align 4
  %70 = load i32, i32* %15, align 4
  %71 = call i32 @luai_numunm(i32 %70)
  %72 = call i32 @setnvalue(i32 %69, i32 %71)
  br label %75

73:                                               ; preds = %26
  %74 = call i32 @lua_assert(i32 0)
  br label %75

75:                                               ; preds = %73, %68, %62, %56, %50, %44, %38, %32
  br label %100

76:                                               ; preds = %22, %5
  %77 = load i32*, i32** %6, align 8
  %78 = load i32*, i32** %8, align 8
  %79 = call i32 @savestack(i32* %77, i32* %78)
  store i32 %79, i32* %17, align 4
  %80 = load i32*, i32** %6, align 8
  %81 = load i32*, i32** %9, align 8
  %82 = call i32 @savestack(i32* %80, i32* %81)
  store i32 %82, i32* %18, align 4
  %83 = load i32*, i32** %6, align 8
  %84 = load i32*, i32** %8, align 8
  %85 = load i32*, i32** %9, align 8
  %86 = load i32, i32* %7, align 4
  %87 = load i32, i32* %10, align 4
  %88 = call i32 @call_binTM(i32* %83, i32* %84, i32* %85, i32 %86, i32 %87)
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %99, label %90

90:                                               ; preds = %76
  %91 = load i32*, i32** %6, align 8
  %92 = load i32*, i32** %6, align 8
  %93 = load i32, i32* %17, align 4
  %94 = call i32 @restorestack(i32* %92, i32 %93)
  %95 = load i32*, i32** %6, align 8
  %96 = load i32, i32* %18, align 4
  %97 = call i32 @restorestack(i32* %95, i32 %96)
  %98 = call i32 @luaG_aritherror(i32* %91, i32 %94, i32 %97)
  br label %99

99:                                               ; preds = %90, %76
  br label %100

100:                                              ; preds = %99, %75
  ret void
}

declare dso_local i32* @luaV_tonumber(i32*, i32*) #1

declare dso_local i32 @nvalue(i32*) #1

declare dso_local i32 @setnvalue(i32, i32) #1

declare dso_local i32 @luai_numadd(i32, i32) #1

declare dso_local i32 @luai_numsub(i32, i32) #1

declare dso_local i32 @luai_nummul(i32, i32) #1

declare dso_local i32 @luai_lnumdiv(i32, i32) #1

declare dso_local i32 @luai_lnummod(i32, i32) #1

declare dso_local i32 @luai_numpow(i32, i32) #1

declare dso_local i32 @luai_numunm(i32) #1

declare dso_local i32 @lua_assert(i32) #1

declare dso_local i32 @savestack(i32*, i32*) #1

declare dso_local i32 @call_binTM(i32*, i32*, i32*, i32, i32) #1

declare dso_local i32 @luaG_aritherror(i32*, i32, i32) #1

declare dso_local i32 @restorestack(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
