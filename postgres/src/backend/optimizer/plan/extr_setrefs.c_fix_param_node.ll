; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/optimizer/plan/extr_setrefs.c_fix_param_node.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/optimizer/plan/extr_setrefs.c_fix_param_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32* }
%struct.TYPE_8__ = type { i64, i32 }

@PARAM_MULTIEXPR = common dso_local global i64 0, align 8
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"unexpected PARAM_MULTIEXPR ID: %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_7__*, %struct.TYPE_8__*)* @fix_param_node to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @fix_param_node(%struct.TYPE_7__* %0, %struct.TYPE_8__* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %4, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %5, align 8
  %9 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %10 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @PARAM_MULTIEXPR, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %65

14:                                               ; preds = %2
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = ashr i32 %17, 16
  store i32 %18, i32* %6, align 4
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = and i32 %21, 65535
  store i32 %22, i32* %7, align 4
  %23 = load i32, i32* %6, align 4
  %24 = icmp sle i32 %23, 0
  br i1 %24, label %32, label %25

25:                                               ; preds = %14
  %26 = load i32, i32* %6, align 4
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = call i32 @list_length(i32* %29)
  %31 = icmp sgt i32 %26, %30
  br i1 %31, label %32, label %38

32:                                               ; preds = %25, %14
  %33 = load i32, i32* @ERROR, align 4
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @elog(i32 %33, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %36)
  br label %38

38:                                               ; preds = %32, %25
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  %42 = load i32, i32* %6, align 4
  %43 = sub nsw i32 %42, 1
  %44 = call %struct.TYPE_8__* @list_nth(i32* %41, i32 %43)
  %45 = bitcast %struct.TYPE_8__* %44 to i32*
  store i32* %45, i32** %8, align 8
  %46 = load i32, i32* %7, align 4
  %47 = icmp sle i32 %46, 0
  br i1 %47, label %53, label %48

48:                                               ; preds = %38
  %49 = load i32, i32* %7, align 4
  %50 = load i32*, i32** %8, align 8
  %51 = call i32 @list_length(i32* %50)
  %52 = icmp sgt i32 %49, %51
  br i1 %52, label %53, label %59

53:                                               ; preds = %48, %38
  %54 = load i32, i32* @ERROR, align 4
  %55 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  %58 = call i32 @elog(i32 %54, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %57)
  br label %59

59:                                               ; preds = %53, %48
  %60 = load i32*, i32** %8, align 8
  %61 = load i32, i32* %7, align 4
  %62 = sub nsw i32 %61, 1
  %63 = call %struct.TYPE_8__* @list_nth(i32* %60, i32 %62)
  %64 = call i32* @copyObject(%struct.TYPE_8__* %63)
  store i32* %64, i32** %3, align 8
  br label %68

65:                                               ; preds = %2
  %66 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %67 = call i32* @copyObject(%struct.TYPE_8__* %66)
  store i32* %67, i32** %3, align 8
  br label %68

68:                                               ; preds = %65, %59
  %69 = load i32*, i32** %3, align 8
  ret i32* %69
}

declare dso_local i32 @list_length(i32*) #1

declare dso_local i32 @elog(i32, i8*, i32) #1

declare dso_local %struct.TYPE_8__* @list_nth(i32*, i32) #1

declare dso_local i32* @copyObject(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
