; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/misc/extr_guc.c_convert_to_base_unit.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/misc/extr_guc.c_convert_to_base_unit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, double, i64* }

@MAX_UNIT_LEN = common dso_local global i32 0, align 4
@GUC_UNIT_MEMORY = common dso_local global i32 0, align 4
@memory_unit_conversion_table = common dso_local global %struct.TYPE_4__* null, align 8
@time_unit_conversion_table = common dso_local global %struct.TYPE_4__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (double, i8*, i32, double*)* @convert_to_base_unit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @convert_to_base_unit(double %0, i8* %1, i32 %2, double* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca double, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca double*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_4__*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca double, align 8
  store double %0, double* %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store double* %3, double** %9, align 8
  %17 = load i32, i32* @MAX_UNIT_LEN, align 4
  %18 = add nsw i32 %17, 1
  %19 = zext i32 %18 to i64
  %20 = call i8* @llvm.stacksave()
  store i8* %20, i8** %10, align 8
  %21 = alloca i8, i64 %19, align 16
  store i64 %19, i64* %11, align 8
  store i32 0, i32* %12, align 4
  br label %22

22:                                               ; preds = %38, %4
  %23 = load i8*, i8** %7, align 8
  %24 = load i8, i8* %23, align 1
  %25 = sext i8 %24 to i32
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %36

27:                                               ; preds = %22
  %28 = load i8*, i8** %7, align 8
  %29 = load i8, i8* %28, align 1
  %30 = call i64 @isspace(i8 zeroext %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %36, label %32

32:                                               ; preds = %27
  %33 = load i32, i32* %12, align 4
  %34 = load i32, i32* @MAX_UNIT_LEN, align 4
  %35 = icmp slt i32 %33, %34
  br label %36

36:                                               ; preds = %32, %27, %22
  %37 = phi i1 [ false, %27 ], [ false, %22 ], [ %35, %32 ]
  br i1 %37, label %38, label %46

38:                                               ; preds = %36
  %39 = load i8*, i8** %7, align 8
  %40 = getelementptr inbounds i8, i8* %39, i32 1
  store i8* %40, i8** %7, align 8
  %41 = load i8, i8* %39, align 1
  %42 = load i32, i32* %12, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %12, align 4
  %44 = sext i32 %42 to i64
  %45 = getelementptr inbounds i8, i8* %21, i64 %44
  store i8 %41, i8* %45, align 1
  br label %22

46:                                               ; preds = %36
  %47 = load i32, i32* %12, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i8, i8* %21, i64 %48
  store i8 0, i8* %49, align 1
  br label %50

50:                                               ; preds = %55, %46
  %51 = load i8*, i8** %7, align 8
  %52 = load i8, i8* %51, align 1
  %53 = call i64 @isspace(i8 zeroext %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %50
  %56 = load i8*, i8** %7, align 8
  %57 = getelementptr inbounds i8, i8* %56, i32 1
  store i8* %57, i8** %7, align 8
  br label %50

58:                                               ; preds = %50
  %59 = load i8*, i8** %7, align 8
  %60 = load i8, i8* %59, align 1
  %61 = sext i8 %60 to i32
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %58
  store i32 0, i32* %5, align 4
  store i32 1, i32* %15, align 4
  br label %156

64:                                               ; preds = %58
  %65 = load i32, i32* %8, align 4
  %66 = load i32, i32* @GUC_UNIT_MEMORY, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %64
  %70 = load %struct.TYPE_4__*, %struct.TYPE_4__** @memory_unit_conversion_table, align 8
  store %struct.TYPE_4__* %70, %struct.TYPE_4__** %13, align 8
  br label %73

71:                                               ; preds = %64
  %72 = load %struct.TYPE_4__*, %struct.TYPE_4__** @time_unit_conversion_table, align 8
  store %struct.TYPE_4__* %72, %struct.TYPE_4__** %13, align 8
  br label %73

73:                                               ; preds = %71, %69
  store i32 0, i32* %14, align 4
  br label %74

74:                                               ; preds = %152, %73
  %75 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %76 = load i32, i32* %14, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i64 %77
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 2
  %80 = load i64*, i64** %79, align 8
  %81 = load i64, i64* %80, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %155

83:                                               ; preds = %74
  %84 = load i32, i32* %8, align 4
  %85 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %86 = load i32, i32* %14, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i64 %87
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = icmp eq i32 %84, %90
  br i1 %91, label %92, label %151

92:                                               ; preds = %83
  %93 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %94 = load i32, i32* %14, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i64 %95
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 2
  %98 = load i64*, i64** %97, align 8
  %99 = call i64 @strcmp(i8* %21, i64* %98)
  %100 = icmp eq i64 %99, 0
  br i1 %100, label %101, label %151

101:                                              ; preds = %92
  %102 = load double, double* %6, align 8
  %103 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %104 = load i32, i32* %14, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %103, i64 %105
  %107 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %106, i32 0, i32 1
  %108 = load double, double* %107, align 8
  %109 = fmul double %102, %108
  store double %109, double* %16, align 8
  %110 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %111 = load i32, i32* %14, align 4
  %112 = add nsw i32 %111, 1
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %110, i64 %113
  %115 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %114, i32 0, i32 2
  %116 = load i64*, i64** %115, align 8
  %117 = load i64, i64* %116, align 8
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %148

119:                                              ; preds = %101
  %120 = load i32, i32* %8, align 4
  %121 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %122 = load i32, i32* %14, align 4
  %123 = add nsw i32 %122, 1
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %121, i64 %124
  %126 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = icmp eq i32 %120, %127
  br i1 %128, label %129, label %148

129:                                              ; preds = %119
  %130 = load double, double* %16, align 8
  %131 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %132 = load i32, i32* %14, align 4
  %133 = add nsw i32 %132, 1
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %131, i64 %134
  %136 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %135, i32 0, i32 1
  %137 = load double, double* %136, align 8
  %138 = fdiv double %130, %137
  %139 = call double @llvm.rint.f64(double %138)
  %140 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %141 = load i32, i32* %14, align 4
  %142 = add nsw i32 %141, 1
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %140, i64 %143
  %145 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %144, i32 0, i32 1
  %146 = load double, double* %145, align 8
  %147 = fmul double %139, %146
  store double %147, double* %16, align 8
  br label %148

148:                                              ; preds = %129, %119, %101
  %149 = load double, double* %16, align 8
  %150 = load double*, double** %9, align 8
  store double %149, double* %150, align 8
  store i32 1, i32* %5, align 4
  store i32 1, i32* %15, align 4
  br label %156

151:                                              ; preds = %92, %83
  br label %152

152:                                              ; preds = %151
  %153 = load i32, i32* %14, align 4
  %154 = add nsw i32 %153, 1
  store i32 %154, i32* %14, align 4
  br label %74

155:                                              ; preds = %74
  store i32 0, i32* %5, align 4
  store i32 1, i32* %15, align 4
  br label %156

156:                                              ; preds = %155, %148, %63
  %157 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %157)
  %158 = load i32, i32* %5, align 4
  ret i32 %158
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @isspace(i8 zeroext) #2

declare dso_local i64 @strcmp(i8*, i64*) #2

; Function Attrs: nounwind readnone speculatable willreturn
declare double @llvm.rint.f64(double) #3

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone speculatable willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
