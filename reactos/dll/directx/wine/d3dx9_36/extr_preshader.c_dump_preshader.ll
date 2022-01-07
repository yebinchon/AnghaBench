; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/d3dx9_36/extr_preshader.c_dump_preshader.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/d3dx9_36/extr_preshader.c_dump_preshader.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.d3dx_preshader = type { i32, i32*, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32*, double** }

@PRES_REGTAB_IMMED = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [16 x i8] c"// Immediates:\0A\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"// \00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"%.8e\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.5 = private unnamed_addr constant [25 x i8] c"// Preshader registers:\0A\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"preshader\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.d3dx_preshader*)* @dump_preshader to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dump_preshader(%struct.d3dx_preshader* %0) #0 {
  %2 = alloca %struct.d3dx_preshader*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca double*, align 8
  store %struct.d3dx_preshader* %0, %struct.d3dx_preshader** %2, align 8
  %6 = load %struct.d3dx_preshader*, %struct.d3dx_preshader** %2, align 8
  %7 = getelementptr inbounds %struct.d3dx_preshader, %struct.d3dx_preshader* %6, i32 0, i32 2
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i32*, i32** %8, align 8
  %10 = load i64, i64* @PRES_REGTAB_IMMED, align 8
  %11 = getelementptr inbounds i32, i32* %9, i64 %10
  %12 = load i32, i32* %11, align 4
  %13 = mul nsw i32 %12, 4
  store i32 %13, i32* %4, align 4
  %14 = load %struct.d3dx_preshader*, %struct.d3dx_preshader** %2, align 8
  %15 = getelementptr inbounds %struct.d3dx_preshader, %struct.d3dx_preshader* %14, i32 0, i32 2
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 1
  %17 = load double**, double*** %16, align 8
  %18 = load i64, i64* @PRES_REGTAB_IMMED, align 8
  %19 = getelementptr inbounds double*, double** %17, i64 %18
  %20 = load double*, double** %19, align 8
  store double* %20, double** %5, align 8
  %21 = load i32, i32* %4, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %1
  %24 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  br label %25

25:                                               ; preds = %23, %1
  store i32 0, i32* %3, align 4
  br label %26

26:                                               ; preds = %51, %25
  %27 = load i32, i32* %3, align 4
  %28 = load i32, i32* %4, align 4
  %29 = icmp ult i32 %27, %28
  br i1 %29, label %30, label %54

30:                                               ; preds = %26
  %31 = load i32, i32* %3, align 4
  %32 = urem i32 %31, 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %36, label %34

34:                                               ; preds = %30
  %35 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  br label %36

36:                                               ; preds = %34, %30
  %37 = load double*, double** %5, align 8
  %38 = load i32, i32* %3, align 4
  %39 = zext i32 %38 to i64
  %40 = getelementptr inbounds double, double* %37, i64 %39
  %41 = load double, double* %40, align 8
  %42 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), double %41)
  %43 = load i32, i32* %3, align 4
  %44 = urem i32 %43, 4
  %45 = icmp eq i32 %44, 3
  br i1 %45, label %46, label %48

46:                                               ; preds = %36
  %47 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  br label %50

48:                                               ; preds = %36
  %49 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  br label %50

50:                                               ; preds = %48, %46
  br label %51

51:                                               ; preds = %50
  %52 = load i32, i32* %3, align 4
  %53 = add i32 %52, 1
  store i32 %53, i32* %3, align 4
  br label %26

54:                                               ; preds = %26
  %55 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0))
  %56 = load %struct.d3dx_preshader*, %struct.d3dx_preshader** %2, align 8
  %57 = getelementptr inbounds %struct.d3dx_preshader, %struct.d3dx_preshader* %56, i32 0, i32 3
  %58 = call i32 @dump_registers(i32* %57)
  %59 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %60

60:                                               ; preds = %76, %54
  %61 = load i32, i32* %3, align 4
  %62 = load %struct.d3dx_preshader*, %struct.d3dx_preshader** %2, align 8
  %63 = getelementptr inbounds %struct.d3dx_preshader, %struct.d3dx_preshader* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = icmp ult i32 %61, %64
  br i1 %65, label %66, label %79

66:                                               ; preds = %60
  %67 = load %struct.d3dx_preshader*, %struct.d3dx_preshader** %2, align 8
  %68 = getelementptr inbounds %struct.d3dx_preshader, %struct.d3dx_preshader* %67, i32 0, i32 2
  %69 = load %struct.d3dx_preshader*, %struct.d3dx_preshader** %2, align 8
  %70 = getelementptr inbounds %struct.d3dx_preshader, %struct.d3dx_preshader* %69, i32 0, i32 1
  %71 = load i32*, i32** %70, align 8
  %72 = load i32, i32* %3, align 4
  %73 = zext i32 %72 to i64
  %74 = getelementptr inbounds i32, i32* %71, i64 %73
  %75 = call i32 @dump_ins(%struct.TYPE_2__* %68, i32* %74)
  br label %76

76:                                               ; preds = %66
  %77 = load i32, i32* %3, align 4
  %78 = add i32 %77, 1
  store i32 %78, i32* %3, align 4
  br label %60

79:                                               ; preds = %60
  ret void
}

declare dso_local i32 @TRACE(i8*, ...) #1

declare dso_local i32 @dump_registers(i32*) #1

declare dso_local i32 @dump_ins(%struct.TYPE_2__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
