; ModuleID = '/home/carl/AnghaBench/php-src/ext/opcache/jit/dynasm/extr_minilua.c_assignment.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/opcache/jit/dynasm/extr_minilua.c_assignment.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { %struct.TYPE_20__*, %struct.TYPE_17__* }
%struct.TYPE_20__ = type { i64 }
%struct.TYPE_17__ = type { i64 }
%struct.LHS_assign = type { %struct.TYPE_19__, %struct.LHS_assign* }
%struct.TYPE_19__ = type { i64 }

@VLOCAL = common dso_local global i64 0, align 8
@VINDEXED = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [13 x i8] c"syntax error\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"variables in assignment\00", align 1
@VNONRELOC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_18__*, %struct.LHS_assign*, i32)* @assignment to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @assignment(%struct.TYPE_18__* %0, %struct.LHS_assign* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_18__*, align 8
  %5 = alloca %struct.LHS_assign*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.LHS_assign, align 8
  %9 = alloca i32, align 4
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %4, align 8
  store %struct.LHS_assign* %1, %struct.LHS_assign** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %11 = load i64, i64* @VLOCAL, align 8
  %12 = load %struct.LHS_assign*, %struct.LHS_assign** %5, align 8
  %13 = getelementptr inbounds %struct.LHS_assign, %struct.LHS_assign* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp sle i64 %11, %15
  br i1 %16, label %17, label %24

17:                                               ; preds = %3
  %18 = load %struct.LHS_assign*, %struct.LHS_assign** %5, align 8
  %19 = getelementptr inbounds %struct.LHS_assign, %struct.LHS_assign* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @VINDEXED, align 8
  %23 = icmp sle i64 %21, %22
  br label %24

24:                                               ; preds = %17, %3
  %25 = phi i1 [ false, %3 ], [ %23, %17 ]
  %26 = zext i1 %25 to i32
  %27 = call i32 @check_condition(%struct.TYPE_18__* %10, i32 %26, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %28 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %29 = call i64 @testnext(%struct.TYPE_18__* %28, i8 signext 44)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %62

31:                                               ; preds = %24
  %32 = load %struct.LHS_assign*, %struct.LHS_assign** %5, align 8
  %33 = getelementptr inbounds %struct.LHS_assign, %struct.LHS_assign* %8, i32 0, i32 1
  store %struct.LHS_assign* %32, %struct.LHS_assign** %33, align 8
  %34 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %35 = getelementptr inbounds %struct.LHS_assign, %struct.LHS_assign* %8, i32 0, i32 0
  %36 = call i32 @primaryexp(%struct.TYPE_18__* %34, %struct.TYPE_19__* %35)
  %37 = getelementptr inbounds %struct.LHS_assign, %struct.LHS_assign* %8, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @VLOCAL, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %47

42:                                               ; preds = %31
  %43 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %44 = load %struct.LHS_assign*, %struct.LHS_assign** %5, align 8
  %45 = getelementptr inbounds %struct.LHS_assign, %struct.LHS_assign* %8, i32 0, i32 0
  %46 = call i32 @check_conflict(%struct.TYPE_18__* %43, %struct.LHS_assign* %44, %struct.TYPE_19__* %45)
  br label %47

47:                                               ; preds = %42, %31
  %48 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %48, i32 0, i32 0
  %50 = load %struct.TYPE_20__*, %struct.TYPE_20__** %49, align 8
  %51 = load i32, i32* %6, align 4
  %52 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %53 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %52, i32 0, i32 1
  %54 = load %struct.TYPE_17__*, %struct.TYPE_17__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = sub nsw i64 200, %56
  %58 = call i32 @luaY_checklimit(%struct.TYPE_20__* %50, i32 %51, i64 %57, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %59 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %60 = load i32, i32* %6, align 4
  %61 = add nsw i32 %60, 1
  call void @assignment(%struct.TYPE_18__* %59, %struct.LHS_assign* %8, i32 %61)
  br label %102

62:                                               ; preds = %24
  %63 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %64 = call i32 @checknext(%struct.TYPE_18__* %63, i8 signext 61)
  %65 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %66 = call i32 @explist1(%struct.TYPE_18__* %65, i32* %7)
  store i32 %66, i32* %9, align 4
  %67 = load i32, i32* %9, align 4
  %68 = load i32, i32* %6, align 4
  %69 = icmp ne i32 %67, %68
  br i1 %69, label %70, label %90

70:                                               ; preds = %62
  %71 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %72 = load i32, i32* %6, align 4
  %73 = load i32, i32* %9, align 4
  %74 = call i32 @adjust_assign(%struct.TYPE_18__* %71, i32 %72, i32 %73, i32* %7)
  %75 = load i32, i32* %9, align 4
  %76 = load i32, i32* %6, align 4
  %77 = icmp sgt i32 %75, %76
  br i1 %77, label %78, label %89

78:                                               ; preds = %70
  %79 = load i32, i32* %9, align 4
  %80 = load i32, i32* %6, align 4
  %81 = sub nsw i32 %79, %80
  %82 = sext i32 %81 to i64
  %83 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %84 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %83, i32 0, i32 0
  %85 = load %struct.TYPE_20__*, %struct.TYPE_20__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = sub nsw i64 %87, %82
  store i64 %88, i64* %86, align 8
  br label %89

89:                                               ; preds = %78, %70
  br label %101

90:                                               ; preds = %62
  %91 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %92 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %91, i32 0, i32 0
  %93 = load %struct.TYPE_20__*, %struct.TYPE_20__** %92, align 8
  %94 = call i32 @luaK_setoneret(%struct.TYPE_20__* %93, i32* %7)
  %95 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %96 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %95, i32 0, i32 0
  %97 = load %struct.TYPE_20__*, %struct.TYPE_20__** %96, align 8
  %98 = load %struct.LHS_assign*, %struct.LHS_assign** %5, align 8
  %99 = getelementptr inbounds %struct.LHS_assign, %struct.LHS_assign* %98, i32 0, i32 0
  %100 = call i32 @luaK_storevar(%struct.TYPE_20__* %97, %struct.TYPE_19__* %99, i32* %7)
  br label %117

101:                                              ; preds = %89
  br label %102

102:                                              ; preds = %101, %47
  %103 = load i32, i32* @VNONRELOC, align 4
  %104 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %105 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %104, i32 0, i32 0
  %106 = load %struct.TYPE_20__*, %struct.TYPE_20__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = sub nsw i64 %108, 1
  %110 = call i32 @init_exp(i32* %7, i32 %103, i64 %109)
  %111 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %112 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %111, i32 0, i32 0
  %113 = load %struct.TYPE_20__*, %struct.TYPE_20__** %112, align 8
  %114 = load %struct.LHS_assign*, %struct.LHS_assign** %5, align 8
  %115 = getelementptr inbounds %struct.LHS_assign, %struct.LHS_assign* %114, i32 0, i32 0
  %116 = call i32 @luaK_storevar(%struct.TYPE_20__* %113, %struct.TYPE_19__* %115, i32* %7)
  br label %117

117:                                              ; preds = %102, %90
  ret void
}

declare dso_local i32 @check_condition(%struct.TYPE_18__*, i32, i8*) #1

declare dso_local i64 @testnext(%struct.TYPE_18__*, i8 signext) #1

declare dso_local i32 @primaryexp(%struct.TYPE_18__*, %struct.TYPE_19__*) #1

declare dso_local i32 @check_conflict(%struct.TYPE_18__*, %struct.LHS_assign*, %struct.TYPE_19__*) #1

declare dso_local i32 @luaY_checklimit(%struct.TYPE_20__*, i32, i64, i8*) #1

declare dso_local i32 @checknext(%struct.TYPE_18__*, i8 signext) #1

declare dso_local i32 @explist1(%struct.TYPE_18__*, i32*) #1

declare dso_local i32 @adjust_assign(%struct.TYPE_18__*, i32, i32, i32*) #1

declare dso_local i32 @luaK_setoneret(%struct.TYPE_20__*, i32*) #1

declare dso_local i32 @luaK_storevar(%struct.TYPE_20__*, %struct.TYPE_19__*, i32*) #1

declare dso_local i32 @init_exp(i32*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
