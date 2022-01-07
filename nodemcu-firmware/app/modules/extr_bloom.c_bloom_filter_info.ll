; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/modules/extr_bloom.c_bloom_filter_info.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/modules/extr_bloom.c_bloom_filter_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32 }

@.str = private unnamed_addr constant [13 x i8] c"bloom.filter\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @bloom_filter_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bloom_filter_info(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.TYPE_2__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  %9 = load i32*, i32** %2, align 8
  %10 = call i64 @luaL_checkudata(i32* %9, i32 1, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %11 = inttoptr i64 %10 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %11, %struct.TYPE_2__** %3, align 8
  %12 = load i32*, i32** %2, align 8
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = shl i32 %15, 5
  %17 = call i32 @lua_pushinteger(i32* %12, i32 %16)
  %18 = load i32*, i32** %2, align 8
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @lua_pushinteger(i32* %18, i32 %21)
  %23 = load i32*, i32** %2, align 8
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @lua_pushinteger(i32* %23, i32 %26)
  store i32 1000000, i32* %4, align 4
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = icmp sgt i32 %30, 0
  br i1 %31, label %32, label %96

32:                                               ; preds = %1
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = shl i32 %35, 5
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = sdiv i32 %36, %39
  store i32 %40, i32* %5, align 4
  %41 = load i32, i32* %5, align 4
  store i32 %41, i32* %4, align 4
  store i32 1, i32* %6, align 4
  br label %42

42:                                               ; preds = %57, %32
  %43 = load i32, i32* %6, align 4
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %3, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = icmp slt i32 %43, %46
  br i1 %47, label %48, label %51

48:                                               ; preds = %42
  %49 = load i32, i32* %4, align 4
  %50 = icmp slt i32 %49, 1000000
  br label %51

51:                                               ; preds = %48, %42
  %52 = phi i1 [ false, %42 ], [ %50, %48 ]
  br i1 %52, label %53, label %60

53:                                               ; preds = %51
  %54 = load i32, i32* %4, align 4
  %55 = load i32, i32* %5, align 4
  %56 = mul i32 %54, %55
  store i32 %56, i32* %4, align 4
  br label %57

57:                                               ; preds = %53
  %58 = load i32, i32* %6, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %6, align 4
  br label %42

60:                                               ; preds = %51
  %61 = load i32, i32* %4, align 4
  %62 = icmp slt i32 %61, 1000000
  br i1 %62, label %63, label %95

63:                                               ; preds = %60
  %64 = load %struct.TYPE_2__*, %struct.TYPE_2__** %3, align 8
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = shl i32 %66, 13
  %68 = load %struct.TYPE_2__*, %struct.TYPE_2__** %3, align 8
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 4
  %71 = sdiv i32 %67, %70
  store i32 %71, i32* %7, align 4
  %72 = load i32, i32* %7, align 4
  store i32 %72, i32* %8, align 4
  store i32 1, i32* %6, align 4
  br label %73

73:                                               ; preds = %89, %63
  %74 = load i32, i32* %6, align 4
  %75 = load %struct.TYPE_2__*, %struct.TYPE_2__** %3, align 8
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = icmp slt i32 %74, %77
  br i1 %78, label %79, label %82

79:                                               ; preds = %73
  %80 = load i32, i32* %8, align 4
  %81 = icmp slt i32 %80, 256000000
  br label %82

82:                                               ; preds = %79, %73
  %83 = phi i1 [ false, %73 ], [ %81, %79 ]
  br i1 %83, label %84, label %92

84:                                               ; preds = %82
  %85 = load i32, i32* %8, align 4
  %86 = load i32, i32* %7, align 4
  %87 = mul i32 %85, %86
  %88 = lshr i32 %87, 8
  store i32 %88, i32* %8, align 4
  br label %89

89:                                               ; preds = %84
  %90 = load i32, i32* %6, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %6, align 4
  br label %73

92:                                               ; preds = %82
  %93 = load i32, i32* %8, align 4
  %94 = ashr i32 %93, 8
  store i32 %94, i32* %4, align 4
  br label %95

95:                                               ; preds = %92, %60
  br label %96

96:                                               ; preds = %95, %1
  %97 = load i32*, i32** %2, align 8
  %98 = load i32, i32* %4, align 4
  %99 = icmp sgt i32 %98, 1000000
  br i1 %99, label %100, label %101

100:                                              ; preds = %96
  br label %103

101:                                              ; preds = %96
  %102 = load i32, i32* %4, align 4
  br label %103

103:                                              ; preds = %101, %100
  %104 = phi i32 [ 1000000, %100 ], [ %102, %101 ]
  %105 = call i32 @lua_pushinteger(i32* %97, i32 %104)
  ret i32 4
}

declare dso_local i64 @luaL_checkudata(i32*, i32, i8*) #1

declare dso_local i32 @lua_pushinteger(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
