; ModuleID = '/home/carl/AnghaBench/macvim/src/extr_if_python.c_ListGetattr.c'
source_filename = "/home/carl/AnghaBench/macvim/src/extr_if_python.c_ListGetattr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [7 x i8] c"locked\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"__members__\00", align 1
@ListAttrs = common dso_local global i32 0, align 4
@ListMethods = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i8*)* @ListGetattr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @ListGetattr(i32* %0, i8* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  %6 = load i8*, i8** %5, align 8
  %7 = call i64 @strcmp(i8* %6, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %8 = icmp eq i64 %7, 0
  br i1 %8, label %9, label %17

9:                                                ; preds = %2
  %10 = load i32*, i32** %4, align 8
  %11 = bitcast i32* %10 to %struct.TYPE_4__*
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32* @PyInt_FromLong(i32 %15)
  store i32* %16, i32** %3, align 8
  br label %30

17:                                               ; preds = %2
  %18 = load i8*, i8** %5, align 8
  %19 = call i64 @strcmp(i8* %18, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %17
  %22 = load i32, i32* @ListAttrs, align 4
  %23 = call i32* @ObjectDir(i32* null, i32 %22)
  store i32* %23, i32** %3, align 8
  br label %30

24:                                               ; preds = %17
  br label %25

25:                                               ; preds = %24
  %26 = load i32, i32* @ListMethods, align 4
  %27 = load i32*, i32** %4, align 8
  %28 = load i8*, i8** %5, align 8
  %29 = call i32* @Py_FindMethod(i32 %26, i32* %27, i8* %28)
  store i32* %29, i32** %3, align 8
  br label %30

30:                                               ; preds = %25, %21, %9
  %31 = load i32*, i32** %3, align 8
  ret i32* %31
}

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32* @PyInt_FromLong(i32) #1

declare dso_local i32* @ObjectDir(i32*, i32) #1

declare dso_local i32* @Py_FindMethod(i32, i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
