; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_formatting.c_DCH_datetime_type.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_formatting.c_DCH_datetime_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32 }

@NODE_TYPE_END = common dso_local global i64 0, align 8
@NODE_TYPE_ACTION = common dso_local global i64 0, align 8
@DCH_TIMED = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_FEATURE_NOT_SUPPORTED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"formatting field \22%s\22 is only supported in to_char\00", align 1
@DCH_ZONED = common dso_local global i32 0, align 4
@DCH_DATED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*, i32*)* @DCH_datetime_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @DCH_datetime_type(%struct.TYPE_5__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  store i32* %1, i32** %4, align 8
  store i32 0, i32* %6, align 4
  %7 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  store %struct.TYPE_5__* %7, %struct.TYPE_5__** %5, align 8
  br label %8

8:                                                ; preds = %56, %2
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @NODE_TYPE_END, align 8
  %13 = icmp ne i64 %11, %12
  br i1 %13, label %14, label %59

14:                                               ; preds = %8
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @NODE_TYPE_ACTION, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %14
  br label %56

21:                                               ; preds = %14
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 1
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  switch i32 %26, label %55 [
    i32 177, label %27
    i32 194, label %28
    i32 157, label %28
    i32 140, label %28
    i32 131, label %28
    i32 196, label %28
    i32 158, label %28
    i32 138, label %28
    i32 130, label %28
    i32 176, label %28
    i32 175, label %28
    i32 174, label %28
    i32 166, label %28
    i32 154, label %28
    i32 162, label %28
    i32 149, label %28
    i32 183, label %28
    i32 182, label %28
    i32 181, label %28
    i32 180, label %28
    i32 179, label %28
    i32 178, label %28
    i32 153, label %28
    i32 128, label %32
    i32 152, label %32
    i32 159, label %32
    i32 151, label %47
    i32 150, label %47
    i32 195, label %51
    i32 192, label %51
    i32 141, label %51
    i32 137, label %51
    i32 197, label %51
    i32 193, label %51
    i32 139, label %51
    i32 136, label %51
    i32 163, label %51
    i32 160, label %51
    i32 132, label %51
    i32 164, label %51
    i32 161, label %51
    i32 133, label %51
    i32 165, label %51
    i32 189, label %51
    i32 185, label %51
    i32 135, label %51
    i32 186, label %51
    i32 184, label %51
    i32 134, label %51
    i32 187, label %51
    i32 171, label %51
    i32 188, label %51
    i32 190, label %51
    i32 172, label %51
    i32 147, label %51
    i32 156, label %51
    i32 191, label %51
    i32 142, label %51
    i32 143, label %51
    i32 168, label %51
    i32 144, label %51
    i32 169, label %51
    i32 145, label %51
    i32 170, label %51
    i32 146, label %51
    i32 173, label %51
    i32 155, label %51
    i32 129, label %51
    i32 148, label %51
    i32 167, label %51
  ]

27:                                               ; preds = %21
  br label %55

28:                                               ; preds = %21, %21, %21, %21, %21, %21, %21, %21, %21, %21, %21, %21, %21, %21, %21, %21, %21, %21, %21, %21, %21, %21
  %29 = load i32, i32* @DCH_TIMED, align 4
  %30 = load i32, i32* %6, align 4
  %31 = or i32 %30, %29
  store i32 %31, i32* %6, align 4
  br label %55

32:                                               ; preds = %21, %21, %21
  %33 = load i32, i32* @ERROR, align 4
  %34 = load i32, i32* @ERRCODE_FEATURE_NOT_SUPPORTED, align 4
  %35 = call i32 @errcode(i32 %34)
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 1
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @errmsg(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i32 %40)
  %42 = call i32 @ereport(i32 %33, i32 %41)
  %43 = call i32 @RETURN_ERROR(i32 %42)
  %44 = load i32, i32* @DCH_ZONED, align 4
  %45 = load i32, i32* %6, align 4
  %46 = or i32 %45, %44
  store i32 %46, i32* %6, align 4
  br label %55

47:                                               ; preds = %21, %21
  %48 = load i32, i32* @DCH_ZONED, align 4
  %49 = load i32, i32* %6, align 4
  %50 = or i32 %49, %48
  store i32 %50, i32* %6, align 4
  br label %55

51:                                               ; preds = %21, %21, %21, %21, %21, %21, %21, %21, %21, %21, %21, %21, %21, %21, %21, %21, %21, %21, %21, %21, %21, %21, %21, %21, %21, %21, %21, %21, %21, %21, %21, %21, %21, %21, %21, %21, %21, %21, %21, %21, %21, %21
  %52 = load i32, i32* @DCH_DATED, align 4
  %53 = load i32, i32* %6, align 4
  %54 = or i32 %53, %52
  store i32 %54, i32* %6, align 4
  br label %55

55:                                               ; preds = %21, %51, %47, %32, %28, %27
  br label %56

56:                                               ; preds = %55, %20
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 1
  store %struct.TYPE_5__* %58, %struct.TYPE_5__** %5, align 8
  br label %8

59:                                               ; preds = %8
  br label %60

60:                                               ; preds = %59
  %61 = load i32, i32* %6, align 4
  ret i32 %61
}

declare dso_local i32 @RETURN_ERROR(i32) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
