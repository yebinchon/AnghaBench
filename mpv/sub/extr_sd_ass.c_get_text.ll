; ModuleID = '/home/carl/AnghaBench/mpv/sub/extr_sd_ass.c_get_text.c'
source_filename = "/home/carl/AnghaBench/mpv/sub/extr_sd_ass.c_get_text.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sd = type { %struct.sd_ass_priv* }
%struct.sd_ass_priv = type { i8*, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64, i64, i64 }
%struct.buf = type { i8*, i32, i32, i8* }

@MP_NOPTS_VALUE = common dso_local global double 0.000000e+00, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.sd*, double)* @get_text to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @get_text(%struct.sd* %0, double %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.sd*, align 8
  %5 = alloca double, align 8
  %6 = alloca %struct.sd_ass_priv*, align 8
  %7 = alloca %struct.TYPE_3__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.buf, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_4__*, align 8
  %12 = alloca i32, align 4
  store %struct.sd* %0, %struct.sd** %4, align 8
  store double %1, double* %5, align 8
  %13 = load %struct.sd*, %struct.sd** %4, align 8
  %14 = getelementptr inbounds %struct.sd, %struct.sd* %13, i32 0, i32 0
  %15 = load %struct.sd_ass_priv*, %struct.sd_ass_priv** %14, align 8
  store %struct.sd_ass_priv* %15, %struct.sd_ass_priv** %6, align 8
  %16 = load %struct.sd_ass_priv*, %struct.sd_ass_priv** %6, align 8
  %17 = getelementptr inbounds %struct.sd_ass_priv, %struct.sd_ass_priv* %16, i32 0, i32 1
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  store %struct.TYPE_3__* %18, %struct.TYPE_3__** %7, align 8
  %19 = load double, double* %5, align 8
  %20 = load double, double* @MP_NOPTS_VALUE, align 8
  %21 = fcmp oeq double %19, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %2
  store i8* null, i8** %3, align 8
  br label %129

23:                                               ; preds = %2
  %24 = load %struct.sd*, %struct.sd** %4, align 8
  %25 = load double, double* %5, align 8
  %26 = call i64 @find_timestamp(%struct.sd* %24, double %25)
  store i64 %26, i64* %8, align 8
  %27 = getelementptr inbounds %struct.buf, %struct.buf* %9, i32 0, i32 0
  %28 = load %struct.sd_ass_priv*, %struct.sd_ass_priv** %6, align 8
  %29 = getelementptr inbounds %struct.sd_ass_priv, %struct.sd_ass_priv* %28, i32 0, i32 0
  %30 = load i8*, i8** %29, align 8
  store i8* %30, i8** %27, align 8
  %31 = getelementptr inbounds %struct.buf, %struct.buf* %9, i32 0, i32 1
  store i32 7, i32* %31, align 8
  %32 = getelementptr inbounds %struct.buf, %struct.buf* %9, i32 0, i32 2
  store i32 0, i32* %32, align 4
  %33 = getelementptr inbounds %struct.buf, %struct.buf* %9, i32 0, i32 3
  store i8* null, i8** %33, align 8
  store i32 0, i32* %10, align 4
  br label %34

34:                                               ; preds = %93, %23
  %35 = load i32, i32* %10, align 4
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = icmp slt i32 %35, %38
  br i1 %39, label %40, label %96

40:                                               ; preds = %34
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 1
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %42, align 8
  %44 = load i32, i32* %10, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i64 %45
  store %struct.TYPE_4__* %46, %struct.TYPE_4__** %11, align 8
  %47 = load i64, i64* %8, align 8
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = icmp sge i64 %47, %50
  br i1 %51, label %52, label %92

52:                                               ; preds = %40
  %53 = load i64, i64* %8, align 8
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = add nsw i64 %56, %59
  %61 = icmp slt i64 %53, %60
  br i1 %61, label %62, label %92

62:                                               ; preds = %52
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 2
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %91

67:                                               ; preds = %62
  %68 = getelementptr inbounds %struct.buf, %struct.buf* %9, i32 0, i32 2
  %69 = load i32, i32* %68, align 4
  store i32 %69, i32* %12, align 4
  %70 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 2
  %72 = load i64, i64* %71, align 8
  %73 = call i32 @ass_to_plaintext(%struct.buf* %9, i64 %72)
  %74 = getelementptr inbounds %struct.buf, %struct.buf* %9, i32 0, i32 3
  %75 = load i8*, i8** %74, align 8
  %76 = load i32, i32* %12, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i8, i8* %75, i64 %77
  %79 = getelementptr inbounds %struct.buf, %struct.buf* %9, i32 0, i32 2
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* %12, align 4
  %82 = sub nsw i32 %80, %81
  %83 = call i64 @is_whitespace_only(i8* %78, i32 %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %88

85:                                               ; preds = %67
  %86 = load i32, i32* %12, align 4
  %87 = getelementptr inbounds %struct.buf, %struct.buf* %9, i32 0, i32 2
  store i32 %86, i32* %87, align 4
  br label %90

88:                                               ; preds = %67
  %89 = call i32 @append(%struct.buf* %9, i8 signext 10)
  br label %90

90:                                               ; preds = %88, %85
  br label %91

91:                                               ; preds = %90, %62
  br label %92

92:                                               ; preds = %91, %52, %40
  br label %93

93:                                               ; preds = %92
  %94 = load i32, i32* %10, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %10, align 4
  br label %34

96:                                               ; preds = %34
  %97 = getelementptr inbounds %struct.buf, %struct.buf* %9, i32 0, i32 3
  %98 = load i8*, i8** %97, align 8
  %99 = getelementptr inbounds %struct.buf, %struct.buf* %9, i32 0, i32 2
  %100 = load i32, i32* %99, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i8, i8* %98, i64 %101
  store i8 0, i8* %102, align 1
  %103 = getelementptr inbounds %struct.buf, %struct.buf* %9, i32 0, i32 2
  %104 = load i32, i32* %103, align 4
  %105 = icmp sgt i32 %104, 0
  br i1 %105, label %106, label %125

106:                                              ; preds = %96
  %107 = getelementptr inbounds %struct.buf, %struct.buf* %9, i32 0, i32 3
  %108 = load i8*, i8** %107, align 8
  %109 = getelementptr inbounds %struct.buf, %struct.buf* %9, i32 0, i32 2
  %110 = load i32, i32* %109, align 4
  %111 = sub nsw i32 %110, 1
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i8, i8* %108, i64 %112
  %114 = load i8, i8* %113, align 1
  %115 = sext i8 %114 to i32
  %116 = icmp eq i32 %115, 10
  br i1 %116, label %117, label %125

117:                                              ; preds = %106
  %118 = getelementptr inbounds %struct.buf, %struct.buf* %9, i32 0, i32 3
  %119 = load i8*, i8** %118, align 8
  %120 = getelementptr inbounds %struct.buf, %struct.buf* %9, i32 0, i32 2
  %121 = load i32, i32* %120, align 4
  %122 = sub nsw i32 %121, 1
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds i8, i8* %119, i64 %123
  store i8 0, i8* %124, align 1
  br label %125

125:                                              ; preds = %117, %106, %96
  %126 = load %struct.sd_ass_priv*, %struct.sd_ass_priv** %6, align 8
  %127 = getelementptr inbounds %struct.sd_ass_priv, %struct.sd_ass_priv* %126, i32 0, i32 0
  %128 = load i8*, i8** %127, align 8
  store i8* %128, i8** %3, align 8
  br label %129

129:                                              ; preds = %125, %22
  %130 = load i8*, i8** %3, align 8
  ret i8* %130
}

declare dso_local i64 @find_timestamp(%struct.sd*, double) #1

declare dso_local i32 @ass_to_plaintext(%struct.buf*, i64) #1

declare dso_local i64 @is_whitespace_only(i8*, i32) #1

declare dso_local i32 @append(%struct.buf*, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
