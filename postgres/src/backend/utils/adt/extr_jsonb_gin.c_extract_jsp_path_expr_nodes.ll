; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_jsonb_gin.c_extract_jsp_path_expr_nodes.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_jsonb_gin.c_extract_jsp_path_expr_nodes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32* (%struct.TYPE_14__*, i32, i32*, i32*)*, i32 (i32*, %struct.TYPE_13__*)* }
%struct.TYPE_13__ = type { i32 }

@NIL = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_14__*, i32, %struct.TYPE_13__*, i32*)* @extract_jsp_path_expr_nodes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @extract_jsp_path_expr_nodes(%struct.TYPE_14__* %0, i32 %1, %struct.TYPE_13__* %2, i32* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_14__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_13__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_13__, align 4
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_13__, align 4
  %13 = alloca i32*, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.TYPE_13__* %2, %struct.TYPE_13__** %8, align 8
  store i32* %3, i32** %9, align 8
  %14 = load i32*, i32** @NIL, align 8
  store i32* %14, i32** %11, align 8
  br label %15

15:                                               ; preds = %48, %4
  %16 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %17 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  switch i32 %18, label %33 [
    i32 129, label %19
    i32 128, label %20
  ]

19:                                               ; preds = %15
  br label %43

20:                                               ; preds = %15
  %21 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %22 = call i32 @jspGetArg(%struct.TYPE_13__* %21, %struct.TYPE_13__* %12)
  %23 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %24 = load i32, i32* %7, align 4
  %25 = call i32* @extract_jsp_bool_expr(%struct.TYPE_14__* %23, i32 %24, %struct.TYPE_13__* %12, i32 0)
  store i32* %25, i32** %13, align 8
  %26 = load i32*, i32** %13, align 8
  %27 = icmp ne i32* %26, null
  br i1 %27, label %28, label %32

28:                                               ; preds = %20
  %29 = load i32*, i32** %11, align 8
  %30 = load i32*, i32** %13, align 8
  %31 = call i32* @lappend(i32* %29, i32* %30)
  store i32* %31, i32** %11, align 8
  br label %32

32:                                               ; preds = %28, %20
  br label %43

33:                                               ; preds = %15
  %34 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %35 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %34, i32 0, i32 1
  %36 = load i32 (i32*, %struct.TYPE_13__*)*, i32 (i32*, %struct.TYPE_13__*)** %35, align 8
  %37 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %38 = call i32 %36(i32* %7, %struct.TYPE_13__* %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %42, label %40

40:                                               ; preds = %33
  %41 = load i32*, i32** %11, align 8
  store i32* %41, i32** %5, align 8
  br label %58

42:                                               ; preds = %33
  br label %43

43:                                               ; preds = %42, %32, %19
  %44 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %45 = call i32 @jspGetNext(%struct.TYPE_13__* %44, %struct.TYPE_13__* %10)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %48, label %47

47:                                               ; preds = %43
  br label %49

48:                                               ; preds = %43
  store %struct.TYPE_13__* %10, %struct.TYPE_13__** %8, align 8
  br label %15

49:                                               ; preds = %47
  %50 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %51 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %50, i32 0, i32 0
  %52 = load i32* (%struct.TYPE_14__*, i32, i32*, i32*)*, i32* (%struct.TYPE_14__*, i32, i32*, i32*)** %51, align 8
  %53 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %54 = load i32, i32* %7, align 4
  %55 = load i32*, i32** %9, align 8
  %56 = load i32*, i32** %11, align 8
  %57 = call i32* %52(%struct.TYPE_14__* %53, i32 %54, i32* %55, i32* %56)
  store i32* %57, i32** %5, align 8
  br label %58

58:                                               ; preds = %49, %40
  %59 = load i32*, i32** %5, align 8
  ret i32* %59
}

declare dso_local i32 @jspGetArg(%struct.TYPE_13__*, %struct.TYPE_13__*) #1

declare dso_local i32* @extract_jsp_bool_expr(%struct.TYPE_14__*, i32, %struct.TYPE_13__*, i32) #1

declare dso_local i32* @lappend(i32*, i32*) #1

declare dso_local i32 @jspGetNext(%struct.TYPE_13__*, %struct.TYPE_13__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
