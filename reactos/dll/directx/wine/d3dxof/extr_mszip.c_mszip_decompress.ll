; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/d3dxof/extr_mszip.c_mszip_decompress.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/d3dxof/extr_mszip.c_mszip_decompress.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8*, i8*, i8* }
%struct.TYPE_5__ = type { i32, i32 }

@.str = private unnamed_addr constant [18 x i8] c"(%u, %u, %p, %p)\0A\00", align 1
@CAB_INPUTMAX = common dso_local global i32 0, align 4
@CAB_BLOCKMAX = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [54 x i8] c"Big file not supported yet (inlen = %u, outlen = %u)\0A\00", align 1
@DECR_DATAFORMAT = common dso_local global i32 0, align 4
@fdi_alloc = common dso_local global i32 0, align 4
@fdi_free = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mszip_decompress(i32 %0, i32 %1, i8* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_4__, align 8
  %12 = alloca %struct.TYPE_5__, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  %13 = load i32, i32* %6, align 4
  %14 = load i32, i32* %7, align 4
  %15 = load i8*, i8** %8, align 8
  %16 = load i8*, i8** %9, align 8
  %17 = call i32 @TRACE(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %13, i32 %14, i8* %15, i8* %16)
  %18 = load i32, i32* %6, align 4
  %19 = load i32, i32* @CAB_INPUTMAX, align 4
  %20 = icmp ugt i32 %18, %19
  br i1 %20, label %25, label %21

21:                                               ; preds = %4
  %22 = load i32, i32* %7, align 4
  %23 = load i32, i32* @CAB_BLOCKMAX, align 4
  %24 = icmp ugt i32 %22, %23
  br i1 %24, label %25, label %30

25:                                               ; preds = %21, %4
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* %7, align 4
  %28 = call i32 @FIXME(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.1, i64 0, i64 0), i32 %26, i32 %27)
  %29 = load i32, i32* @DECR_DATAFORMAT, align 4
  store i32 %29, i32* %5, align 4
  br label %51

30:                                               ; preds = %21
  %31 = load i32, i32* @fdi_alloc, align 4
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 1
  store i32 %31, i32* %32, align 4
  %33 = load i32, i32* @fdi_free, align 4
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  store i32 %33, i32* %34, align 4
  %35 = bitcast %struct.TYPE_5__* %12 to i8*
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 2
  store i8* %35, i8** %36, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %38 = load i8*, i8** %37, align 8
  %39 = load i8*, i8** %8, align 8
  %40 = load i32, i32* %6, align 4
  %41 = call i32 @memcpy(i8* %38, i8* %39, i32 %40)
  %42 = load i32, i32* %6, align 4
  %43 = load i32, i32* %7, align 4
  %44 = call i32 @ZIPfdi_decomp(i32 %42, i32 %43, %struct.TYPE_4__* %11)
  store i32 %44, i32* %10, align 4
  %45 = load i8*, i8** %9, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 1
  %47 = load i8*, i8** %46, align 8
  %48 = load i32, i32* %7, align 4
  %49 = call i32 @memcpy(i8* %45, i8* %47, i32 %48)
  %50 = load i32, i32* %10, align 4
  store i32 %50, i32* %5, align 4
  br label %51

51:                                               ; preds = %30, %25
  %52 = load i32, i32* %5, align 4
  ret i32 %52
}

declare dso_local i32 @TRACE(i8*, i32, i32, i8*, i8*) #1

declare dso_local i32 @FIXME(i8*, i32, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @ZIPfdi_decomp(i32, i32, %struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
