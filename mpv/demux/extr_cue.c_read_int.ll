; ModuleID = '/home/carl/AnghaBench/mpv/demux/extr_cue.c_read_int.c'
source_filename = "/home/carl/AnghaBench/mpv/demux/extr_cue.c_read_int.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bstr = type { i64, i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bstr*, i32)* @read_int to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_int(%struct.bstr* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bstr*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.bstr, align 8
  %7 = alloca %struct.bstr, align 8
  %8 = alloca i32, align 4
  store %struct.bstr* %0, %struct.bstr** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.bstr*, %struct.bstr** %4, align 8
  %10 = load %struct.bstr*, %struct.bstr** %4, align 8
  %11 = bitcast %struct.bstr* %10 to { i64, i8* }*
  %12 = getelementptr inbounds { i64, i8* }, { i64, i8* }* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = getelementptr inbounds { i64, i8* }, { i64, i8* }* %11, i32 0, i32 1
  %15 = load i8*, i8** %14, align 8
  %16 = call { i64, i8* } @bstr_lstrip(i64 %13, i8* %15)
  %17 = bitcast %struct.bstr* %6 to { i64, i8* }*
  %18 = getelementptr inbounds { i64, i8* }, { i64, i8* }* %17, i32 0, i32 0
  %19 = extractvalue { i64, i8* } %16, 0
  store i64 %19, i64* %18, align 8
  %20 = getelementptr inbounds { i64, i8* }, { i64, i8* }* %17, i32 0, i32 1
  %21 = extractvalue { i64, i8* } %16, 1
  store i8* %21, i8** %20, align 8
  %22 = bitcast %struct.bstr* %9 to i8*
  %23 = bitcast %struct.bstr* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %22, i8* align 8 %23, i64 16, i1 false)
  %24 = load %struct.bstr*, %struct.bstr** %4, align 8
  %25 = getelementptr inbounds %struct.bstr, %struct.bstr* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %37

28:                                               ; preds = %2
  %29 = load %struct.bstr*, %struct.bstr** %4, align 8
  %30 = getelementptr inbounds %struct.bstr, %struct.bstr* %29, i32 0, i32 1
  %31 = load i8*, i8** %30, align 8
  %32 = getelementptr inbounds i8, i8* %31, i64 0
  %33 = load i8, i8* %32, align 1
  %34 = sext i8 %33 to i32
  %35 = icmp eq i32 %34, 45
  br i1 %35, label %36, label %37

36:                                               ; preds = %28
  store i32 -1, i32* %3, align 4
  br label %71

37:                                               ; preds = %28, %2
  %38 = load %struct.bstr*, %struct.bstr** %4, align 8
  %39 = bitcast %struct.bstr* %7 to i8*
  %40 = bitcast %struct.bstr* %38 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %39, i8* align 8 %40, i64 16, i1 false)
  %41 = bitcast %struct.bstr* %7 to { i64, i8* }*
  %42 = getelementptr inbounds { i64, i8* }, { i64, i8* }* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = getelementptr inbounds { i64, i8* }, { i64, i8* }* %41, i32 0, i32 1
  %45 = load i8*, i8** %44, align 8
  %46 = call i64 @bstrtoll(i64 %43, i8* %45, %struct.bstr* %7, i32 10)
  %47 = trunc i64 %46 to i32
  store i32 %47, i32* %8, align 4
  %48 = load %struct.bstr*, %struct.bstr** %4, align 8
  %49 = getelementptr inbounds %struct.bstr, %struct.bstr* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = getelementptr inbounds %struct.bstr, %struct.bstr* %7, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = icmp eq i64 %50, %52
  br i1 %53, label %65, label %54

54:                                               ; preds = %37
  %55 = load i32, i32* %5, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %66

57:                                               ; preds = %54
  %58 = load %struct.bstr*, %struct.bstr** %4, align 8
  %59 = getelementptr inbounds %struct.bstr, %struct.bstr* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = getelementptr inbounds %struct.bstr, %struct.bstr* %7, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = sub nsw i64 %60, %62
  %64 = icmp sgt i64 %63, 2
  br i1 %64, label %65, label %66

65:                                               ; preds = %57, %37
  store i32 -1, i32* %3, align 4
  br label %71

66:                                               ; preds = %57, %54
  %67 = load %struct.bstr*, %struct.bstr** %4, align 8
  %68 = bitcast %struct.bstr* %67 to i8*
  %69 = bitcast %struct.bstr* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %68, i8* align 8 %69, i64 16, i1 false)
  %70 = load i32, i32* %8, align 4
  store i32 %70, i32* %3, align 4
  br label %71

71:                                               ; preds = %66, %65, %36
  %72 = load i32, i32* %3, align 4
  ret i32 %72
}

declare dso_local { i64, i8* } @bstr_lstrip(i64, i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @bstrtoll(i64, i8*, %struct.bstr*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
