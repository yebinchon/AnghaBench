; ModuleID = '/home/carl/AnghaBench/mpv/sub/extr_ass_mp.c_mp_ass_set_style.c'
source_filename = "/home/carl/AnghaBench/mpv/sub/extr_ass_mp.c_mp_ass_set_style.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { double, i32, double, double, double, double, double, double, i32, i32, i32, i32, i32, i32, i64, i8*, i8*, i8*, i8*, i64 }
%struct.osd_style_opts = type { double, double, double, double, double, double, i32, i32, i32, i32, i32, i64, %struct.TYPE_5__, %struct.TYPE_5__, %struct.TYPE_5__, %struct.TYPE_5__, i64 }
%struct.TYPE_5__ = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mp_ass_set_style(%struct.TYPE_4__* %0, double %1, %struct.osd_style_opts* %2) #0 {
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca double, align 8
  %6 = alloca %struct.osd_style_opts*, align 8
  %7 = alloca double, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %4, align 8
  store double %1, double* %5, align 8
  store %struct.osd_style_opts* %2, %struct.osd_style_opts** %6, align 8
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %9 = icmp ne %struct.TYPE_4__* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %3
  br label %171

11:                                               ; preds = %3
  %12 = load %struct.osd_style_opts*, %struct.osd_style_opts** %6, align 8
  %13 = getelementptr inbounds %struct.osd_style_opts, %struct.osd_style_opts* %12, i32 0, i32 16
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %42

16:                                               ; preds = %11
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 19
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %30

21:                                               ; preds = %16
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 19
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.osd_style_opts*, %struct.osd_style_opts** %6, align 8
  %26 = getelementptr inbounds %struct.osd_style_opts, %struct.osd_style_opts* %25, i32 0, i32 16
  %27 = load i64, i64* %26, align 8
  %28 = call i64 @strcmp(i64 %24, i64 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %41

30:                                               ; preds = %21, %16
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 19
  %33 = load i64, i64* %32, align 8
  %34 = call i32 @free(i64 %33)
  %35 = load %struct.osd_style_opts*, %struct.osd_style_opts** %6, align 8
  %36 = getelementptr inbounds %struct.osd_style_opts, %struct.osd_style_opts* %35, i32 0, i32 16
  %37 = load i64, i64* %36, align 8
  %38 = call i64 @strdup(i64 %37)
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 19
  store i64 %38, i64* %40, align 8
  br label %41

41:                                               ; preds = %30, %21
  br label %42

42:                                               ; preds = %41, %11
  %43 = load double, double* %5, align 8
  %44 = fdiv double %43, 7.200000e+02
  store double %44, double* %7, align 8
  %45 = load %struct.osd_style_opts*, %struct.osd_style_opts** %6, align 8
  %46 = getelementptr inbounds %struct.osd_style_opts, %struct.osd_style_opts* %45, i32 0, i32 0
  %47 = load double, double* %46, align 8
  %48 = load double, double* %7, align 8
  %49 = fmul double %47, %48
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  store double %49, double* %51, align 8
  %52 = load %struct.osd_style_opts*, %struct.osd_style_opts** %6, align 8
  %53 = getelementptr inbounds %struct.osd_style_opts, %struct.osd_style_opts* %52, i32 0, i32 15
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = call i8* @MP_ASS_COLOR(i64 %55)
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 17
  store i8* %56, i8** %58, align 8
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 17
  %61 = load i8*, i8** %60, align 8
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 18
  store i8* %61, i8** %63, align 8
  %64 = load %struct.osd_style_opts*, %struct.osd_style_opts** %6, align 8
  %65 = getelementptr inbounds %struct.osd_style_opts, %struct.osd_style_opts* %64, i32 0, i32 14
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = call i8* @MP_ASS_COLOR(i64 %67)
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 16
  store i8* %68, i8** %70, align 8
  %71 = load %struct.osd_style_opts*, %struct.osd_style_opts** %6, align 8
  %72 = getelementptr inbounds %struct.osd_style_opts, %struct.osd_style_opts* %71, i32 0, i32 13
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %86

76:                                               ; preds = %42
  %77 = load %struct.osd_style_opts*, %struct.osd_style_opts** %6, align 8
  %78 = getelementptr inbounds %struct.osd_style_opts, %struct.osd_style_opts* %77, i32 0, i32 13
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = call i8* @MP_ASS_COLOR(i64 %80)
  %82 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 15
  store i8* %81, i8** %83, align 8
  %84 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 1
  store i32 4, i32* %85, align 8
  br label %96

86:                                               ; preds = %42
  %87 = load %struct.osd_style_opts*, %struct.osd_style_opts** %6, align 8
  %88 = getelementptr inbounds %struct.osd_style_opts, %struct.osd_style_opts* %87, i32 0, i32 12
  %89 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = call i8* @MP_ASS_COLOR(i64 %90)
  %92 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 15
  store i8* %91, i8** %93, align 8
  %94 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 1
  store i32 1, i32* %95, align 8
  br label %96

96:                                               ; preds = %86, %76
  %97 = load %struct.osd_style_opts*, %struct.osd_style_opts** %6, align 8
  %98 = getelementptr inbounds %struct.osd_style_opts, %struct.osd_style_opts* %97, i32 0, i32 1
  %99 = load double, double* %98, align 8
  %100 = load double, double* %7, align 8
  %101 = fmul double %99, %100
  %102 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i32 0, i32 2
  store double %101, double* %103, align 8
  %104 = load %struct.osd_style_opts*, %struct.osd_style_opts** %6, align 8
  %105 = getelementptr inbounds %struct.osd_style_opts, %struct.osd_style_opts* %104, i32 0, i32 2
  %106 = load double, double* %105, align 8
  %107 = load double, double* %7, align 8
  %108 = fmul double %106, %107
  %109 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %110 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %109, i32 0, i32 3
  store double %108, double* %110, align 8
  %111 = load %struct.osd_style_opts*, %struct.osd_style_opts** %6, align 8
  %112 = getelementptr inbounds %struct.osd_style_opts, %struct.osd_style_opts* %111, i32 0, i32 3
  %113 = load double, double* %112, align 8
  %114 = load double, double* %7, align 8
  %115 = fmul double %113, %114
  %116 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %117 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %116, i32 0, i32 4
  store double %115, double* %117, align 8
  %118 = load %struct.osd_style_opts*, %struct.osd_style_opts** %6, align 8
  %119 = getelementptr inbounds %struct.osd_style_opts, %struct.osd_style_opts* %118, i32 0, i32 4
  %120 = load double, double* %119, align 8
  %121 = load double, double* %7, align 8
  %122 = fmul double %120, %121
  %123 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %124 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %123, i32 0, i32 5
  store double %122, double* %124, align 8
  %125 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %126 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %125, i32 0, i32 5
  %127 = load double, double* %126, align 8
  %128 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %129 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %128, i32 0, i32 6
  store double %127, double* %129, align 8
  %130 = load %struct.osd_style_opts*, %struct.osd_style_opts** %6, align 8
  %131 = getelementptr inbounds %struct.osd_style_opts, %struct.osd_style_opts* %130, i32 0, i32 5
  %132 = load double, double* %131, align 8
  %133 = load double, double* %7, align 8
  %134 = fmul double %132, %133
  %135 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %136 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %135, i32 0, i32 7
  store double %134, double* %136, align 8
  %137 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %138 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %137, i32 0, i32 8
  store i32 1, i32* %138, align 8
  %139 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %140 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %139, i32 0, i32 9
  store i32 1, i32* %140, align 4
  %141 = load %struct.osd_style_opts*, %struct.osd_style_opts** %6, align 8
  %142 = getelementptr inbounds %struct.osd_style_opts, %struct.osd_style_opts* %141, i32 0, i32 11
  %143 = load i64, i64* %142, align 8
  %144 = add nsw i64 %143, 1
  %145 = add nsw i64 1, %144
  %146 = load %struct.osd_style_opts*, %struct.osd_style_opts** %6, align 8
  %147 = getelementptr inbounds %struct.osd_style_opts, %struct.osd_style_opts* %146, i32 0, i32 6
  %148 = load i32, i32* %147, align 8
  %149 = add nsw i32 %148, 2
  %150 = srem i32 %149, 3
  %151 = mul nsw i32 %150, 4
  %152 = sext i32 %151 to i64
  %153 = add nsw i64 %145, %152
  %154 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %155 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %154, i32 0, i32 14
  store i64 %153, i64* %155, align 8
  %156 = load %struct.osd_style_opts*, %struct.osd_style_opts** %6, align 8
  %157 = getelementptr inbounds %struct.osd_style_opts, %struct.osd_style_opts* %156, i32 0, i32 9
  %158 = load i32, i32* %157, align 4
  %159 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %160 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %159, i32 0, i32 12
  store i32 %158, i32* %160, align 8
  %161 = load %struct.osd_style_opts*, %struct.osd_style_opts** %6, align 8
  %162 = getelementptr inbounds %struct.osd_style_opts, %struct.osd_style_opts* %161, i32 0, i32 8
  %163 = load i32, i32* %162, align 8
  %164 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %165 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %164, i32 0, i32 11
  store i32 %163, i32* %165, align 4
  %166 = load %struct.osd_style_opts*, %struct.osd_style_opts** %6, align 8
  %167 = getelementptr inbounds %struct.osd_style_opts, %struct.osd_style_opts* %166, i32 0, i32 7
  %168 = load i32, i32* %167, align 4
  %169 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %170 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %169, i32 0, i32 10
  store i32 %168, i32* %170, align 8
  br label %171

171:                                              ; preds = %96, %10
  ret void
}

declare dso_local i64 @strcmp(i64, i64) #1

declare dso_local i32 @free(i64) #1

declare dso_local i64 @strdup(i64) #1

declare dso_local i8* @MP_ASS_COLOR(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
