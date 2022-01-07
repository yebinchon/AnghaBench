; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/lua/extr_lvm.c_luaV_gettable.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/lua/extr_lvm.c_luaV_gettable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_5__* }

@MAXTAGLOOP = common dso_local global i32 0, align 4
@TM_INDEX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"index\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"loop in gettable\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @luaV_gettable(i32* %0, i32* %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_5__*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32*, align 8
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %16

16:                                               ; preds = %106, %4
  %17 = load i32, i32* %9, align 4
  %18 = load i32, i32* @MAXTAGLOOP, align 4
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %20, label %109

20:                                               ; preds = %16
  %21 = load i32*, i32** %6, align 8
  %22 = call i64 @ttistable(i32* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %47

24:                                               ; preds = %20
  %25 = load i32*, i32** %6, align 8
  %26 = call %struct.TYPE_5__* @hvalue(i32* %25)
  store %struct.TYPE_5__* %26, %struct.TYPE_5__** %12, align 8
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %28 = load i32*, i32** %7, align 8
  %29 = call i32* @luaH_get(%struct.TYPE_5__* %27, i32* %28)
  store i32* %29, i32** %13, align 8
  %30 = load i32*, i32** %13, align 8
  %31 = call i64 @ttisnil(i32* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %41

33:                                               ; preds = %24
  %34 = load i32*, i32** %5, align 8
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %36, align 8
  %38 = load i32, i32* @TM_INDEX, align 4
  %39 = call i32* @fasttm(i32* %34, %struct.TYPE_5__* %37, i32 %38)
  store i32* %39, i32** %11, align 8
  %40 = icmp eq i32* %39, null
  br i1 %40, label %41, label %46

41:                                               ; preds = %33, %24
  %42 = load i32*, i32** %5, align 8
  %43 = load i32, i32* %8, align 4
  %44 = load i32*, i32** %13, align 8
  %45 = call i32 @setobj2s(i32* %42, i32 %43, i32* %44)
  br label %112

46:                                               ; preds = %33
  br label %87

47:                                               ; preds = %20
  %48 = load i32*, i32** %6, align 8
  %49 = call i64 @ttisrotable(i32* %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %74

51:                                               ; preds = %47
  %52 = load i32*, i32** %6, align 8
  %53 = call i8* @rvalue(i32* %52)
  store i8* %53, i8** %14, align 8
  %54 = load i8*, i8** %14, align 8
  %55 = load i32*, i32** %7, align 8
  %56 = call i32* @luaH_get_ro(i8* %54, i32* %55)
  store i32* %56, i32** %15, align 8
  %57 = load i32*, i32** %15, align 8
  %58 = call i64 @ttisnil(i32* %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %68

60:                                               ; preds = %51
  %61 = load i32*, i32** %5, align 8
  %62 = load i8*, i8** %14, align 8
  %63 = call i64 @luaR_getmeta(i8* %62)
  %64 = inttoptr i64 %63 to %struct.TYPE_5__*
  %65 = load i32, i32* @TM_INDEX, align 4
  %66 = call i32* @fasttm(i32* %61, %struct.TYPE_5__* %64, i32 %65)
  store i32* %66, i32** %11, align 8
  %67 = icmp eq i32* %66, null
  br i1 %67, label %68, label %73

68:                                               ; preds = %60, %51
  %69 = load i32*, i32** %5, align 8
  %70 = load i32, i32* %8, align 4
  %71 = load i32*, i32** %15, align 8
  %72 = call i32 @setobj2s(i32* %69, i32 %70, i32* %71)
  br label %112

73:                                               ; preds = %60
  br label %86

74:                                               ; preds = %47
  %75 = load i32*, i32** %5, align 8
  %76 = load i32*, i32** %6, align 8
  %77 = load i32, i32* @TM_INDEX, align 4
  %78 = call i32* @luaT_gettmbyobj(i32* %75, i32* %76, i32 %77)
  store i32* %78, i32** %11, align 8
  %79 = call i64 @ttisnil(i32* %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %85

81:                                               ; preds = %74
  %82 = load i32*, i32** %5, align 8
  %83 = load i32*, i32** %6, align 8
  %84 = call i32 @luaG_typeerror(i32* %82, i32* %83, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  br label %85

85:                                               ; preds = %81, %74
  br label %86

86:                                               ; preds = %85, %73
  br label %87

87:                                               ; preds = %86, %46
  %88 = load i32*, i32** %11, align 8
  %89 = call i64 @ttisfunction(i32* %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %95, label %91

91:                                               ; preds = %87
  %92 = load i32*, i32** %11, align 8
  %93 = call i64 @ttislightfunction(i32* %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %102

95:                                               ; preds = %91, %87
  %96 = load i32*, i32** %5, align 8
  %97 = load i32, i32* %8, align 4
  %98 = load i32*, i32** %11, align 8
  %99 = load i32*, i32** %6, align 8
  %100 = load i32*, i32** %7, align 8
  %101 = call i32 @callTMres(i32* %96, i32 %97, i32* %98, i32* %99, i32* %100)
  br label %112

102:                                              ; preds = %91
  %103 = load i32*, i32** %5, align 8
  %104 = load i32*, i32** %11, align 8
  %105 = call i32 @setobj(i32* %103, i32* %10, i32* %104)
  store i32* %10, i32** %6, align 8
  br label %106

106:                                              ; preds = %102
  %107 = load i32, i32* %9, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %9, align 4
  br label %16

109:                                              ; preds = %16
  %110 = load i32*, i32** %5, align 8
  %111 = call i32 @luaG_runerror(i32* %110, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  br label %112

112:                                              ; preds = %109, %95, %68, %41
  ret void
}

declare dso_local i64 @ttistable(i32*) #1

declare dso_local %struct.TYPE_5__* @hvalue(i32*) #1

declare dso_local i32* @luaH_get(%struct.TYPE_5__*, i32*) #1

declare dso_local i64 @ttisnil(i32*) #1

declare dso_local i32* @fasttm(i32*, %struct.TYPE_5__*, i32) #1

declare dso_local i32 @setobj2s(i32*, i32, i32*) #1

declare dso_local i64 @ttisrotable(i32*) #1

declare dso_local i8* @rvalue(i32*) #1

declare dso_local i32* @luaH_get_ro(i8*, i32*) #1

declare dso_local i64 @luaR_getmeta(i8*) #1

declare dso_local i32* @luaT_gettmbyobj(i32*, i32*, i32) #1

declare dso_local i32 @luaG_typeerror(i32*, i32*, i8*) #1

declare dso_local i64 @ttisfunction(i32*) #1

declare dso_local i64 @ttislightfunction(i32*) #1

declare dso_local i32 @callTMres(i32*, i32, i32*, i32*, i32*) #1

declare dso_local i32 @setobj(i32*, i32*, i32*) #1

declare dso_local i32 @luaG_runerror(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
