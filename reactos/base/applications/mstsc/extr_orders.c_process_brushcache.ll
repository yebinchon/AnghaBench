; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/mstsc/extr_orders.c_process_brushcache.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/mstsc/extr_orders.c_process_brushcache.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32* }

@.str = private unnamed_addr constant [38 x i8] c"BRUSHCACHE(idx=%d,wd=%d,ht=%d,sz=%d)\0A\00", align 1
@.str.1 = private unnamed_addr constant [44 x i8] c"incompatible brush, colour_code %d size %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [40 x i8] c"incompatible brush, width height %d %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32)* @process_brushcache to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @process_brushcache(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_3__, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %15 = load i32, i32* %3, align 4
  %16 = load i32, i32* %6, align 4
  %17 = call i32 @in_uint8(i32 %15, i32 %16)
  %18 = load i32, i32* %3, align 4
  %19 = load i32, i32* %7, align 4
  %20 = call i32 @in_uint8(i32 %18, i32 %19)
  %21 = load i32, i32* %3, align 4
  %22 = load i32, i32* %8, align 4
  %23 = call i32 @in_uint8(i32 %21, i32 %22)
  %24 = load i32, i32* %3, align 4
  %25 = load i32, i32* %9, align 4
  %26 = call i32 @in_uint8(i32 %24, i32 %25)
  %27 = load i32, i32* %3, align 4
  %28 = load i32, i32* %11, align 4
  %29 = call i32 @in_uint8(i32 %27, i32 %28)
  %30 = load i32, i32* %3, align 4
  %31 = load i32, i32* %10, align 4
  %32 = call i32 @in_uint8(i32 %30, i32 %31)
  %33 = load i32, i32* %6, align 4
  %34 = load i32, i32* %8, align 4
  %35 = load i32, i32* %9, align 4
  %36 = load i32, i32* %10, align 4
  %37 = sext i32 %36 to i64
  %38 = inttoptr i64 %37 to i8*
  %39 = call i32 @DEBUG(i8* %38)
  %40 = load i32, i32* %8, align 4
  %41 = icmp eq i32 %40, 8
  br i1 %41, label %42, label %133

42:                                               ; preds = %2
  %43 = load i32, i32* %9, align 4
  %44 = icmp eq i32 %43, 8
  br i1 %44, label %45, label %133

45:                                               ; preds = %42
  %46 = load i32, i32* %7, align 4
  %47 = icmp eq i32 %46, 1
  br i1 %47, label %48, label %80

48:                                               ; preds = %45
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 0
  store i32 1, i32* %49, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 1
  store i32 8, i32* %50, align 4
  %51 = call i8* @xmalloc(i32 8)
  %52 = bitcast i8* %51 to i32*
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 2
  store i32* %52, i32** %53, align 8
  %54 = load i32, i32* %10, align 4
  %55 = icmp eq i32 %54, 8
  br i1 %55, label %56, label %73

56:                                               ; preds = %48
  store i32 7, i32* %13, align 4
  br label %57

57:                                               ; preds = %69, %56
  %58 = load i32, i32* %13, align 4
  %59 = icmp sge i32 %58, 0
  br i1 %59, label %60, label %72

60:                                               ; preds = %57
  %61 = load i32, i32* %3, align 4
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 2
  %63 = load i32*, i32** %62, align 8
  %64 = load i32, i32* %13, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i32, i32* %63, i64 %65
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @in_uint8(i32 %61, i32 %67)
  br label %69

69:                                               ; preds = %60
  %70 = load i32, i32* %13, align 4
  %71 = add nsw i32 %70, -1
  store i32 %71, i32* %13, align 4
  br label %57

72:                                               ; preds = %57
  br label %77

73:                                               ; preds = %48
  %74 = load i32, i32* %7, align 4
  %75 = load i32, i32* %10, align 4
  %76 = call i32 @warning(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i32 %74, i32 %75)
  br label %77

77:                                               ; preds = %73, %72
  %78 = load i32, i32* %6, align 4
  %79 = call i32 @cache_put_brush_data(i32 1, i32 %78, %struct.TYPE_3__* %5)
  br label %132

80:                                               ; preds = %45
  %81 = load i32, i32* %7, align 4
  %82 = icmp sge i32 %81, 3
  br i1 %82, label %83, label %127

83:                                               ; preds = %80
  %84 = load i32, i32* %7, align 4
  %85 = icmp sle i32 %84, 6
  br i1 %85, label %86, label %127

86:                                               ; preds = %83
  %87 = load i32, i32* %7, align 4
  %88 = sub nsw i32 %87, 2
  store i32 %88, i32* %14, align 4
  %89 = load i32, i32* %7, align 4
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 0
  store i32 %89, i32* %90, align 8
  %91 = load i32, i32* %14, align 4
  %92 = mul nsw i32 64, %91
  %93 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 1
  store i32 %92, i32* %93, align 4
  %94 = load i32, i32* %14, align 4
  %95 = mul nsw i32 64, %94
  %96 = call i8* @xmalloc(i32 %95)
  %97 = bitcast i8* %96 to i32*
  %98 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 2
  store i32* %97, i32** %98, align 8
  %99 = load i32, i32* %10, align 4
  %100 = load i32, i32* %14, align 4
  %101 = mul nsw i32 4, %100
  %102 = add nsw i32 16, %101
  %103 = icmp eq i32 %99, %102
  br i1 %103, label %104, label %116

104:                                              ; preds = %86
  %105 = load i32, i32* %3, align 4
  %106 = load i32*, i32** %12, align 8
  %107 = load i32, i32* %14, align 4
  %108 = mul nsw i32 4, %107
  %109 = add nsw i32 16, %108
  %110 = call i32 @in_uint8p(i32 %105, i32* %106, i32 %109)
  %111 = load i32*, i32** %12, align 8
  %112 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 2
  %113 = load i32*, i32** %112, align 8
  %114 = load i32, i32* %14, align 4
  %115 = call i32 @process_compressed_8x8_brush_data(i32* %111, i32* %113, i32 %114)
  br label %123

116:                                              ; preds = %86
  %117 = load i32, i32* %3, align 4
  %118 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 2
  %119 = load i32*, i32** %118, align 8
  %120 = load i32, i32* %14, align 4
  %121 = mul nsw i32 64, %120
  %122 = call i32 @in_uint8a(i32 %117, i32* %119, i32 %121)
  br label %123

123:                                              ; preds = %116, %104
  %124 = load i32, i32* %7, align 4
  %125 = load i32, i32* %6, align 4
  %126 = call i32 @cache_put_brush_data(i32 %124, i32 %125, %struct.TYPE_3__* %5)
  br label %131

127:                                              ; preds = %83, %80
  %128 = load i32, i32* %7, align 4
  %129 = load i32, i32* %10, align 4
  %130 = call i32 @warning(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i32 %128, i32 %129)
  br label %131

131:                                              ; preds = %127, %123
  br label %132

132:                                              ; preds = %131, %77
  br label %137

133:                                              ; preds = %42, %2
  %134 = load i32, i32* %8, align 4
  %135 = load i32, i32* %9, align 4
  %136 = call i32 @warning(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0), i32 %134, i32 %135)
  br label %137

137:                                              ; preds = %133, %132
  %138 = load i32, i32* %11, align 4
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %141

140:                                              ; preds = %137
  br label %141

141:                                              ; preds = %140, %137
  ret void
}

declare dso_local i32 @in_uint8(i32, i32) #1

declare dso_local i32 @DEBUG(i8*) #1

declare dso_local i8* @xmalloc(i32) #1

declare dso_local i32 @warning(i8*, i32, i32) #1

declare dso_local i32 @cache_put_brush_data(i32, i32, %struct.TYPE_3__*) #1

declare dso_local i32 @in_uint8p(i32, i32*, i32) #1

declare dso_local i32 @process_compressed_8x8_brush_data(i32*, i32*, i32) #1

declare dso_local i32 @in_uint8a(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
