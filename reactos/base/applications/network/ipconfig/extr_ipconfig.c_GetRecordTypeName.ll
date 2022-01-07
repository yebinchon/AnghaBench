; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/network/ipconfig/extr_ipconfig.c_GetRecordTypeName.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/network/ipconfig/extr_ipconfig.c_GetRecordTypeName.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i32* }

@GetRecordTypeName.szType = internal global [8 x i32] zeroinitializer, align 16
@TypeArray = common dso_local global %struct.TYPE_2__* null, align 8
@.str = private unnamed_addr constant [4 x i8] c"%hu\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @GetRecordTypeName(i64 %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  store i64 0, i64* %4, align 8
  br label %5

5:                                                ; preds = %28, %1
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** @TypeArray, align 8
  %7 = load i64, i64* %4, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i64 %7
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 1
  %10 = load i32*, i32** %9, align 8
  %11 = icmp eq i32* %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %5
  br label %31

13:                                               ; preds = %5
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** @TypeArray, align 8
  %15 = load i64, i64* %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i64 %15
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* %3, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %27

21:                                               ; preds = %13
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** @TypeArray, align 8
  %23 = load i64, i64* %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i64 %23
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 1
  %26 = load i32*, i32** %25, align 8
  store i32* %26, i32** %2, align 8
  br label %35

27:                                               ; preds = %13
  br label %28

28:                                               ; preds = %27
  %29 = load i64, i64* %4, align 8
  %30 = add i64 %29, 1
  store i64 %30, i64* %4, align 8
  br label %5

31:                                               ; preds = %12
  %32 = call i32 @_T(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %33 = load i64, i64* %3, align 8
  %34 = call i32 @_stprintf(i32* getelementptr inbounds ([8 x i32], [8 x i32]* @GetRecordTypeName.szType, i64 0, i64 0), i32 %32, i64 %33)
  store i32* getelementptr inbounds ([8 x i32], [8 x i32]* @GetRecordTypeName.szType, i64 0, i64 0), i32** %2, align 8
  br label %35

35:                                               ; preds = %31, %21
  %36 = load i32*, i32** %2, align 8
  ret i32* %36
}

declare dso_local i32 @_stprintf(i32*, i32, i64) #1

declare dso_local i32 @_T(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
