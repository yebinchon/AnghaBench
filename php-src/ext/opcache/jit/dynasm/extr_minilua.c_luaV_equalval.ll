; ModuleID = '/home/carl/AnghaBench/php-src/ext/opcache/jit/dynasm/extr_minilua.c_luaV_equalval.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/opcache/jit/dynasm/extr_minilua.c_luaV_equalval.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_9__ = type { i32 }

@TM_EQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*, i32*, i32*)* @luaV_equalval to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @luaV_equalval(%struct.TYPE_7__* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %9 = load i32*, i32** %6, align 8
  %10 = call i32 @ttype(i32* %9)
  switch i32 %10, label %70 [
    i32 0, label %11
    i32 3, label %12
    i32 1, label %18
    i32 2, label %25
    i32 7, label %32
    i32 5, label %51
  ]

11:                                               ; preds = %3
  store i32 1, i32* %4, align 4
  br label %97

12:                                               ; preds = %3
  %13 = load i32*, i32** %6, align 8
  %14 = call i32 @nvalue(i32* %13)
  %15 = load i32*, i32** %7, align 8
  %16 = call i32 @nvalue(i32* %15)
  %17 = call i32 @luai_numeq(i32 %14, i32 %16)
  store i32 %17, i32* %4, align 4
  br label %97

18:                                               ; preds = %3
  %19 = load i32*, i32** %6, align 8
  %20 = call i32 @bvalue(i32* %19)
  %21 = load i32*, i32** %7, align 8
  %22 = call i32 @bvalue(i32* %21)
  %23 = icmp eq i32 %20, %22
  %24 = zext i1 %23 to i32
  store i32 %24, i32* %4, align 4
  br label %97

25:                                               ; preds = %3
  %26 = load i32*, i32** %6, align 8
  %27 = call i32 @pvalue(i32* %26)
  %28 = load i32*, i32** %7, align 8
  %29 = call i32 @pvalue(i32* %28)
  %30 = icmp eq i32 %27, %29
  %31 = zext i1 %30 to i32
  store i32 %31, i32* %4, align 4
  br label %97

32:                                               ; preds = %3
  %33 = load i32*, i32** %6, align 8
  %34 = call %struct.TYPE_8__* @uvalue(i32* %33)
  %35 = load i32*, i32** %7, align 8
  %36 = call %struct.TYPE_8__* @uvalue(i32* %35)
  %37 = icmp eq %struct.TYPE_8__* %34, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %32
  store i32 1, i32* %4, align 4
  br label %97

39:                                               ; preds = %32
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %41 = load i32*, i32** %6, align 8
  %42 = call %struct.TYPE_8__* @uvalue(i32* %41)
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32*, i32** %7, align 8
  %46 = call %struct.TYPE_8__* @uvalue(i32* %45)
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @TM_EQ, align 4
  %50 = call i32* @get_compTM(%struct.TYPE_7__* %40, i32 %44, i32 %48, i32 %49)
  store i32* %50, i32** %8, align 8
  br label %77

51:                                               ; preds = %3
  %52 = load i32*, i32** %6, align 8
  %53 = call %struct.TYPE_9__* @hvalue(i32* %52)
  %54 = load i32*, i32** %7, align 8
  %55 = call %struct.TYPE_9__* @hvalue(i32* %54)
  %56 = icmp eq %struct.TYPE_9__* %53, %55
  br i1 %56, label %57, label %58

57:                                               ; preds = %51
  store i32 1, i32* %4, align 4
  br label %97

58:                                               ; preds = %51
  %59 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %60 = load i32*, i32** %6, align 8
  %61 = call %struct.TYPE_9__* @hvalue(i32* %60)
  %62 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load i32*, i32** %7, align 8
  %65 = call %struct.TYPE_9__* @hvalue(i32* %64)
  %66 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* @TM_EQ, align 4
  %69 = call i32* @get_compTM(%struct.TYPE_7__* %59, i32 %63, i32 %67, i32 %68)
  store i32* %69, i32** %8, align 8
  br label %77

70:                                               ; preds = %3
  %71 = load i32*, i32** %6, align 8
  %72 = call i32 @gcvalue(i32* %71)
  %73 = load i32*, i32** %7, align 8
  %74 = call i32 @gcvalue(i32* %73)
  %75 = icmp eq i32 %72, %74
  %76 = zext i1 %75 to i32
  store i32 %76, i32* %4, align 4
  br label %97

77:                                               ; preds = %58, %39
  %78 = load i32*, i32** %8, align 8
  %79 = icmp eq i32* %78, null
  br i1 %79, label %80, label %81

80:                                               ; preds = %77
  store i32 0, i32* %4, align 4
  br label %97

81:                                               ; preds = %77
  %82 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %83 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %84 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = load i32*, i32** %8, align 8
  %87 = load i32*, i32** %6, align 8
  %88 = load i32*, i32** %7, align 8
  %89 = call i32 @callTMres(%struct.TYPE_7__* %82, i32 %85, i32* %86, i32* %87, i32* %88)
  %90 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %91 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @l_isfalse(i32 %92)
  %94 = icmp ne i32 %93, 0
  %95 = xor i1 %94, true
  %96 = zext i1 %95 to i32
  store i32 %96, i32* %4, align 4
  br label %97

97:                                               ; preds = %81, %80, %70, %57, %38, %25, %18, %12, %11
  %98 = load i32, i32* %4, align 4
  ret i32 %98
}

declare dso_local i32 @ttype(i32*) #1

declare dso_local i32 @luai_numeq(i32, i32) #1

declare dso_local i32 @nvalue(i32*) #1

declare dso_local i32 @bvalue(i32*) #1

declare dso_local i32 @pvalue(i32*) #1

declare dso_local %struct.TYPE_8__* @uvalue(i32*) #1

declare dso_local i32* @get_compTM(%struct.TYPE_7__*, i32, i32, i32) #1

declare dso_local %struct.TYPE_9__* @hvalue(i32*) #1

declare dso_local i32 @gcvalue(i32*) #1

declare dso_local i32 @callTMres(%struct.TYPE_7__*, i32, i32*, i32*, i32*) #1

declare dso_local i32 @l_isfalse(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
