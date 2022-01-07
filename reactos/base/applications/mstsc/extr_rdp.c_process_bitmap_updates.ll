; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/mstsc/extr_rdp.c_process_bitmap_updates.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/mstsc/extr_rdp.c_process_bitmap_updates.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [60 x i8] c"BITMAP_UPDATE(l=%d,t=%d,r=%d,b=%d,w=%d,h=%d,Bpp=%d,cmp=%d)\0A\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"Failed to decompress data\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @process_bitmap_updates(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %21 = load i32, i32* %2, align 4
  %22 = load i32, i32* %3, align 4
  %23 = call i32 @in_uint16_le(i32 %21, i32 %22)
  store i32 0, i32* %19, align 4
  br label %24

24:                                               ; preds = %171, %1
  %25 = load i32, i32* %19, align 4
  %26 = load i32, i32* %3, align 4
  %27 = icmp slt i32 %25, %26
  br i1 %27, label %28, label %174

28:                                               ; preds = %24
  %29 = load i32, i32* %2, align 4
  %30 = load i32, i32* %4, align 4
  %31 = call i32 @in_uint16_le(i32 %29, i32 %30)
  %32 = load i32, i32* %2, align 4
  %33 = load i32, i32* %5, align 4
  %34 = call i32 @in_uint16_le(i32 %32, i32 %33)
  %35 = load i32, i32* %2, align 4
  %36 = load i32, i32* %6, align 4
  %37 = call i32 @in_uint16_le(i32 %35, i32 %36)
  %38 = load i32, i32* %2, align 4
  %39 = load i32, i32* %7, align 4
  %40 = call i32 @in_uint16_le(i32 %38, i32 %39)
  %41 = load i32, i32* %2, align 4
  %42 = load i32, i32* %8, align 4
  %43 = call i32 @in_uint16_le(i32 %41, i32 %42)
  %44 = load i32, i32* %2, align 4
  %45 = load i32, i32* %9, align 4
  %46 = call i32 @in_uint16_le(i32 %44, i32 %45)
  %47 = load i32, i32* %2, align 4
  %48 = load i32, i32* %12, align 4
  %49 = call i32 @in_uint16_le(i32 %47, i32 %48)
  %50 = load i32, i32* %12, align 4
  %51 = add nsw i32 %50, 7
  %52 = sdiv i32 %51, 8
  store i32 %52, i32* %13, align 4
  %53 = load i32, i32* %2, align 4
  %54 = load i32, i32* %14, align 4
  %55 = call i32 @in_uint16_le(i32 %53, i32 %54)
  %56 = load i32, i32* %2, align 4
  %57 = load i32, i32* %15, align 4
  %58 = call i32 @in_uint16_le(i32 %56, i32 %57)
  %59 = load i32, i32* %6, align 4
  %60 = load i32, i32* %4, align 4
  %61 = sub nsw i32 %59, %60
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %10, align 4
  %63 = load i32, i32* %7, align 4
  %64 = load i32, i32* %5, align 4
  %65 = sub nsw i32 %63, %64
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %11, align 4
  %67 = load i32, i32* %4, align 4
  %68 = load i32, i32* %5, align 4
  %69 = load i32, i32* %6, align 4
  %70 = load i32, i32* %7, align 4
  %71 = load i32, i32* %8, align 4
  %72 = load i32, i32* %9, align 4
  %73 = load i32, i32* %13, align 4
  %74 = load i32, i32* %14, align 4
  %75 = sext i32 %74 to i64
  %76 = inttoptr i64 %75 to i8*
  %77 = call i32 @DEBUG(i8* %76)
  %78 = load i32, i32* %14, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %123, label %80

80:                                               ; preds = %28
  %81 = load i32, i32* %8, align 4
  %82 = load i32, i32* %9, align 4
  %83 = mul nsw i32 %81, %82
  %84 = load i32, i32* %13, align 4
  %85 = mul nsw i32 %83, %84
  %86 = call i64 @xmalloc(i32 %85)
  %87 = inttoptr i64 %86 to i32*
  store i32* %87, i32** %18, align 8
  store i32 0, i32* %20, align 4
  br label %88

88:                                               ; preds = %109, %80
  %89 = load i32, i32* %20, align 4
  %90 = load i32, i32* %9, align 4
  %91 = icmp slt i32 %89, %90
  br i1 %91, label %92, label %112

92:                                               ; preds = %88
  %93 = load i32, i32* %2, align 4
  %94 = load i32*, i32** %18, align 8
  %95 = load i32, i32* %9, align 4
  %96 = load i32, i32* %20, align 4
  %97 = sub nsw i32 %95, %96
  %98 = sub nsw i32 %97, 1
  %99 = load i32, i32* %8, align 4
  %100 = load i32, i32* %13, align 4
  %101 = mul nsw i32 %99, %100
  %102 = mul nsw i32 %98, %101
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i32, i32* %94, i64 %103
  %105 = load i32, i32* %8, align 4
  %106 = load i32, i32* %13, align 4
  %107 = mul nsw i32 %105, %106
  %108 = call i32 @in_uint8a(i32 %93, i32* %104, i32 %107)
  br label %109

109:                                              ; preds = %92
  %110 = load i32, i32* %20, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %20, align 4
  br label %88

112:                                              ; preds = %88
  %113 = load i32, i32* %4, align 4
  %114 = load i32, i32* %5, align 4
  %115 = load i32, i32* %10, align 4
  %116 = load i32, i32* %11, align 4
  %117 = load i32, i32* %8, align 4
  %118 = load i32, i32* %9, align 4
  %119 = load i32*, i32** %18, align 8
  %120 = call i32 @ui_paint_bitmap(i32 %113, i32 %114, i32 %115, i32 %116, i32 %117, i32 %118, i32* %119)
  %121 = load i32*, i32** %18, align 8
  %122 = call i32 @xfree(i32* %121)
  br label %171

123:                                              ; preds = %28
  %124 = load i32, i32* %14, align 4
  %125 = and i32 %124, 1024
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %129

127:                                              ; preds = %123
  %128 = load i32, i32* %15, align 4
  store i32 %128, i32* %16, align 4
  br label %137

129:                                              ; preds = %123
  %130 = load i32, i32* %2, align 4
  %131 = call i32 @in_uint8s(i32 %130, i32 2)
  %132 = load i32, i32* %2, align 4
  %133 = load i32, i32* %16, align 4
  %134 = call i32 @in_uint16_le(i32 %132, i32 %133)
  %135 = load i32, i32* %2, align 4
  %136 = call i32 @in_uint8s(i32 %135, i32 4)
  br label %137

137:                                              ; preds = %129, %127
  %138 = load i32, i32* %2, align 4
  %139 = load i32*, i32** %17, align 8
  %140 = load i32, i32* %16, align 4
  %141 = call i32 @in_uint8p(i32 %138, i32* %139, i32 %140)
  %142 = load i32, i32* %8, align 4
  %143 = load i32, i32* %9, align 4
  %144 = mul nsw i32 %142, %143
  %145 = load i32, i32* %13, align 4
  %146 = mul nsw i32 %144, %145
  %147 = call i64 @xmalloc(i32 %146)
  %148 = inttoptr i64 %147 to i32*
  store i32* %148, i32** %18, align 8
  %149 = load i32*, i32** %18, align 8
  %150 = load i32, i32* %8, align 4
  %151 = load i32, i32* %9, align 4
  %152 = load i32*, i32** %17, align 8
  %153 = load i32, i32* %16, align 4
  %154 = load i32, i32* %13, align 4
  %155 = call i64 @bitmap_decompress(i32* %149, i32 %150, i32 %151, i32* %152, i32 %153, i32 %154)
  %156 = icmp ne i64 %155, 0
  br i1 %156, label %157, label %166

157:                                              ; preds = %137
  %158 = load i32, i32* %4, align 4
  %159 = load i32, i32* %5, align 4
  %160 = load i32, i32* %10, align 4
  %161 = load i32, i32* %11, align 4
  %162 = load i32, i32* %8, align 4
  %163 = load i32, i32* %9, align 4
  %164 = load i32*, i32** %18, align 8
  %165 = call i32 @ui_paint_bitmap(i32 %158, i32 %159, i32 %160, i32 %161, i32 %162, i32 %163, i32* %164)
  br label %168

166:                                              ; preds = %137
  %167 = call i32 @DEBUG_RDP5(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  br label %168

168:                                              ; preds = %166, %157
  %169 = load i32*, i32** %18, align 8
  %170 = call i32 @xfree(i32* %169)
  br label %171

171:                                              ; preds = %168, %112
  %172 = load i32, i32* %19, align 4
  %173 = add nsw i32 %172, 1
  store i32 %173, i32* %19, align 4
  br label %24

174:                                              ; preds = %24
  ret void
}

declare dso_local i32 @in_uint16_le(i32, i32) #1

declare dso_local i32 @DEBUG(i8*) #1

declare dso_local i64 @xmalloc(i32) #1

declare dso_local i32 @in_uint8a(i32, i32*, i32) #1

declare dso_local i32 @ui_paint_bitmap(i32, i32, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @xfree(i32*) #1

declare dso_local i32 @in_uint8s(i32, i32) #1

declare dso_local i32 @in_uint8p(i32, i32*, i32) #1

declare dso_local i64 @bitmap_decompress(i32*, i32, i32, i32*, i32, i32) #1

declare dso_local i32 @DEBUG_RDP5(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
