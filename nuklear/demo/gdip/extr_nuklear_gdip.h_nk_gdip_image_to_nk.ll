; ModuleID = '/home/carl/AnghaBench/nuklear/demo/gdip/extr_nuklear_gdip.h_nk_gdip_image_to_nk.c'
source_filename = "/home/carl/AnghaBench/nuklear/demo/gdip/extr_nuklear_gdip.h_nk_gdip_image_to_nk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nk_image = type { i8*, i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast ({ i8*, i8* } (i32*)* @nk_gdip_image_to_nk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal { i8*, i8* } @nk_gdip_image_to_nk(i32* %0) #0 {
  %2 = alloca %struct.nk_image, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.nk_image, align 8
  store i32* %0, i32** %3, align 8
  %7 = load i32*, i32** %3, align 8
  %8 = bitcast i32* %7 to i8*
  %9 = call { i8*, i8* } @nk_image_ptr(i8* %8)
  %10 = bitcast %struct.nk_image* %6 to { i8*, i8* }*
  %11 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %10, i32 0, i32 0
  %12 = extractvalue { i8*, i8* } %9, 0
  store i8* %12, i8** %11, align 8
  %13 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %10, i32 0, i32 1
  %14 = extractvalue { i8*, i8* } %9, 1
  store i8* %14, i8** %13, align 8
  %15 = bitcast %struct.nk_image* %2 to i8*
  %16 = bitcast %struct.nk_image* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %15, i8* align 8 %16, i64 16, i1 false)
  %17 = load i32*, i32** %3, align 8
  %18 = call i32 @GdipGetImageHeight(i32* %17, i8** %5)
  %19 = load i32*, i32** %3, align 8
  %20 = call i32 @GdipGetImageWidth(i32* %19, i8** %4)
  %21 = load i8*, i8** %5, align 8
  %22 = getelementptr inbounds %struct.nk_image, %struct.nk_image* %2, i32 0, i32 1
  store i8* %21, i8** %22, align 8
  %23 = load i8*, i8** %4, align 8
  %24 = getelementptr inbounds %struct.nk_image, %struct.nk_image* %2, i32 0, i32 0
  store i8* %23, i8** %24, align 8
  %25 = bitcast %struct.nk_image* %2 to { i8*, i8* }*
  %26 = load { i8*, i8* }, { i8*, i8* }* %25, align 8
  ret { i8*, i8* } %26
}

declare dso_local { i8*, i8* } @nk_image_ptr(i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @GdipGetImageHeight(i32*, i8**) #1

declare dso_local i32 @GdipGetImageWidth(i32*, i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
