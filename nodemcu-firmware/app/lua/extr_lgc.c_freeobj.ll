; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/lua/extr_lgc.c_freeobj.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/lua/extr_lgc.c_freeobj.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32 }
%struct.TYPE_13__ = type { %struct.TYPE_14__, i32* }
%struct.TYPE_14__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_15__*)* @freeobj to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @freeobj(i32* %0, %struct.TYPE_15__* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_15__*, align 8
  store i32* %0, i32** %3, align 8
  store %struct.TYPE_15__* %1, %struct.TYPE_15__** %4, align 8
  %5 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %6 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %5, i32 0, i32 0
  %7 = call i32 @gettt(i32* %6)
  switch i32 %7, label %83 [
    i32 133, label %8
    i32 134, label %20
    i32 129, label %25
    i32 131, label %30
    i32 130, label %35
    i32 132, label %56
    i32 128, label %76
  ]

8:                                                ; preds = %2
  %9 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %9, i32 0, i32 0
  %11 = call i32 @isLFSobject(i32* %10)
  %12 = icmp ne i32 %11, 0
  %13 = xor i1 %12, true
  %14 = zext i1 %13 to i32
  %15 = call i32 @lua_assert(i32 %14)
  %16 = load i32*, i32** %3, align 8
  %17 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %18 = call i32 @gco2p(%struct.TYPE_15__* %17)
  %19 = call i32 @luaF_freeproto(i32* %16, i32 %18)
  br label %85

20:                                               ; preds = %2
  %21 = load i32*, i32** %3, align 8
  %22 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %23 = call i32 @gco2cl(%struct.TYPE_15__* %22)
  %24 = call i32 @luaF_freeclosure(i32* %21, i32 %23)
  br label %85

25:                                               ; preds = %2
  %26 = load i32*, i32** %3, align 8
  %27 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %28 = call i32 @gco2uv(%struct.TYPE_15__* %27)
  %29 = call i32 @luaF_freeupval(i32* %26, i32 %28)
  br label %85

30:                                               ; preds = %2
  %31 = load i32*, i32** %3, align 8
  %32 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %33 = call i32 @gco2h(%struct.TYPE_15__* %32)
  %34 = call i32 @luaH_free(i32* %31, i32 %33)
  br label %85

35:                                               ; preds = %2
  %36 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %37 = call i32* @gco2th(%struct.TYPE_15__* %36)
  %38 = load i32*, i32** %3, align 8
  %39 = icmp ne i32* %37, %38
  br i1 %39, label %40, label %48

40:                                               ; preds = %35
  %41 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %42 = call i32* @gco2th(%struct.TYPE_15__* %41)
  %43 = load i32*, i32** %3, align 8
  %44 = call %struct.TYPE_13__* @G(i32* %43)
  %45 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %44, i32 0, i32 1
  %46 = load i32*, i32** %45, align 8
  %47 = icmp ne i32* %42, %46
  br label %48

48:                                               ; preds = %40, %35
  %49 = phi i1 [ false, %35 ], [ %47, %40 ]
  %50 = zext i1 %49 to i32
  %51 = call i32 @lua_assert(i32 %50)
  %52 = load i32*, i32** %3, align 8
  %53 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %54 = call i32* @gco2th(%struct.TYPE_15__* %53)
  %55 = call i32 @luaE_freethread(i32* %52, i32* %54)
  br label %85

56:                                               ; preds = %2
  %57 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %58 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %57, i32 0, i32 0
  %59 = call i32 @isLFSobject(i32* %58)
  %60 = icmp ne i32 %59, 0
  %61 = xor i1 %60, true
  %62 = zext i1 %61 to i32
  %63 = call i32 @lua_assert(i32 %62)
  %64 = load i32*, i32** %3, align 8
  %65 = call %struct.TYPE_13__* @G(i32* %64)
  %66 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = add nsw i32 %68, -1
  store i32 %69, i32* %67, align 8
  %70 = load i32*, i32** %3, align 8
  %71 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %72 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %73 = call i32 @gco2ts(%struct.TYPE_15__* %72)
  %74 = call i32 @sizestring(i32 %73)
  %75 = call i32 @luaM_freemem(i32* %70, %struct.TYPE_15__* %71, i32 %74)
  br label %85

76:                                               ; preds = %2
  %77 = load i32*, i32** %3, align 8
  %78 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %79 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %80 = call i32 @gco2u(%struct.TYPE_15__* %79)
  %81 = call i32 @sizeudata(i32 %80)
  %82 = call i32 @luaM_freemem(i32* %77, %struct.TYPE_15__* %78, i32 %81)
  br label %85

83:                                               ; preds = %2
  %84 = call i32 @lua_assert(i32 0)
  br label %85

85:                                               ; preds = %83, %76, %56, %48, %30, %25, %20, %8
  ret void
}

declare dso_local i32 @gettt(i32*) #1

declare dso_local i32 @lua_assert(i32) #1

declare dso_local i32 @isLFSobject(i32*) #1

declare dso_local i32 @luaF_freeproto(i32*, i32) #1

declare dso_local i32 @gco2p(%struct.TYPE_15__*) #1

declare dso_local i32 @luaF_freeclosure(i32*, i32) #1

declare dso_local i32 @gco2cl(%struct.TYPE_15__*) #1

declare dso_local i32 @luaF_freeupval(i32*, i32) #1

declare dso_local i32 @gco2uv(%struct.TYPE_15__*) #1

declare dso_local i32 @luaH_free(i32*, i32) #1

declare dso_local i32 @gco2h(%struct.TYPE_15__*) #1

declare dso_local i32* @gco2th(%struct.TYPE_15__*) #1

declare dso_local %struct.TYPE_13__* @G(i32*) #1

declare dso_local i32 @luaE_freethread(i32*, i32*) #1

declare dso_local i32 @luaM_freemem(i32*, %struct.TYPE_15__*, i32) #1

declare dso_local i32 @sizestring(i32) #1

declare dso_local i32 @gco2ts(%struct.TYPE_15__*) #1

declare dso_local i32 @sizeudata(i32) #1

declare dso_local i32 @gco2u(%struct.TYPE_15__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
