; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/mstsc/extr_orders.c_process_bmpcache2.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/mstsc/extr_orders.c_process_bmpcache2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ID_MASK = common dso_local global i32 0, align 4
@MODE_MASK = common dso_local global i32 0, align 4
@MODE_SHIFT = common dso_local global i32 0, align 4
@PERSIST = common dso_local global i32 0, align 4
@SQUARE = common dso_local global i32 0, align 4
@BUFSIZE_MASK = common dso_local global i32 0, align 4
@LONG_FORMAT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [68 x i8] c"BMPCACHE2(compr=%d,flags=%x,cx=%d,cy=%d,id=%d,idx=%d,Bpp=%d,bs=%d)\0A\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"Failed to decompress bitmap data\0A\00", align 1
@.str.2 = private unnamed_addr constant [44 x i8] c"process_bmpcache2: ui_create_bitmap failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i64)* @process_bmpcache2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @process_bmpcache2(i32 %0, i32 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i64 %2, i64* %6, align 8
  store i32* null, i32** %18, align 8
  %19 = load i32, i32* %5, align 4
  %20 = load i32, i32* @ID_MASK, align 4
  %21 = and i32 %19, %20
  store i32 %21, i32* %9, align 4
  %22 = load i32, i32* %5, align 4
  %23 = load i32, i32* @MODE_MASK, align 4
  %24 = and i32 %22, %23
  %25 = load i32, i32* @MODE_SHIFT, align 4
  %26 = ashr i32 %24, %25
  %27 = sub nsw i32 %26, 2
  store i32 %27, i32* %13, align 4
  %28 = load i32, i32* %5, align 4
  %29 = load i32, i32* @PERSIST, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %3
  %33 = load i32, i32* %4, align 4
  %34 = load i32*, i32** %18, align 8
  %35 = call i32 @in_uint8p(i32 %33, i32* %34, i32 8)
  br label %36

36:                                               ; preds = %32, %3
  %37 = load i32, i32* %5, align 4
  %38 = load i32, i32* @SQUARE, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %36
  %42 = load i32, i32* %4, align 4
  %43 = load i32, i32* %11, align 4
  %44 = call i32 @in_uint8(i32 %42, i32 %43)
  %45 = load i32, i32* %11, align 4
  store i32 %45, i32* %12, align 4
  br label %53

46:                                               ; preds = %36
  %47 = load i32, i32* %4, align 4
  %48 = load i32, i32* %11, align 4
  %49 = call i32 @in_uint8(i32 %47, i32 %48)
  %50 = load i32, i32* %4, align 4
  %51 = load i32, i32* %12, align 4
  %52 = call i32 @in_uint8(i32 %50, i32 %51)
  br label %53

53:                                               ; preds = %46, %41
  %54 = load i32, i32* %4, align 4
  %55 = load i32, i32* %15, align 4
  %56 = call i32 @in_uint16_be(i32 %54, i32 %55)
  %57 = load i32, i32* @BUFSIZE_MASK, align 4
  %58 = load i32, i32* %15, align 4
  %59 = and i32 %58, %57
  store i32 %59, i32* %15, align 4
  %60 = load i32, i32* %4, align 4
  %61 = load i32, i32* %14, align 4
  %62 = call i32 @in_uint8(i32 %60, i32 %61)
  %63 = load i32, i32* %14, align 4
  %64 = load i32, i32* @LONG_FORMAT, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %77

67:                                               ; preds = %53
  %68 = load i32, i32* %4, align 4
  %69 = load i32, i32* %10, align 4
  %70 = call i32 @in_uint8(i32 %68, i32 %69)
  %71 = load i32, i32* %14, align 4
  %72 = load i32, i32* @LONG_FORMAT, align 4
  %73 = xor i32 %71, %72
  %74 = shl i32 %73, 8
  %75 = load i32, i32* %10, align 4
  %76 = add nsw i32 %74, %75
  store i32 %76, i32* %14, align 4
  br label %77

77:                                               ; preds = %67, %53
  %78 = load i32, i32* %4, align 4
  %79 = load i32*, i32** %16, align 8
  %80 = load i32, i32* %15, align 4
  %81 = call i32 @in_uint8p(i32 %78, i32* %79, i32 %80)
  %82 = load i64, i64* %6, align 8
  %83 = load i32, i32* %5, align 4
  %84 = load i32, i32* %11, align 4
  %85 = load i32, i32* %12, align 4
  %86 = load i32, i32* %9, align 4
  %87 = load i32, i32* %14, align 4
  %88 = load i32, i32* %13, align 4
  %89 = load i32, i32* %15, align 4
  %90 = sext i32 %89 to i64
  %91 = inttoptr i64 %90 to i8*
  %92 = call i32 @DEBUG(i8* %91)
  %93 = load i32, i32* %11, align 4
  %94 = load i32, i32* %12, align 4
  %95 = mul nsw i32 %93, %94
  %96 = load i32, i32* %13, align 4
  %97 = mul nsw i32 %95, %96
  %98 = call i64 @xmalloc(i32 %97)
  %99 = inttoptr i64 %98 to i32*
  store i32* %99, i32** %17, align 8
  %100 = load i64, i64* %6, align 8
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %116

102:                                              ; preds = %77
  %103 = load i32*, i32** %17, align 8
  %104 = load i32, i32* %11, align 4
  %105 = load i32, i32* %12, align 4
  %106 = load i32*, i32** %16, align 8
  %107 = load i32, i32* %15, align 4
  %108 = load i32, i32* %13, align 4
  %109 = call i32 @bitmap_decompress(i32* %103, i32 %104, i32 %105, i32* %106, i32 %107, i32 %108)
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %115, label %111

111:                                              ; preds = %102
  %112 = call i32 @DEBUG(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  %113 = load i32*, i32** %17, align 8
  %114 = call i32 @xfree(i32* %113)
  br label %184

115:                                              ; preds = %102
  br label %149

116:                                              ; preds = %77
  store i32 0, i32* %8, align 4
  br label %117

117:                                              ; preds = %145, %116
  %118 = load i32, i32* %8, align 4
  %119 = load i32, i32* %12, align 4
  %120 = icmp slt i32 %118, %119
  br i1 %120, label %121, label %148

121:                                              ; preds = %117
  %122 = load i32*, i32** %17, align 8
  %123 = load i32, i32* %12, align 4
  %124 = load i32, i32* %8, align 4
  %125 = sub nsw i32 %123, %124
  %126 = sub nsw i32 %125, 1
  %127 = load i32, i32* %11, align 4
  %128 = load i32, i32* %13, align 4
  %129 = mul nsw i32 %127, %128
  %130 = mul nsw i32 %126, %129
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds i32, i32* %122, i64 %131
  %133 = load i32*, i32** %16, align 8
  %134 = load i32, i32* %8, align 4
  %135 = load i32, i32* %11, align 4
  %136 = load i32, i32* %13, align 4
  %137 = mul nsw i32 %135, %136
  %138 = mul nsw i32 %134, %137
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds i32, i32* %133, i64 %139
  %141 = load i32, i32* %11, align 4
  %142 = load i32, i32* %13, align 4
  %143 = mul nsw i32 %141, %142
  %144 = call i32 @memcpy(i32* %132, i32* %140, i32 %143)
  br label %145

145:                                              ; preds = %121
  %146 = load i32, i32* %8, align 4
  %147 = add nsw i32 %146, 1
  store i32 %147, i32* %8, align 4
  br label %117

148:                                              ; preds = %117
  br label %149

149:                                              ; preds = %148, %115
  %150 = load i32, i32* %11, align 4
  %151 = load i32, i32* %12, align 4
  %152 = load i32*, i32** %17, align 8
  %153 = call i64 @ui_create_bitmap(i32 %150, i32 %151, i32* %152)
  store i64 %153, i64* %7, align 8
  %154 = load i64, i64* %7, align 8
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %156, label %179

156:                                              ; preds = %149
  %157 = load i32, i32* %9, align 4
  %158 = load i32, i32* %14, align 4
  %159 = load i64, i64* %7, align 8
  %160 = call i32 @cache_put_bitmap(i32 %157, i32 %158, i64 %159)
  %161 = load i32, i32* %5, align 4
  %162 = load i32, i32* @PERSIST, align 4
  %163 = and i32 %161, %162
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %178

165:                                              ; preds = %156
  %166 = load i32, i32* %9, align 4
  %167 = load i32, i32* %14, align 4
  %168 = load i32*, i32** %18, align 8
  %169 = load i32, i32* %11, align 4
  %170 = load i32, i32* %12, align 4
  %171 = load i32, i32* %11, align 4
  %172 = load i32, i32* %12, align 4
  %173 = mul nsw i32 %171, %172
  %174 = load i32, i32* %13, align 4
  %175 = mul nsw i32 %173, %174
  %176 = load i32*, i32** %17, align 8
  %177 = call i32 @pstcache_save_bitmap(i32 %166, i32 %167, i32* %168, i32 %169, i32 %170, i32 %175, i32* %176)
  br label %178

178:                                              ; preds = %165, %156
  br label %181

179:                                              ; preds = %149
  %180 = call i32 @DEBUG(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0))
  br label %181

181:                                              ; preds = %179, %178
  %182 = load i32*, i32** %17, align 8
  %183 = call i32 @xfree(i32* %182)
  br label %184

184:                                              ; preds = %181, %111
  ret void
}

declare dso_local i32 @in_uint8p(i32, i32*, i32) #1

declare dso_local i32 @in_uint8(i32, i32) #1

declare dso_local i32 @in_uint16_be(i32, i32) #1

declare dso_local i32 @DEBUG(i8*) #1

declare dso_local i64 @xmalloc(i32) #1

declare dso_local i32 @bitmap_decompress(i32*, i32, i32, i32*, i32, i32) #1

declare dso_local i32 @xfree(i32*) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i64 @ui_create_bitmap(i32, i32, i32*) #1

declare dso_local i32 @cache_put_bitmap(i32, i32, i64) #1

declare dso_local i32 @pstcache_save_bitmap(i32, i32, i32*, i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
