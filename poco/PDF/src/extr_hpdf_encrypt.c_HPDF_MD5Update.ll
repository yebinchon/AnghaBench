; ModuleID = '/home/carl/AnghaBench/poco/PDF/src/extr_hpdf_encrypt.c_HPDF_MD5Update.c'
source_filename = "/home/carl/AnghaBench/poco/PDF/src/extr_hpdf_encrypt.c_HPDF_MD5Update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.HPDF_MD5Context = type { i32*, i32*, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @HPDF_MD5Update(%struct.HPDF_MD5Context* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.HPDF_MD5Context*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  store %struct.HPDF_MD5Context* %0, %struct.HPDF_MD5Context** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.HPDF_MD5Context*, %struct.HPDF_MD5Context** %4, align 8
  %10 = getelementptr inbounds %struct.HPDF_MD5Context, %struct.HPDF_MD5Context* %9, i32 0, i32 0
  %11 = load i32*, i32** %10, align 8
  %12 = getelementptr inbounds i32, i32* %11, i64 0
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %7, align 4
  %14 = load i32, i32* %7, align 4
  %15 = load i32, i32* %6, align 4
  %16 = shl i32 %15, 3
  %17 = add nsw i32 %14, %16
  %18 = load %struct.HPDF_MD5Context*, %struct.HPDF_MD5Context** %4, align 8
  %19 = getelementptr inbounds %struct.HPDF_MD5Context, %struct.HPDF_MD5Context* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 0
  store i32 %17, i32* %21, align 4
  %22 = load i32, i32* %7, align 4
  %23 = icmp slt i32 %17, %22
  br i1 %23, label %24, label %31

24:                                               ; preds = %3
  %25 = load %struct.HPDF_MD5Context*, %struct.HPDF_MD5Context** %4, align 8
  %26 = getelementptr inbounds %struct.HPDF_MD5Context, %struct.HPDF_MD5Context* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 1
  %29 = load i32, i32* %28, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %28, align 4
  br label %31

31:                                               ; preds = %24, %3
  %32 = load i32, i32* %6, align 4
  %33 = ashr i32 %32, 29
  %34 = load %struct.HPDF_MD5Context*, %struct.HPDF_MD5Context** %4, align 8
  %35 = getelementptr inbounds %struct.HPDF_MD5Context, %struct.HPDF_MD5Context* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 1
  %38 = load i32, i32* %37, align 4
  %39 = add nsw i32 %38, %33
  store i32 %39, i32* %37, align 4
  %40 = load i32, i32* %7, align 4
  %41 = ashr i32 %40, 3
  %42 = and i32 %41, 63
  store i32 %42, i32* %7, align 4
  %43 = load i32, i32* %7, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %85

45:                                               ; preds = %31
  %46 = load %struct.HPDF_MD5Context*, %struct.HPDF_MD5Context** %4, align 8
  %47 = getelementptr inbounds %struct.HPDF_MD5Context, %struct.HPDF_MD5Context* %46, i32 0, i32 1
  %48 = load i32*, i32** %47, align 8
  %49 = load i32, i32* %7, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %48, i64 %50
  store i32* %51, i32** %8, align 8
  %52 = load i32, i32* %7, align 4
  %53 = sub nsw i32 64, %52
  store i32 %53, i32* %7, align 4
  %54 = load i32, i32* %6, align 4
  %55 = load i32, i32* %7, align 4
  %56 = icmp slt i32 %54, %55
  br i1 %56, label %57, label %62

57:                                               ; preds = %45
  %58 = load i32*, i32** %8, align 8
  %59 = load i32*, i32** %5, align 8
  %60 = load i32, i32* %6, align 4
  %61 = call i32 @HPDF_MemCpy(i32* %58, i32* %59, i32 %60)
  br label %117

62:                                               ; preds = %45
  %63 = load i32*, i32** %8, align 8
  %64 = load i32*, i32** %5, align 8
  %65 = load i32, i32* %7, align 4
  %66 = call i32 @HPDF_MemCpy(i32* %63, i32* %64, i32 %65)
  %67 = load %struct.HPDF_MD5Context*, %struct.HPDF_MD5Context** %4, align 8
  %68 = getelementptr inbounds %struct.HPDF_MD5Context, %struct.HPDF_MD5Context* %67, i32 0, i32 1
  %69 = load i32*, i32** %68, align 8
  %70 = call i32 @MD5ByteReverse(i32* %69, i32 16)
  %71 = load %struct.HPDF_MD5Context*, %struct.HPDF_MD5Context** %4, align 8
  %72 = getelementptr inbounds %struct.HPDF_MD5Context, %struct.HPDF_MD5Context* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 8
  %74 = load %struct.HPDF_MD5Context*, %struct.HPDF_MD5Context** %4, align 8
  %75 = getelementptr inbounds %struct.HPDF_MD5Context, %struct.HPDF_MD5Context* %74, i32 0, i32 1
  %76 = load i32*, i32** %75, align 8
  %77 = call i32 @MD5Transform(i32 %73, i32* %76)
  %78 = load i32, i32* %7, align 4
  %79 = load i32*, i32** %5, align 8
  %80 = sext i32 %78 to i64
  %81 = getelementptr inbounds i32, i32* %79, i64 %80
  store i32* %81, i32** %5, align 8
  %82 = load i32, i32* %7, align 4
  %83 = load i32, i32* %6, align 4
  %84 = sub nsw i32 %83, %82
  store i32 %84, i32* %6, align 4
  br label %85

85:                                               ; preds = %62, %31
  br label %86

86:                                               ; preds = %89, %85
  %87 = load i32, i32* %6, align 4
  %88 = icmp sge i32 %87, 64
  br i1 %88, label %89, label %110

89:                                               ; preds = %86
  %90 = load %struct.HPDF_MD5Context*, %struct.HPDF_MD5Context** %4, align 8
  %91 = getelementptr inbounds %struct.HPDF_MD5Context, %struct.HPDF_MD5Context* %90, i32 0, i32 1
  %92 = load i32*, i32** %91, align 8
  %93 = load i32*, i32** %5, align 8
  %94 = call i32 @HPDF_MemCpy(i32* %92, i32* %93, i32 64)
  %95 = load %struct.HPDF_MD5Context*, %struct.HPDF_MD5Context** %4, align 8
  %96 = getelementptr inbounds %struct.HPDF_MD5Context, %struct.HPDF_MD5Context* %95, i32 0, i32 1
  %97 = load i32*, i32** %96, align 8
  %98 = call i32 @MD5ByteReverse(i32* %97, i32 16)
  %99 = load %struct.HPDF_MD5Context*, %struct.HPDF_MD5Context** %4, align 8
  %100 = getelementptr inbounds %struct.HPDF_MD5Context, %struct.HPDF_MD5Context* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 8
  %102 = load %struct.HPDF_MD5Context*, %struct.HPDF_MD5Context** %4, align 8
  %103 = getelementptr inbounds %struct.HPDF_MD5Context, %struct.HPDF_MD5Context* %102, i32 0, i32 1
  %104 = load i32*, i32** %103, align 8
  %105 = call i32 @MD5Transform(i32 %101, i32* %104)
  %106 = load i32*, i32** %5, align 8
  %107 = getelementptr inbounds i32, i32* %106, i64 64
  store i32* %107, i32** %5, align 8
  %108 = load i32, i32* %6, align 4
  %109 = sub nsw i32 %108, 64
  store i32 %109, i32* %6, align 4
  br label %86

110:                                              ; preds = %86
  %111 = load %struct.HPDF_MD5Context*, %struct.HPDF_MD5Context** %4, align 8
  %112 = getelementptr inbounds %struct.HPDF_MD5Context, %struct.HPDF_MD5Context* %111, i32 0, i32 1
  %113 = load i32*, i32** %112, align 8
  %114 = load i32*, i32** %5, align 8
  %115 = load i32, i32* %6, align 4
  %116 = call i32 @HPDF_MemCpy(i32* %113, i32* %114, i32 %115)
  br label %117

117:                                              ; preds = %110, %57
  ret void
}

declare dso_local i32 @HPDF_MemCpy(i32*, i32*, i32) #1

declare dso_local i32 @MD5ByteReverse(i32*, i32) #1

declare dso_local i32 @MD5Transform(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
