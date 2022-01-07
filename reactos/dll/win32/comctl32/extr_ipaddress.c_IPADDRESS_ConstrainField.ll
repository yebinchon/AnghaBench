; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/comctl32/extr_ipaddress.c_IPADDRESS_ConstrainField.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/comctl32/extr_ipaddress.c_IPADDRESS_ConstrainField.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, i32, i32 }

@IPADDRESS_ConstrainField.fmt = internal constant [3 x i8] c"%d\00", align 1
@.str = private unnamed_addr constant [19 x i8] c"(currentfield=%d)\0A\00", align 1
@FALSE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"  curValue=%d\0A\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"  newValue=%d\0A\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"  field=%s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, i32)* @IPADDRESS_ConstrainField to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @IPADDRESS_ConstrainField(%struct.TYPE_6__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca [10 x i8], align 1
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load i32, i32* %5, align 4
  %11 = call i32 @TRACE(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %10)
  %12 = load i32, i32* %5, align 4
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %2
  %15 = load i32, i32* %5, align 4
  %16 = icmp sgt i32 %15, 3
  br i1 %16, label %17, label %19

17:                                               ; preds = %14, %2
  %18 = load i32, i32* @FALSE, align 4
  store i32 %18, i32* %3, align 4
  br label %82

19:                                               ; preds = %14
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %21, align 8
  %23 = load i32, i32* %5, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i64 %24
  store %struct.TYPE_5__* %25, %struct.TYPE_5__** %6, align 8
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = getelementptr inbounds [10 x i8], [10 x i8]* %9, i64 0, i64 0
  %30 = call i32 @GetWindowTextW(i32 %28, i8* %29, i32 4)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %34, label %32

32:                                               ; preds = %19
  %33 = load i32, i32* @FALSE, align 4
  store i32 %33, i32* %3, align 4
  br label %82

34:                                               ; preds = %19
  %35 = getelementptr inbounds [10 x i8], [10 x i8]* %9, i64 0, i64 0
  %36 = call i32 @atoiW(i8* %35)
  store i32 %36, i32* %7, align 4
  %37 = load i32, i32* %7, align 4
  %38 = call i32 @TRACE(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32 %37)
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %40 = load i32, i32* %5, align 4
  %41 = load i32, i32* %7, align 4
  %42 = call i32 @IPADDRESS_IPNotify(%struct.TYPE_6__* %39, i32 %40, i32 %41)
  store i32 %42, i32* %8, align 4
  %43 = load i32, i32* %8, align 4
  %44 = call i32 @TRACE(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i32 %43)
  %45 = load i32, i32* %8, align 4
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = icmp slt i32 %45, %48
  br i1 %49, label %50, label %54

50:                                               ; preds = %34
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  store i32 %53, i32* %8, align 4
  br label %54

54:                                               ; preds = %50, %34
  %55 = load i32, i32* %8, align 4
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = icmp sgt i32 %55, %58
  br i1 %59, label %60, label %64

60:                                               ; preds = %54
  %61 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  store i32 %63, i32* %8, align 4
  br label %64

64:                                               ; preds = %60, %54
  %65 = load i32, i32* %8, align 4
  %66 = load i32, i32* %7, align 4
  %67 = icmp eq i32 %65, %66
  br i1 %67, label %68, label %70

68:                                               ; preds = %64
  %69 = load i32, i32* @FALSE, align 4
  store i32 %69, i32* %3, align 4
  br label %82

70:                                               ; preds = %64
  %71 = getelementptr inbounds [10 x i8], [10 x i8]* %9, i64 0, i64 0
  %72 = load i32, i32* %8, align 4
  %73 = call i32 @wsprintfW(i8* %71, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @IPADDRESS_ConstrainField.fmt, i64 0, i64 0), i32 %72)
  %74 = getelementptr inbounds [10 x i8], [10 x i8]* %9, i64 0, i64 0
  %75 = call i32 @debugstr_w(i8* %74)
  %76 = call i32 @TRACE(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i32 %75)
  %77 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 4
  %80 = getelementptr inbounds [10 x i8], [10 x i8]* %9, i64 0, i64 0
  %81 = call i32 @SetWindowTextW(i32 %79, i8* %80)
  store i32 %81, i32* %3, align 4
  br label %82

82:                                               ; preds = %70, %68, %32, %17
  %83 = load i32, i32* %3, align 4
  ret i32 %83
}

declare dso_local i32 @TRACE(i8*, i32) #1

declare dso_local i32 @GetWindowTextW(i32, i8*, i32) #1

declare dso_local i32 @atoiW(i8*) #1

declare dso_local i32 @IPADDRESS_IPNotify(%struct.TYPE_6__*, i32, i32) #1

declare dso_local i32 @wsprintfW(i8*, i8*, i32) #1

declare dso_local i32 @debugstr_w(i8*) #1

declare dso_local i32 @SetWindowTextW(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
