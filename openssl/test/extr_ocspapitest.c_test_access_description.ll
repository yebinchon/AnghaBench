; ModuleID = '/home/carl/AnghaBench/openssl/test/extr_ocspapitest.c_test_access_description.c'
source_filename = "/home/carl/AnghaBench/openssl/test/extr_ocspapitest.c_test_access_description.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_7__* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @test_access_description to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_access_description(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %5 = call %struct.TYPE_7__* (...) @ACCESS_DESCRIPTION_new()
  store %struct.TYPE_7__* %5, %struct.TYPE_7__** %3, align 8
  store i32 0, i32* %4, align 4
  %6 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %7 = call i32 @TEST_ptr(%struct.TYPE_7__* %6)
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  br label %45

10:                                               ; preds = %1
  %11 = load i32, i32* %2, align 4
  switch i32 %11, label %42 [
    i32 0, label %12
    i32 1, label %13
    i32 2, label %27
  ]

12:                                               ; preds = %10
  br label %42

13:                                               ; preds = %10
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %17 = call i32 @TEST_ptr(%struct.TYPE_7__* %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %13
  br label %45

20:                                               ; preds = %13
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %22, align 8
  %24 = call i32 @GENERAL_NAME_free(%struct.TYPE_7__* %23)
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 0
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %26, align 8
  br label %42

27:                                               ; preds = %10
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 0
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %29, align 8
  %31 = call i32 @GENERAL_NAME_free(%struct.TYPE_7__* %30)
  %32 = call %struct.TYPE_7__* (...) @GENERAL_NAME_new()
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 0
  store %struct.TYPE_7__* %32, %struct.TYPE_7__** %34, align 8
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 0
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %36, align 8
  %38 = call i32 @TEST_ptr(%struct.TYPE_7__* %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %41, label %40

40:                                               ; preds = %27
  br label %45

41:                                               ; preds = %27
  br label %42

42:                                               ; preds = %10, %41, %20, %12
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %44 = call i32 @ACCESS_DESCRIPTION_free(%struct.TYPE_7__* %43)
  store i32 1, i32* %4, align 4
  br label %45

45:                                               ; preds = %42, %40, %19, %9
  %46 = load i32, i32* %4, align 4
  ret i32 %46
}

declare dso_local %struct.TYPE_7__* @ACCESS_DESCRIPTION_new(...) #1

declare dso_local i32 @TEST_ptr(%struct.TYPE_7__*) #1

declare dso_local i32 @GENERAL_NAME_free(%struct.TYPE_7__*) #1

declare dso_local %struct.TYPE_7__* @GENERAL_NAME_new(...) #1

declare dso_local i32 @ACCESS_DESCRIPTION_free(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
