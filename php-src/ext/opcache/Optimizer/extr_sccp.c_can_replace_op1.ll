; ModuleID = '/home/carl/AnghaBench/php-src/ext/opcache/Optimizer/extr_sccp.c_can_replace_op1.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/opcache/Optimizer/extr_sccp.c_can_replace_op1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_7__ = type { i32 }

@ZEND_ARRAY_ELEMENT_REF = common dso_local global i32 0, align 4
@ZEND_ACC_RETURN_REFERENCE = common dso_local global i32 0, align 4
@ZEND_ASSIGN_STATIC_PROP_REF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*, %struct.TYPE_9__*, %struct.TYPE_7__*)* @can_replace_op1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @can_replace_op1(%struct.TYPE_8__* %0, %struct.TYPE_9__* %1, %struct.TYPE_7__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca %struct.TYPE_7__*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %5, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %6, align 8
  store %struct.TYPE_7__* %2, %struct.TYPE_7__** %7, align 8
  %8 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %9 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  switch i32 %10, label %48 [
    i32 142, label %11
    i32 144, label %11
    i32 141, label %11
    i32 143, label %11
    i32 146, label %11
    i32 148, label %11
    i32 145, label %11
    i32 147, label %11
    i32 173, label %11
    i32 166, label %11
    i32 172, label %11
    i32 170, label %11
    i32 168, label %11
    i32 167, label %11
    i32 171, label %11
    i32 169, label %11
    i32 165, label %11
    i32 159, label %11
    i32 161, label %11
    i32 160, label %11
    i32 162, label %11
    i32 154, label %11
    i32 156, label %11
    i32 155, label %11
    i32 157, label %11
    i32 158, label %11
    i32 131, label %11
    i32 130, label %11
    i32 136, label %11
    i32 133, label %11
    i32 137, label %11
    i32 135, label %11
    i32 138, label %11
    i32 134, label %11
    i32 153, label %11
    i32 140, label %12
    i32 139, label %12
    i32 163, label %12
    i32 164, label %12
    i32 150, label %12
    i32 132, label %12
    i32 151, label %12
    i32 152, label %13
    i32 174, label %13
    i32 128, label %22
    i32 129, label %31
    i32 149, label %32
  ]

11:                                               ; preds = %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3
  store i32 0, i32* %4, align 4
  br label %57

12:                                               ; preds = %3, %3, %3, %3, %3, %3, %3
  store i32 0, i32* %4, align 4
  br label %57

13:                                               ; preds = %3, %3
  %14 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %15 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @ZEND_ARRAY_ELEMENT_REF, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  %20 = xor i1 %19, true
  %21 = zext i1 %20 to i32
  store i32 %21, i32* %4, align 4
  br label %57

22:                                               ; preds = %3
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @ZEND_ACC_RETURN_REFERENCE, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  %29 = xor i1 %28, true
  %30 = zext i1 %29 to i32
  store i32 %30, i32* %4, align 4
  br label %57

31:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %57

32:                                               ; preds = %3
  %33 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i64 -1
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = icmp ne i32 %36, 168
  br i1 %37, label %38, label %45

38:                                               ; preds = %32
  %39 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %39, i64 -1
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @ZEND_ASSIGN_STATIC_PROP_REF, align 4
  %44 = icmp ne i32 %42, %43
  br label %45

45:                                               ; preds = %38, %32
  %46 = phi i1 [ false, %32 ], [ %44, %38 ]
  %47 = zext i1 %46 to i32
  store i32 %47, i32* %4, align 4
  br label %57

48:                                               ; preds = %3
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = icmp ne i32 %51, -1
  br i1 %52, label %53, label %55

53:                                               ; preds = %48
  %54 = call i32 @ZEND_ASSERT(i32 0)
  store i32 0, i32* %4, align 4
  br label %57

55:                                               ; preds = %48
  br label %56

56:                                               ; preds = %55
  store i32 1, i32* %4, align 4
  br label %57

57:                                               ; preds = %56, %53, %45, %31, %22, %13, %12, %11
  %58 = load i32, i32* %4, align 4
  ret i32 %58
}

declare dso_local i32 @ZEND_ASSERT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
