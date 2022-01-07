; ModuleID = '/home/carl/AnghaBench/poco/PDF/src/extr_hpdf_encrypt.c_HPDF_MD5Final.c'
source_filename = "/home/carl/AnghaBench/poco/PDF/src/extr_hpdf_encrypt.c_HPDF_MD5Final.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.HPDF_MD5Context = type { i32*, i64, i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @HPDF_MD5Final(i32* %0, %struct.HPDF_MD5Context* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.HPDF_MD5Context*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  store %struct.HPDF_MD5Context* %1, %struct.HPDF_MD5Context** %4, align 8
  %7 = load %struct.HPDF_MD5Context*, %struct.HPDF_MD5Context** %4, align 8
  %8 = getelementptr inbounds %struct.HPDF_MD5Context, %struct.HPDF_MD5Context* %7, i32 0, i32 0
  %9 = load i32*, i32** %8, align 8
  %10 = getelementptr inbounds i32, i32* %9, i64 0
  %11 = load i32, i32* %10, align 4
  %12 = ashr i32 %11, 3
  %13 = and i32 %12, 63
  store i32 %13, i32* %5, align 4
  %14 = load %struct.HPDF_MD5Context*, %struct.HPDF_MD5Context** %4, align 8
  %15 = getelementptr inbounds %struct.HPDF_MD5Context, %struct.HPDF_MD5Context* %14, i32 0, i32 2
  %16 = load i32*, i32** %15, align 8
  %17 = load i32, i32* %5, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i32, i32* %16, i64 %18
  store i32* %19, i32** %6, align 8
  %20 = load i32*, i32** %6, align 8
  %21 = getelementptr inbounds i32, i32* %20, i32 1
  store i32* %21, i32** %6, align 8
  store i32 128, i32* %20, align 4
  %22 = load i32, i32* %5, align 4
  %23 = sub nsw i32 63, %22
  store i32 %23, i32* %5, align 4
  %24 = load i32, i32* %5, align 4
  %25 = icmp slt i32 %24, 8
  br i1 %25, label %26, label %45

26:                                               ; preds = %2
  %27 = load i32*, i32** %6, align 8
  %28 = load i32, i32* %5, align 4
  %29 = call i32 @HPDF_MemSet(i32* %27, i32 0, i32 %28)
  %30 = load %struct.HPDF_MD5Context*, %struct.HPDF_MD5Context** %4, align 8
  %31 = getelementptr inbounds %struct.HPDF_MD5Context, %struct.HPDF_MD5Context* %30, i32 0, i32 2
  %32 = load i32*, i32** %31, align 8
  %33 = call i32 @MD5ByteReverse(i32* %32, i32 16)
  %34 = load %struct.HPDF_MD5Context*, %struct.HPDF_MD5Context** %4, align 8
  %35 = getelementptr inbounds %struct.HPDF_MD5Context, %struct.HPDF_MD5Context* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = load %struct.HPDF_MD5Context*, %struct.HPDF_MD5Context** %4, align 8
  %38 = getelementptr inbounds %struct.HPDF_MD5Context, %struct.HPDF_MD5Context* %37, i32 0, i32 2
  %39 = load i32*, i32** %38, align 8
  %40 = call i32 @MD5Transform(i64 %36, i32* %39)
  %41 = load %struct.HPDF_MD5Context*, %struct.HPDF_MD5Context** %4, align 8
  %42 = getelementptr inbounds %struct.HPDF_MD5Context, %struct.HPDF_MD5Context* %41, i32 0, i32 2
  %43 = load i32*, i32** %42, align 8
  %44 = call i32 @HPDF_MemSet(i32* %43, i32 0, i32 56)
  br label %50

45:                                               ; preds = %2
  %46 = load i32*, i32** %6, align 8
  %47 = load i32, i32* %5, align 4
  %48 = sub nsw i32 %47, 8
  %49 = call i32 @HPDF_MemSet(i32* %46, i32 0, i32 %48)
  br label %50

50:                                               ; preds = %45, %26
  %51 = load %struct.HPDF_MD5Context*, %struct.HPDF_MD5Context** %4, align 8
  %52 = getelementptr inbounds %struct.HPDF_MD5Context, %struct.HPDF_MD5Context* %51, i32 0, i32 2
  %53 = load i32*, i32** %52, align 8
  %54 = call i32 @MD5ByteReverse(i32* %53, i32 14)
  %55 = load %struct.HPDF_MD5Context*, %struct.HPDF_MD5Context** %4, align 8
  %56 = getelementptr inbounds %struct.HPDF_MD5Context, %struct.HPDF_MD5Context* %55, i32 0, i32 0
  %57 = load i32*, i32** %56, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 0
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.HPDF_MD5Context*, %struct.HPDF_MD5Context** %4, align 8
  %61 = getelementptr inbounds %struct.HPDF_MD5Context, %struct.HPDF_MD5Context* %60, i32 0, i32 2
  %62 = load i32*, i32** %61, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 14
  store i32 %59, i32* %63, align 4
  %64 = load %struct.HPDF_MD5Context*, %struct.HPDF_MD5Context** %4, align 8
  %65 = getelementptr inbounds %struct.HPDF_MD5Context, %struct.HPDF_MD5Context* %64, i32 0, i32 0
  %66 = load i32*, i32** %65, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 1
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.HPDF_MD5Context*, %struct.HPDF_MD5Context** %4, align 8
  %70 = getelementptr inbounds %struct.HPDF_MD5Context, %struct.HPDF_MD5Context* %69, i32 0, i32 2
  %71 = load i32*, i32** %70, align 8
  %72 = getelementptr inbounds i32, i32* %71, i64 15
  store i32 %68, i32* %72, align 4
  %73 = load %struct.HPDF_MD5Context*, %struct.HPDF_MD5Context** %4, align 8
  %74 = getelementptr inbounds %struct.HPDF_MD5Context, %struct.HPDF_MD5Context* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = load %struct.HPDF_MD5Context*, %struct.HPDF_MD5Context** %4, align 8
  %77 = getelementptr inbounds %struct.HPDF_MD5Context, %struct.HPDF_MD5Context* %76, i32 0, i32 2
  %78 = load i32*, i32** %77, align 8
  %79 = call i32 @MD5Transform(i64 %75, i32* %78)
  %80 = load %struct.HPDF_MD5Context*, %struct.HPDF_MD5Context** %4, align 8
  %81 = getelementptr inbounds %struct.HPDF_MD5Context, %struct.HPDF_MD5Context* %80, i32 0, i32 1
  %82 = load i64, i64* %81, align 8
  %83 = inttoptr i64 %82 to i32*
  %84 = call i32 @MD5ByteReverse(i32* %83, i32 4)
  %85 = load i32*, i32** %3, align 8
  %86 = load %struct.HPDF_MD5Context*, %struct.HPDF_MD5Context** %4, align 8
  %87 = getelementptr inbounds %struct.HPDF_MD5Context, %struct.HPDF_MD5Context* %86, i32 0, i32 1
  %88 = load i64, i64* %87, align 8
  %89 = inttoptr i64 %88 to i32*
  %90 = call i32 @HPDF_MemCpy(i32* %85, i32* %89, i32 16)
  %91 = load %struct.HPDF_MD5Context*, %struct.HPDF_MD5Context** %4, align 8
  %92 = bitcast %struct.HPDF_MD5Context* %91 to i32*
  %93 = call i32 @HPDF_MemSet(i32* %92, i32 0, i32 8)
  ret void
}

declare dso_local i32 @HPDF_MemSet(i32*, i32, i32) #1

declare dso_local i32 @MD5ByteReverse(i32*, i32) #1

declare dso_local i32 @MD5Transform(i64, i32*) #1

declare dso_local i32 @HPDF_MemCpy(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
