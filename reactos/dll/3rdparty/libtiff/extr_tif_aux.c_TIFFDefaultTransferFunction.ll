; ModuleID = '/home/carl/AnghaBench/reactos/dll/3rdparty/libtiff/extr_tif_aux.c_TIFFDefaultTransferFunction.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/3rdparty/libtiff/extr_tif_aux.c_TIFFDefaultTransferFunction.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i64** }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*)* @TIFFDefaultTransferFunction to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @TIFFDefaultTransferFunction(%struct.TYPE_3__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i64**, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca double, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 3
  %11 = load i64**, i64*** %10, align 8
  store i64** %11, i64*** %4, align 8
  %12 = load i64**, i64*** %4, align 8
  %13 = getelementptr inbounds i64*, i64** %12, i64 2
  store i64* null, i64** %13, align 8
  %14 = load i64**, i64*** %4, align 8
  %15 = getelementptr inbounds i64*, i64** %14, i64 1
  store i64* null, i64** %15, align 8
  %16 = load i64**, i64*** %4, align 8
  %17 = getelementptr inbounds i64*, i64** %16, i64 0
  store i64* null, i64** %17, align 8
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = sext i32 %20 to i64
  %22 = icmp uge i64 %21, 30
  br i1 %22, label %23, label %24

23:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %162

24:                                               ; preds = %1
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = shl i32 1, %27
  store i32 %28, i32* %6, align 4
  %29 = load i32, i32* %6, align 4
  %30 = sext i32 %29 to i64
  %31 = mul i64 %30, 8
  %32 = trunc i64 %31 to i32
  store i32 %32, i32* %7, align 4
  %33 = load i32, i32* %7, align 4
  %34 = call i64 @_TIFFmalloc(i32 %33)
  %35 = inttoptr i64 %34 to i64*
  %36 = load i64**, i64*** %4, align 8
  %37 = getelementptr inbounds i64*, i64** %36, i64 0
  store i64* %35, i64** %37, align 8
  %38 = load i64**, i64*** %4, align 8
  %39 = getelementptr inbounds i64*, i64** %38, i64 0
  %40 = load i64*, i64** %39, align 8
  %41 = icmp eq i64* %40, null
  br i1 %41, label %42, label %43

42:                                               ; preds = %24
  store i32 0, i32* %2, align 4
  br label %162

43:                                               ; preds = %24
  %44 = load i64**, i64*** %4, align 8
  %45 = getelementptr inbounds i64*, i64** %44, i64 0
  %46 = load i64*, i64** %45, align 8
  %47 = getelementptr inbounds i64, i64* %46, i64 0
  store i64 0, i64* %47, align 8
  store i32 1, i32* %5, align 4
  br label %48

48:                                               ; preds = %73, %43
  %49 = load i32, i32* %5, align 4
  %50 = load i32, i32* %6, align 4
  %51 = icmp slt i32 %49, %50
  br i1 %51, label %52, label %76

52:                                               ; preds = %48
  %53 = load i32, i32* %5, align 4
  %54 = sitofp i32 %53 to double
  %55 = load i32, i32* %6, align 4
  %56 = sitofp i32 %55 to double
  %57 = fsub double %56, 1.000000e+00
  %58 = fdiv double %54, %57
  store double %58, double* %8, align 8
  %59 = load double, double* %8, align 8
  %60 = call i32 @pow(double %59, double 2.200000e+00)
  %61 = sitofp i32 %60 to double
  %62 = fmul double 6.553500e+04, %61
  %63 = fadd double %62, 5.000000e-01
  %64 = fptosi double %63 to i32
  %65 = call i32 @floor(i32 %64)
  %66 = sext i32 %65 to i64
  %67 = load i64**, i64*** %4, align 8
  %68 = getelementptr inbounds i64*, i64** %67, i64 0
  %69 = load i64*, i64** %68, align 8
  %70 = load i32, i32* %5, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i64, i64* %69, i64 %71
  store i64 %66, i64* %72, align 8
  br label %73

73:                                               ; preds = %52
  %74 = load i32, i32* %5, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %5, align 4
  br label %48

76:                                               ; preds = %48
  %77 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 8
  %83 = sub nsw i32 %79, %82
  %84 = icmp sgt i32 %83, 1
  br i1 %84, label %85, label %124

85:                                               ; preds = %76
  %86 = load i32, i32* %7, align 4
  %87 = call i64 @_TIFFmalloc(i32 %86)
  %88 = inttoptr i64 %87 to i64*
  %89 = load i64**, i64*** %4, align 8
  %90 = getelementptr inbounds i64*, i64** %89, i64 1
  store i64* %88, i64** %90, align 8
  %91 = load i64**, i64*** %4, align 8
  %92 = getelementptr inbounds i64*, i64** %91, i64 1
  %93 = load i64*, i64** %92, align 8
  %94 = icmp eq i64* %93, null
  br i1 %94, label %95, label %96

95:                                               ; preds = %85
  br label %125

96:                                               ; preds = %85
  %97 = load i64**, i64*** %4, align 8
  %98 = getelementptr inbounds i64*, i64** %97, i64 1
  %99 = load i64*, i64** %98, align 8
  %100 = load i64**, i64*** %4, align 8
  %101 = getelementptr inbounds i64*, i64** %100, i64 0
  %102 = load i64*, i64** %101, align 8
  %103 = load i32, i32* %7, align 4
  %104 = call i32 @_TIFFmemcpy(i64* %99, i64* %102, i32 %103)
  %105 = load i32, i32* %7, align 4
  %106 = call i64 @_TIFFmalloc(i32 %105)
  %107 = inttoptr i64 %106 to i64*
  %108 = load i64**, i64*** %4, align 8
  %109 = getelementptr inbounds i64*, i64** %108, i64 2
  store i64* %107, i64** %109, align 8
  %110 = load i64**, i64*** %4, align 8
  %111 = getelementptr inbounds i64*, i64** %110, i64 2
  %112 = load i64*, i64** %111, align 8
  %113 = icmp eq i64* %112, null
  br i1 %113, label %114, label %115

114:                                              ; preds = %96
  br label %125

115:                                              ; preds = %96
  %116 = load i64**, i64*** %4, align 8
  %117 = getelementptr inbounds i64*, i64** %116, i64 2
  %118 = load i64*, i64** %117, align 8
  %119 = load i64**, i64*** %4, align 8
  %120 = getelementptr inbounds i64*, i64** %119, i64 0
  %121 = load i64*, i64** %120, align 8
  %122 = load i32, i32* %7, align 4
  %123 = call i32 @_TIFFmemcpy(i64* %118, i64* %121, i32 %122)
  br label %124

124:                                              ; preds = %115, %76
  store i32 1, i32* %2, align 4
  br label %162

125:                                              ; preds = %114, %95
  %126 = load i64**, i64*** %4, align 8
  %127 = getelementptr inbounds i64*, i64** %126, i64 0
  %128 = load i64*, i64** %127, align 8
  %129 = icmp ne i64* %128, null
  br i1 %129, label %130, label %135

130:                                              ; preds = %125
  %131 = load i64**, i64*** %4, align 8
  %132 = getelementptr inbounds i64*, i64** %131, i64 0
  %133 = load i64*, i64** %132, align 8
  %134 = call i32 @_TIFFfree(i64* %133)
  br label %135

135:                                              ; preds = %130, %125
  %136 = load i64**, i64*** %4, align 8
  %137 = getelementptr inbounds i64*, i64** %136, i64 1
  %138 = load i64*, i64** %137, align 8
  %139 = icmp ne i64* %138, null
  br i1 %139, label %140, label %145

140:                                              ; preds = %135
  %141 = load i64**, i64*** %4, align 8
  %142 = getelementptr inbounds i64*, i64** %141, i64 1
  %143 = load i64*, i64** %142, align 8
  %144 = call i32 @_TIFFfree(i64* %143)
  br label %145

145:                                              ; preds = %140, %135
  %146 = load i64**, i64*** %4, align 8
  %147 = getelementptr inbounds i64*, i64** %146, i64 2
  %148 = load i64*, i64** %147, align 8
  %149 = icmp ne i64* %148, null
  br i1 %149, label %150, label %155

150:                                              ; preds = %145
  %151 = load i64**, i64*** %4, align 8
  %152 = getelementptr inbounds i64*, i64** %151, i64 2
  %153 = load i64*, i64** %152, align 8
  %154 = call i32 @_TIFFfree(i64* %153)
  br label %155

155:                                              ; preds = %150, %145
  %156 = load i64**, i64*** %4, align 8
  %157 = getelementptr inbounds i64*, i64** %156, i64 2
  store i64* null, i64** %157, align 8
  %158 = load i64**, i64*** %4, align 8
  %159 = getelementptr inbounds i64*, i64** %158, i64 1
  store i64* null, i64** %159, align 8
  %160 = load i64**, i64*** %4, align 8
  %161 = getelementptr inbounds i64*, i64** %160, i64 0
  store i64* null, i64** %161, align 8
  store i32 0, i32* %2, align 4
  br label %162

162:                                              ; preds = %155, %124, %42, %23
  %163 = load i32, i32* %2, align 4
  ret i32 %163
}

declare dso_local i64 @_TIFFmalloc(i32) #1

declare dso_local i32 @floor(i32) #1

declare dso_local i32 @pow(double, double) #1

declare dso_local i32 @_TIFFmemcpy(i64*, i64*, i32) #1

declare dso_local i32 @_TIFFfree(i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
