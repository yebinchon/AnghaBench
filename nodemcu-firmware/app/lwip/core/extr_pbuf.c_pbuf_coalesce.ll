; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/lwip/core/extr_pbuf.c_pbuf_coalesce.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/lwip/core/extr_pbuf.c_pbuf_coalesce.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pbuf = type { i32, i32* }

@PBUF_RAM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"pbuf_copy failed\00", align 1
@ERR_OK = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.pbuf* @pbuf_coalesce(%struct.pbuf* %0, i32 %1) #0 {
  %3 = alloca %struct.pbuf*, align 8
  %4 = alloca %struct.pbuf*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.pbuf*, align 8
  %7 = alloca i64, align 8
  store %struct.pbuf* %0, %struct.pbuf** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.pbuf*, %struct.pbuf** %4, align 8
  %9 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %8, i32 0, i32 1
  %10 = load i32*, i32** %9, align 8
  %11 = icmp eq i32* %10, null
  br i1 %11, label %12, label %14

12:                                               ; preds = %2
  %13 = load %struct.pbuf*, %struct.pbuf** %4, align 8
  store %struct.pbuf* %13, %struct.pbuf** %3, align 8
  br label %37

14:                                               ; preds = %2
  %15 = load i32, i32* %5, align 4
  %16 = load %struct.pbuf*, %struct.pbuf** %4, align 8
  %17 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @PBUF_RAM, align 4
  %20 = call %struct.pbuf* @pbuf_alloc(i32 %15, i32 %18, i32 %19)
  store %struct.pbuf* %20, %struct.pbuf** %6, align 8
  %21 = load %struct.pbuf*, %struct.pbuf** %6, align 8
  %22 = icmp eq %struct.pbuf* %21, null
  br i1 %22, label %23, label %25

23:                                               ; preds = %14
  %24 = load %struct.pbuf*, %struct.pbuf** %4, align 8
  store %struct.pbuf* %24, %struct.pbuf** %3, align 8
  br label %37

25:                                               ; preds = %14
  %26 = load %struct.pbuf*, %struct.pbuf** %6, align 8
  %27 = load %struct.pbuf*, %struct.pbuf** %4, align 8
  %28 = call i64 @pbuf_copy(%struct.pbuf* %26, %struct.pbuf* %27)
  store i64 %28, i64* %7, align 8
  %29 = load i64, i64* %7, align 8
  %30 = load i64, i64* @ERR_OK, align 8
  %31 = icmp eq i64 %29, %30
  %32 = zext i1 %31 to i32
  %33 = call i32 @LWIP_ASSERT(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %32)
  %34 = load %struct.pbuf*, %struct.pbuf** %4, align 8
  %35 = call i32 @pbuf_free(%struct.pbuf* %34)
  %36 = load %struct.pbuf*, %struct.pbuf** %6, align 8
  store %struct.pbuf* %36, %struct.pbuf** %3, align 8
  br label %37

37:                                               ; preds = %25, %23, %12
  %38 = load %struct.pbuf*, %struct.pbuf** %3, align 8
  ret %struct.pbuf* %38
}

declare dso_local %struct.pbuf* @pbuf_alloc(i32, i32, i32) #1

declare dso_local i64 @pbuf_copy(%struct.pbuf*, %struct.pbuf*) #1

declare dso_local i32 @LWIP_ASSERT(i8*, i32) #1

declare dso_local i32 @pbuf_free(%struct.pbuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
