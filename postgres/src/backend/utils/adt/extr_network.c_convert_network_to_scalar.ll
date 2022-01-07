; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_network.c_convert_network_to_scalar.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_network.c_convert_network_to_scalar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32, i32, i32, i32 }
%struct.TYPE_5__ = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@PGSQL_AF_INET = common dso_local global double 0.000000e+00, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local double @convert_network_to_scalar(i32 %0, i32 %1, i32* %2) #0 {
  %4 = alloca double, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca double, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_6__*, align 8
  %13 = alloca double, align 8
  %14 = alloca %struct.TYPE_5__*, align 8
  %15 = alloca double, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %16 = load i32, i32* %6, align 4
  switch i32 %16, label %131 [
    i32 130, label %17
    i32 131, label %17
    i32 128, label %49
    i32 129, label %85
  ]

17:                                               ; preds = %3, %3
  %18 = load i32, i32* %5, align 4
  %19 = call i32* @DatumGetInetPP(i32 %18)
  store i32* %19, i32** %8, align 8
  %20 = load i32*, i32** %8, align 8
  %21 = call double @ip_family(i32* %20)
  %22 = load double, double* @PGSQL_AF_INET, align 8
  %23 = fcmp oeq double %21, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %17
  store i32 4, i32* %9, align 4
  br label %26

25:                                               ; preds = %17
  store i32 5, i32* %9, align 4
  br label %26

26:                                               ; preds = %25, %24
  %27 = load i32*, i32** %8, align 8
  %28 = call double @ip_family(i32* %27)
  store double %28, double* %10, align 8
  store i32 0, i32* %11, align 4
  br label %29

29:                                               ; preds = %44, %26
  %30 = load i32, i32* %11, align 4
  %31 = load i32, i32* %9, align 4
  %32 = icmp slt i32 %30, %31
  br i1 %32, label %33, label %47

33:                                               ; preds = %29
  %34 = load double, double* %10, align 8
  %35 = fmul double %34, 2.560000e+02
  store double %35, double* %10, align 8
  %36 = load i32*, i32** %8, align 8
  %37 = call double* @ip_addr(i32* %36)
  %38 = load i32, i32* %11, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds double, double* %37, i64 %39
  %41 = load double, double* %40, align 8
  %42 = load double, double* %10, align 8
  %43 = fadd double %42, %41
  store double %43, double* %10, align 8
  br label %44

44:                                               ; preds = %33
  %45 = load i32, i32* %11, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %11, align 4
  br label %29

47:                                               ; preds = %29
  %48 = load double, double* %10, align 8
  store double %48, double* %4, align 8
  br label %133

49:                                               ; preds = %3
  %50 = load i32, i32* %5, align 4
  %51 = call %struct.TYPE_6__* @DatumGetMacaddrP(i32 %50)
  store %struct.TYPE_6__* %51, %struct.TYPE_6__** %12, align 8
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = shl i32 %54, 16
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = shl i32 %58, 8
  %60 = or i32 %55, %59
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 4
  %64 = or i32 %60, %63
  %65 = sitofp i32 %64 to double
  store double %65, double* %13, align 8
  %66 = load double, double* %13, align 8
  %67 = fmul double %66, 0x4170000000000000
  store double %67, double* %13, align 8
  %68 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 3
  %70 = load i32, i32* %69, align 4
  %71 = shl i32 %70, 16
  %72 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 4
  %74 = load i32, i32* %73, align 4
  %75 = shl i32 %74, 8
  %76 = or i32 %71, %75
  %77 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 5
  %79 = load i32, i32* %78, align 4
  %80 = or i32 %76, %79
  %81 = sitofp i32 %80 to double
  %82 = load double, double* %13, align 8
  %83 = fadd double %82, %81
  store double %83, double* %13, align 8
  %84 = load double, double* %13, align 8
  store double %84, double* %4, align 8
  br label %133

85:                                               ; preds = %3
  %86 = load i32, i32* %5, align 4
  %87 = call %struct.TYPE_5__* @DatumGetMacaddr8P(i32 %86)
  store %struct.TYPE_5__* %87, %struct.TYPE_5__** %14, align 8
  %88 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %89 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = shl i32 %90, 24
  %92 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %93 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = shl i32 %94, 16
  %96 = or i32 %91, %95
  %97 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %98 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 4
  %100 = shl i32 %99, 8
  %101 = or i32 %96, %100
  %102 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %103 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %102, i32 0, i32 3
  %104 = load i32, i32* %103, align 4
  %105 = or i32 %101, %104
  %106 = sitofp i32 %105 to double
  store double %106, double* %15, align 8
  %107 = load double, double* %15, align 8
  %108 = fmul double %107, 0x41F0000000000000
  store double %108, double* %15, align 8
  %109 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %110 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %109, i32 0, i32 4
  %111 = load i32, i32* %110, align 4
  %112 = shl i32 %111, 24
  %113 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %114 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %113, i32 0, i32 5
  %115 = load i32, i32* %114, align 4
  %116 = shl i32 %115, 16
  %117 = or i32 %112, %116
  %118 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %119 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %118, i32 0, i32 6
  %120 = load i32, i32* %119, align 4
  %121 = shl i32 %120, 8
  %122 = or i32 %117, %121
  %123 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %124 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %123, i32 0, i32 7
  %125 = load i32, i32* %124, align 4
  %126 = or i32 %122, %125
  %127 = sitofp i32 %126 to double
  %128 = load double, double* %15, align 8
  %129 = fadd double %128, %127
  store double %129, double* %15, align 8
  %130 = load double, double* %15, align 8
  store double %130, double* %4, align 8
  br label %133

131:                                              ; preds = %3
  %132 = load i32*, i32** %7, align 8
  store i32 1, i32* %132, align 4
  store double 0.000000e+00, double* %4, align 8
  br label %133

133:                                              ; preds = %131, %85, %49, %47
  %134 = load double, double* %4, align 8
  ret double %134
}

declare dso_local i32* @DatumGetInetPP(i32) #1

declare dso_local double @ip_family(i32*) #1

declare dso_local double* @ip_addr(i32*) #1

declare dso_local %struct.TYPE_6__* @DatumGetMacaddrP(i32) #1

declare dso_local %struct.TYPE_5__* @DatumGetMacaddr8P(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
