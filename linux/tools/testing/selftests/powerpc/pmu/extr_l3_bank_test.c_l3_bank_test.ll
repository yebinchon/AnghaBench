; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/powerpc/pmu/extr_l3_bank_test.c_l3_bank_test.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/powerpc/pmu/extr_l3_bank_test.c_l3_bank_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.event = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64 }

@MALLOC_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @l3_bank_test to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @l3_bank_test() #0 {
  %1 = alloca %struct.event, align 8
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = load i32, i32* @MALLOC_SIZE, align 4
  %5 = call i8* @malloc(i32 %4)
  store i8* %5, i8** %2, align 8
  %6 = load i8*, i8** %2, align 8
  %7 = icmp ne i8* %6, null
  %8 = xor i1 %7, true
  %9 = zext i1 %8 to i32
  %10 = call i32 @FAIL_IF(i32 %9)
  %11 = call i32 @event_init(%struct.event* %1, i32 8688015)
  %12 = call i32 @event_open(%struct.event* %1)
  %13 = call i32 @FAIL_IF(i32 %12)
  store i32 0, i32* %3, align 4
  br label %14

14:                                               ; preds = %25, %0
  %15 = load i32, i32* %3, align 4
  %16 = load i32, i32* @MALLOC_SIZE, align 4
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %18, label %28

18:                                               ; preds = %14
  %19 = load i32, i32* %3, align 4
  %20 = trunc i32 %19 to i8
  %21 = load i8*, i8** %2, align 8
  %22 = load i32, i32* %3, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i8, i8* %21, i64 %23
  store i8 %20, i8* %24, align 1
  br label %25

25:                                               ; preds = %18
  %26 = load i32, i32* %3, align 4
  %27 = add nsw i32 %26, 65536
  store i32 %27, i32* %3, align 4
  br label %14

28:                                               ; preds = %14
  %29 = call i32 @event_read(%struct.event* %1)
  %30 = call i32 @event_report(%struct.event* %1)
  %31 = getelementptr inbounds %struct.event, %struct.event* %1, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp eq i64 %33, 0
  %35 = zext i1 %34 to i32
  %36 = call i32 @FAIL_IF(i32 %35)
  %37 = getelementptr inbounds %struct.event, %struct.event* %1, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = icmp eq i64 %39, 0
  %41 = zext i1 %40 to i32
  %42 = call i32 @FAIL_IF(i32 %41)
  %43 = call i32 @event_close(%struct.event* %1)
  %44 = load i8*, i8** %2, align 8
  %45 = call i32 @free(i8* %44)
  ret i32 0
}

declare dso_local i8* @malloc(i32) #1

declare dso_local i32 @FAIL_IF(i32) #1

declare dso_local i32 @event_init(%struct.event*, i32) #1

declare dso_local i32 @event_open(%struct.event*) #1

declare dso_local i32 @event_read(%struct.event*) #1

declare dso_local i32 @event_report(%struct.event*) #1

declare dso_local i32 @event_close(%struct.event*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
