; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/lua/extr_lvm.c_luaV_equalval.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/lua/extr_lvm.c_luaV_equalval.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_9__ = type { i32 }

@TM_EQ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @luaV_equalval(%struct.TYPE_7__* %0, i32* %1, i32* %2) #0 {
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
  %11 = load i32*, i32** %7, align 8
  %12 = call i32 @ttype(i32* %11)
  %13 = icmp eq i32 %10, %12
  %14 = zext i1 %13 to i32
  %15 = call i32 @lua_assert(i32 %14)
  %16 = load i32*, i32** %6, align 8
  %17 = call i32 @ttype(i32* %16)
  switch i32 %17, label %84 [
    i32 132, label %18
    i32 131, label %19
    i32 135, label %25
    i32 130, label %32
    i32 133, label %39
    i32 134, label %39
    i32 128, label %46
    i32 129, label %65
  ]

18:                                               ; preds = %3
  store i32 1, i32* %4, align 4
  br label %111

19:                                               ; preds = %3
  %20 = load i32*, i32** %6, align 8
  %21 = call i32 @nvalue(i32* %20)
  %22 = load i32*, i32** %7, align 8
  %23 = call i32 @nvalue(i32* %22)
  %24 = call i32 @luai_numeq(i32 %21, i32 %23)
  store i32 %24, i32* %4, align 4
  br label %111

25:                                               ; preds = %3
  %26 = load i32*, i32** %6, align 8
  %27 = call i32 @bvalue(i32* %26)
  %28 = load i32*, i32** %7, align 8
  %29 = call i32 @bvalue(i32* %28)
  %30 = icmp eq i32 %27, %29
  %31 = zext i1 %30 to i32
  store i32 %31, i32* %4, align 4
  br label %111

32:                                               ; preds = %3
  %33 = load i32*, i32** %6, align 8
  %34 = call i32 @rvalue(i32* %33)
  %35 = load i32*, i32** %7, align 8
  %36 = call i32 @rvalue(i32* %35)
  %37 = icmp eq i32 %34, %36
  %38 = zext i1 %37 to i32
  store i32 %38, i32* %4, align 4
  br label %111

39:                                               ; preds = %3, %3
  %40 = load i32*, i32** %6, align 8
  %41 = call i32 @pvalue(i32* %40)
  %42 = load i32*, i32** %7, align 8
  %43 = call i32 @pvalue(i32* %42)
  %44 = icmp eq i32 %41, %43
  %45 = zext i1 %44 to i32
  store i32 %45, i32* %4, align 4
  br label %111

46:                                               ; preds = %3
  %47 = load i32*, i32** %6, align 8
  %48 = call %struct.TYPE_8__* @uvalue(i32* %47)
  %49 = load i32*, i32** %7, align 8
  %50 = call %struct.TYPE_8__* @uvalue(i32* %49)
  %51 = icmp eq %struct.TYPE_8__* %48, %50
  br i1 %51, label %52, label %53

52:                                               ; preds = %46
  store i32 1, i32* %4, align 4
  br label %111

53:                                               ; preds = %46
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %55 = load i32*, i32** %6, align 8
  %56 = call %struct.TYPE_8__* @uvalue(i32* %55)
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i32*, i32** %7, align 8
  %60 = call %struct.TYPE_8__* @uvalue(i32* %59)
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @TM_EQ, align 4
  %64 = call i32* @get_compTM(%struct.TYPE_7__* %54, i32 %58, i32 %62, i32 %63)
  store i32* %64, i32** %8, align 8
  br label %91

65:                                               ; preds = %3
  %66 = load i32*, i32** %6, align 8
  %67 = call %struct.TYPE_9__* @hvalue(i32* %66)
  %68 = load i32*, i32** %7, align 8
  %69 = call %struct.TYPE_9__* @hvalue(i32* %68)
  %70 = icmp eq %struct.TYPE_9__* %67, %69
  br i1 %70, label %71, label %72

71:                                               ; preds = %65
  store i32 1, i32* %4, align 4
  br label %111

72:                                               ; preds = %65
  %73 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %74 = load i32*, i32** %6, align 8
  %75 = call %struct.TYPE_9__* @hvalue(i32* %74)
  %76 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load i32*, i32** %7, align 8
  %79 = call %struct.TYPE_9__* @hvalue(i32* %78)
  %80 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* @TM_EQ, align 4
  %83 = call i32* @get_compTM(%struct.TYPE_7__* %73, i32 %77, i32 %81, i32 %82)
  store i32* %83, i32** %8, align 8
  br label %91

84:                                               ; preds = %3
  %85 = load i32*, i32** %6, align 8
  %86 = call i32 @gcvalue(i32* %85)
  %87 = load i32*, i32** %7, align 8
  %88 = call i32 @gcvalue(i32* %87)
  %89 = icmp eq i32 %86, %88
  %90 = zext i1 %89 to i32
  store i32 %90, i32* %4, align 4
  br label %111

91:                                               ; preds = %72, %53
  %92 = load i32*, i32** %8, align 8
  %93 = icmp eq i32* %92, null
  br i1 %93, label %94, label %95

94:                                               ; preds = %91
  store i32 0, i32* %4, align 4
  br label %111

95:                                               ; preds = %91
  %96 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %97 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %98 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = load i32*, i32** %8, align 8
  %101 = load i32*, i32** %6, align 8
  %102 = load i32*, i32** %7, align 8
  %103 = call i32 @callTMres(%struct.TYPE_7__* %96, i32 %99, i32* %100, i32* %101, i32* %102)
  %104 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %105 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = call i32 @l_isfalse(i32 %106)
  %108 = icmp ne i32 %107, 0
  %109 = xor i1 %108, true
  %110 = zext i1 %109 to i32
  store i32 %110, i32* %4, align 4
  br label %111

111:                                              ; preds = %95, %94, %84, %71, %52, %39, %32, %25, %19, %18
  %112 = load i32, i32* %4, align 4
  ret i32 %112
}

declare dso_local i32 @lua_assert(i32) #1

declare dso_local i32 @ttype(i32*) #1

declare dso_local i32 @luai_numeq(i32, i32) #1

declare dso_local i32 @nvalue(i32*) #1

declare dso_local i32 @bvalue(i32*) #1

declare dso_local i32 @rvalue(i32*) #1

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
