; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/coap/extr_coap_timer.c_coap_timer_tick.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/coap/extr_coap_timer.c_coap_timer_tick.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, i32, i32, i64, %struct.TYPE_14__*, i32 }
%struct.TYPE_14__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i64* }

@COAP_DEFAULT_MAX_RETRANSMIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"** retransmission #%d of transaction %d\0A\00", align 1
@COAP_INVALID_TID = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [35 x i8] c"retransmission: error sending pdu\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @coap_timer_tick(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.TYPE_13__**, align 8
  %4 = alloca %struct.TYPE_13__*, align 8
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = icmp ne i8* %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  br label %94

8:                                                ; preds = %1
  %9 = load i8*, i8** %2, align 8
  %10 = bitcast i8* %9 to %struct.TYPE_13__**
  store %struct.TYPE_13__** %10, %struct.TYPE_13__*** %3, align 8
  %11 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %3, align 8
  %12 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %13 = icmp ne %struct.TYPE_13__* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %8
  br label %94

15:                                               ; preds = %8
  %16 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %3, align 8
  %17 = call %struct.TYPE_13__* @coap_pop_next(%struct.TYPE_13__** %16)
  store %struct.TYPE_13__* %17, %struct.TYPE_13__** %4, align 8
  %18 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @COAP_DEFAULT_MAX_RETRANSMIT, align 4
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %23, label %88

23:                                               ; preds = %15
  %24 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %25, align 8
  %28 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = shl i32 %30, %33
  %35 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %35, i32 0, i32 1
  store i32 %34, i32* %36, align 4
  %37 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %40, i32 0, i32 4
  %42 = load %struct.TYPE_14__*, %struct.TYPE_14__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %42, i32 0, i32 0
  %44 = load %struct.TYPE_12__*, %struct.TYPE_12__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %45, i32 0, i32 0
  %47 = load i64*, i64** %46, align 8
  %48 = getelementptr inbounds i64, i64* %47, i64 0
  %49 = load i64, i64* %48, align 8
  %50 = trunc i64 %49 to i32
  %51 = shl i32 %50, 8
  %52 = sext i32 %51 to i64
  %53 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %54 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %53, i32 0, i32 4
  %55 = load %struct.TYPE_14__*, %struct.TYPE_14__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %55, i32 0, i32 0
  %57 = load %struct.TYPE_12__*, %struct.TYPE_12__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %58, i32 0, i32 0
  %60 = load i64*, i64** %59, align 8
  %61 = getelementptr inbounds i64, i64* %60, i64 1
  %62 = load i64, i64* %61, align 8
  %63 = add nsw i64 %52, %62
  %64 = call i32 (i8*, ...) @NODE_DBG(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %39, i64 %63)
  %65 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %66 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %65, i32 0, i32 5
  %67 = load i32, i32* %66, align 8
  %68 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %69 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %68, i32 0, i32 4
  %70 = load %struct.TYPE_14__*, %struct.TYPE_14__** %69, align 8
  %71 = call i64 @coap_send(i32 %67, %struct.TYPE_14__* %70)
  %72 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %73 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %72, i32 0, i32 3
  store i64 %71, i64* %73, align 8
  %74 = load i64, i64* @COAP_INVALID_TID, align 8
  %75 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %76 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %75, i32 0, i32 3
  %77 = load i64, i64* %76, align 8
  %78 = icmp eq i64 %74, %77
  br i1 %78, label %79, label %83

79:                                               ; preds = %23
  %80 = call i32 (i8*, ...) @NODE_DBG(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  %81 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %82 = call i32 @coap_delete_node(%struct.TYPE_13__* %81)
  br label %87

83:                                               ; preds = %23
  %84 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %3, align 8
  %85 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %86 = call i32 @coap_insert_node(%struct.TYPE_13__** %84, %struct.TYPE_13__* %85)
  br label %87

87:                                               ; preds = %83, %79
  br label %91

88:                                               ; preds = %15
  %89 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %90 = call i32 @coap_delete_node(%struct.TYPE_13__* %89)
  br label %91

91:                                               ; preds = %88, %87
  %92 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %3, align 8
  %93 = call i32 @coap_timer_start(%struct.TYPE_13__** %92)
  br label %94

94:                                               ; preds = %91, %14, %7
  ret void
}

declare dso_local %struct.TYPE_13__* @coap_pop_next(%struct.TYPE_13__**) #1

declare dso_local i32 @NODE_DBG(i8*, ...) #1

declare dso_local i64 @coap_send(i32, %struct.TYPE_14__*) #1

declare dso_local i32 @coap_delete_node(%struct.TYPE_13__*) #1

declare dso_local i32 @coap_insert_node(%struct.TYPE_13__**, %struct.TYPE_13__*) #1

declare dso_local i32 @coap_timer_start(%struct.TYPE_13__**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
