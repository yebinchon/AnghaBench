; ModuleID = '/home/carl/AnghaBench/radare2/libr/util/extr_calc.c_cin_get_num.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/util/extr_calc.c_cin_get_num.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { double, double }

@R_NUMCALC_STRSZ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"%lf\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, %struct.TYPE_5__*)* @cin_get_num to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cin_get_num(i32* %0, i32* %1, %struct.TYPE_5__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_5__*, align 8
  %8 = alloca double, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8, align 1
  %13 = alloca %struct.TYPE_5__, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_5__, align 8
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store %struct.TYPE_5__* %2, %struct.TYPE_5__** %7, align 8
  %16 = load i32, i32* @R_NUMCALC_STRSZ, align 4
  %17 = add nsw i32 %16, 1
  %18 = zext i32 %17 to i64
  %19 = call i8* @llvm.stacksave()
  store i8* %19, i8** %9, align 8
  %20 = alloca i8, i64 %18, align 16
  store i64 %18, i64* %10, align 8
  store i32 0, i32* %11, align 4
  %21 = getelementptr inbounds i8, i8* %20, i64 0
  store i8 0, i8* %21, align 16
  br label %22

22:                                               ; preds = %59, %3
  %23 = load i32*, i32** %5, align 8
  %24 = load i32*, i32** %6, align 8
  %25 = call i64 @cin_get(i32* %23, i32* %24, i8* %12)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %60

27:                                               ; preds = %22
  %28 = load i8, i8* %12, align 1
  %29 = sext i8 %28 to i32
  %30 = icmp ne i32 %29, 95
  br i1 %30, label %31, label %49

31:                                               ; preds = %27
  %32 = load i8, i8* %12, align 1
  %33 = sext i8 %32 to i32
  %34 = icmp ne i32 %33, 58
  br i1 %34, label %35, label %49

35:                                               ; preds = %31
  %36 = load i8, i8* %12, align 1
  %37 = sext i8 %36 to i32
  %38 = icmp ne i32 %37, 46
  br i1 %38, label %39, label %49

39:                                               ; preds = %35
  %40 = load i8, i8* %12, align 1
  %41 = sext i8 %40 to i32
  %42 = call i32 @isalnum(i32 %41) #5
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %49, label %44

44:                                               ; preds = %39
  %45 = load i32*, i32** %5, align 8
  %46 = load i32*, i32** %6, align 8
  %47 = load i8, i8* %12, align 1
  %48 = call i32 @cin_putback(i32* %45, i32* %46, i8 signext %47)
  br label %60

49:                                               ; preds = %39, %35, %31, %27
  %50 = load i32, i32* %11, align 4
  %51 = load i32, i32* @R_NUMCALC_STRSZ, align 4
  %52 = icmp slt i32 %50, %51
  br i1 %52, label %53, label %59

53:                                               ; preds = %49
  %54 = load i8, i8* %12, align 1
  %55 = load i32, i32* %11, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %11, align 4
  %57 = sext i32 %55 to i64
  %58 = getelementptr inbounds i8, i8* %20, i64 %57
  store i8 %54, i8* %58, align 1
  br label %59

59:                                               ; preds = %53, %49
  br label %22

60:                                               ; preds = %44, %22
  %61 = load i32, i32* %11, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i8, i8* %20, i64 %62
  store i8 0, i8* %63, align 1
  %64 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %65 = load i32*, i32** %5, align 8
  %66 = call i32 @r_num_get(i32* %65, i8* %20)
  %67 = call { double, double } @Nset(i32 %66)
  %68 = bitcast %struct.TYPE_5__* %13 to { double, double }*
  %69 = getelementptr inbounds { double, double }, { double, double }* %68, i32 0, i32 0
  %70 = extractvalue { double, double } %67, 0
  store double %70, double* %69, align 8
  %71 = getelementptr inbounds { double, double }, { double, double }* %68, i32 0, i32 1
  %72 = extractvalue { double, double } %67, 1
  store double %72, double* %71, align 8
  %73 = bitcast %struct.TYPE_5__* %64 to i8*
  %74 = bitcast %struct.TYPE_5__* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %73, i8* align 8 %74, i64 16, i1 false)
  %75 = load i8, i8* %20, align 16
  %76 = call i64 @IS_DIGIT(i8 signext %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %106

78:                                               ; preds = %60
  %79 = call i64 @strchr(i8* %20, i8 signext 46)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %106

81:                                               ; preds = %78
  %82 = call i32 @sscanf(i8* %20, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), double* %8)
  %83 = icmp slt i32 %82, 1
  br i1 %83, label %84, label %85

84:                                               ; preds = %81
  store i32 0, i32* %4, align 4
  store i32 1, i32* %14, align 4
  br label %107

85:                                               ; preds = %81
  %86 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %86, i32 0, i32 0
  %88 = load double, double* %87, align 8
  %89 = load double, double* %8, align 8
  %90 = fcmp olt double %88, %89
  br i1 %90, label %91, label %102

91:                                               ; preds = %85
  %92 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %93 = load double, double* %8, align 8
  %94 = call { double, double } @Nsetf(double %93)
  %95 = bitcast %struct.TYPE_5__* %15 to { double, double }*
  %96 = getelementptr inbounds { double, double }, { double, double }* %95, i32 0, i32 0
  %97 = extractvalue { double, double } %94, 0
  store double %97, double* %96, align 8
  %98 = getelementptr inbounds { double, double }, { double, double }* %95, i32 0, i32 1
  %99 = extractvalue { double, double } %94, 1
  store double %99, double* %98, align 8
  %100 = bitcast %struct.TYPE_5__* %92 to i8*
  %101 = bitcast %struct.TYPE_5__* %15 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %100, i8* align 8 %101, i64 16, i1 false)
  br label %102

102:                                              ; preds = %91, %85
  %103 = load double, double* %8, align 8
  %104 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %105 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %104, i32 0, i32 1
  store double %103, double* %105, align 8
  br label %106

106:                                              ; preds = %102, %78, %60
  store i32 1, i32* %4, align 4
  store i32 1, i32* %14, align 4
  br label %107

107:                                              ; preds = %106, %84
  %108 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %108)
  %109 = load i32, i32* %4, align 4
  ret i32 %109
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @cin_get(i32*, i32*, i8*) #2

; Function Attrs: nounwind readonly
declare dso_local i32 @isalnum(i32) #3

declare dso_local i32 @cin_putback(i32*, i32*, i8 signext) #2

declare dso_local { double, double } @Nset(i32) #2

declare dso_local i32 @r_num_get(i32*, i8*) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #4

declare dso_local i64 @IS_DIGIT(i8 signext) #2

declare dso_local i64 @strchr(i8*, i8 signext) #2

declare dso_local i32 @sscanf(i8*, i8*, double*) #2

declare dso_local { double, double } @Nsetf(double) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { argmemonly nounwind willreturn }
attributes #5 = { nounwind readonly }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
