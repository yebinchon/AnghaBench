; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/d3dx9_36/extr_preshader.c_dump_ins.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/d3dx9_36/extr_preshader.c_dump_ins.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i64, i32 }
%struct.d3dx_regstore = type { i32 }
%struct.d3dx_pres_ins = type { i64, i32, i64, i32*, i32 }

@.str = private unnamed_addr constant [4 x i8] c"%s \00", align 1
@pres_op_info = common dso_local global %struct.TYPE_2__* null, align 8
@.str.1 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.d3dx_regstore*, %struct.d3dx_pres_ins*)* @dump_ins to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dump_ins(%struct.d3dx_regstore* %0, %struct.d3dx_pres_ins* %1) #0 {
  %3 = alloca %struct.d3dx_regstore*, align 8
  %4 = alloca %struct.d3dx_pres_ins*, align 8
  %5 = alloca i32, align 4
  store %struct.d3dx_regstore* %0, %struct.d3dx_regstore** %3, align 8
  store %struct.d3dx_pres_ins* %1, %struct.d3dx_pres_ins** %4, align 8
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pres_op_info, align 8
  %7 = load %struct.d3dx_pres_ins*, %struct.d3dx_pres_ins** %4, align 8
  %8 = getelementptr inbounds %struct.d3dx_pres_ins, %struct.d3dx_pres_ins* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i64 %9
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 8
  %13 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %12)
  %14 = load %struct.d3dx_regstore*, %struct.d3dx_regstore** %3, align 8
  %15 = load %struct.d3dx_pres_ins*, %struct.d3dx_pres_ins** %4, align 8
  %16 = getelementptr inbounds %struct.d3dx_pres_ins, %struct.d3dx_pres_ins* %15, i32 0, i32 4
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pres_op_info, align 8
  %18 = load %struct.d3dx_pres_ins*, %struct.d3dx_pres_ins** %4, align 8
  %19 = getelementptr inbounds %struct.d3dx_pres_ins, %struct.d3dx_pres_ins* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i64 %20
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %2
  br label %30

26:                                               ; preds = %2
  %27 = load %struct.d3dx_pres_ins*, %struct.d3dx_pres_ins** %4, align 8
  %28 = getelementptr inbounds %struct.d3dx_pres_ins, %struct.d3dx_pres_ins* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  br label %30

30:                                               ; preds = %26, %25
  %31 = phi i32 [ 1, %25 ], [ %29, %26 ]
  %32 = call i32 @dump_arg(%struct.d3dx_regstore* %14, i32* %16, i32 %31)
  store i32 0, i32* %5, align 4
  br label %33

33:                                               ; preds = %67, %30
  %34 = load i32, i32* %5, align 4
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pres_op_info, align 8
  %36 = load %struct.d3dx_pres_ins*, %struct.d3dx_pres_ins** %4, align 8
  %37 = getelementptr inbounds %struct.d3dx_pres_ins, %struct.d3dx_pres_ins* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = icmp ult i32 %34, %41
  br i1 %42, label %43, label %70

43:                                               ; preds = %33
  %44 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %45 = load %struct.d3dx_regstore*, %struct.d3dx_regstore** %3, align 8
  %46 = load %struct.d3dx_pres_ins*, %struct.d3dx_pres_ins** %4, align 8
  %47 = getelementptr inbounds %struct.d3dx_pres_ins, %struct.d3dx_pres_ins* %46, i32 0, i32 3
  %48 = load i32*, i32** %47, align 8
  %49 = load i32, i32* %5, align 4
  %50 = zext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %48, i64 %50
  %52 = load %struct.d3dx_pres_ins*, %struct.d3dx_pres_ins** %4, align 8
  %53 = getelementptr inbounds %struct.d3dx_pres_ins, %struct.d3dx_pres_ins* %52, i32 0, i32 2
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %43
  %57 = load i32, i32* %5, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %60, label %59

59:                                               ; preds = %56
  br label %64

60:                                               ; preds = %56, %43
  %61 = load %struct.d3dx_pres_ins*, %struct.d3dx_pres_ins** %4, align 8
  %62 = getelementptr inbounds %struct.d3dx_pres_ins, %struct.d3dx_pres_ins* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 8
  br label %64

64:                                               ; preds = %60, %59
  %65 = phi i32 [ 1, %59 ], [ %63, %60 ]
  %66 = call i32 @dump_arg(%struct.d3dx_regstore* %45, i32* %51, i32 %65)
  br label %67

67:                                               ; preds = %64
  %68 = load i32, i32* %5, align 4
  %69 = add i32 %68, 1
  store i32 %69, i32* %5, align 4
  br label %33

70:                                               ; preds = %33
  %71 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  ret void
}

declare dso_local i32 @TRACE(i8*, ...) #1

declare dso_local i32 @dump_arg(%struct.d3dx_regstore*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
