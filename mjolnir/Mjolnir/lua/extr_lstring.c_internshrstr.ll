; ModuleID = '/home/carl/AnghaBench/mjolnir/Mjolnir/lua/extr_lstring.c_internshrstr.c'
source_filename = "/home/carl/AnghaBench/mjolnir/Mjolnir/lua/extr_lstring.c_internshrstr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i64, %struct.TYPE_12__ }
%struct.TYPE_12__ = type { %struct.TYPE_15__* }
%struct.TYPE_14__ = type { %struct.TYPE_13__, i32 }
%struct.TYPE_13__ = type { i32, i32, %struct.TYPE_15__** }

@MAX_INT = common dso_local global i32 0, align 4
@LUA_TSHRSTR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_15__* (i32*, i8*, i64)* @internshrstr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_15__* @internshrstr(i32* %0, i8* %1, i64 %2) #0 {
  %4 = alloca %struct.TYPE_15__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_15__*, align 8
  %9 = alloca %struct.TYPE_14__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_15__**, align 8
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %12 = load i32*, i32** %5, align 8
  %13 = call %struct.TYPE_14__* @G(i32* %12)
  store %struct.TYPE_14__* %13, %struct.TYPE_14__** %9, align 8
  %14 = load i8*, i8** %6, align 8
  %15 = load i64, i64* %7, align 8
  %16 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %17 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @luaS_hash(i8* %14, i64 %15, i32 %18)
  store i32 %19, i32* %10, align 4
  %20 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %21 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %21, i32 0, i32 2
  %23 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %22, align 8
  %24 = load i32, i32* %10, align 4
  %25 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %26 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = call i64 @lmod(i32 %24, i32 %28)
  %30 = getelementptr inbounds %struct.TYPE_15__*, %struct.TYPE_15__** %23, i64 %29
  store %struct.TYPE_15__** %30, %struct.TYPE_15__*** %11, align 8
  %31 = load i8*, i8** %6, align 8
  %32 = icmp ne i8* %31, null
  %33 = zext i1 %32 to i32
  %34 = call i32 @lua_assert(i32 %33)
  %35 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %11, align 8
  %36 = load %struct.TYPE_15__*, %struct.TYPE_15__** %35, align 8
  store %struct.TYPE_15__* %36, %struct.TYPE_15__** %8, align 8
  br label %37

37:                                               ; preds = %65, %3
  %38 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %39 = icmp ne %struct.TYPE_15__* %38, null
  br i1 %39, label %40, label %70

40:                                               ; preds = %37
  %41 = load i64, i64* %7, align 8
  %42 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %43 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = icmp eq i64 %41, %44
  br i1 %45, label %46, label %64

46:                                               ; preds = %40
  %47 = load i8*, i8** %6, align 8
  %48 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %49 = call i32 @getstr(%struct.TYPE_15__* %48)
  %50 = load i64, i64* %7, align 8
  %51 = mul i64 %50, 1
  %52 = call i64 @memcmp(i8* %47, i32 %49, i64 %51)
  %53 = icmp eq i64 %52, 0
  br i1 %53, label %54, label %64

54:                                               ; preds = %46
  %55 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %56 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %57 = call i64 @isdead(%struct.TYPE_14__* %55, %struct.TYPE_15__* %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %54
  %60 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %61 = call i32 @changewhite(%struct.TYPE_15__* %60)
  br label %62

62:                                               ; preds = %59, %54
  %63 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  store %struct.TYPE_15__* %63, %struct.TYPE_15__** %4, align 8
  br label %136

64:                                               ; preds = %46, %40
  br label %65

65:                                               ; preds = %64
  %66 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %67 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %67, i32 0, i32 0
  %69 = load %struct.TYPE_15__*, %struct.TYPE_15__** %68, align 8
  store %struct.TYPE_15__* %69, %struct.TYPE_15__** %8, align 8
  br label %37

70:                                               ; preds = %37
  %71 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %72 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %76 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = icmp sge i32 %74, %78
  br i1 %79, label %80, label %107

80:                                               ; preds = %70
  %81 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %82 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = load i32, i32* @MAX_INT, align 4
  %86 = sdiv i32 %85, 2
  %87 = icmp sle i32 %84, %86
  br i1 %87, label %88, label %107

88:                                               ; preds = %80
  %89 = load i32*, i32** %5, align 8
  %90 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %91 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = mul nsw i32 %93, 2
  %95 = call i32 @luaS_resize(i32* %89, i32 %94)
  %96 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %97 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %97, i32 0, i32 2
  %99 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %98, align 8
  %100 = load i32, i32* %10, align 4
  %101 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %102 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = call i64 @lmod(i32 %100, i32 %104)
  %106 = getelementptr inbounds %struct.TYPE_15__*, %struct.TYPE_15__** %99, i64 %105
  store %struct.TYPE_15__** %106, %struct.TYPE_15__*** %11, align 8
  br label %107

107:                                              ; preds = %88, %80, %70
  %108 = load i32*, i32** %5, align 8
  %109 = load i64, i64* %7, align 8
  %110 = load i32, i32* @LUA_TSHRSTR, align 4
  %111 = load i32, i32* %10, align 4
  %112 = call %struct.TYPE_15__* @createstrobj(i32* %108, i64 %109, i32 %110, i32 %111)
  store %struct.TYPE_15__* %112, %struct.TYPE_15__** %8, align 8
  %113 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %114 = call i32 @getstr(%struct.TYPE_15__* %113)
  %115 = load i8*, i8** %6, align 8
  %116 = load i64, i64* %7, align 8
  %117 = mul i64 %116, 1
  %118 = call i32 @memcpy(i32 %114, i8* %115, i64 %117)
  %119 = load i64, i64* %7, align 8
  %120 = call i64 @cast_byte(i64 %119)
  %121 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %122 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %121, i32 0, i32 0
  store i64 %120, i64* %122, align 8
  %123 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %11, align 8
  %124 = load %struct.TYPE_15__*, %struct.TYPE_15__** %123, align 8
  %125 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %126 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %125, i32 0, i32 1
  %127 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %126, i32 0, i32 0
  store %struct.TYPE_15__* %124, %struct.TYPE_15__** %127, align 8
  %128 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %129 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %11, align 8
  store %struct.TYPE_15__* %128, %struct.TYPE_15__** %129, align 8
  %130 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %131 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 4
  %134 = add nsw i32 %133, 1
  store i32 %134, i32* %132, align 4
  %135 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  store %struct.TYPE_15__* %135, %struct.TYPE_15__** %4, align 8
  br label %136

136:                                              ; preds = %107, %62
  %137 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  ret %struct.TYPE_15__* %137
}

declare dso_local %struct.TYPE_14__* @G(i32*) #1

declare dso_local i32 @luaS_hash(i8*, i64, i32) #1

declare dso_local i64 @lmod(i32, i32) #1

declare dso_local i32 @lua_assert(i32) #1

declare dso_local i64 @memcmp(i8*, i32, i64) #1

declare dso_local i32 @getstr(%struct.TYPE_15__*) #1

declare dso_local i64 @isdead(%struct.TYPE_14__*, %struct.TYPE_15__*) #1

declare dso_local i32 @changewhite(%struct.TYPE_15__*) #1

declare dso_local i32 @luaS_resize(i32*, i32) #1

declare dso_local %struct.TYPE_15__* @createstrobj(i32*, i64, i32, i32) #1

declare dso_local i32 @memcpy(i32, i8*, i64) #1

declare dso_local i64 @cast_byte(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
