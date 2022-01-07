; ModuleID = '/home/carl/AnghaBench/mpv/misc/extr_bstr.c_bstrtod.c'
source_filename = "/home/carl/AnghaBench/mpv/misc/extr_bstr.c_bstrtod.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bstr = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local double @bstrtod(i64 %0, %struct.bstr* %1) #0 {
  %3 = alloca %struct.bstr, align 4
  %4 = alloca %struct.bstr*, align 8
  %5 = alloca %struct.bstr, align 4
  %6 = alloca [101 x i8], align 16
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca double, align 8
  %10 = alloca %struct.bstr, align 4
  %11 = bitcast %struct.bstr* %3 to i64*
  store i64 %0, i64* %11, align 4
  store %struct.bstr* %1, %struct.bstr** %4, align 8
  %12 = bitcast %struct.bstr* %3 to i64*
  %13 = load i64, i64* %12, align 4
  %14 = call i64 @bstr_lstrip(i64 %13)
  %15 = bitcast %struct.bstr* %5 to i64*
  store i64 %14, i64* %15, align 4
  %16 = bitcast %struct.bstr* %3 to i8*
  %17 = bitcast %struct.bstr* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %16, i8* align 4 %17, i64 8, i1 false)
  %18 = getelementptr inbounds %struct.bstr, %struct.bstr* %3, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @MPMIN(i32 %19, i32 100)
  store i32 %20, i32* %7, align 4
  %21 = getelementptr inbounds [101 x i8], [101 x i8]* %6, i64 0, i64 0
  %22 = getelementptr inbounds %struct.bstr, %struct.bstr* %3, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* %7, align 4
  %25 = call i32 @memcpy(i8* %21, i32 %23, i32 %24)
  %26 = load i32, i32* %7, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds [101 x i8], [101 x i8]* %6, i64 0, i64 %27
  store i8 0, i8* %28, align 1
  %29 = getelementptr inbounds [101 x i8], [101 x i8]* %6, i64 0, i64 0
  %30 = call double @strtod(i8* %29, i8** %8)
  store double %30, double* %9, align 8
  %31 = load %struct.bstr*, %struct.bstr** %4, align 8
  %32 = icmp ne %struct.bstr* %31, null
  br i1 %32, label %33, label %47

33:                                               ; preds = %2
  %34 = load %struct.bstr*, %struct.bstr** %4, align 8
  %35 = load i8*, i8** %8, align 8
  %36 = getelementptr inbounds [101 x i8], [101 x i8]* %6, i64 0, i64 0
  %37 = ptrtoint i8* %35 to i64
  %38 = ptrtoint i8* %36 to i64
  %39 = sub i64 %37, %38
  %40 = trunc i64 %39 to i32
  %41 = bitcast %struct.bstr* %3 to i64*
  %42 = load i64, i64* %41, align 4
  %43 = call i64 @bstr_cut(i64 %42, i32 %40)
  %44 = bitcast %struct.bstr* %10 to i64*
  store i64 %43, i64* %44, align 4
  %45 = bitcast %struct.bstr* %34 to i8*
  %46 = bitcast %struct.bstr* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %45, i8* align 4 %46, i64 8, i1 false)
  br label %47

47:                                               ; preds = %33, %2
  %48 = load double, double* %9, align 8
  ret double %48
}

declare dso_local i64 @bstr_lstrip(i64) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @MPMIN(i32, i32) #1

declare dso_local i32 @memcpy(i8*, i32, i32) #1

declare dso_local double @strtod(i8*, i8**) #1

declare dso_local i64 @bstr_cut(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
