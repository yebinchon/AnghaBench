; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/coap/extr_pdu.c_coap_new_pdu.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/coap/extr_pdu.c_coap_new_pdu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_11__, %struct.TYPE_10__, %struct.TYPE_12__*, %struct.TYPE_9__ }
%struct.TYPE_11__ = type { i32, %struct.TYPE_12__* }
%struct.TYPE_10__ = type { i32, %struct.TYPE_12__* }
%struct.TYPE_9__ = type { i64, i32* }

@.str = private unnamed_addr constant [28 x i8] c"coap_new_pdu malloc error.\0A\00", align 1
@MAX_REQ_SCRATCH_SIZE = common dso_local global i32 0, align 4
@MAX_REQUEST_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_12__* @coap_new_pdu() #0 {
  %1 = alloca %struct.TYPE_12__*, align 8
  %2 = alloca %struct.TYPE_12__*, align 8
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %2, align 8
  %3 = call i64 @calloc(i32 1, i32 56)
  %4 = inttoptr i64 %3 to %struct.TYPE_12__*
  store %struct.TYPE_12__* %4, %struct.TYPE_12__** %2, align 8
  %5 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %6 = icmp ne %struct.TYPE_12__* %5, null
  br i1 %6, label %9, label %7

7:                                                ; preds = %0
  %8 = call i32 @NODE_DBG(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %1, align 8
  br label %89

9:                                                ; preds = %0
  %10 = load i32, i32* @MAX_REQ_SCRATCH_SIZE, align 4
  %11 = call i64 @calloc(i32 1, i32 %10)
  %12 = inttoptr i64 %11 to %struct.TYPE_12__*
  %13 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %14 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %14, i32 0, i32 1
  store %struct.TYPE_12__* %12, %struct.TYPE_12__** %15, align 8
  %16 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %17 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %17, i32 0, i32 1
  %19 = load %struct.TYPE_12__*, %struct.TYPE_12__** %18, align 8
  %20 = icmp ne %struct.TYPE_12__* %19, null
  br i1 %20, label %25, label %21

21:                                               ; preds = %9
  %22 = call i32 @NODE_DBG(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %23 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %24 = call i32 @free(%struct.TYPE_12__* %23)
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %1, align 8
  br label %89

25:                                               ; preds = %9
  %26 = load i32, i32* @MAX_REQ_SCRATCH_SIZE, align 4
  %27 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %28 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %28, i32 0, i32 0
  store i32 %26, i32* %29, align 8
  %30 = call i64 @calloc(i32 1, i32 56)
  %31 = inttoptr i64 %30 to %struct.TYPE_12__*
  %32 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %33 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %32, i32 0, i32 2
  store %struct.TYPE_12__* %31, %struct.TYPE_12__** %33, align 8
  %34 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %35 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %34, i32 0, i32 2
  %36 = load %struct.TYPE_12__*, %struct.TYPE_12__** %35, align 8
  %37 = icmp ne %struct.TYPE_12__* %36, null
  br i1 %37, label %47, label %38

38:                                               ; preds = %25
  %39 = call i32 @NODE_DBG(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %40 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %41 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %41, i32 0, i32 1
  %43 = load %struct.TYPE_12__*, %struct.TYPE_12__** %42, align 8
  %44 = call i32 @free(%struct.TYPE_12__* %43)
  %45 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %46 = call i32 @free(%struct.TYPE_12__* %45)
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %1, align 8
  br label %89

47:                                               ; preds = %25
  %48 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %49 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %48, i32 0, i32 2
  %50 = load %struct.TYPE_12__*, %struct.TYPE_12__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %50, i32 0, i32 3
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %51, i32 0, i32 1
  store i32* null, i32** %52, align 8
  %53 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %54 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %53, i32 0, i32 2
  %55 = load %struct.TYPE_12__*, %struct.TYPE_12__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %55, i32 0, i32 3
  %57 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %56, i32 0, i32 0
  store i64 0, i64* %57, align 8
  %58 = load i32, i32* @MAX_REQUEST_SIZE, align 4
  %59 = add nsw i32 %58, 1
  %60 = call i64 @calloc(i32 1, i32 %59)
  %61 = inttoptr i64 %60 to %struct.TYPE_12__*
  %62 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %63 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %63, i32 0, i32 1
  store %struct.TYPE_12__* %61, %struct.TYPE_12__** %64, align 8
  %65 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %66 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %66, i32 0, i32 1
  %68 = load %struct.TYPE_12__*, %struct.TYPE_12__** %67, align 8
  %69 = icmp ne %struct.TYPE_12__* %68, null
  br i1 %69, label %83, label %70

70:                                               ; preds = %47
  %71 = call i32 @NODE_DBG(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %72 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %73 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %72, i32 0, i32 2
  %74 = load %struct.TYPE_12__*, %struct.TYPE_12__** %73, align 8
  %75 = call i32 @free(%struct.TYPE_12__* %74)
  %76 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %77 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %77, i32 0, i32 1
  %79 = load %struct.TYPE_12__*, %struct.TYPE_12__** %78, align 8
  %80 = call i32 @free(%struct.TYPE_12__* %79)
  %81 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %82 = call i32 @free(%struct.TYPE_12__* %81)
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %1, align 8
  br label %89

83:                                               ; preds = %47
  %84 = load i32, i32* @MAX_REQUEST_SIZE, align 4
  %85 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %86 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %86, i32 0, i32 0
  store i32 %84, i32* %87, align 8
  %88 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  store %struct.TYPE_12__* %88, %struct.TYPE_12__** %1, align 8
  br label %89

89:                                               ; preds = %83, %70, %38, %21, %7
  %90 = load %struct.TYPE_12__*, %struct.TYPE_12__** %1, align 8
  ret %struct.TYPE_12__* %90
}

declare dso_local i64 @calloc(i32, i32) #1

declare dso_local i32 @NODE_DBG(i8*) #1

declare dso_local i32 @free(%struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
