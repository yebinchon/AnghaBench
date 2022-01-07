; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/lua/extr_lfunc.c_luaF_close.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/lua/extr_lfunc.c_luaF_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32* }
%struct.TYPE_16__ = type { i64, %struct.TYPE_14__, i32* }
%struct.TYPE_14__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @luaF_close(%struct.TYPE_15__* %0, i64 %1) #0 {
  %3 = alloca %struct.TYPE_15__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_16__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %3, align 8
  store i64 %1, i64* %4, align 8
  %8 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %9 = call i32* @G(%struct.TYPE_15__* %8)
  store i32* %9, i32** %6, align 8
  br label %10

10:                                               ; preds = %79, %2
  %11 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %11, i32 0, i32 0
  %13 = load i32*, i32** %12, align 8
  %14 = icmp ne i32* %13, null
  br i1 %14, label %15, label %24

15:                                               ; preds = %10
  %16 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = call %struct.TYPE_16__* @ngcotouv(i32* %18)
  store %struct.TYPE_16__* %19, %struct.TYPE_16__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* %4, align 8
  %23 = icmp sge i64 %21, %22
  br label %24

24:                                               ; preds = %15, %10
  %25 = phi i1 [ false, %10 ], [ %23, %15 ]
  br i1 %25, label %26, label %80

26:                                               ; preds = %24
  %27 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %28 = call i32* @obj2gco(%struct.TYPE_16__* %27)
  store i32* %28, i32** %7, align 8
  %29 = load i32*, i32** %7, align 8
  %30 = call i32 @isblack(i32* %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %41, label %32

32:                                               ; preds = %26
  %33 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = inttoptr i64 %35 to i32*
  %37 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %38, i32 0, i32 0
  %40 = icmp ne i32* %36, %39
  br label %41

41:                                               ; preds = %32, %26
  %42 = phi i1 [ false, %26 ], [ %40, %32 ]
  %43 = zext i1 %42 to i32
  %44 = call i32 @lua_assert(i32 %43)
  %45 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %45, i32 0, i32 2
  %47 = load i32*, i32** %46, align 8
  %48 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %49 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %48, i32 0, i32 0
  store i32* %47, i32** %49, align 8
  %50 = load i32*, i32** %6, align 8
  %51 = load i32*, i32** %7, align 8
  %52 = call i64 @isdead(i32* %50, i32* %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %58

54:                                               ; preds = %41
  %55 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %56 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %57 = call i32 @luaF_freeupval(%struct.TYPE_15__* %55, %struct.TYPE_16__* %56)
  br label %79

58:                                               ; preds = %41
  %59 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %60 = call i32 @unlinkupval(%struct.TYPE_16__* %59)
  %61 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %62 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %63 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %63, i32 0, i32 0
  %65 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %66 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = inttoptr i64 %67 to i32*
  %69 = call i32 @setobj(%struct.TYPE_15__* %61, i32* %64, i32* %68)
  %70 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %71 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %71, i32 0, i32 0
  %73 = ptrtoint i32* %72 to i64
  %74 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %75 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %74, i32 0, i32 0
  store i64 %73, i64* %75, align 8
  %76 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %77 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %78 = call i32 @luaC_linkupval(%struct.TYPE_15__* %76, %struct.TYPE_16__* %77)
  br label %79

79:                                               ; preds = %58, %54
  br label %10

80:                                               ; preds = %24
  ret void
}

declare dso_local i32* @G(%struct.TYPE_15__*) #1

declare dso_local %struct.TYPE_16__* @ngcotouv(i32*) #1

declare dso_local i32* @obj2gco(%struct.TYPE_16__*) #1

declare dso_local i32 @lua_assert(i32) #1

declare dso_local i32 @isblack(i32*) #1

declare dso_local i64 @isdead(i32*, i32*) #1

declare dso_local i32 @luaF_freeupval(%struct.TYPE_15__*, %struct.TYPE_16__*) #1

declare dso_local i32 @unlinkupval(%struct.TYPE_16__*) #1

declare dso_local i32 @setobj(%struct.TYPE_15__*, i32*, i32*) #1

declare dso_local i32 @luaC_linkupval(%struct.TYPE_15__*, %struct.TYPE_16__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
