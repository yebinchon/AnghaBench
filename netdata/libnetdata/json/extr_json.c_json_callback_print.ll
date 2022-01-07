; ModuleID = '/home/carl/AnghaBench/netdata/libnetdata/json/extr_json.c_json_callback_print.c'
source_filename = "/home/carl/AnghaBench/netdata/libnetdata/json/extr_json.c_json_callback_print.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, {}*, %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i8*, i32, i32, i32 }

@.str = private unnamed_addr constant [6 x i8] c"%s = \00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"OBJECT\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"ARRAY[%lu]\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"%Lf\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"TRUE\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"FALSE\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"NULL\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"JSON: %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @json_callback_print(%struct.TYPE_5__* %0) #0 {
  %2 = alloca %struct.TYPE_5__*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca [50 x i8], align 16
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %2, align 8
  %5 = call i32* @buffer_create(i32 300)
  store i32* %5, i32** %3, align 8
  %6 = load i32*, i32** %3, align 8
  %7 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %8 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 3
  %9 = load i32, i32* %8, align 8
  %10 = call i32 @buffer_sprintf(i32* %6, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %9)
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  switch i32 %13, label %63 [
    i32 129, label %14
    i32 133, label %20
    i32 128, label %33
    i32 130, label %40
    i32 132, label %50
    i32 131, label %60
  ]

14:                                               ; preds = %1
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 1
  %17 = bitcast {}** %16 to i32 (%struct.TYPE_5__*)**
  store i32 (%struct.TYPE_5__*)* @json_callback_print, i32 (%struct.TYPE_5__*)** %17, align 8
  %18 = load i32*, i32** %3, align 8
  %19 = call i32 @buffer_strcat(i32* %18, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  br label %63

20:                                               ; preds = %1
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 1
  %23 = bitcast {}** %22 to i32 (%struct.TYPE_5__*)**
  store i32 (%struct.TYPE_5__*)* @json_callback_print, i32 (%struct.TYPE_5__*)** %23, align 8
  %24 = getelementptr inbounds [50 x i8], [50 x i8]* %4, i64 0, i64 0
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 2
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @sprintf(i8* %24, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i32 %28)
  %30 = load i32*, i32** %3, align 8
  %31 = getelementptr inbounds [50 x i8], [50 x i8]* %4, i64 0, i64 0
  %32 = call i32 @buffer_strcat(i32* %30, i8* %31)
  br label %63

33:                                               ; preds = %1
  %34 = load i32*, i32** %3, align 8
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 2
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load i8*, i8** %37, align 8
  %39 = call i32 @buffer_strcat(i32* %34, i8* %38)
  br label %63

40:                                               ; preds = %1
  %41 = getelementptr inbounds [50 x i8], [50 x i8]* %4, i64 0, i64 0
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 2
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @sprintf(i8* %41, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i32 %45)
  %47 = load i32*, i32** %3, align 8
  %48 = getelementptr inbounds [50 x i8], [50 x i8]* %4, i64 0, i64 0
  %49 = call i32 @buffer_strcat(i32* %47, i8* %48)
  br label %63

50:                                               ; preds = %1
  %51 = load i32*, i32** %3, align 8
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 2
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  %56 = icmp ne i32 %55, 0
  %57 = zext i1 %56 to i64
  %58 = select i1 %56, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0)
  %59 = call i32 @buffer_strcat(i32* %51, i8* %58)
  br label %63

60:                                               ; preds = %1
  %61 = load i32*, i32** %3, align 8
  %62 = call i32 @buffer_strcat(i32* %61, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0))
  br label %63

63:                                               ; preds = %1, %60, %50, %40, %33, %20, %14
  %64 = load i32*, i32** %3, align 8
  %65 = call i32 @buffer_tostring(i32* %64)
  %66 = call i32 @info(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0), i32 %65)
  %67 = load i32*, i32** %3, align 8
  %68 = call i32 @buffer_free(i32* %67)
  ret i32 0
}

declare dso_local i32* @buffer_create(i32) #1

declare dso_local i32 @buffer_sprintf(i32*, i8*, i32) #1

declare dso_local i32 @buffer_strcat(i32*, i8*) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

declare dso_local i32 @info(i8*, i32) #1

declare dso_local i32 @buffer_tostring(i32*) #1

declare dso_local i32 @buffer_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
