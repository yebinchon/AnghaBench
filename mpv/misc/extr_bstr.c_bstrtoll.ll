; ModuleID = '/home/carl/AnghaBench/mpv/misc/extr_bstr.c_bstrtoll.c'
source_filename = "/home/carl/AnghaBench/mpv/misc/extr_bstr.c_bstrtoll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bstr = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @bstrtoll(i64 %0, %struct.bstr* %1, i32 %2) #0 {
  %4 = alloca %struct.bstr, align 4
  %5 = alloca %struct.bstr*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.bstr, align 4
  %8 = alloca [51 x i8], align 16
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.bstr, align 4
  %13 = bitcast %struct.bstr* %4 to i64*
  store i64 %0, i64* %13, align 4
  store %struct.bstr* %1, %struct.bstr** %5, align 8
  store i32 %2, i32* %6, align 4
  %14 = bitcast %struct.bstr* %4 to i64*
  %15 = load i64, i64* %14, align 4
  %16 = call i64 @bstr_lstrip(i64 %15)
  %17 = bitcast %struct.bstr* %7 to i64*
  store i64 %16, i64* %17, align 4
  %18 = bitcast %struct.bstr* %4 to i8*
  %19 = bitcast %struct.bstr* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %18, i8* align 4 %19, i64 8, i1 false)
  %20 = getelementptr inbounds %struct.bstr, %struct.bstr* %4, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @MPMIN(i32 %21, i32 50)
  store i32 %22, i32* %9, align 4
  %23 = getelementptr inbounds [51 x i8], [51 x i8]* %8, i64 0, i64 0
  %24 = getelementptr inbounds %struct.bstr, %struct.bstr* %4, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* %9, align 4
  %27 = call i32 @memcpy(i8* %23, i32 %25, i32 %26)
  %28 = load i32, i32* %9, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds [51 x i8], [51 x i8]* %8, i64 0, i64 %29
  store i8 0, i8* %30, align 1
  %31 = getelementptr inbounds [51 x i8], [51 x i8]* %8, i64 0, i64 0
  %32 = load i32, i32* %6, align 4
  %33 = call i64 @strtoll(i8* %31, i8** %10, i32 %32)
  store i64 %33, i64* %11, align 8
  %34 = load %struct.bstr*, %struct.bstr** %5, align 8
  %35 = icmp ne %struct.bstr* %34, null
  br i1 %35, label %36, label %50

36:                                               ; preds = %3
  %37 = load %struct.bstr*, %struct.bstr** %5, align 8
  %38 = load i8*, i8** %10, align 8
  %39 = getelementptr inbounds [51 x i8], [51 x i8]* %8, i64 0, i64 0
  %40 = ptrtoint i8* %38 to i64
  %41 = ptrtoint i8* %39 to i64
  %42 = sub i64 %40, %41
  %43 = trunc i64 %42 to i32
  %44 = bitcast %struct.bstr* %4 to i64*
  %45 = load i64, i64* %44, align 4
  %46 = call i64 @bstr_cut(i64 %45, i32 %43)
  %47 = bitcast %struct.bstr* %12 to i64*
  store i64 %46, i64* %47, align 4
  %48 = bitcast %struct.bstr* %37 to i8*
  %49 = bitcast %struct.bstr* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %48, i8* align 4 %49, i64 8, i1 false)
  br label %50

50:                                               ; preds = %36, %3
  %51 = load i64, i64* %11, align 8
  ret i64 %51
}

declare dso_local i64 @bstr_lstrip(i64) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @MPMIN(i32, i32) #1

declare dso_local i32 @memcpy(i8*, i32, i32) #1

declare dso_local i64 @strtoll(i8*, i8**, i32) #1

declare dso_local i64 @bstr_cut(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
