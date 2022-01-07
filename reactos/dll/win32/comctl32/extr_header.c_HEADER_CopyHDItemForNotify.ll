; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/comctl32/extr_header.c_HEADER_CopyHDItemForNotify.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/comctl32/extr_header.c_HEADER_CopyHDItemForNotify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64 }
%struct.TYPE_7__ = type { i32, i64 }

@HDI_TEXT = common dso_local global i32 0, align 4
@LPSTR_TEXTCALLBACKW = common dso_local global i64 0, align 8
@NFR_UNICODE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_6__*, %struct.TYPE_7__*, %struct.TYPE_7__*, i64, i32**)* @HEADER_CopyHDItemForNotify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @HEADER_CopyHDItemForNotify(%struct.TYPE_6__* %0, %struct.TYPE_7__* %1, %struct.TYPE_7__* %2, i64 %3, i32** %4) #0 {
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca %struct.TYPE_7__*, align 8
  %8 = alloca %struct.TYPE_7__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32**, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %6, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %7, align 8
  store %struct.TYPE_7__* %2, %struct.TYPE_7__** %8, align 8
  store i64 %3, i64* %9, align 8
  store i32** %4, i32*** %10, align 8
  %11 = load i32**, i32*** %10, align 8
  store i32* null, i32** %11, align 8
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %14 = bitcast %struct.TYPE_7__* %12 to i8*
  %15 = bitcast %struct.TYPE_7__* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %14, i8* align 8 %15, i64 16, i1 false)
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @HDI_TEXT, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %79

22:                                               ; preds = %5
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @LPSTR_TEXTCALLBACKW, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %28, label %79

28:                                               ; preds = %22
  %29 = load i64, i64* %9, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %53

31:                                               ; preds = %28
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @NFR_UNICODE, align 8
  %36 = icmp ne i64 %34, %35
  br i1 %36, label %37, label %53

37:                                               ; preds = %31
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 1
  store i64 0, i64* %39, align 8
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 1
  %42 = bitcast i64* %41 to i32*
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = inttoptr i64 %45 to i32*
  %47 = call i32 @Str_SetPtrWtoA(i32* %42, i32* %46)
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = inttoptr i64 %50 to i32*
  %52 = load i32**, i32*** %10, align 8
  store i32* %51, i32** %52, align 8
  br label %53

53:                                               ; preds = %37, %31, %28
  %54 = load i64, i64* %9, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %78, label %56

56:                                               ; preds = %53
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @NFR_UNICODE, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %62, label %78

62:                                               ; preds = %56
  %63 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 1
  store i64 0, i64* %64, align 8
  %65 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 1
  %67 = bitcast i64* %66 to i32**
  %68 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = trunc i64 %70 to i32
  %72 = call i32 @Str_SetPtrAtoW(i32** %67, i32 %71)
  %73 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = inttoptr i64 %75 to i32*
  %77 = load i32**, i32*** %10, align 8
  store i32* %76, i32** %77, align 8
  br label %78

78:                                               ; preds = %62, %56, %53
  br label %79

79:                                               ; preds = %78, %22, %5
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @Str_SetPtrWtoA(i32*, i32*) #2

declare dso_local i32 @Str_SetPtrAtoW(i32**, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
