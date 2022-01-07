; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/network/ipconfig/extr_ipconfig.c_GetInterfaceTypeName.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/network/ipconfig/extr_ipconfig.c_GetInterfaceTypeName.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GetInterfaceTypeName.szIntType = internal global [25 x i32] zeroinitializer, align 16
@hInstance = common dso_local global i32 0, align 4
@IDS_OTHER = common dso_local global i32 0, align 4
@IDS_ETH = common dso_local global i32 0, align 4
@IDS_TOKEN = common dso_local global i32 0, align 4
@IDS_FDDI = common dso_local global i32 0, align 4
@IDS_PPP = common dso_local global i32 0, align 4
@IDS_LOOP = common dso_local global i32 0, align 4
@IDS_SLIP = common dso_local global i32 0, align 4
@IDS_UNKNOWN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @GetInterfaceTypeName(i32 %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  switch i32 %4, label %54 [
    i32 131, label %5
    i32 134, label %12
    i32 128, label %19
    i32 133, label %26
    i32 130, label %33
    i32 132, label %40
    i32 129, label %47
  ]

5:                                                ; preds = %1
  %6 = load i32, i32* @hInstance, align 4
  %7 = load i32, i32* @IDS_OTHER, align 4
  %8 = call i32 @LoadStringAndOem(i32 %6, i32 %7, i32* getelementptr inbounds ([25 x i32], [25 x i32]* @GetInterfaceTypeName.szIntType, i64 0, i64 0), i32 100)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %5
  store i32* null, i32** %2, align 8
  br label %62

11:                                               ; preds = %5
  br label %61

12:                                               ; preds = %1
  %13 = load i32, i32* @hInstance, align 4
  %14 = load i32, i32* @IDS_ETH, align 4
  %15 = call i32 @LoadStringAndOem(i32 %13, i32 %14, i32* getelementptr inbounds ([25 x i32], [25 x i32]* @GetInterfaceTypeName.szIntType, i64 0, i64 0), i32 100)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %12
  store i32* null, i32** %2, align 8
  br label %62

18:                                               ; preds = %12
  br label %61

19:                                               ; preds = %1
  %20 = load i32, i32* @hInstance, align 4
  %21 = load i32, i32* @IDS_TOKEN, align 4
  %22 = call i32 @LoadStringAndOem(i32 %20, i32 %21, i32* getelementptr inbounds ([25 x i32], [25 x i32]* @GetInterfaceTypeName.szIntType, i64 0, i64 0), i32 100)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %19
  store i32* null, i32** %2, align 8
  br label %62

25:                                               ; preds = %19
  br label %61

26:                                               ; preds = %1
  %27 = load i32, i32* @hInstance, align 4
  %28 = load i32, i32* @IDS_FDDI, align 4
  %29 = call i32 @LoadStringAndOem(i32 %27, i32 %28, i32* getelementptr inbounds ([25 x i32], [25 x i32]* @GetInterfaceTypeName.szIntType, i64 0, i64 0), i32 100)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %26
  store i32* null, i32** %2, align 8
  br label %62

32:                                               ; preds = %26
  br label %61

33:                                               ; preds = %1
  %34 = load i32, i32* @hInstance, align 4
  %35 = load i32, i32* @IDS_PPP, align 4
  %36 = call i32 @LoadStringAndOem(i32 %34, i32 %35, i32* getelementptr inbounds ([25 x i32], [25 x i32]* @GetInterfaceTypeName.szIntType, i64 0, i64 0), i32 100)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %39, label %38

38:                                               ; preds = %33
  store i32* null, i32** %2, align 8
  br label %62

39:                                               ; preds = %33
  br label %61

40:                                               ; preds = %1
  %41 = load i32, i32* @hInstance, align 4
  %42 = load i32, i32* @IDS_LOOP, align 4
  %43 = call i32 @LoadStringAndOem(i32 %41, i32 %42, i32* getelementptr inbounds ([25 x i32], [25 x i32]* @GetInterfaceTypeName.szIntType, i64 0, i64 0), i32 100)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %46, label %45

45:                                               ; preds = %40
  store i32* null, i32** %2, align 8
  br label %62

46:                                               ; preds = %40
  br label %61

47:                                               ; preds = %1
  %48 = load i32, i32* @hInstance, align 4
  %49 = load i32, i32* @IDS_SLIP, align 4
  %50 = call i32 @LoadStringAndOem(i32 %48, i32 %49, i32* getelementptr inbounds ([25 x i32], [25 x i32]* @GetInterfaceTypeName.szIntType, i64 0, i64 0), i32 100)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %53, label %52

52:                                               ; preds = %47
  store i32* null, i32** %2, align 8
  br label %62

53:                                               ; preds = %47
  br label %61

54:                                               ; preds = %1
  %55 = load i32, i32* @hInstance, align 4
  %56 = load i32, i32* @IDS_UNKNOWN, align 4
  %57 = call i32 @LoadStringAndOem(i32 %55, i32 %56, i32* getelementptr inbounds ([25 x i32], [25 x i32]* @GetInterfaceTypeName.szIntType, i64 0, i64 0), i32 100)
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %60, label %59

59:                                               ; preds = %54
  store i32* null, i32** %2, align 8
  br label %62

60:                                               ; preds = %54
  br label %61

61:                                               ; preds = %60, %53, %46, %39, %32, %25, %18, %11
  store i32* getelementptr inbounds ([25 x i32], [25 x i32]* @GetInterfaceTypeName.szIntType, i64 0, i64 0), i32** %2, align 8
  br label %62

62:                                               ; preds = %61, %59, %52, %45, %38, %31, %24, %17, %10
  %63 = load i32*, i32** %2, align 8
  ret i32* %63
}

declare dso_local i32 @LoadStringAndOem(i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
