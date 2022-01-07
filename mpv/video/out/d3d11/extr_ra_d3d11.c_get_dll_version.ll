; ModuleID = '/home/carl/AnghaBench/mpv/video/out/d3d11/extr_ra_d3d11.c_get_dll_version.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/d3d11/extr_ra_d3d11.c_get_dll_version.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dll_version = type { i8*, i8*, i8*, i8*, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@VS_VERSION_INFO = common dso_local global i32 0, align 4
@VS_FILE_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i32] [i32 92, i32 0], align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dll_version*, i32)* @get_dll_version to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @get_dll_version(%struct.dll_version* noalias sret %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.TYPE_2__*, align 8
  %11 = alloca i32, align 4
  store i32 %1, i32* %3, align 4
  %12 = call i8* @talloc_new(i32* null)
  store i8* %12, i8** %4, align 8
  %13 = bitcast %struct.dll_version* %0 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %13, i8 0, i64 40, i1 false)
  %14 = load i32, i32* %3, align 4
  %15 = load i32, i32* @VS_VERSION_INFO, align 4
  %16 = call i32 @MAKEINTRESOURCEW(i32 %15)
  %17 = load i32, i32* @VS_FILE_INFO, align 4
  %18 = call i32 @MAKEINTRESOURCEW(i32 %17)
  %19 = call i32 @FindResourceW(i32 %14, i32 %16, i32 %18)
  store i32 %19, i32* %5, align 4
  %20 = load i32, i32* %5, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %2
  br label %75

23:                                               ; preds = %2
  %24 = load i32, i32* %3, align 4
  %25 = load i32, i32* %5, align 4
  %26 = call i32 @SizeofResource(i32 %24, i32 %25)
  store i32 %26, i32* %6, align 4
  %27 = load i32, i32* %3, align 4
  %28 = load i32, i32* %5, align 4
  %29 = call i32 @LoadResource(i32 %27, i32 %28)
  store i32 %29, i32* %7, align 4
  %30 = load i32, i32* %7, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %23
  br label %75

33:                                               ; preds = %23
  %34 = load i32, i32* %7, align 4
  %35 = call i8* @LockResource(i32 %34)
  store i8* %35, i8** %8, align 8
  %36 = load i8*, i8** %8, align 8
  %37 = icmp ne i8* %36, null
  br i1 %37, label %39, label %38

38:                                               ; preds = %33
  br label %75

39:                                               ; preds = %33
  %40 = load i8*, i8** %4, align 8
  %41 = load i8*, i8** %8, align 8
  %42 = load i32, i32* %6, align 4
  %43 = call i8* @talloc_memdup(i8* %40, i8* %41, i32 %42)
  store i8* %43, i8** %9, align 8
  %44 = load i8*, i8** %9, align 8
  %45 = bitcast %struct.TYPE_2__** %10 to i8**
  %46 = call i32 @VerQueryValueW(i8* %44, i8* bitcast ([2 x i32]* @.str to i8*), i8** %45, i32* %11)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %49, label %48

48:                                               ; preds = %39
  br label %75

49:                                               ; preds = %39
  %50 = load i32, i32* %11, align 4
  %51 = sext i32 %50 to i64
  %52 = icmp ult i64 %51, 8
  br i1 %52, label %53, label %54

53:                                               ; preds = %49
  br label %75

54:                                               ; preds = %49
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = call i8* @HIWORD(i32 %57)
  %59 = getelementptr inbounds %struct.dll_version, %struct.dll_version* %0, i32 0, i32 3
  store i8* %58, i8** %59, align 8
  %60 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = call i8* @LOWORD(i32 %62)
  %64 = getelementptr inbounds %struct.dll_version, %struct.dll_version* %0, i32 0, i32 2
  store i8* %63, i8** %64, align 8
  %65 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = call i8* @HIWORD(i32 %67)
  %69 = getelementptr inbounds %struct.dll_version, %struct.dll_version* %0, i32 0, i32 1
  store i8* %68, i8** %69, align 8
  %70 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = call i8* @LOWORD(i32 %72)
  %74 = getelementptr inbounds %struct.dll_version, %struct.dll_version* %0, i32 0, i32 0
  store i8* %73, i8** %74, align 8
  br label %75

75:                                               ; preds = %54, %53, %48, %38, %32, %22
  %76 = load i8*, i8** %4, align 8
  %77 = call i32 @talloc_free(i8* %76)
  ret void
}

declare dso_local i8* @talloc_new(i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @FindResourceW(i32, i32, i32) #1

declare dso_local i32 @MAKEINTRESOURCEW(i32) #1

declare dso_local i32 @SizeofResource(i32, i32) #1

declare dso_local i32 @LoadResource(i32, i32) #1

declare dso_local i8* @LockResource(i32) #1

declare dso_local i8* @talloc_memdup(i8*, i8*, i32) #1

declare dso_local i32 @VerQueryValueW(i8*, i8*, i8**, i32*) #1

declare dso_local i8* @HIWORD(i32) #1

declare dso_local i8* @LOWORD(i32) #1

declare dso_local i32 @talloc_free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
