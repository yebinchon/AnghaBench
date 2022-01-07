; ModuleID = '/home/carl/AnghaBench/mjolnir/Mjolnir/lua/extr_lparser.c_check_conflict.c'
source_filename = "/home/carl/AnghaBench/mjolnir/Mjolnir/lua/extr_lparser.c_check_conflict.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { %struct.TYPE_18__* }
%struct.TYPE_18__ = type { i32 }
%struct.LHS_assign = type { %struct.TYPE_14__, %struct.LHS_assign* }
%struct.TYPE_14__ = type { i64, %struct.TYPE_13__ }
%struct.TYPE_13__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i64, i32, i32 }
%struct.TYPE_16__ = type { i64, %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i32 }

@VINDEXED = common dso_local global i64 0, align 8
@VLOCAL = common dso_local global i64 0, align 8
@OP_MOVE = common dso_local global i32 0, align 4
@OP_GETUPVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_17__*, %struct.LHS_assign*, %struct.TYPE_16__*)* @check_conflict to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @check_conflict(%struct.TYPE_17__* %0, %struct.LHS_assign* %1, %struct.TYPE_16__* %2) #0 {
  %4 = alloca %struct.TYPE_17__*, align 8
  %5 = alloca %struct.LHS_assign*, align 8
  %6 = alloca %struct.TYPE_16__*, align 8
  %7 = alloca %struct.TYPE_18__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %4, align 8
  store %struct.LHS_assign* %1, %struct.LHS_assign** %5, align 8
  store %struct.TYPE_16__* %2, %struct.TYPE_16__** %6, align 8
  %11 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %11, i32 0, i32 0
  %13 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  store %struct.TYPE_18__* %13, %struct.TYPE_18__** %7, align 8
  %14 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %15 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %17

17:                                               ; preds = %90, %3
  %18 = load %struct.LHS_assign*, %struct.LHS_assign** %5, align 8
  %19 = icmp ne %struct.LHS_assign* %18, null
  br i1 %19, label %20, label %94

20:                                               ; preds = %17
  %21 = load %struct.LHS_assign*, %struct.LHS_assign** %5, align 8
  %22 = getelementptr inbounds %struct.LHS_assign, %struct.LHS_assign* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @VINDEXED, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %89

27:                                               ; preds = %20
  %28 = load %struct.LHS_assign*, %struct.LHS_assign** %5, align 8
  %29 = getelementptr inbounds %struct.LHS_assign, %struct.LHS_assign* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %35 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp eq i64 %33, %36
  br i1 %37, label %38, label %63

38:                                               ; preds = %27
  %39 = load %struct.LHS_assign*, %struct.LHS_assign** %5, align 8
  %40 = getelementptr inbounds %struct.LHS_assign, %struct.LHS_assign* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %46 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = icmp eq i32 %44, %48
  br i1 %49, label %50, label %63

50:                                               ; preds = %38
  store i32 1, i32* %9, align 4
  %51 = load i64, i64* @VLOCAL, align 8
  %52 = load %struct.LHS_assign*, %struct.LHS_assign** %5, align 8
  %53 = getelementptr inbounds %struct.LHS_assign, %struct.LHS_assign* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %55, i32 0, i32 0
  store i64 %51, i64* %56, align 8
  %57 = load i32, i32* %8, align 4
  %58 = load %struct.LHS_assign*, %struct.LHS_assign** %5, align 8
  %59 = getelementptr inbounds %struct.LHS_assign, %struct.LHS_assign* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %61, i32 0, i32 1
  store i32 %57, i32* %62, align 8
  br label %63

63:                                               ; preds = %50, %38, %27
  %64 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %65 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @VLOCAL, align 8
  %68 = icmp eq i64 %66, %67
  br i1 %68, label %69, label %88

69:                                               ; preds = %63
  %70 = load %struct.LHS_assign*, %struct.LHS_assign** %5, align 8
  %71 = getelementptr inbounds %struct.LHS_assign, %struct.LHS_assign* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %77 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = icmp eq i32 %75, %79
  br i1 %80, label %81, label %88

81:                                               ; preds = %69
  store i32 1, i32* %9, align 4
  %82 = load i32, i32* %8, align 4
  %83 = load %struct.LHS_assign*, %struct.LHS_assign** %5, align 8
  %84 = getelementptr inbounds %struct.LHS_assign, %struct.LHS_assign* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %84, i32 0, i32 1
  %86 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %86, i32 0, i32 2
  store i32 %82, i32* %87, align 4
  br label %88

88:                                               ; preds = %81, %69, %63
  br label %89

89:                                               ; preds = %88, %20
  br label %90

90:                                               ; preds = %89
  %91 = load %struct.LHS_assign*, %struct.LHS_assign** %5, align 8
  %92 = getelementptr inbounds %struct.LHS_assign, %struct.LHS_assign* %91, i32 0, i32 1
  %93 = load %struct.LHS_assign*, %struct.LHS_assign** %92, align 8
  store %struct.LHS_assign* %93, %struct.LHS_assign** %5, align 8
  br label %17

94:                                               ; preds = %17
  %95 = load i32, i32* %9, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %119

97:                                               ; preds = %94
  %98 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %99 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = load i64, i64* @VLOCAL, align 8
  %102 = icmp eq i64 %100, %101
  br i1 %102, label %103, label %105

103:                                              ; preds = %97
  %104 = load i32, i32* @OP_MOVE, align 4
  br label %107

105:                                              ; preds = %97
  %106 = load i32, i32* @OP_GETUPVAL, align 4
  br label %107

107:                                              ; preds = %105, %103
  %108 = phi i32 [ %104, %103 ], [ %106, %105 ]
  store i32 %108, i32* %10, align 4
  %109 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %110 = load i32, i32* %10, align 4
  %111 = load i32, i32* %8, align 4
  %112 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %113 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %112, i32 0, i32 1
  %114 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = call i32 @luaK_codeABC(%struct.TYPE_18__* %109, i32 %110, i32 %111, i32 %115, i32 0)
  %117 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %118 = call i32 @luaK_reserveregs(%struct.TYPE_18__* %117, i32 1)
  br label %119

119:                                              ; preds = %107, %94
  ret void
}

declare dso_local i32 @luaK_codeABC(%struct.TYPE_18__*, i32, i32, i32, i32) #1

declare dso_local i32 @luaK_reserveregs(%struct.TYPE_18__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
