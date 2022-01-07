; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/catalog/extr_objectaddress.c_get_object_property_data.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/catalog/extr_objectaddress.c_get_object_property_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64 }

@get_object_property_data.prop_last = internal global %struct.TYPE_5__* null, align 8
@ObjectProperty = common dso_local global %struct.TYPE_5__* null, align 8
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"unrecognized class ID: %u\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_5__* (i64)* @get_object_property_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_5__* @get_object_property_data(i64 %0) #0 {
  %2 = alloca %struct.TYPE_5__*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  store i64 %0, i64* %3, align 8
  %5 = load %struct.TYPE_5__*, %struct.TYPE_5__** @get_object_property_data.prop_last, align 8
  %6 = icmp ne %struct.TYPE_5__* %5, null
  br i1 %6, label %7, label %15

7:                                                ; preds = %1
  %8 = load %struct.TYPE_5__*, %struct.TYPE_5__** @get_object_property_data.prop_last, align 8
  %9 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* %3, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %15

13:                                               ; preds = %7
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** @get_object_property_data.prop_last, align 8
  store %struct.TYPE_5__* %14, %struct.TYPE_5__** %2, align 8
  br label %48

15:                                               ; preds = %7, %1
  store i32 0, i32* %4, align 4
  br label %16

16:                                               ; preds = %40, %15
  %17 = load i32, i32* %4, align 4
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** @ObjectProperty, align 8
  %19 = call i32 @lengthof(%struct.TYPE_5__* %18)
  %20 = icmp slt i32 %17, %19
  br i1 %20, label %21, label %43

21:                                               ; preds = %16
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** @ObjectProperty, align 8
  %23 = load i32, i32* %4, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i64 %24
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* %3, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %39

30:                                               ; preds = %21
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** @ObjectProperty, align 8
  %32 = load i32, i32* %4, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i64 %33
  store %struct.TYPE_5__* %34, %struct.TYPE_5__** @get_object_property_data.prop_last, align 8
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** @ObjectProperty, align 8
  %36 = load i32, i32* %4, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i64 %37
  store %struct.TYPE_5__* %38, %struct.TYPE_5__** %2, align 8
  br label %48

39:                                               ; preds = %21
  br label %40

40:                                               ; preds = %39
  %41 = load i32, i32* %4, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %4, align 4
  br label %16

43:                                               ; preds = %16
  %44 = load i32, i32* @ERROR, align 4
  %45 = load i64, i64* %3, align 8
  %46 = call i32 @errmsg_internal(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i64 %45)
  %47 = call i32 @ereport(i32 %44, i32 %46)
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %2, align 8
  br label %48

48:                                               ; preds = %43, %30, %13
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  ret %struct.TYPE_5__* %49
}

declare dso_local i32 @lengthof(%struct.TYPE_5__*) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errmsg_internal(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
