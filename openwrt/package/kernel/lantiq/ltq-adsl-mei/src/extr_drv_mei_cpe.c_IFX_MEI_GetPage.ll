; ModuleID = '/home/carl/AnghaBench/openwrt/package/kernel/lantiq/ltq-adsl-mei/src/extr_drv_mei_cpe.c_IFX_MEI_GetPage.c'
source_filename = "/home/carl/AnghaBench/openwrt/package/kernel/lantiq/ltq-adsl-mei/src/extr_drv_mei_cpe.c_IFX_MEI_GetPage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_7__*, %struct.TYPE_5__* }
%struct.TYPE_7__ = type { i64, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64, i64, i64, i64, i64, i64 }
%struct.TYPE_5__ = type { i64 }

@GET_DATA = common dso_local global i64 0, align 8
@BOOT_FLAG_MASK = common dso_local global i64 0, align 8
@SDRAM_SEGMENT_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i64, i64, i64, i64*, i64*)* @IFX_MEI_GetPage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @IFX_MEI_GetPage(i32* %0, i64 %1, i64 %2, i64 %3, i64* %4, i64* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i64*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  store i32* %0, i32** %8, align 8
  store i64 %1, i64* %9, align 8
  store i64 %2, i64* %10, align 8
  store i64 %3, i64* %11, align 8
  store i64* %4, i64** %12, align 8
  store i64* %5, i64** %13, align 8
  store i64 0, i64* %19, align 8
  %20 = load i64, i64* %9, align 8
  %21 = load i32*, i32** %8, align 8
  %22 = call %struct.TYPE_8__* @DSL_DEV_PRIVATE(i32* %21)
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp sgt i64 %20, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %6
  store i32 -2, i32* %7, align 4
  br label %184

29:                                               ; preds = %6
  %30 = load i64, i64* %10, align 8
  %31 = load i64, i64* @GET_DATA, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %44

33:                                               ; preds = %29
  %34 = load i32*, i32** %8, align 8
  %35 = call %struct.TYPE_8__* @DSL_DEV_PRIVATE(i32* %34)
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 0
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 1
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %38, align 8
  %40 = load i64, i64* %9, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  br label %55

44:                                               ; preds = %29
  %45 = load i32*, i32** %8, align 8
  %46 = call %struct.TYPE_8__* @DSL_DEV_PRIVATE(i32* %45)
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 0
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 1
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %49, align 8
  %51 = load i64, i64* %9, align 8
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  br label %55

55:                                               ; preds = %44, %33
  %56 = phi i64 [ %43, %33 ], [ %54, %44 ]
  store i64 %56, i64* %14, align 8
  %57 = load i64, i64* @BOOT_FLAG_MASK, align 8
  %58 = load i64, i64* %14, align 8
  %59 = and i64 %58, %57
  store i64 %59, i64* %14, align 8
  %60 = load i64, i64* %14, align 8
  %61 = load i64, i64* %11, align 8
  %62 = icmp sgt i64 %60, %61
  br i1 %62, label %63, label %64

63:                                               ; preds = %55
  store i32 -1, i32* %7, align 4
  br label %184

64:                                               ; preds = %55
  %65 = load i64, i64* %14, align 8
  %66 = icmp eq i64 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %64
  store i32 0, i32* %7, align 4
  br label %184

68:                                               ; preds = %64
  %69 = load i64, i64* %10, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %82

71:                                               ; preds = %68
  %72 = load i32*, i32** %8, align 8
  %73 = call %struct.TYPE_8__* @DSL_DEV_PRIVATE(i32* %72)
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i32 0, i32 0
  %75 = load %struct.TYPE_7__*, %struct.TYPE_7__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %75, i32 0, i32 1
  %77 = load %struct.TYPE_6__*, %struct.TYPE_6__** %76, align 8
  %78 = load i64, i64* %9, align 8
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i64 %78
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 2
  %81 = load i64, i64* %80, align 8
  br label %93

82:                                               ; preds = %68
  %83 = load i32*, i32** %8, align 8
  %84 = call %struct.TYPE_8__* @DSL_DEV_PRIVATE(i32* %83)
  %85 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %84, i32 0, i32 0
  %86 = load %struct.TYPE_7__*, %struct.TYPE_7__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %86, i32 0, i32 1
  %88 = load %struct.TYPE_6__*, %struct.TYPE_6__** %87, align 8
  %89 = load i64, i64* %9, align 8
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i64 %89
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i32 0, i32 3
  %92 = load i64, i64* %91, align 8
  br label %93

93:                                               ; preds = %82, %71
  %94 = phi i64 [ %81, %71 ], [ %92, %82 ]
  store i64 %94, i64* %15, align 8
  %95 = load i64, i64* %15, align 8
  %96 = load i64, i64* @SDRAM_SEGMENT_SIZE, align 8
  %97 = sdiv i64 %95, %96
  store i64 %97, i64* %17, align 8
  %98 = load i64, i64* %15, align 8
  %99 = load i64, i64* @SDRAM_SEGMENT_SIZE, align 8
  %100 = srem i64 %98, %99
  store i64 %100, i64* %18, align 8
  %101 = load i32*, i32** %8, align 8
  %102 = call %struct.TYPE_8__* @DSL_DEV_PRIVATE(i32* %101)
  %103 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %102, i32 0, i32 1
  %104 = load %struct.TYPE_5__*, %struct.TYPE_5__** %103, align 8
  %105 = load i64, i64* %17, align 8
  %106 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %104, i64 %105
  %107 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = inttoptr i64 %108 to i32*
  %110 = load i64, i64* %18, align 8
  %111 = getelementptr inbounds i32, i32* %109, i64 %110
  %112 = bitcast i32* %111 to i64*
  store i64* %112, i64** %16, align 8
  store i64 0, i64* %15, align 8
  br label %113

113:                                              ; preds = %151, %93
  %114 = load i64, i64* %15, align 8
  %115 = load i64, i64* %14, align 8
  %116 = icmp slt i64 %114, %115
  br i1 %116, label %117, label %154

117:                                              ; preds = %113
  %118 = load i64, i64* %18, align 8
  %119 = load i64, i64* %15, align 8
  %120 = mul nsw i64 %119, 4
  %121 = add nsw i64 %118, %120
  %122 = load i64, i64* %19, align 8
  %123 = load i64, i64* @SDRAM_SEGMENT_SIZE, align 8
  %124 = mul nsw i64 %122, %123
  %125 = sub nsw i64 %121, %124
  %126 = load i64, i64* @SDRAM_SEGMENT_SIZE, align 8
  %127 = icmp sge i64 %125, %126
  br i1 %127, label %128, label %144

128:                                              ; preds = %117
  %129 = load i64, i64* %17, align 8
  %130 = add nsw i64 %129, 1
  store i64 %130, i64* %17, align 8
  %131 = load i64, i64* %19, align 8
  %132 = add nsw i64 %131, 1
  store i64 %132, i64* %19, align 8
  %133 = load i32*, i32** %8, align 8
  %134 = call %struct.TYPE_8__* @DSL_DEV_PRIVATE(i32* %133)
  %135 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %134, i32 0, i32 1
  %136 = load %struct.TYPE_5__*, %struct.TYPE_5__** %135, align 8
  %137 = load i64, i64* %17, align 8
  %138 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %136, i64 %137
  %139 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %138, i32 0, i32 0
  %140 = load i64, i64* %139, align 8
  %141 = call i64 @KSEG1ADDR(i64 %140)
  %142 = inttoptr i64 %141 to i32*
  %143 = bitcast i32* %142 to i64*
  store i64* %143, i64** %16, align 8
  br label %144

144:                                              ; preds = %128, %117
  %145 = load i64*, i64** %16, align 8
  %146 = getelementptr inbounds i64, i64* %145, i32 1
  store i64* %146, i64** %16, align 8
  %147 = load i64, i64* %145, align 8
  %148 = load i64*, i64** %12, align 8
  %149 = load i64, i64* %15, align 8
  %150 = getelementptr inbounds i64, i64* %148, i64 %149
  store i64 %147, i64* %150, align 8
  br label %151

151:                                              ; preds = %144
  %152 = load i64, i64* %15, align 8
  %153 = add nsw i64 %152, 1
  store i64 %153, i64* %15, align 8
  br label %113

154:                                              ; preds = %113
  %155 = load i64, i64* %10, align 8
  %156 = icmp ne i64 %155, 0
  br i1 %156, label %157, label %168

157:                                              ; preds = %154
  %158 = load i32*, i32** %8, align 8
  %159 = call %struct.TYPE_8__* @DSL_DEV_PRIVATE(i32* %158)
  %160 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %159, i32 0, i32 0
  %161 = load %struct.TYPE_7__*, %struct.TYPE_7__** %160, align 8
  %162 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %161, i32 0, i32 1
  %163 = load %struct.TYPE_6__*, %struct.TYPE_6__** %162, align 8
  %164 = load i64, i64* %9, align 8
  %165 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %163, i64 %164
  %166 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %165, i32 0, i32 4
  %167 = load i64, i64* %166, align 8
  br label %179

168:                                              ; preds = %154
  %169 = load i32*, i32** %8, align 8
  %170 = call %struct.TYPE_8__* @DSL_DEV_PRIVATE(i32* %169)
  %171 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %170, i32 0, i32 0
  %172 = load %struct.TYPE_7__*, %struct.TYPE_7__** %171, align 8
  %173 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %172, i32 0, i32 1
  %174 = load %struct.TYPE_6__*, %struct.TYPE_6__** %173, align 8
  %175 = load i64, i64* %9, align 8
  %176 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %174, i64 %175
  %177 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %176, i32 0, i32 5
  %178 = load i64, i64* %177, align 8
  br label %179

179:                                              ; preds = %168, %157
  %180 = phi i64 [ %167, %157 ], [ %178, %168 ]
  %181 = load i64*, i64** %13, align 8
  store i64 %180, i64* %181, align 8
  %182 = load i64, i64* %14, align 8
  %183 = trunc i64 %182 to i32
  store i32 %183, i32* %7, align 4
  br label %184

184:                                              ; preds = %179, %67, %63, %28
  %185 = load i32, i32* %7, align 4
  ret i32 %185
}

declare dso_local %struct.TYPE_8__* @DSL_DEV_PRIVATE(i32*) #1

declare dso_local i64 @KSEG1ADDR(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
