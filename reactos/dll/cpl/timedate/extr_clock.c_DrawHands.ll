; ModuleID = '/home/carl/AnghaBench/reactos/dll/cpl/timedate/extr_clock.c_DrawHands.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/cpl/timedate/extr_clock.c_DrawHands.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i32, i32, i32 }
%struct.TYPE_19__ = type { %struct.TYPE_17__, %struct.TYPE_16__, %struct.TYPE_15__, %struct.TYPE_14__, %struct.TYPE_13__ }
%struct.TYPE_17__ = type { i32, i32 }
%struct.TYPE_16__ = type { i32, i32 }
%struct.TYPE_15__ = type { i32, i32 }
%struct.TYPE_14__ = type { i32, i32 }
%struct.TYPE_13__ = type { i32, i32 }

@BLACK_PEN = common dso_local global i32 0, align 4
@WHITE_BRUSH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.TYPE_18__*, i64, i32)* @DrawHands to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @DrawHands(i32 %0, %struct.TYPE_18__* %1, i64 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_18__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca [3 x [5 x %struct.TYPE_19__]], align 16
  %11 = alloca i32, align 4
  %12 = alloca [3 x i32], align 4
  %13 = alloca [3 x [5 x %struct.TYPE_19__]], align 16
  store i32 %0, i32* %6, align 4
  store %struct.TYPE_18__* %1, %struct.TYPE_18__** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  %14 = bitcast [3 x [5 x %struct.TYPE_19__]]* %10 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %14, i8 0, i64 600, i1 false)
  %15 = getelementptr inbounds [3 x [5 x %struct.TYPE_19__]], [3 x [5 x %struct.TYPE_19__]]* %10, i64 0, i64 0
  %16 = getelementptr inbounds [5 x %struct.TYPE_19__], [5 x %struct.TYPE_19__]* %15, i64 0, i64 0
  %17 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %17, i32 0, i32 1
  %19 = load i32, i32* %9, align 4
  %20 = sub nsw i32 0, %19
  %21 = sdiv i32 %20, 6
  store i32 %21, i32* %18, align 4
  %22 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %16, i64 1
  %23 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %23, i32 0, i32 0
  %25 = load i32, i32* %9, align 4
  %26 = sdiv i32 %25, 9
  store i32 %26, i32* %24, align 8
  %27 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %22, i64 1
  %28 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %28, i32 0, i32 1
  %30 = load i32, i32* %9, align 4
  %31 = sitofp i32 %30 to double
  %32 = fdiv double %31, 1.800000e+00
  %33 = fptosi double %32 to i32
  store i32 %33, i32* %29, align 4
  %34 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %27, i64 1
  %35 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %35, i32 0, i32 0
  %37 = load i32, i32* %9, align 4
  %38 = sub nsw i32 0, %37
  %39 = sdiv i32 %38, 9
  store i32 %39, i32* %36, align 8
  %40 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %34, i64 1
  %41 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %41, i32 0, i32 1
  %43 = load i32, i32* %9, align 4
  %44 = sub nsw i32 0, %43
  %45 = sdiv i32 %44, 6
  store i32 %45, i32* %42, align 4
  %46 = getelementptr inbounds [5 x %struct.TYPE_19__], [5 x %struct.TYPE_19__]* %15, i64 1
  %47 = getelementptr inbounds [5 x %struct.TYPE_19__], [5 x %struct.TYPE_19__]* %46, i64 0, i64 0
  %48 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %48, i32 0, i32 1
  %50 = load i32, i32* %9, align 4
  %51 = sub nsw i32 0, %50
  %52 = sitofp i32 %51 to double
  %53 = fdiv double %52, 4.500000e+00
  %54 = fptosi double %53 to i32
  store i32 %54, i32* %49, align 4
  %55 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %47, i64 1
  %56 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %56, i32 0, i32 0
  %58 = load i32, i32* %9, align 4
  %59 = sdiv i32 %58, 18
  store i32 %59, i32* %57, align 8
  %60 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %55, i64 1
  %61 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %61, i32 0, i32 1
  %63 = load i32, i32* %9, align 4
  %64 = sitofp i32 %63 to double
  %65 = fmul double %64, 8.900000e-01
  %66 = fptosi double %65 to i32
  store i32 %66, i32* %62, align 4
  %67 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %60, i64 1
  %68 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %68, i32 0, i32 0
  %70 = load i32, i32* %9, align 4
  %71 = sub nsw i32 0, %70
  %72 = sdiv i32 %71, 18
  store i32 %72, i32* %69, align 8
  %73 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %67, i64 1
  %74 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %74, i32 0, i32 1
  %76 = load i32, i32* %9, align 4
  %77 = sub nsw i32 0, %76
  %78 = sitofp i32 %77 to double
  %79 = fdiv double %78, 4.500000e+00
  %80 = fptosi double %79 to i32
  store i32 %80, i32* %75, align 4
  %81 = getelementptr inbounds [5 x %struct.TYPE_19__], [5 x %struct.TYPE_19__]* %46, i64 1
  %82 = getelementptr inbounds [5 x %struct.TYPE_19__], [5 x %struct.TYPE_19__]* %81, i64 0, i64 0
  %83 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %82, i64 1
  %84 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %83, i64 1
  %85 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %84, i64 1
  %86 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %85, i64 1
  %87 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %87, i32 0, i32 1
  %89 = load i32, i32* %9, align 4
  %90 = sitofp i32 %89 to double
  %91 = fmul double %90, 8.900000e-01
  %92 = fptosi double %91 to i32
  store i32 %92, i32* %88, align 4
  %93 = load i32, i32* %6, align 4
  %94 = load i32, i32* @BLACK_PEN, align 4
  %95 = call i32 @GetStockObject(i32 %94)
  %96 = call i32 @SelectObject(i32 %93, i32 %95)
  %97 = load i32, i32* %6, align 4
  %98 = load i32, i32* @WHITE_BRUSH, align 4
  %99 = call i32 @GetStockObject(i32 %98)
  %100 = call i32 @SelectObject(i32 %97, i32 %99)
  %101 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %102 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = mul nsw i32 %103, 30
  %105 = srem i32 %104, 360
  %106 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %107 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = sdiv i32 %108, 2
  %110 = add nsw i32 %105, %109
  %111 = getelementptr inbounds [3 x i32], [3 x i32]* %12, i64 0, i64 0
  store i32 %110, i32* %111, align 4
  %112 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %113 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = mul nsw i32 %114, 6
  %116 = getelementptr inbounds [3 x i32], [3 x i32]* %12, i64 0, i64 1
  store i32 %115, i32* %116, align 4
  %117 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %118 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %117, i32 0, i32 2
  %119 = load i32, i32* %118, align 4
  %120 = mul nsw i32 %119, 6
  %121 = getelementptr inbounds [3 x i32], [3 x i32]* %12, i64 0, i64 2
  store i32 %120, i32* %121, align 4
  %122 = getelementptr inbounds [3 x [5 x %struct.TYPE_19__]], [3 x [5 x %struct.TYPE_19__]]* %13, i64 0, i64 0
  %123 = bitcast [5 x %struct.TYPE_19__]* %122 to %struct.TYPE_19__**
  %124 = getelementptr inbounds [3 x [5 x %struct.TYPE_19__]], [3 x [5 x %struct.TYPE_19__]]* %10, i64 0, i64 0
  %125 = bitcast [5 x %struct.TYPE_19__]* %124 to %struct.TYPE_19__**
  %126 = call i32 @CopyMemory(%struct.TYPE_19__** %123, %struct.TYPE_19__** %125, i32 600)
  %127 = load i64, i64* %8, align 8
  %128 = icmp ne i64 %127, 0
  %129 = zext i1 %128 to i64
  %130 = select i1 %128, i32 0, i32 2
  store i32 %130, i32* %11, align 4
  br label %131

131:                                              ; preds = %150, %4
  %132 = load i32, i32* %11, align 4
  %133 = icmp slt i32 %132, 3
  br i1 %133, label %134, label %153

134:                                              ; preds = %131
  %135 = load i32, i32* %11, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds [3 x [5 x %struct.TYPE_19__]], [3 x [5 x %struct.TYPE_19__]]* %13, i64 0, i64 %136
  %138 = getelementptr inbounds [5 x %struct.TYPE_19__], [5 x %struct.TYPE_19__]* %137, i64 0, i64 0
  %139 = load i32, i32* %11, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds [3 x i32], [3 x i32]* %12, i64 0, i64 %140
  %142 = load i32, i32* %141, align 4
  %143 = call i32 @RotatePoint(%struct.TYPE_19__* %138, i32 5, i32 %142)
  %144 = load i32, i32* %6, align 4
  %145 = load i32, i32* %11, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds [3 x [5 x %struct.TYPE_19__]], [3 x [5 x %struct.TYPE_19__]]* %13, i64 0, i64 %146
  %148 = getelementptr inbounds [5 x %struct.TYPE_19__], [5 x %struct.TYPE_19__]* %147, i64 0, i64 0
  %149 = call i32 @Polygon(i32 %144, %struct.TYPE_19__* %148, i32 5)
  br label %150

150:                                              ; preds = %134
  %151 = load i32, i32* %11, align 4
  %152 = add nsw i32 %151, 1
  store i32 %152, i32* %11, align 4
  br label %131

153:                                              ; preds = %131
  %154 = load i32, i32* %5, align 4
  ret i32 %154
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @SelectObject(i32, i32) #2

declare dso_local i32 @GetStockObject(i32) #2

declare dso_local i32 @CopyMemory(%struct.TYPE_19__**, %struct.TYPE_19__**, i32) #2

declare dso_local i32 @RotatePoint(%struct.TYPE_19__*, i32, i32) #2

declare dso_local i32 @Polygon(i32, %struct.TYPE_19__*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
