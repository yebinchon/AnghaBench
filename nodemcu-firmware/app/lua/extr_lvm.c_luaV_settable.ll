; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/lua/extr_lvm.c_luaV_settable.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/lua/extr_lvm.c_luaV_settable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { i64 }
%struct.TYPE_20__ = type { i64, i32 }

@MAXTAGLOOP = common dso_local global i32 0, align 4
@TM_NEWINDEX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"invalid write to ROM variable\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"index\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"loop in settable\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @luaV_settable(%struct.TYPE_19__* %0, i32* %1, i32* %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_19__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_20__*, align 8
  %13 = alloca i32*, align 8
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  %14 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = call i32 @setnilvalue(i64 %16)
  %18 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = add nsw i64 %20, 1
  store i64 %21, i64* %19, align 8
  %22 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %23 = call i32 @fixedstack(%struct.TYPE_19__* %22)
  store i32 0, i32* %9, align 4
  br label %24

24:                                               ; preds = %120, %4
  %25 = load i32, i32* %9, align 4
  %26 = load i32, i32* @MAXTAGLOOP, align 4
  %27 = icmp slt i32 %25, %26
  br i1 %27, label %28, label %123

28:                                               ; preds = %24
  store i32* null, i32** %11, align 8
  %29 = load i32*, i32** %6, align 8
  %30 = call i64 @ttistable(i32* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %68

32:                                               ; preds = %28
  %33 = load i32*, i32** %6, align 8
  %34 = call %struct.TYPE_20__* @hvalue(i32* %33)
  store %struct.TYPE_20__* %34, %struct.TYPE_20__** %12, align 8
  %35 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %36 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %37 = load i32*, i32** %7, align 8
  %38 = call i32* @luaH_set(%struct.TYPE_19__* %35, %struct.TYPE_20__* %36, i32* %37)
  store i32* %38, i32** %13, align 8
  %39 = load i32*, i32** %13, align 8
  %40 = call i64 @ttisnil(i32* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %50

42:                                               ; preds = %32
  %43 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %44 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %45 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* @TM_NEWINDEX, align 4
  %48 = call i32* @fasttm(%struct.TYPE_19__* %43, i32 %46, i32 %47)
  store i32* %48, i32** %11, align 8
  %49 = icmp eq i32* %48, null
  br i1 %49, label %50, label %67

50:                                               ; preds = %42, %32
  %51 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %52 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = add nsw i64 %53, -1
  store i64 %54, i64* %52, align 8
  %55 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %56 = call i32 @unfixedstack(%struct.TYPE_19__* %55)
  %57 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %58 = load i32*, i32** %13, align 8
  %59 = load i32, i32* %8, align 4
  %60 = call i32 @setobj2t(%struct.TYPE_19__* %57, i32* %58, i32 %59)
  %61 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %62 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %61, i32 0, i32 0
  store i64 0, i64* %62, align 8
  %63 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %64 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %65 = load i32, i32* %8, align 4
  %66 = call i32 @luaC_barriert(%struct.TYPE_19__* %63, %struct.TYPE_20__* %64, i32 %65)
  br label %126

67:                                               ; preds = %42
  br label %88

68:                                               ; preds = %28
  %69 = load i32*, i32** %6, align 8
  %70 = call i64 @ttisrotable(i32* %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %68
  %73 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %74 = call i32 @luaG_runerror(%struct.TYPE_19__* %73, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  br label %87

75:                                               ; preds = %68
  %76 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %77 = load i32*, i32** %6, align 8
  %78 = load i32, i32* @TM_NEWINDEX, align 4
  %79 = call i32* @luaT_gettmbyobj(%struct.TYPE_19__* %76, i32* %77, i32 %78)
  store i32* %79, i32** %11, align 8
  %80 = call i64 @ttisnil(i32* %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %86

82:                                               ; preds = %75
  %83 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %84 = load i32*, i32** %6, align 8
  %85 = call i32 @luaG_typeerror(%struct.TYPE_19__* %83, i32* %84, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  br label %86

86:                                               ; preds = %82, %75
  br label %87

87:                                               ; preds = %86, %72
  br label %88

88:                                               ; preds = %87, %67
  %89 = load i32*, i32** %11, align 8
  %90 = call i64 @ttisfunction(i32* %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %96, label %92

92:                                               ; preds = %88
  %93 = load i32*, i32** %11, align 8
  %94 = call i64 @ttislightfunction(i32* %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %109

96:                                               ; preds = %92, %88
  %97 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %98 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = add nsw i64 %99, -1
  store i64 %100, i64* %98, align 8
  %101 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %102 = call i32 @unfixedstack(%struct.TYPE_19__* %101)
  %103 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %104 = load i32*, i32** %11, align 8
  %105 = load i32*, i32** %6, align 8
  %106 = load i32*, i32** %7, align 8
  %107 = load i32, i32* %8, align 4
  %108 = call i32 @callTM(%struct.TYPE_19__* %103, i32* %104, i32* %105, i32* %106, i32 %107)
  br label %126

109:                                              ; preds = %92
  %110 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %111 = load i32*, i32** %11, align 8
  %112 = call i32 @setobj(%struct.TYPE_19__* %110, i32* %10, i32* %111)
  store i32* %10, i32** %6, align 8
  %113 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %114 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %115 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = sub nsw i64 %116, 1
  %118 = load i32*, i32** %6, align 8
  %119 = call i32 @setobj2s(%struct.TYPE_19__* %113, i64 %117, i32* %118)
  br label %120

120:                                              ; preds = %109
  %121 = load i32, i32* %9, align 4
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %9, align 4
  br label %24

123:                                              ; preds = %24
  %124 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %125 = call i32 @luaG_runerror(%struct.TYPE_19__* %124, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  br label %126

126:                                              ; preds = %123, %96, %50
  ret void
}

declare dso_local i32 @setnilvalue(i64) #1

declare dso_local i32 @fixedstack(%struct.TYPE_19__*) #1

declare dso_local i64 @ttistable(i32*) #1

declare dso_local %struct.TYPE_20__* @hvalue(i32*) #1

declare dso_local i32* @luaH_set(%struct.TYPE_19__*, %struct.TYPE_20__*, i32*) #1

declare dso_local i64 @ttisnil(i32*) #1

declare dso_local i32* @fasttm(%struct.TYPE_19__*, i32, i32) #1

declare dso_local i32 @unfixedstack(%struct.TYPE_19__*) #1

declare dso_local i32 @setobj2t(%struct.TYPE_19__*, i32*, i32) #1

declare dso_local i32 @luaC_barriert(%struct.TYPE_19__*, %struct.TYPE_20__*, i32) #1

declare dso_local i64 @ttisrotable(i32*) #1

declare dso_local i32 @luaG_runerror(%struct.TYPE_19__*, i8*) #1

declare dso_local i32* @luaT_gettmbyobj(%struct.TYPE_19__*, i32*, i32) #1

declare dso_local i32 @luaG_typeerror(%struct.TYPE_19__*, i32*, i8*) #1

declare dso_local i64 @ttisfunction(i32*) #1

declare dso_local i64 @ttislightfunction(i32*) #1

declare dso_local i32 @callTM(%struct.TYPE_19__*, i32*, i32*, i32*, i32) #1

declare dso_local i32 @setobj(%struct.TYPE_19__*, i32*, i32*) #1

declare dso_local i32 @setobj2s(%struct.TYPE_19__*, i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
