; ModuleID = '/home/carl/AnghaBench/postgres/contrib/pgcrypto/extr_pgp-decrypt.c_mdcbuf_refill.c'
source_filename = "/home/carl/AnghaBench/postgres/contrib/pgcrypto/extr_pgp-decrypt.c_mdcbuf_refill.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.MDCBufData = type { i64, i64, i64, i32, i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.MDCBufData*, i32*)* @mdcbuf_refill to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mdcbuf_refill(%struct.MDCBufData* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.MDCBufData*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.MDCBufData* %0, %struct.MDCBufData** %4, align 8
  store i32* %1, i32** %5, align 8
  %10 = load %struct.MDCBufData*, %struct.MDCBufData** %4, align 8
  %11 = getelementptr inbounds %struct.MDCBufData, %struct.MDCBufData* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp sgt i64 %12, 0
  br i1 %13, label %14, label %33

14:                                               ; preds = %2
  %15 = load %struct.MDCBufData*, %struct.MDCBufData** %4, align 8
  %16 = getelementptr inbounds %struct.MDCBufData, %struct.MDCBufData* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = load %struct.MDCBufData*, %struct.MDCBufData** %4, align 8
  %19 = getelementptr inbounds %struct.MDCBufData, %struct.MDCBufData* %18, i32 0, i32 2
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %17, %20
  br i1 %21, label %22, label %33

22:                                               ; preds = %14
  %23 = load %struct.MDCBufData*, %struct.MDCBufData** %4, align 8
  %24 = getelementptr inbounds %struct.MDCBufData, %struct.MDCBufData* %23, i32 0, i32 2
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.MDCBufData*, %struct.MDCBufData** %4, align 8
  %27 = getelementptr inbounds %struct.MDCBufData, %struct.MDCBufData* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.MDCBufData*, %struct.MDCBufData** %4, align 8
  %30 = getelementptr inbounds %struct.MDCBufData, %struct.MDCBufData* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = call i32 @memmove(i64 %25, i64 %28, i64 %31)
  br label %33

33:                                               ; preds = %22, %14, %2
  %34 = load %struct.MDCBufData*, %struct.MDCBufData** %4, align 8
  %35 = getelementptr inbounds %struct.MDCBufData, %struct.MDCBufData* %34, i32 0, i32 2
  %36 = load i64, i64* %35, align 8
  %37 = load %struct.MDCBufData*, %struct.MDCBufData** %4, align 8
  %38 = getelementptr inbounds %struct.MDCBufData, %struct.MDCBufData* %37, i32 0, i32 1
  store i64 %36, i64* %38, align 8
  %39 = load %struct.MDCBufData*, %struct.MDCBufData** %4, align 8
  %40 = getelementptr inbounds %struct.MDCBufData, %struct.MDCBufData* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 8
  %42 = add nsw i32 %41, 22
  %43 = sext i32 %42 to i64
  %44 = load %struct.MDCBufData*, %struct.MDCBufData** %4, align 8
  %45 = getelementptr inbounds %struct.MDCBufData, %struct.MDCBufData* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = sub nsw i64 %43, %46
  %48 = load %struct.MDCBufData*, %struct.MDCBufData** %4, align 8
  %49 = getelementptr inbounds %struct.MDCBufData, %struct.MDCBufData* %48, i32 0, i32 4
  %50 = load i32, i32* %49, align 4
  %51 = sext i32 %50 to i64
  %52 = sub nsw i64 %47, %51
  %53 = trunc i64 %52 to i32
  store i32 %53, i32* %8, align 4
  %54 = load i32*, i32** %5, align 8
  %55 = load i32, i32* %8, align 4
  %56 = call i32 @pullf_read(i32* %54, i32 %55, i32** %6)
  store i32 %56, i32* %7, align 4
  %57 = load i32, i32* %7, align 4
  %58 = icmp slt i32 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %33
  %60 = load i32, i32* %7, align 4
  store i32 %60, i32* %3, align 4
  br label %136

61:                                               ; preds = %33
  %62 = load i32, i32* %7, align 4
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %61
  %65 = load %struct.MDCBufData*, %struct.MDCBufData** %4, align 8
  %66 = call i32 @mdcbuf_finish(%struct.MDCBufData* %65)
  store i32 %66, i32* %3, align 4
  br label %136

67:                                               ; preds = %61
  %68 = load i32, i32* %7, align 4
  %69 = icmp sge i32 %68, 22
  br i1 %69, label %70, label %94

70:                                               ; preds = %67
  %71 = load %struct.MDCBufData*, %struct.MDCBufData** %4, align 8
  %72 = load %struct.MDCBufData*, %struct.MDCBufData** %4, align 8
  %73 = getelementptr inbounds %struct.MDCBufData, %struct.MDCBufData* %72, i32 0, i32 5
  %74 = load i64, i64* %73, align 8
  %75 = inttoptr i64 %74 to i32*
  %76 = load %struct.MDCBufData*, %struct.MDCBufData** %4, align 8
  %77 = getelementptr inbounds %struct.MDCBufData, %struct.MDCBufData* %76, i32 0, i32 4
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @mdcbuf_load_data(%struct.MDCBufData* %71, i32* %75, i32 %78)
  %80 = load %struct.MDCBufData*, %struct.MDCBufData** %4, align 8
  %81 = getelementptr inbounds %struct.MDCBufData, %struct.MDCBufData* %80, i32 0, i32 4
  store i32 0, i32* %81, align 4
  %82 = load %struct.MDCBufData*, %struct.MDCBufData** %4, align 8
  %83 = load i32*, i32** %6, align 8
  %84 = load i32, i32* %7, align 4
  %85 = sub nsw i32 %84, 22
  %86 = call i32 @mdcbuf_load_data(%struct.MDCBufData* %82, i32* %83, i32 %85)
  %87 = load %struct.MDCBufData*, %struct.MDCBufData** %4, align 8
  %88 = load i32*, i32** %6, align 8
  %89 = load i32, i32* %7, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i32, i32* %88, i64 %90
  %92 = getelementptr inbounds i32, i32* %91, i64 -22
  %93 = call i32 @mdcbuf_load_mdc(%struct.MDCBufData* %87, i32* %92, i32 22)
  br label %135

94:                                               ; preds = %67
  %95 = load %struct.MDCBufData*, %struct.MDCBufData** %4, align 8
  %96 = getelementptr inbounds %struct.MDCBufData, %struct.MDCBufData* %95, i32 0, i32 4
  %97 = load i32, i32* %96, align 4
  %98 = load i32, i32* %7, align 4
  %99 = add nsw i32 %97, %98
  %100 = sub nsw i32 %99, 22
  store i32 %100, i32* %9, align 4
  %101 = load i32, i32* %9, align 4
  %102 = icmp sgt i32 %101, 0
  br i1 %102, label %103, label %130

103:                                              ; preds = %94
  %104 = load %struct.MDCBufData*, %struct.MDCBufData** %4, align 8
  %105 = load %struct.MDCBufData*, %struct.MDCBufData** %4, align 8
  %106 = getelementptr inbounds %struct.MDCBufData, %struct.MDCBufData* %105, i32 0, i32 5
  %107 = load i64, i64* %106, align 8
  %108 = inttoptr i64 %107 to i32*
  %109 = load i32, i32* %9, align 4
  %110 = call i32 @mdcbuf_load_data(%struct.MDCBufData* %104, i32* %108, i32 %109)
  %111 = load i32, i32* %9, align 4
  %112 = load %struct.MDCBufData*, %struct.MDCBufData** %4, align 8
  %113 = getelementptr inbounds %struct.MDCBufData, %struct.MDCBufData* %112, i32 0, i32 4
  %114 = load i32, i32* %113, align 4
  %115 = sub nsw i32 %114, %111
  store i32 %115, i32* %113, align 4
  %116 = load %struct.MDCBufData*, %struct.MDCBufData** %4, align 8
  %117 = getelementptr inbounds %struct.MDCBufData, %struct.MDCBufData* %116, i32 0, i32 5
  %118 = load i64, i64* %117, align 8
  %119 = load %struct.MDCBufData*, %struct.MDCBufData** %4, align 8
  %120 = getelementptr inbounds %struct.MDCBufData, %struct.MDCBufData* %119, i32 0, i32 5
  %121 = load i64, i64* %120, align 8
  %122 = load i32, i32* %9, align 4
  %123 = sext i32 %122 to i64
  %124 = add nsw i64 %121, %123
  %125 = load %struct.MDCBufData*, %struct.MDCBufData** %4, align 8
  %126 = getelementptr inbounds %struct.MDCBufData, %struct.MDCBufData* %125, i32 0, i32 4
  %127 = load i32, i32* %126, align 4
  %128 = sext i32 %127 to i64
  %129 = call i32 @memmove(i64 %118, i64 %124, i64 %128)
  br label %130

130:                                              ; preds = %103, %94
  %131 = load %struct.MDCBufData*, %struct.MDCBufData** %4, align 8
  %132 = load i32*, i32** %6, align 8
  %133 = load i32, i32* %7, align 4
  %134 = call i32 @mdcbuf_load_mdc(%struct.MDCBufData* %131, i32* %132, i32 %133)
  br label %135

135:                                              ; preds = %130, %70
  store i32 0, i32* %3, align 4
  br label %136

136:                                              ; preds = %135, %64, %59
  %137 = load i32, i32* %3, align 4
  ret i32 %137
}

declare dso_local i32 @memmove(i64, i64, i64) #1

declare dso_local i32 @pullf_read(i32*, i32, i32**) #1

declare dso_local i32 @mdcbuf_finish(%struct.MDCBufData*) #1

declare dso_local i32 @mdcbuf_load_data(%struct.MDCBufData*, i32*, i32) #1

declare dso_local i32 @mdcbuf_load_mdc(%struct.MDCBufData*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
