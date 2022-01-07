; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/cryptui/extr_main.c_set_policy_text.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/cryptui/extr_main.c_set_policy_text.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i32, i32* }
%struct.TYPE_6__ = type { i32, i32, i32 }

@FALSE = common dso_local global i64 0, align 8
@szOID_ANY_CERT_POLICY = common dso_local global i32 0, align 4
@TRUE = common dso_local global i64 0, align 8
@szOID_ANY_APPLICATION_POLICY = common dso_local global i32 0, align 4
@PFM_STARTINDENT = common dso_local global i32 0, align 4
@MY_INDENT = common dso_local global i32 0, align 4
@IDS_CERT_INFO_BAD_PURPOSES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.TYPE_5__*)* @set_policy_text to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_policy_text(i32 %0, %struct.TYPE_5__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_6__, align 4
  store i32 %0, i32* %3, align 4
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %4, align 8
  %11 = load i64, i64* @FALSE, align 8
  store i64 %11, i64* %5, align 8
  %12 = load i64, i64* @FALSE, align 8
  store i64 %12, i64* %6, align 8
  %13 = load i64, i64* @FALSE, align 8
  store i64 %13, i64* %7, align 8
  %14 = load i64, i64* @FALSE, align 8
  store i64 %14, i64* %8, align 8
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %58

19:                                               ; preds = %2
  store i64 0, i64* %9, align 8
  br label %20

20:                                               ; preds = %54, %19
  %21 = load i64, i64* %9, align 8
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp ult i64 %21, %24
  br i1 %25, label %26, label %57

26:                                               ; preds = %20
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 2
  %29 = load i32*, i32** %28, align 8
  %30 = load i64, i64* %9, align 8
  %31 = getelementptr inbounds i32, i32* %29, i64 %30
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @szOID_ANY_CERT_POLICY, align 4
  %34 = call i32 @strcmp(i32 %32, i32 %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %38, label %36

36:                                               ; preds = %26
  %37 = load i64, i64* @TRUE, align 8
  store i64 %37, i64* %5, align 8
  br label %53

38:                                               ; preds = %26
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 2
  %41 = load i32*, i32** %40, align 8
  %42 = load i64, i64* %9, align 8
  %43 = getelementptr inbounds i32, i32* %41, i64 %42
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @szOID_ANY_APPLICATION_POLICY, align 4
  %46 = call i32 @strcmp(i32 %44, i32 %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %50, label %48

48:                                               ; preds = %38
  %49 = load i64, i64* @TRUE, align 8
  store i64 %49, i64* %6, align 8
  br label %52

50:                                               ; preds = %38
  %51 = load i64, i64* @TRUE, align 8
  store i64 %51, i64* %7, align 8
  br label %52

52:                                               ; preds = %50, %48
  br label %53

53:                                               ; preds = %52, %36
  br label %54

54:                                               ; preds = %53
  %55 = load i64, i64* %9, align 8
  %56 = add i64 %55, 1
  store i64 %56, i64* %9, align 8
  br label %20

57:                                               ; preds = %20
  br label %60

58:                                               ; preds = %2
  %59 = load i64, i64* @TRUE, align 8
  store i64 %59, i64* %5, align 8
  store i64 %59, i64* %6, align 8
  br label %60

60:                                               ; preds = %58, %57
  %61 = load i64, i64* %6, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %69

63:                                               ; preds = %60
  %64 = load i32, i32* %3, align 4
  %65 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 8
  %68 = call i32 @display_app_usages(i32 %64, i32 %67, i64* %8)
  br label %69

69:                                               ; preds = %63, %60
  %70 = load i64, i64* %5, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %78

72:                                               ; preds = %69
  %73 = load i32, i32* %3, align 4
  %74 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 8
  %77 = call i64 @display_cert_usages(i32 %73, i32 %76, i64* %8)
  store i64 %77, i64* %7, align 8
  br label %78

78:                                               ; preds = %72, %69
  %79 = load i64, i64* %7, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %90

81:                                               ; preds = %78
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  store i32 12, i32* %82, align 4
  %83 = load i32, i32* @PFM_STARTINDENT, align 4
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 2
  store i32 %83, i32* %84, align 4
  %85 = load i32, i32* @MY_INDENT, align 4
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 1
  store i32 %85, i32* %86, align 4
  %87 = load i32, i32* %3, align 4
  %88 = load i32, i32* @IDS_CERT_INFO_BAD_PURPOSES, align 4
  %89 = call i32 @add_string_resource_with_paraformat_to_control(i32 %87, i32 %88, %struct.TYPE_6__* %10)
  br label %90

90:                                               ; preds = %81, %78
  ret void
}

declare dso_local i32 @strcmp(i32, i32) #1

declare dso_local i32 @display_app_usages(i32, i32, i64*) #1

declare dso_local i64 @display_cert_usages(i32, i32, i64*) #1

declare dso_local i32 @add_string_resource_with_paraformat_to_control(i32, i32, %struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
