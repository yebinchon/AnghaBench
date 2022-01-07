; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_geo_ops.c_path_encode.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_geo_ops.c_path_encode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_7__ = type { i8* }

@LDELIM = common dso_local global i32 0, align 4
@LDELIM_EP = common dso_local global i32 0, align 4
@DELIM = common dso_local global i32 0, align 4
@RDELIM = common dso_local global i32 0, align 4
@RDELIM_EP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32, i32, %struct.TYPE_8__*)* @path_encode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @path_encode(i32 %0, i32 %1, %struct.TYPE_8__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca %struct.TYPE_7__, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store %struct.TYPE_8__* %2, %struct.TYPE_8__** %6, align 8
  %9 = call i32 @initStringInfo(%struct.TYPE_7__* %7)
  %10 = load i32, i32* %4, align 4
  switch i32 %10, label %18 [
    i32 130, label %11
    i32 128, label %14
    i32 129, label %17
  ]

11:                                               ; preds = %3
  %12 = load i32, i32* @LDELIM, align 4
  %13 = call i32 @appendStringInfoChar(%struct.TYPE_7__* %7, i32 %12)
  br label %18

14:                                               ; preds = %3
  %15 = load i32, i32* @LDELIM_EP, align 4
  %16 = call i32 @appendStringInfoChar(%struct.TYPE_7__* %7, i32 %15)
  br label %18

17:                                               ; preds = %3
  br label %18

18:                                               ; preds = %3, %17, %14, %11
  store i32 0, i32* %8, align 4
  br label %19

19:                                               ; preds = %43, %18
  %20 = load i32, i32* %8, align 4
  %21 = load i32, i32* %5, align 4
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %23, label %46

23:                                               ; preds = %19
  %24 = load i32, i32* %8, align 4
  %25 = icmp sgt i32 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %23
  %27 = load i32, i32* @DELIM, align 4
  %28 = call i32 @appendStringInfoChar(%struct.TYPE_7__* %7, i32 %27)
  br label %29

29:                                               ; preds = %26, %23
  %30 = load i32, i32* @LDELIM, align 4
  %31 = call i32 @appendStringInfoChar(%struct.TYPE_7__* %7, i32 %30)
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @pair_encode(i32 %34, i32 %37, %struct.TYPE_7__* %7)
  %39 = load i32, i32* @RDELIM, align 4
  %40 = call i32 @appendStringInfoChar(%struct.TYPE_7__* %7, i32 %39)
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 1
  store %struct.TYPE_8__* %42, %struct.TYPE_8__** %6, align 8
  br label %43

43:                                               ; preds = %29
  %44 = load i32, i32* %8, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %8, align 4
  br label %19

46:                                               ; preds = %19
  %47 = load i32, i32* %4, align 4
  switch i32 %47, label %55 [
    i32 130, label %48
    i32 128, label %51
    i32 129, label %54
  ]

48:                                               ; preds = %46
  %49 = load i32, i32* @RDELIM, align 4
  %50 = call i32 @appendStringInfoChar(%struct.TYPE_7__* %7, i32 %49)
  br label %55

51:                                               ; preds = %46
  %52 = load i32, i32* @RDELIM_EP, align 4
  %53 = call i32 @appendStringInfoChar(%struct.TYPE_7__* %7, i32 %52)
  br label %55

54:                                               ; preds = %46
  br label %55

55:                                               ; preds = %46, %54, %51, %48
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 0
  %57 = load i8*, i8** %56, align 8
  ret i8* %57
}

declare dso_local i32 @initStringInfo(%struct.TYPE_7__*) #1

declare dso_local i32 @appendStringInfoChar(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @pair_encode(i32, i32, %struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
