; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/mstsc/extr_orders.c_process_bmpcache.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/mstsc/extr_orders.c_process_bmpcache.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@g_rdp_version = common dso_local global i64 0, align 8
@RDP_V5 = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [90 x i8] c"BMPCACHE(cx=%d,cy=%d,id=%d,idx=%d,bpp=%d,size=%d,pad1=%d,bufsize=%d,pad2=%d,rs=%d,fs=%d)\0A\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"Failed to decompress bitmap data\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @process_bmpcache to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @process_bmpcache(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store i32 65535, i32* %16, align 4
  store i32 65535, i32* %15, align 4
  store i32 65535, i32* %14, align 4
  %18 = load i32, i32* %2, align 4
  %19 = load i32, i32* %6, align 4
  %20 = call i32 @in_uint8(i32 %18, i32 %19)
  %21 = load i32, i32* %2, align 4
  %22 = load i32, i32* %17, align 4
  %23 = call i32 @in_uint8(i32 %21, i32 %22)
  %24 = load i32, i32* %2, align 4
  %25 = load i32, i32* %7, align 4
  %26 = call i32 @in_uint8(i32 %24, i32 %25)
  %27 = load i32, i32* %2, align 4
  %28 = load i32, i32* %8, align 4
  %29 = call i32 @in_uint8(i32 %27, i32 %28)
  %30 = load i32, i32* %2, align 4
  %31 = load i32, i32* %9, align 4
  %32 = call i32 @in_uint8(i32 %30, i32 %31)
  %33 = load i32, i32* %9, align 4
  %34 = add nsw i32 %33, 7
  %35 = sdiv i32 %34, 8
  store i32 %35, i32* %10, align 4
  %36 = load i32, i32* %2, align 4
  %37 = load i32, i32* %13, align 4
  %38 = call i32 @in_uint16_le(i32 %36, i32 %37)
  %39 = load i32, i32* %2, align 4
  %40 = load i32, i32* %4, align 4
  %41 = call i32 @in_uint16_le(i32 %39, i32 %40)
  %42 = load i64, i64* @g_rdp_version, align 8
  %43 = load i64, i64* @RDP_V5, align 8
  %44 = icmp sge i64 %42, %43
  br i1 %44, label %45, label %47

45:                                               ; preds = %1
  %46 = load i32, i32* %13, align 4
  store i32 %46, i32* %5, align 4
  br label %60

47:                                               ; preds = %1
  %48 = load i32, i32* %2, align 4
  %49 = load i32, i32* %14, align 4
  %50 = call i32 @in_uint16_le(i32 %48, i32 %49)
  %51 = load i32, i32* %2, align 4
  %52 = load i32, i32* %5, align 4
  %53 = call i32 @in_uint16_le(i32 %51, i32 %52)
  %54 = load i32, i32* %2, align 4
  %55 = load i32, i32* %15, align 4
  %56 = call i32 @in_uint16_le(i32 %54, i32 %55)
  %57 = load i32, i32* %2, align 4
  %58 = load i32, i32* %16, align 4
  %59 = call i32 @in_uint16_le(i32 %57, i32 %58)
  br label %60

60:                                               ; preds = %47, %45
  %61 = load i32, i32* %2, align 4
  %62 = load i32*, i32** %11, align 8
  %63 = load i32, i32* %5, align 4
  %64 = call i32 @in_uint8p(i32 %61, i32* %62, i32 %63)
  %65 = load i32, i32* %7, align 4
  %66 = load i32, i32* %8, align 4
  %67 = load i32, i32* %6, align 4
  %68 = load i32, i32* %4, align 4
  %69 = load i32, i32* %9, align 4
  %70 = load i32, i32* %5, align 4
  %71 = load i32, i32* %17, align 4
  %72 = load i32, i32* %13, align 4
  %73 = load i32, i32* %14, align 4
  %74 = load i32, i32* %15, align 4
  %75 = load i32, i32* %16, align 4
  %76 = sext i32 %75 to i64
  %77 = inttoptr i64 %76 to i8*
  %78 = call i32 @DEBUG(i8* %77)
  %79 = load i32, i32* %7, align 4
  %80 = load i32, i32* %8, align 4
  %81 = mul nsw i32 %79, %80
  %82 = load i32, i32* %10, align 4
  %83 = mul nsw i32 %81, %82
  %84 = call i64 @xmalloc(i32 %83)
  %85 = inttoptr i64 %84 to i32*
  store i32* %85, i32** %12, align 8
  %86 = load i32*, i32** %12, align 8
  %87 = load i32, i32* %7, align 4
  %88 = load i32, i32* %8, align 4
  %89 = load i32*, i32** %11, align 8
  %90 = load i32, i32* %5, align 4
  %91 = load i32, i32* %10, align 4
  %92 = call i64 @bitmap_decompress(i32* %86, i32 %87, i32 %88, i32* %89, i32 %90, i32 %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %103

94:                                               ; preds = %60
  %95 = load i32, i32* %7, align 4
  %96 = load i32, i32* %8, align 4
  %97 = load i32*, i32** %12, align 8
  %98 = call i32 @ui_create_bitmap(i32 %95, i32 %96, i32* %97)
  store i32 %98, i32* %3, align 4
  %99 = load i32, i32* %6, align 4
  %100 = load i32, i32* %4, align 4
  %101 = load i32, i32* %3, align 4
  %102 = call i32 @cache_put_bitmap(i32 %99, i32 %100, i32 %101)
  br label %105

103:                                              ; preds = %60
  %104 = call i32 @DEBUG(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  br label %105

105:                                              ; preds = %103, %94
  %106 = load i32, i32* %17, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %111, label %108

108:                                              ; preds = %105
  %109 = load i32, i32* %14, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %112

111:                                              ; preds = %108, %105
  br label %112

112:                                              ; preds = %111, %108
  %113 = load i32*, i32** %12, align 8
  %114 = call i32 @xfree(i32* %113)
  ret void
}

declare dso_local i32 @in_uint8(i32, i32) #1

declare dso_local i32 @in_uint16_le(i32, i32) #1

declare dso_local i32 @in_uint8p(i32, i32*, i32) #1

declare dso_local i32 @DEBUG(i8*) #1

declare dso_local i64 @xmalloc(i32) #1

declare dso_local i64 @bitmap_decompress(i32*, i32, i32, i32*, i32, i32) #1

declare dso_local i32 @ui_create_bitmap(i32, i32, i32*) #1

declare dso_local i32 @cache_put_bitmap(i32, i32, i32) #1

declare dso_local i32 @xfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
