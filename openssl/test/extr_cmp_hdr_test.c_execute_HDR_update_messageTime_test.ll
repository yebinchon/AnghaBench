; ModuleID = '/home/carl/AnghaBench/openssl/test/extr_cmp_hdr_test.c_execute_HDR_update_messageTime_test.c'
source_filename = "/home/carl/AnghaBench/openssl/test/extr_cmp_hdr_test.c_execute_HDR_update_messageTime_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.tm = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*)* @execute_HDR_update_messageTime_test to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @execute_HDR_update_messageTime_test(%struct.TYPE_4__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca %struct.tm, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %3, align 8
  %9 = call i64 @time(i32* null)
  store i64 %9, i64* %8, align 8
  %10 = call %struct.tm* @gmtime(i64* %8)
  %11 = call i64 @mktime(%struct.tm* %10)
  store i64 %11, i64* %6, align 8
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %15 = call i32 @ossl_cmp_hdr_update_messageTime(%struct.TYPE_5__* %14)
  %16 = call i32 @TEST_true(i32 %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %47

19:                                               ; preds = %1
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @ASN1_TIME_to_tm(i32 %24, %struct.tm* %4)
  %26 = call i32 @TEST_true(i32 %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %19
  store i32 0, i32* %2, align 4
  br label %47

29:                                               ; preds = %19
  %30 = call i64 @mktime(%struct.tm* %4)
  store i64 %30, i64* %5, align 8
  %31 = load i64, i64* %6, align 8
  %32 = load i64, i64* %5, align 8
  %33 = icmp sle i64 %31, %32
  %34 = zext i1 %33 to i32
  %35 = call i32 @TEST_true(i32 %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %38, label %37

37:                                               ; preds = %29
  store i32 0, i32* %2, align 4
  br label %47

38:                                               ; preds = %29
  %39 = call i64 @time(i32* null)
  store i64 %39, i64* %8, align 8
  %40 = call %struct.tm* @gmtime(i64* %8)
  %41 = call i64 @mktime(%struct.tm* %40)
  store i64 %41, i64* %7, align 8
  %42 = load i64, i64* %5, align 8
  %43 = load i64, i64* %7, align 8
  %44 = icmp sle i64 %42, %43
  %45 = zext i1 %44 to i32
  %46 = call i32 @TEST_true(i32 %45)
  store i32 %46, i32* %2, align 4
  br label %47

47:                                               ; preds = %38, %37, %28, %18
  %48 = load i32, i32* %2, align 4
  ret i32 %48
}

declare dso_local i64 @time(i32*) #1

declare dso_local i64 @mktime(%struct.tm*) #1

declare dso_local %struct.tm* @gmtime(i64*) #1

declare dso_local i32 @TEST_true(i32) #1

declare dso_local i32 @ossl_cmp_hdr_update_messageTime(%struct.TYPE_5__*) #1

declare dso_local i32 @ASN1_TIME_to_tm(i32, %struct.tm*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
