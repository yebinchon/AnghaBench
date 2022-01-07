; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/modules/extr_ads1115.c_ads1115_lua_startread.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/modules/extr_ads1115.c_ads1115_lua_startread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i32, i32, i64, i32, i32, i32, i32, i32 }

@metatable_name = common dso_local global i32 0, align 4
@ADS1115_CQUE_1CONV = common dso_local global i64 0, align 8
@ADS1115_CQUE_2CONV = common dso_local global i64 0, align 8
@ADS1115_CQUE_4CONV = common dso_local global i64 0, align 8
@ADS1115_MODE_SINGLE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [29 x i8] c"ads1115 trigger config: %04x\00", align 1
@ADS1115_POINTER_CONFIG = common dso_local global i32 0, align 4
@LUA_TFUNCTION = common dso_local global i64 0, align 8
@LUA_TLIGHTFUNCTION = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [17 x i8] c"Must be function\00", align 1
@LUA_REGISTRYINDEX = common dso_local global i32 0, align 4
@ads1115_lua_readoutdone = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @ads1115_lua_startread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ads1115_lua_startread(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  %6 = load i32*, i32** %3, align 8
  %7 = load i32, i32* @metatable_name, align 4
  %8 = call %struct.TYPE_3__* @luaL_checkudata(i32* %6, i32 1, i32 %7)
  store %struct.TYPE_3__* %8, %struct.TYPE_3__** %4, align 8
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @ADS1115_CQUE_1CONV, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %26, label %14

14:                                               ; preds = %1
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @ADS1115_CQUE_2CONV, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %26, label %20

20:                                               ; preds = %14
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @ADS1115_CQUE_4CONV, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %56

26:                                               ; preds = %20, %14, %1
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = icmp eq i32 %29, 32767
  br i1 %30, label %31, label %56

31:                                               ; preds = %26
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = icmp eq i32 %34, 32768
  br i1 %35, label %36, label %56

36:                                               ; preds = %31
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 3
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @ADS1115_MODE_SINGLE, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %55

42:                                               ; preds = %36
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 6
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @NODE_DBG(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %45)
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 7
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @ADS1115_POINTER_CONFIG, align 4
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 6
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @write_reg(i32 %49, i32 %50, i32 %53)
  br label %55

55:                                               ; preds = %42, %36
  store i32 0, i32* %2, align 4
  br label %119

56:                                               ; preds = %31, %26, %20
  %57 = load i32*, i32** %3, align 8
  %58 = load i32*, i32** %3, align 8
  %59 = call i64 @lua_type(i32* %58, i32 2)
  %60 = load i64, i64* @LUA_TFUNCTION, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %67, label %62

62:                                               ; preds = %56
  %63 = load i32*, i32** %3, align 8
  %64 = call i64 @lua_type(i32* %63, i32 2)
  %65 = load i64, i64* @LUA_TLIGHTFUNCTION, align 8
  %66 = icmp eq i64 %64, %65
  br label %67

67:                                               ; preds = %62, %56
  %68 = phi i1 [ true, %56 ], [ %66, %62 ]
  %69 = zext i1 %68 to i32
  %70 = call i32 @luaL_argcheck(i32* %57, i32 %69, i32 2, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  %71 = load i32*, i32** %3, align 8
  %72 = call i32 @lua_pushvalue(i32* %71, i32 2)
  %73 = load i32*, i32** %3, align 8
  %74 = load i32, i32* @LUA_REGISTRYINDEX, align 4
  %75 = call i32 @luaL_ref(i32* %73, i32 %74)
  %76 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 8
  store i32 %75, i32* %77, align 8
  %78 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i32 0, i32 3
  %80 = load i64, i64* %79, align 8
  %81 = load i64, i64* @ADS1115_MODE_SINGLE, align 8
  %82 = icmp eq i64 %80, %81
  br i1 %82, label %83, label %92

83:                                               ; preds = %67
  %84 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %85 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %84, i32 0, i32 7
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* @ADS1115_POINTER_CONFIG, align 4
  %88 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %89 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %88, i32 0, i32 6
  %90 = load i32, i32* %89, align 8
  %91 = call i32 @write_reg(i32 %86, i32 %87, i32 %90)
  br label %92

92:                                               ; preds = %83, %67
  %93 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %94 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %93, i32 0, i32 5
  %95 = call i32 @os_timer_disarm(i32* %94)
  %96 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %97 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %96, i32 0, i32 5
  %98 = load i64, i64* @ads1115_lua_readoutdone, align 8
  %99 = inttoptr i64 %98 to i32*
  %100 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %101 = bitcast %struct.TYPE_3__* %100 to i8*
  %102 = call i32 @os_timer_setfn(i32* %97, i32* %99, i8* %101)
  store i32 1, i32* %5, align 4
  %103 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %104 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %103, i32 0, i32 4
  %105 = load i32, i32* %104, align 8
  switch i32 %105, label %114 [
    i32 129, label %106
    i32 136, label %107
    i32 134, label %108
    i32 131, label %109
    i32 137, label %110
    i32 135, label %111
    i32 133, label %112
    i32 132, label %112
    i32 130, label %113
    i32 128, label %113
  ]

106:                                              ; preds = %92
  store i32 150, i32* %5, align 4
  br label %114

107:                                              ; preds = %92
  store i32 75, i32* %5, align 4
  br label %114

108:                                              ; preds = %92
  store i32 35, i32* %5, align 4
  br label %114

109:                                              ; preds = %92
  store i32 20, i32* %5, align 4
  br label %114

110:                                              ; preds = %92
  store i32 10, i32* %5, align 4
  br label %114

111:                                              ; preds = %92
  store i32 5, i32* %5, align 4
  br label %114

112:                                              ; preds = %92, %92
  store i32 3, i32* %5, align 4
  br label %114

113:                                              ; preds = %92, %92
  store i32 2, i32* %5, align 4
  br label %114

114:                                              ; preds = %113, %92, %112, %111, %110, %109, %108, %107, %106
  %115 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %116 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %115, i32 0, i32 5
  %117 = load i32, i32* %5, align 4
  %118 = call i32 @os_timer_arm(i32* %116, i32 %117, i32 0)
  store i32 0, i32* %2, align 4
  br label %119

119:                                              ; preds = %114, %55
  %120 = load i32, i32* %2, align 4
  ret i32 %120
}

declare dso_local %struct.TYPE_3__* @luaL_checkudata(i32*, i32, i32) #1

declare dso_local i32 @NODE_DBG(i8*, i32) #1

declare dso_local i32 @write_reg(i32, i32, i32) #1

declare dso_local i32 @luaL_argcheck(i32*, i32, i32, i8*) #1

declare dso_local i64 @lua_type(i32*, i32) #1

declare dso_local i32 @lua_pushvalue(i32*, i32) #1

declare dso_local i32 @luaL_ref(i32*, i32) #1

declare dso_local i32 @os_timer_disarm(i32*) #1

declare dso_local i32 @os_timer_setfn(i32*, i32*, i8*) #1

declare dso_local i32 @os_timer_arm(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
