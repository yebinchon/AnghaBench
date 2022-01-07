; ModuleID = '/home/carl/AnghaBench/php-src/ext/opcache/jit/dynasm/extr_minilua.c_luaC_separateudata.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/opcache/jit/dynasm/extr_minilua.c_luaC_separateudata.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { %struct.TYPE_15__*, %struct.TYPE_12__* }
%struct.TYPE_15__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { %struct.TYPE_15__* }
%struct.TYPE_12__ = type { %struct.TYPE_15__* }
%struct.TYPE_16__ = type { i32 }

@TM_GC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*, i32)* @luaC_separateudata to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @luaC_separateudata(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_14__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_15__**, align 8
  %8 = alloca %struct.TYPE_15__*, align 8
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load i32*, i32** %3, align 8
  %10 = call %struct.TYPE_14__* @G(i32* %9)
  store %struct.TYPE_14__* %10, %struct.TYPE_14__** %5, align 8
  store i64 0, i64* %6, align 8
  %11 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %12 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %11, i32 0, i32 1
  %13 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %13, i32 0, i32 0
  store %struct.TYPE_15__** %14, %struct.TYPE_15__*** %7, align 8
  br label %15

15:                                               ; preds = %97, %2
  %16 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %7, align 8
  %17 = load %struct.TYPE_15__*, %struct.TYPE_15__** %16, align 8
  store %struct.TYPE_15__* %17, %struct.TYPE_15__** %8, align 8
  %18 = icmp ne %struct.TYPE_15__* %17, null
  br i1 %18, label %19, label %98

19:                                               ; preds = %15
  %20 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %21 = call i64 @iswhite(%struct.TYPE_15__* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %19
  %24 = load i32, i32* %4, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %23, %19
  %27 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %28 = call %struct.TYPE_16__* @gco2u(%struct.TYPE_15__* %27)
  %29 = call i64 @isfinalized(%struct.TYPE_16__* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %26, %23
  %32 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %33 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %33, i32 0, i32 0
  store %struct.TYPE_15__** %34, %struct.TYPE_15__*** %7, align 8
  br label %97

35:                                               ; preds = %26
  %36 = load i32*, i32** %3, align 8
  %37 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %38 = call %struct.TYPE_16__* @gco2u(%struct.TYPE_15__* %37)
  %39 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @TM_GC, align 4
  %42 = call i32* @fasttm(i32* %36, i32 %40, i32 %41)
  %43 = icmp eq i32* %42, null
  br i1 %43, label %44, label %51

44:                                               ; preds = %35
  %45 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %46 = call %struct.TYPE_16__* @gco2u(%struct.TYPE_15__* %45)
  %47 = call i32 @markfinalized(%struct.TYPE_16__* %46)
  %48 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %49 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %49, i32 0, i32 0
  store %struct.TYPE_15__** %50, %struct.TYPE_15__*** %7, align 8
  br label %96

51:                                               ; preds = %35
  %52 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %53 = call %struct.TYPE_16__* @gco2u(%struct.TYPE_15__* %52)
  %54 = call i64 @sizeudata(%struct.TYPE_16__* %53)
  %55 = load i64, i64* %6, align 8
  %56 = add i64 %55, %54
  store i64 %56, i64* %6, align 8
  %57 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %58 = call %struct.TYPE_16__* @gco2u(%struct.TYPE_15__* %57)
  %59 = call i32 @markfinalized(%struct.TYPE_16__* %58)
  %60 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %61 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %61, i32 0, i32 0
  %63 = load %struct.TYPE_15__*, %struct.TYPE_15__** %62, align 8
  %64 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %7, align 8
  store %struct.TYPE_15__* %63, %struct.TYPE_15__** %64, align 8
  %65 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %66 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %65, i32 0, i32 0
  %67 = load %struct.TYPE_15__*, %struct.TYPE_15__** %66, align 8
  %68 = icmp eq %struct.TYPE_15__* %67, null
  br i1 %68, label %69, label %76

69:                                               ; preds = %51
  %70 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %71 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %72 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %72, i32 0, i32 0
  store %struct.TYPE_15__* %70, %struct.TYPE_15__** %73, align 8
  %74 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %75 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %74, i32 0, i32 0
  store %struct.TYPE_15__* %70, %struct.TYPE_15__** %75, align 8
  br label %95

76:                                               ; preds = %51
  %77 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %78 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %77, i32 0, i32 0
  %79 = load %struct.TYPE_15__*, %struct.TYPE_15__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %80, i32 0, i32 0
  %82 = load %struct.TYPE_15__*, %struct.TYPE_15__** %81, align 8
  %83 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %84 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %84, i32 0, i32 0
  store %struct.TYPE_15__* %82, %struct.TYPE_15__** %85, align 8
  %86 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %87 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %88 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %87, i32 0, i32 0
  %89 = load %struct.TYPE_15__*, %struct.TYPE_15__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %90, i32 0, i32 0
  store %struct.TYPE_15__* %86, %struct.TYPE_15__** %91, align 8
  %92 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %93 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %94 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %93, i32 0, i32 0
  store %struct.TYPE_15__* %92, %struct.TYPE_15__** %94, align 8
  br label %95

95:                                               ; preds = %76, %69
  br label %96

96:                                               ; preds = %95, %44
  br label %97

97:                                               ; preds = %96, %31
  br label %15

98:                                               ; preds = %15
  %99 = load i64, i64* %6, align 8
  ret i64 %99
}

declare dso_local %struct.TYPE_14__* @G(i32*) #1

declare dso_local i64 @iswhite(%struct.TYPE_15__*) #1

declare dso_local i64 @isfinalized(%struct.TYPE_16__*) #1

declare dso_local %struct.TYPE_16__* @gco2u(%struct.TYPE_15__*) #1

declare dso_local i32* @fasttm(i32*, i32, i32) #1

declare dso_local i32 @markfinalized(%struct.TYPE_16__*) #1

declare dso_local i64 @sizeudata(%struct.TYPE_16__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
