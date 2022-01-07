; ModuleID = '/home/carl/AnghaBench/postgres/contrib/postgres_fdw/extr_deparse.c_deparseFromExpr.c'
source_filename = "/home/carl/AnghaBench/postgres/contrib/postgres_fdw/extr_deparse.c_deparseFromExpr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32, i32, %struct.TYPE_9__*, i32 }
%struct.TYPE_9__ = type { i32 }

@.str = private unnamed_addr constant [7 x i8] c" FROM \00", align 1
@BMS_MULTIPLE = common dso_local global i64 0, align 8
@NIL = common dso_local global i32* null, align 8
@.str.1 = private unnamed_addr constant [8 x i8] c" WHERE \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_8__*)* @deparseFromExpr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @deparseFromExpr(i32* %0, %struct.TYPE_8__* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_9__*, align 8
  store i32* %0, i32** %3, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %4, align 8
  %7 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %8 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 4
  %9 = load i32, i32* %8, align 8
  store i32 %9, i32* %5, align 4
  %10 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 3
  %12 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  store %struct.TYPE_9__* %12, %struct.TYPE_9__** %6, align 8
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @IS_UPPER_REL(i32 %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %26

18:                                               ; preds = %2
  %19 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %20 = call i64 @IS_JOIN_REL(%struct.TYPE_9__* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %26, label %22

22:                                               ; preds = %18
  %23 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %24 = call i64 @IS_SIMPLE_REL(%struct.TYPE_9__* %23)
  %25 = icmp ne i64 %24, 0
  br label %26

26:                                               ; preds = %22, %18, %2
  %27 = phi i1 [ true, %18 ], [ true, %2 ], [ %25, %22 ]
  %28 = zext i1 %27 to i32
  %29 = call i32 @Assert(i32 %28)
  %30 = load i32, i32* %5, align 4
  %31 = call i32 @appendStringInfoString(i32 %30, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %32 = load i32, i32* %5, align 4
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %37 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i64 @bms_membership(i32 %39)
  %41 = load i64, i64* @BMS_MULTIPLE, align 8
  %42 = icmp eq i64 %40, %41
  %43 = zext i1 %42 to i32
  %44 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @deparseFromExprForRel(i32 %32, i32 %35, %struct.TYPE_9__* %36, i32 %43, i32 0, i32* null, i32 %46)
  %48 = load i32*, i32** %3, align 8
  %49 = load i32*, i32** @NIL, align 8
  %50 = icmp ne i32* %48, %49
  br i1 %50, label %51, label %57

51:                                               ; preds = %26
  %52 = load i32, i32* %5, align 4
  %53 = call i32 @appendStringInfoString(i32 %52, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %54 = load i32*, i32** %3, align 8
  %55 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %56 = call i32 @appendConditions(i32* %54, %struct.TYPE_8__* %55)
  br label %57

57:                                               ; preds = %51, %26
  ret void
}

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @IS_UPPER_REL(i32) #1

declare dso_local i64 @IS_JOIN_REL(%struct.TYPE_9__*) #1

declare dso_local i64 @IS_SIMPLE_REL(%struct.TYPE_9__*) #1

declare dso_local i32 @appendStringInfoString(i32, i8*) #1

declare dso_local i32 @deparseFromExprForRel(i32, i32, %struct.TYPE_9__*, i32, i32, i32*, i32) #1

declare dso_local i64 @bms_membership(i32) #1

declare dso_local i32 @appendConditions(i32*, %struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
