; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/mstsc/extr_secure.c_sec_process_mcs_data.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/mstsc/extr_secure.c_sec_process_mcs_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32*, i32* }

@.str = private unnamed_addr constant [19 x i8] c"response tag 0x%x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sec_process_mcs_data(%struct.TYPE_8__* %0) #0 {
  %2 = alloca %struct.TYPE_8__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %2, align 8
  %7 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %8 = call i32 @in_uint8s(%struct.TYPE_8__* %7, i32 21)
  %9 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %10 = load i32, i32* %6, align 4
  %11 = call i32 @in_uint8(%struct.TYPE_8__* %9, i32 %10)
  %12 = load i32, i32* %6, align 4
  %13 = and i32 %12, 128
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %1
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %17 = load i32, i32* %6, align 4
  %18 = call i32 @in_uint8(%struct.TYPE_8__* %16, i32 %17)
  br label %19

19:                                               ; preds = %15, %1
  br label %20

20:                                               ; preds = %57, %19
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 1
  %26 = load i32*, i32** %25, align 8
  %27 = icmp ult i32* %23, %26
  br i1 %27, label %28, label %61

28:                                               ; preds = %20
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %30 = load i32, i32* %3, align 4
  %31 = call i32 @in_uint16_le(%struct.TYPE_8__* %29, i32 %30)
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %33 = load i32, i32* %4, align 4
  %34 = call i32 @in_uint16_le(%struct.TYPE_8__* %32, i32 %33)
  %35 = load i32, i32* %4, align 4
  %36 = icmp sle i32 %35, 4
  br i1 %36, label %37, label %38

37:                                               ; preds = %28
  br label %61

38:                                               ; preds = %28
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  %42 = load i32, i32* %4, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %41, i64 %43
  %45 = getelementptr inbounds i32, i32* %44, i64 -4
  store i32* %45, i32** %5, align 8
  %46 = load i32, i32* %3, align 4
  switch i32 %46, label %54 [
    i32 128, label %47
    i32 129, label %50
    i32 130, label %53
  ]

47:                                               ; preds = %38
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %49 = call i32 @sec_process_srv_info(%struct.TYPE_8__* %48)
  br label %57

50:                                               ; preds = %38
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %52 = call i32 @sec_process_crypt_info(%struct.TYPE_8__* %51)
  br label %57

53:                                               ; preds = %38
  br label %57

54:                                               ; preds = %38
  %55 = load i32, i32* %3, align 4
  %56 = call i32 @unimpl(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %55)
  br label %57

57:                                               ; preds = %54, %53, %50, %47
  %58 = load i32*, i32** %5, align 8
  %59 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 0
  store i32* %58, i32** %60, align 8
  br label %20

61:                                               ; preds = %37, %20
  ret void
}

declare dso_local i32 @in_uint8s(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @in_uint8(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @in_uint16_le(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @sec_process_srv_info(%struct.TYPE_8__*) #1

declare dso_local i32 @sec_process_crypt_info(%struct.TYPE_8__*) #1

declare dso_local i32 @unimpl(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
