; ModuleID = '/home/carl/AnghaBench/postgres/contrib/ltree/extr_ltree_op.c_inner_subltree.c'
source_filename = "/home/carl/AnghaBench/postgres/contrib/ltree/extr_ltree_op.c_inner_subltree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }

@ERROR = common dso_local global i32 0, align 4
@ERRCODE_INVALID_PARAMETER_VALUE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"invalid positions\00", align 1
@LTREE_HDRSIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_6__* (%struct.TYPE_6__*, i32, i32)* @inner_subltree to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_6__* @inner_subltree(%struct.TYPE_6__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_6__*, align 8
  %11 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i8* null, i8** %7, align 8
  store i8* null, i8** %8, align 8
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %13 = call i32* @LTREE_FIRST(%struct.TYPE_6__* %12)
  store i32* %13, i32** %9, align 8
  %14 = load i32, i32* %5, align 4
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %29, label %16

16:                                               ; preds = %3
  %17 = load i32, i32* %6, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %29, label %19

19:                                               ; preds = %16
  %20 = load i32, i32* %5, align 4
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = icmp sge i32 %20, %23
  br i1 %24, label %29, label %25

25:                                               ; preds = %19
  %26 = load i32, i32* %5, align 4
  %27 = load i32, i32* %6, align 4
  %28 = icmp sgt i32 %26, %27
  br i1 %28, label %29, label %35

29:                                               ; preds = %25, %19, %16, %3
  %30 = load i32, i32* @ERROR, align 4
  %31 = load i32, i32* @ERRCODE_INVALID_PARAMETER_VALUE, align 4
  %32 = call i32 @errcode(i32 %31)
  %33 = call i32 @errmsg(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %34 = call i32 @ereport(i32 %30, i32 %33)
  br label %35

35:                                               ; preds = %29, %25
  %36 = load i32, i32* %6, align 4
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = icmp sgt i32 %36, %39
  br i1 %40, label %41, label %45

41:                                               ; preds = %35
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  store i32 %44, i32* %6, align 4
  br label %45

45:                                               ; preds = %41, %35
  %46 = load i32*, i32** %9, align 8
  %47 = bitcast i32* %46 to i8*
  store i8* %47, i8** %8, align 8
  store i8* %47, i8** %7, align 8
  store i32 0, i32* %11, align 4
  br label %48

48:                                               ; preds = %71, %45
  %49 = load i32, i32* %11, align 4
  %50 = load i32, i32* %6, align 4
  %51 = icmp slt i32 %49, %50
  br i1 %51, label %52, label %74

52:                                               ; preds = %48
  %53 = load i32, i32* %11, align 4
  %54 = load i32, i32* %5, align 4
  %55 = icmp eq i32 %53, %54
  br i1 %55, label %56, label %59

56:                                               ; preds = %52
  %57 = load i32*, i32** %9, align 8
  %58 = bitcast i32* %57 to i8*
  store i8* %58, i8** %7, align 8
  br label %59

59:                                               ; preds = %56, %52
  %60 = load i32, i32* %11, align 4
  %61 = load i32, i32* %6, align 4
  %62 = sub nsw i32 %61, 1
  %63 = icmp eq i32 %60, %62
  br i1 %63, label %64, label %68

64:                                               ; preds = %59
  %65 = load i32*, i32** %9, align 8
  %66 = call i32* @LEVEL_NEXT(i32* %65)
  %67 = bitcast i32* %66 to i8*
  store i8* %67, i8** %8, align 8
  br label %74

68:                                               ; preds = %59
  %69 = load i32*, i32** %9, align 8
  %70 = call i32* @LEVEL_NEXT(i32* %69)
  store i32* %70, i32** %9, align 8
  br label %71

71:                                               ; preds = %68
  %72 = load i32, i32* %11, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %11, align 4
  br label %48

74:                                               ; preds = %64, %48
  %75 = load i64, i64* @LTREE_HDRSIZE, align 8
  %76 = load i8*, i8** %8, align 8
  %77 = load i8*, i8** %7, align 8
  %78 = ptrtoint i8* %76 to i64
  %79 = ptrtoint i8* %77 to i64
  %80 = sub i64 %78, %79
  %81 = add nsw i64 %75, %80
  %82 = call i64 @palloc0(i64 %81)
  %83 = inttoptr i64 %82 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %83, %struct.TYPE_6__** %10, align 8
  %84 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %85 = load i64, i64* @LTREE_HDRSIZE, align 8
  %86 = load i8*, i8** %8, align 8
  %87 = load i8*, i8** %7, align 8
  %88 = ptrtoint i8* %86 to i64
  %89 = ptrtoint i8* %87 to i64
  %90 = sub i64 %88, %89
  %91 = add nsw i64 %85, %90
  %92 = call i32 @SET_VARSIZE(%struct.TYPE_6__* %84, i64 %91)
  %93 = load i32, i32* %6, align 4
  %94 = load i32, i32* %5, align 4
  %95 = sub nsw i32 %93, %94
  %96 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i32 0, i32 0
  store i32 %95, i32* %97, align 4
  %98 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %99 = call i32* @LTREE_FIRST(%struct.TYPE_6__* %98)
  %100 = load i8*, i8** %7, align 8
  %101 = load i8*, i8** %8, align 8
  %102 = load i8*, i8** %7, align 8
  %103 = ptrtoint i8* %101 to i64
  %104 = ptrtoint i8* %102 to i64
  %105 = sub i64 %103, %104
  %106 = trunc i64 %105 to i32
  %107 = call i32 @memcpy(i32* %99, i8* %100, i32 %106)
  %108 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  ret %struct.TYPE_6__* %108
}

declare dso_local i32* @LTREE_FIRST(%struct.TYPE_6__*) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*) #1

declare dso_local i32* @LEVEL_NEXT(i32*) #1

declare dso_local i64 @palloc0(i64) #1

declare dso_local i32 @SET_VARSIZE(%struct.TYPE_6__*, i64) #1

declare dso_local i32 @memcpy(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
