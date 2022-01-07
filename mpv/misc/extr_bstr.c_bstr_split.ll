; ModuleID = '/home/carl/AnghaBench/mpv/misc/extr_bstr.c_bstr_split.c'
source_filename = "/home/carl/AnghaBench/mpv/misc/extr_bstr.c_bstr_split.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bstr = type { i32, i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i32, i32* } @bstr_split(i32 %0, i32* %1, i8* %2, %struct.bstr* %3) #0 {
  %5 = alloca %struct.bstr, align 8
  %6 = alloca %struct.bstr, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.bstr*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.bstr, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.bstr, align 8
  %13 = bitcast %struct.bstr* %6 to { i32, i32* }*
  %14 = getelementptr inbounds { i32, i32* }, { i32, i32* }* %13, i32 0, i32 0
  store i32 %0, i32* %14, align 8
  %15 = getelementptr inbounds { i32, i32* }, { i32, i32* }* %13, i32 0, i32 1
  store i32* %1, i32** %15, align 8
  store i8* %2, i8** %7, align 8
  store %struct.bstr* %3, %struct.bstr** %8, align 8
  store i32 0, i32* %9, align 4
  br label %16

16:                                               ; preds = %33, %4
  %17 = load i32, i32* %9, align 4
  %18 = getelementptr inbounds %struct.bstr, %struct.bstr* %6, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp slt i32 %17, %19
  br i1 %20, label %21, label %36

21:                                               ; preds = %16
  %22 = load i8*, i8** %7, align 8
  %23 = getelementptr inbounds %struct.bstr, %struct.bstr* %6, i32 0, i32 1
  %24 = load i32*, i32** %23, align 8
  %25 = load i32, i32* %9, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i32, i32* %24, i64 %26
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @strchr(i8* %22, i32 %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %21
  br label %36

32:                                               ; preds = %21
  br label %33

33:                                               ; preds = %32
  %34 = load i32, i32* %9, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %9, align 4
  br label %16

36:                                               ; preds = %31, %16
  %37 = load i32, i32* %9, align 4
  %38 = bitcast %struct.bstr* %6 to { i32, i32* }*
  %39 = getelementptr inbounds { i32, i32* }, { i32, i32* }* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = getelementptr inbounds { i32, i32* }, { i32, i32* }* %38, i32 0, i32 1
  %42 = load i32*, i32** %41, align 8
  %43 = call { i32, i32* } @bstr_cut(i32 %40, i32* %42, i32 %37)
  %44 = bitcast %struct.bstr* %10 to { i32, i32* }*
  %45 = getelementptr inbounds { i32, i32* }, { i32, i32* }* %44, i32 0, i32 0
  %46 = extractvalue { i32, i32* } %43, 0
  store i32 %46, i32* %45, align 8
  %47 = getelementptr inbounds { i32, i32* }, { i32, i32* }* %44, i32 0, i32 1
  %48 = extractvalue { i32, i32* } %43, 1
  store i32* %48, i32** %47, align 8
  %49 = bitcast %struct.bstr* %6 to i8*
  %50 = bitcast %struct.bstr* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %49, i8* align 8 %50, i64 16, i1 false)
  %51 = load i8*, i8** %7, align 8
  %52 = bitcast %struct.bstr* %6 to { i32, i32* }*
  %53 = getelementptr inbounds { i32, i32* }, { i32, i32* }* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = getelementptr inbounds { i32, i32* }, { i32, i32* }* %52, i32 0, i32 1
  %56 = load i32*, i32** %55, align 8
  %57 = call i32 @bstrcspn(i32 %54, i32* %56, i8* %51)
  store i32 %57, i32* %11, align 4
  %58 = load %struct.bstr*, %struct.bstr** %8, align 8
  %59 = icmp ne %struct.bstr* %58, null
  br i1 %59, label %60, label %76

60:                                               ; preds = %36
  %61 = load %struct.bstr*, %struct.bstr** %8, align 8
  %62 = load i32, i32* %11, align 4
  %63 = bitcast %struct.bstr* %6 to { i32, i32* }*
  %64 = getelementptr inbounds { i32, i32* }, { i32, i32* }* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = getelementptr inbounds { i32, i32* }, { i32, i32* }* %63, i32 0, i32 1
  %67 = load i32*, i32** %66, align 8
  %68 = call { i32, i32* } @bstr_cut(i32 %65, i32* %67, i32 %62)
  %69 = bitcast %struct.bstr* %12 to { i32, i32* }*
  %70 = getelementptr inbounds { i32, i32* }, { i32, i32* }* %69, i32 0, i32 0
  %71 = extractvalue { i32, i32* } %68, 0
  store i32 %71, i32* %70, align 8
  %72 = getelementptr inbounds { i32, i32* }, { i32, i32* }* %69, i32 0, i32 1
  %73 = extractvalue { i32, i32* } %68, 1
  store i32* %73, i32** %72, align 8
  %74 = bitcast %struct.bstr* %61 to i8*
  %75 = bitcast %struct.bstr* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %74, i8* align 8 %75, i64 16, i1 false)
  br label %76

76:                                               ; preds = %60, %36
  %77 = load i32, i32* %11, align 4
  %78 = bitcast %struct.bstr* %6 to { i32, i32* }*
  %79 = getelementptr inbounds { i32, i32* }, { i32, i32* }* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = getelementptr inbounds { i32, i32* }, { i32, i32* }* %78, i32 0, i32 1
  %82 = load i32*, i32** %81, align 8
  %83 = call { i32, i32* } @bstr_splice(i32 %80, i32* %82, i32 0, i32 %77)
  %84 = bitcast %struct.bstr* %5 to { i32, i32* }*
  %85 = getelementptr inbounds { i32, i32* }, { i32, i32* }* %84, i32 0, i32 0
  %86 = extractvalue { i32, i32* } %83, 0
  store i32 %86, i32* %85, align 8
  %87 = getelementptr inbounds { i32, i32* }, { i32, i32* }* %84, i32 0, i32 1
  %88 = extractvalue { i32, i32* } %83, 1
  store i32* %88, i32** %87, align 8
  %89 = bitcast %struct.bstr* %5 to { i32, i32* }*
  %90 = load { i32, i32* }, { i32, i32* }* %89, align 8
  ret { i32, i32* } %90
}

declare dso_local i32 @strchr(i8*, i32) #1

declare dso_local { i32, i32* } @bstr_cut(i32, i32*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @bstrcspn(i32, i32*, i8*) #1

declare dso_local { i32, i32* } @bstr_splice(i32, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
