; ModuleID = '/home/carl/AnghaBench/mongoose/examples/CC3200/extr_wifi.c_SimpleLinkWlanEventHandler.c'
source_filename = "/home/carl/AnghaBench/mongoose/examples/CC3200/extr_wifi.c_SimpleLinkWlanEventHandler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@LL_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"WiFi: connected, getting IP\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"WiFi: station connected\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"WiFi: station disconnected\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"WiFi: event %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @SimpleLinkWlanEventHandler(%struct.TYPE_3__* %0) #0 {
  %2 = alloca %struct.TYPE_3__*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %2, align 8
  %3 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %4 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 4
  switch i32 %5, label %15 [
    i32 130, label %6
    i32 129, label %9
    i32 128, label %12
  ]

6:                                                ; preds = %1
  %7 = load i32, i32* @LL_INFO, align 4
  %8 = call i32 @LOG(i32 %7, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  br label %23

9:                                                ; preds = %1
  %10 = load i32, i32* @LL_INFO, align 4
  %11 = call i32 @LOG(i32 %10, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  br label %23

12:                                               ; preds = %1
  %13 = load i32, i32* @LL_INFO, align 4
  %14 = call i32 @LOG(i32 %13, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  br label %23

15:                                               ; preds = %1
  %16 = load i32, i32* @LL_INFO, align 4
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = sext i32 %19 to i64
  %21 = inttoptr i64 %20 to i8*
  %22 = call i32 @LOG(i32 %16, i8* %21)
  br label %23

23:                                               ; preds = %15, %12, %9, %6
  ret void
}

declare dso_local i32 @LOG(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
