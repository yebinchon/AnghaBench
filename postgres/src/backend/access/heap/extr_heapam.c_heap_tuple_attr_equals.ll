; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/heap/extr_heapam.c_heap_tuple_attr_equals.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/heap/extr_heapam.c_heap_tuple_attr_equals.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }
%struct.TYPE_8__ = type { i32, i32 }

@TableOidAttributeNumber = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*, i32, i32, i32)* @heap_tuple_attr_equals to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @heap_tuple_attr_equals(%struct.TYPE_7__* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_8__*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %15 = load i32, i32* %7, align 4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %75

18:                                               ; preds = %4
  %19 = load i32, i32* %7, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %27

21:                                               ; preds = %18
  %22 = load i32, i32* %7, align 4
  %23 = load i32, i32* @TableOidAttributeNumber, align 4
  %24 = icmp ne i32 %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %21
  store i32 0, i32* %5, align 4
  br label %75

26:                                               ; preds = %21
  br label %27

27:                                               ; preds = %26, %18
  %28 = load i32, i32* %8, align 4
  %29 = load i32, i32* %7, align 4
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %31 = call i32 @heap_getattr(i32 %28, i32 %29, %struct.TYPE_7__* %30, i32* %12)
  store i32 %31, i32* %10, align 4
  %32 = load i32, i32* %9, align 4
  %33 = load i32, i32* %7, align 4
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %35 = call i32 @heap_getattr(i32 %32, i32 %33, %struct.TYPE_7__* %34, i32* %13)
  store i32 %35, i32* %11, align 4
  %36 = load i32, i32* %12, align 4
  %37 = load i32, i32* %13, align 4
  %38 = icmp ne i32 %36, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %27
  store i32 0, i32* %5, align 4
  br label %75

40:                                               ; preds = %27
  %41 = load i32, i32* %12, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %40
  store i32 1, i32* %5, align 4
  br label %75

44:                                               ; preds = %40
  %45 = load i32, i32* %7, align 4
  %46 = icmp sle i32 %45, 0
  br i1 %46, label %47, label %54

47:                                               ; preds = %44
  %48 = load i32, i32* %10, align 4
  %49 = call i64 @DatumGetObjectId(i32 %48)
  %50 = load i32, i32* %11, align 4
  %51 = call i64 @DatumGetObjectId(i32 %50)
  %52 = icmp eq i64 %49, %51
  %53 = zext i1 %52 to i32
  store i32 %53, i32* %5, align 4
  br label %75

54:                                               ; preds = %44
  %55 = load i32, i32* %7, align 4
  %56 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = icmp sle i32 %55, %58
  %60 = zext i1 %59 to i32
  %61 = call i32 @Assert(i32 %60)
  %62 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %63 = load i32, i32* %7, align 4
  %64 = sub nsw i32 %63, 1
  %65 = call %struct.TYPE_8__* @TupleDescAttr(%struct.TYPE_7__* %62, i32 %64)
  store %struct.TYPE_8__* %65, %struct.TYPE_8__** %14, align 8
  %66 = load i32, i32* %10, align 4
  %67 = load i32, i32* %11, align 4
  %68 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @datumIsEqual(i32 %66, i32 %67, i32 %70, i32 %73)
  store i32 %74, i32* %5, align 4
  br label %75

75:                                               ; preds = %54, %47, %43, %39, %25, %17
  %76 = load i32, i32* %5, align 4
  ret i32 %76
}

declare dso_local i32 @heap_getattr(i32, i32, %struct.TYPE_7__*, i32*) #1

declare dso_local i64 @DatumGetObjectId(i32) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local %struct.TYPE_8__* @TupleDescAttr(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @datumIsEqual(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
