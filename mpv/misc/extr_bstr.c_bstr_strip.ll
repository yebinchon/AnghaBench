; ModuleID = '/home/carl/AnghaBench/mpv/misc/extr_bstr.c_bstr_strip.c'
source_filename = "/home/carl/AnghaBench/mpv/misc/extr_bstr.c_bstr_strip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bstr = type { i32, i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i32, i32* } @bstr_strip(i32 %0, i32* %1) #0 {
  %3 = alloca %struct.bstr, align 8
  %4 = alloca %struct.bstr, align 8
  %5 = alloca %struct.bstr, align 8
  %6 = bitcast %struct.bstr* %4 to { i32, i32* }*
  %7 = getelementptr inbounds { i32, i32* }, { i32, i32* }* %6, i32 0, i32 0
  store i32 %0, i32* %7, align 8
  %8 = getelementptr inbounds { i32, i32* }, { i32, i32* }* %6, i32 0, i32 1
  store i32* %1, i32** %8, align 8
  %9 = bitcast %struct.bstr* %4 to { i32, i32* }*
  %10 = getelementptr inbounds { i32, i32* }, { i32, i32* }* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = getelementptr inbounds { i32, i32* }, { i32, i32* }* %9, i32 0, i32 1
  %13 = load i32*, i32** %12, align 8
  %14 = call { i32, i32* } @bstr_lstrip(i32 %11, i32* %13)
  %15 = bitcast %struct.bstr* %5 to { i32, i32* }*
  %16 = getelementptr inbounds { i32, i32* }, { i32, i32* }* %15, i32 0, i32 0
  %17 = extractvalue { i32, i32* } %14, 0
  store i32 %17, i32* %16, align 8
  %18 = getelementptr inbounds { i32, i32* }, { i32, i32* }* %15, i32 0, i32 1
  %19 = extractvalue { i32, i32* } %14, 1
  store i32* %19, i32** %18, align 8
  %20 = bitcast %struct.bstr* %4 to i8*
  %21 = bitcast %struct.bstr* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %20, i8* align 8 %21, i64 16, i1 false)
  br label %22

22:                                               ; preds = %39, %2
  %23 = getelementptr inbounds %struct.bstr, %struct.bstr* %4, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %37

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.bstr, %struct.bstr* %4, i32 0, i32 1
  %28 = load i32*, i32** %27, align 8
  %29 = getelementptr inbounds %struct.bstr, %struct.bstr* %4, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = sub nsw i32 %30, 1
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %28, i64 %32
  %34 = load i32, i32* %33, align 4
  %35 = call i64 @mp_isspace(i32 %34)
  %36 = icmp ne i64 %35, 0
  br label %37

37:                                               ; preds = %26, %22
  %38 = phi i1 [ false, %22 ], [ %36, %26 ]
  br i1 %38, label %39, label %43

39:                                               ; preds = %37
  %40 = getelementptr inbounds %struct.bstr, %struct.bstr* %4, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = add nsw i32 %41, -1
  store i32 %42, i32* %40, align 8
  br label %22

43:                                               ; preds = %37
  %44 = bitcast %struct.bstr* %3 to i8*
  %45 = bitcast %struct.bstr* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %44, i8* align 8 %45, i64 16, i1 false)
  %46 = bitcast %struct.bstr* %3 to { i32, i32* }*
  %47 = load { i32, i32* }, { i32, i32* }* %46, align 8
  ret { i32, i32* } %47
}

declare dso_local { i32, i32* } @bstr_lstrip(i32, i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @mp_isspace(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
