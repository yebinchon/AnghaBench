; ModuleID = '/home/carl/AnghaBench/mpv/demux/extr_cue.c_read_time.c'
source_filename = "/home/carl/AnghaBench/mpv/demux/extr_cue.c_read_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bstr = type { i32 }

@SECS_PER_CUE_FRAME = common dso_local global double 0.000000e+00, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (double (%struct.bstr*)* @read_time to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal double @read_time(%struct.bstr* %0) #0 {
  %2 = alloca %struct.bstr*, align 8
  %3 = alloca %struct.bstr, align 4
  %4 = alloca i32, align 4
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  store %struct.bstr* %0, %struct.bstr** %2, align 8
  %8 = load %struct.bstr*, %struct.bstr** %2, align 8
  %9 = bitcast %struct.bstr* %3 to i8*
  %10 = bitcast %struct.bstr* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %9, i8* align 4 %10, i64 4, i1 false)
  store i32 1, i32* %4, align 4
  %11 = call double @read_int(%struct.bstr* %3, i32 0)
  store double %11, double* %5, align 8
  %12 = call i64 @eat_char(%struct.bstr* %3, i8 signext 58)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %1
  %15 = load i32, i32* %4, align 4
  %16 = icmp ne i32 %15, 0
  br label %17

17:                                               ; preds = %14, %1
  %18 = phi i1 [ false, %1 ], [ %16, %14 ]
  %19 = zext i1 %18 to i32
  store i32 %19, i32* %4, align 4
  %20 = call double @read_int(%struct.bstr* %3, i32 1)
  store double %20, double* %6, align 8
  %21 = call i64 @eat_char(%struct.bstr* %3, i8 signext 58)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %17
  %24 = load i32, i32* %4, align 4
  %25 = icmp ne i32 %24, 0
  br label %26

26:                                               ; preds = %23, %17
  %27 = phi i1 [ false, %17 ], [ %25, %23 ]
  %28 = zext i1 %27 to i32
  store i32 %28, i32* %4, align 4
  %29 = call double @read_int(%struct.bstr* %3, i32 1)
  store double %29, double* %7, align 8
  %30 = load i32, i32* %4, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %41

32:                                               ; preds = %26
  %33 = load double, double* %5, align 8
  %34 = fcmp oge double %33, 0.000000e+00
  br i1 %34, label %35, label %41

35:                                               ; preds = %32
  %36 = load double, double* %6, align 8
  %37 = fcmp oge double %36, 0.000000e+00
  br i1 %37, label %38, label %41

38:                                               ; preds = %35
  %39 = load double, double* %7, align 8
  %40 = fcmp oge double %39, 0.000000e+00
  br label %41

41:                                               ; preds = %38, %35, %32, %26
  %42 = phi i1 [ false, %35 ], [ false, %32 ], [ false, %26 ], [ %40, %38 ]
  %43 = zext i1 %42 to i32
  store i32 %43, i32* %4, align 4
  %44 = load i32, i32* %4, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %55

46:                                               ; preds = %41
  %47 = load double, double* %5, align 8
  %48 = fmul double %47, 6.000000e+01
  %49 = load double, double* %6, align 8
  %50 = fadd double %48, %49
  %51 = load double, double* %7, align 8
  %52 = load double, double* @SECS_PER_CUE_FRAME, align 8
  %53 = fmul double %51, %52
  %54 = fadd double %50, %53
  br label %56

55:                                               ; preds = %41
  br label %56

56:                                               ; preds = %55, %46
  %57 = phi double [ %54, %46 ], [ 0.000000e+00, %55 ]
  ret double %57
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local double @read_int(%struct.bstr*, i32) #2

declare dso_local i64 @eat_char(%struct.bstr*, i8 signext) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
