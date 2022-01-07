; ModuleID = '/home/carl/AnghaBench/postgres/src/pl/plpython/extr_plpy_typeio.c_PLySequence_ToArray_recurse.c'
source_filename = "/home/carl/AnghaBench/postgres/src/pl/plpython/extr_plpy_typeio.c_PLySequence_ToArray_recurse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 (%struct.TYPE_4__*, i32*, i32*, i32)* }

@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [67 x i8] c"wrong length of inner sequence: has length %d, but %d was expected\00", align 1
@.str.1 = private unnamed_addr constant [90 x i8] c"To construct a multidimensional array, the inner sequences must all have the same length.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_4__*, i32*, i32*, i32, i32, i32*, i32*, i32*)* @PLySequence_ToArray_recurse to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @PLySequence_ToArray_recurse(%struct.TYPE_4__* %0, i32* %1, i32* %2, i32 %3, i32 %4, i32* %5, i32* %6, i32* %7) #0 {
  %9 = alloca %struct.TYPE_4__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %9, align 8
  store i32* %1, i32** %10, align 8
  store i32* %2, i32** %11, align 8
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32* %5, i32** %14, align 8
  store i32* %6, i32** %15, align 8
  store i32* %7, i32** %16, align 8
  %20 = load i32*, i32** %10, align 8
  %21 = call i32 @PySequence_Length(i32* %20)
  %22 = load i32*, i32** %11, align 8
  %23 = load i32, i32* %13, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i32, i32* %22, i64 %24
  %26 = load i32, i32* %25, align 4
  %27 = icmp ne i32 %21, %26
  br i1 %27, label %28, label %40

28:                                               ; preds = %8
  %29 = load i32, i32* @ERROR, align 4
  %30 = load i32*, i32** %10, align 8
  %31 = call i32 @PySequence_Length(i32* %30)
  %32 = load i32*, i32** %11, align 8
  %33 = load i32, i32* %13, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %32, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @errmsg(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str, i64 0, i64 0), i32 %31, i32 %36)
  %38 = call i32 @errdetail(i8* getelementptr inbounds ([90 x i8], [90 x i8]* @.str.1, i64 0, i64 0))
  %39 = call i32 @ereport(i32 %29, i32 %38)
  br label %40

40:                                               ; preds = %28, %8
  %41 = load i32, i32* %13, align 4
  %42 = load i32, i32* %12, align 4
  %43 = sub nsw i32 %42, 1
  %44 = icmp slt i32 %41, %43
  br i1 %44, label %45, label %73

45:                                               ; preds = %40
  store i32 0, i32* %17, align 4
  br label %46

46:                                               ; preds = %69, %45
  %47 = load i32, i32* %17, align 4
  %48 = load i32*, i32** %11, align 8
  %49 = load i32, i32* %13, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %48, i64 %50
  %52 = load i32, i32* %51, align 4
  %53 = icmp slt i32 %47, %52
  br i1 %53, label %54, label %72

54:                                               ; preds = %46
  %55 = load i32*, i32** %10, align 8
  %56 = load i32, i32* %17, align 4
  %57 = call i32* @PySequence_GetItem(i32* %55, i32 %56)
  store i32* %57, i32** %18, align 8
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %59 = load i32*, i32** %18, align 8
  %60 = load i32*, i32** %11, align 8
  %61 = load i32, i32* %12, align 4
  %62 = load i32, i32* %13, align 4
  %63 = add nsw i32 %62, 1
  %64 = load i32*, i32** %14, align 8
  %65 = load i32*, i32** %15, align 8
  %66 = load i32*, i32** %16, align 8
  call void @PLySequence_ToArray_recurse(%struct.TYPE_4__* %58, i32* %59, i32* %60, i32 %61, i32 %63, i32* %64, i32* %65, i32* %66)
  %67 = load i32*, i32** %18, align 8
  %68 = call i32 @Py_XDECREF(i32* %67)
  br label %69

69:                                               ; preds = %54
  %70 = load i32, i32* %17, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %17, align 4
  br label %46

72:                                               ; preds = %46
  br label %111

73:                                               ; preds = %40
  store i32 0, i32* %17, align 4
  br label %74

74:                                               ; preds = %107, %73
  %75 = load i32, i32* %17, align 4
  %76 = load i32*, i32** %11, align 8
  %77 = load i32, i32* %13, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i32, i32* %76, i64 %78
  %80 = load i32, i32* %79, align 4
  %81 = icmp slt i32 %75, %80
  br i1 %81, label %82, label %110

82:                                               ; preds = %74
  %83 = load i32*, i32** %10, align 8
  %84 = load i32, i32* %17, align 4
  %85 = call i32* @PySequence_GetItem(i32* %83, i32 %84)
  store i32* %85, i32** %19, align 8
  %86 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 0
  %88 = load i32 (%struct.TYPE_4__*, i32*, i32*, i32)*, i32 (%struct.TYPE_4__*, i32*, i32*, i32)** %87, align 8
  %89 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %90 = load i32*, i32** %19, align 8
  %91 = load i32*, i32** %15, align 8
  %92 = load i32*, i32** %16, align 8
  %93 = load i32, i32* %92, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i32, i32* %91, i64 %94
  %96 = call i32 %88(%struct.TYPE_4__* %89, i32* %90, i32* %95, i32 1)
  %97 = load i32*, i32** %14, align 8
  %98 = load i32*, i32** %16, align 8
  %99 = load i32, i32* %98, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i32, i32* %97, i64 %100
  store i32 %96, i32* %101, align 4
  %102 = load i32*, i32** %19, align 8
  %103 = call i32 @Py_XDECREF(i32* %102)
  %104 = load i32*, i32** %16, align 8
  %105 = load i32, i32* %104, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %104, align 4
  br label %107

107:                                              ; preds = %82
  %108 = load i32, i32* %17, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %17, align 4
  br label %74

110:                                              ; preds = %74
  br label %111

111:                                              ; preds = %110, %72
  ret void
}

declare dso_local i32 @PySequence_Length(i32*) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errmsg(i8*, i32, i32) #1

declare dso_local i32 @errdetail(i8*) #1

declare dso_local i32* @PySequence_GetItem(i32*, i32) #1

declare dso_local i32 @Py_XDECREF(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
