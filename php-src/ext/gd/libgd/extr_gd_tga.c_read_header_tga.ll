; ModuleID = '/home/carl/AnghaBench/php-src/ext/gd/libgd/extr_gd_tga.c_read_header_tga.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/gd/libgd/extr_gd_tga.c_read_header_tga.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i8* }

@.str = private unnamed_addr constant [20 x i8] c"fail to read header\00", align 1
@TGA_BPP_24 = common dso_local global i32 0, align 4
@TGA_BPP_32 = common dso_local global i32 0, align 4
@GD_WARNING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [60 x i8] c"gd-tga: %u bits per pixel with %u alpha bits not supported\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @read_header_tga(i32* %0, %struct.TYPE_3__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca [18 x i8], align 16
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %5, align 8
  %7 = getelementptr inbounds [18 x i8], [18 x i8]* %6, i64 0, i64 0
  %8 = load i32*, i32** %4, align 8
  %9 = call i32 @gdGetBuf(i8* %7, i32 18, i32* %8)
  %10 = icmp slt i32 %9, 18
  br i1 %10, label %11, label %13

11:                                               ; preds = %2
  %12 = call i32 @gd_error(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %196

13:                                               ; preds = %2
  %14 = getelementptr inbounds [18 x i8], [18 x i8]* %6, i64 0, i64 0
  %15 = load i8, i8* %14, align 16
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  store i8 %15, i8* %17, align 8
  %18 = getelementptr inbounds [18 x i8], [18 x i8]* %6, i64 0, i64 1
  %19 = load i8, i8* %18, align 1
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 1
  store i8 %19, i8* %21, align 1
  %22 = getelementptr inbounds [18 x i8], [18 x i8]* %6, i64 0, i64 2
  %23 = load i8, i8* %22, align 2
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 2
  store i8 %23, i8* %25, align 2
  %26 = getelementptr inbounds [18 x i8], [18 x i8]* %6, i64 0, i64 3
  %27 = load i8, i8* %26, align 1
  %28 = zext i8 %27 to i32
  %29 = getelementptr inbounds [18 x i8], [18 x i8]* %6, i64 0, i64 4
  %30 = load i8, i8* %29, align 4
  %31 = zext i8 %30 to i32
  %32 = shl i32 %31, 8
  %33 = add nsw i32 %28, %32
  %34 = trunc i32 %33 to i8
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 3
  store i8 %34, i8* %36, align 1
  %37 = getelementptr inbounds [18 x i8], [18 x i8]* %6, i64 0, i64 5
  %38 = load i8, i8* %37, align 1
  %39 = zext i8 %38 to i32
  %40 = getelementptr inbounds [18 x i8], [18 x i8]* %6, i64 0, i64 6
  %41 = load i8, i8* %40, align 2
  %42 = zext i8 %41 to i32
  %43 = shl i32 %42, 8
  %44 = add nsw i32 %39, %43
  %45 = trunc i32 %44 to i8
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 4
  store i8 %45, i8* %47, align 4
  %48 = getelementptr inbounds [18 x i8], [18 x i8]* %6, i64 0, i64 7
  %49 = load i8, i8* %48, align 1
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 5
  store i8 %49, i8* %51, align 1
  %52 = getelementptr inbounds [18 x i8], [18 x i8]* %6, i64 0, i64 8
  %53 = load i8, i8* %52, align 8
  %54 = zext i8 %53 to i32
  %55 = getelementptr inbounds [18 x i8], [18 x i8]* %6, i64 0, i64 9
  %56 = load i8, i8* %55, align 1
  %57 = zext i8 %56 to i32
  %58 = shl i32 %57, 8
  %59 = add nsw i32 %54, %58
  %60 = trunc i32 %59 to i8
  %61 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 6
  store i8 %60, i8* %62, align 2
  %63 = getelementptr inbounds [18 x i8], [18 x i8]* %6, i64 0, i64 10
  %64 = load i8, i8* %63, align 2
  %65 = zext i8 %64 to i32
  %66 = getelementptr inbounds [18 x i8], [18 x i8]* %6, i64 0, i64 11
  %67 = load i8, i8* %66, align 1
  %68 = zext i8 %67 to i32
  %69 = shl i32 %68, 8
  %70 = add nsw i32 %65, %69
  %71 = trunc i32 %70 to i8
  %72 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 7
  store i8 %71, i8* %73, align 1
  %74 = getelementptr inbounds [18 x i8], [18 x i8]* %6, i64 0, i64 12
  %75 = load i8, i8* %74, align 4
  %76 = zext i8 %75 to i32
  %77 = getelementptr inbounds [18 x i8], [18 x i8]* %6, i64 0, i64 13
  %78 = load i8, i8* %77, align 1
  %79 = zext i8 %78 to i32
  %80 = shl i32 %79, 8
  %81 = add nsw i32 %76, %80
  %82 = trunc i32 %81 to i8
  %83 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i32 0, i32 8
  store i8 %82, i8* %84, align 8
  %85 = getelementptr inbounds [18 x i8], [18 x i8]* %6, i64 0, i64 14
  %86 = load i8, i8* %85, align 2
  %87 = zext i8 %86 to i32
  %88 = getelementptr inbounds [18 x i8], [18 x i8]* %6, i64 0, i64 15
  %89 = load i8, i8* %88, align 1
  %90 = zext i8 %89 to i32
  %91 = shl i32 %90, 8
  %92 = add nsw i32 %87, %91
  %93 = trunc i32 %92 to i8
  %94 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %95 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %94, i32 0, i32 9
  store i8 %93, i8* %95, align 1
  %96 = getelementptr inbounds [18 x i8], [18 x i8]* %6, i64 0, i64 16
  %97 = load i8, i8* %96, align 16
  %98 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %99 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %98, i32 0, i32 10
  store i8 %97, i8* %99, align 2
  %100 = getelementptr inbounds [18 x i8], [18 x i8]* %6, i64 0, i64 17
  %101 = load i8, i8* %100, align 1
  %102 = zext i8 %101 to i32
  %103 = and i32 %102, 15
  %104 = trunc i32 %103 to i8
  %105 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %106 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %105, i32 0, i32 11
  store i8 %104, i8* %106, align 1
  %107 = getelementptr inbounds [18 x i8], [18 x i8]* %6, i64 0, i64 17
  %108 = load i8, i8* %107, align 1
  %109 = zext i8 %108 to i32
  %110 = and i32 %109, 16
  %111 = icmp ne i32 %110, 0
  %112 = zext i1 %111 to i64
  %113 = select i1 %111, i32 1, i32 0
  %114 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %115 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %114, i32 0, i32 12
  store i32 %113, i32* %115, align 4
  %116 = getelementptr inbounds [18 x i8], [18 x i8]* %6, i64 0, i64 17
  %117 = load i8, i8* %116, align 1
  %118 = zext i8 %117 to i32
  %119 = and i32 %118, 32
  %120 = icmp ne i32 %119, 0
  %121 = zext i1 %120 to i64
  %122 = select i1 %120, i32 0, i32 1
  %123 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %124 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %123, i32 0, i32 13
  store i32 %122, i32* %124, align 8
  %125 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %126 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %125, i32 0, i32 10
  %127 = load i8, i8* %126, align 2
  %128 = zext i8 %127 to i32
  %129 = load i32, i32* @TGA_BPP_24, align 4
  %130 = icmp eq i32 %128, %129
  br i1 %130, label %131, label %137

131:                                              ; preds = %13
  %132 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %133 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %132, i32 0, i32 11
  %134 = load i8, i8* %133, align 1
  %135 = zext i8 %134 to i32
  %136 = icmp eq i32 %135, 0
  br i1 %136, label %161, label %137

137:                                              ; preds = %131, %13
  %138 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %139 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %138, i32 0, i32 10
  %140 = load i8, i8* %139, align 2
  %141 = zext i8 %140 to i32
  %142 = load i32, i32* @TGA_BPP_32, align 4
  %143 = icmp eq i32 %141, %142
  br i1 %143, label %144, label %150

144:                                              ; preds = %137
  %145 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %146 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %145, i32 0, i32 11
  %147 = load i8, i8* %146, align 1
  %148 = zext i8 %147 to i32
  %149 = icmp eq i32 %148, 8
  br i1 %149, label %161, label %150

150:                                              ; preds = %144, %137
  %151 = load i32, i32* @GD_WARNING, align 4
  %152 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %153 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %152, i32 0, i32 10
  %154 = load i8, i8* %153, align 2
  %155 = zext i8 %154 to i32
  %156 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %157 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %156, i32 0, i32 11
  %158 = load i8, i8* %157, align 1
  %159 = zext i8 %158 to i32
  %160 = call i32 @gd_error_ex(i32 %151, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.1, i64 0, i64 0), i32 %155, i32 %159)
  store i32 -1, i32* %3, align 4
  br label %196

161:                                              ; preds = %144, %131
  %162 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %163 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %162, i32 0, i32 14
  store i8* null, i8** %163, align 8
  %164 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %165 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %164, i32 0, i32 0
  %166 = load i8, i8* %165, align 8
  %167 = zext i8 %166 to i32
  %168 = icmp sgt i32 %167, 0
  br i1 %168, label %169, label %195

169:                                              ; preds = %161
  %170 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %171 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %170, i32 0, i32 0
  %172 = load i8, i8* %171, align 8
  %173 = zext i8 %172 to i64
  %174 = mul i64 %173, 1
  %175 = trunc i64 %174 to i32
  %176 = call i64 @gdMalloc(i32 %175)
  %177 = inttoptr i64 %176 to i8*
  %178 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %179 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %178, i32 0, i32 14
  store i8* %177, i8** %179, align 8
  %180 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %181 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %180, i32 0, i32 14
  %182 = load i8*, i8** %181, align 8
  %183 = icmp eq i8* %182, null
  br i1 %183, label %184, label %185

184:                                              ; preds = %169
  store i32 -1, i32* %3, align 4
  br label %196

185:                                              ; preds = %169
  %186 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %187 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %186, i32 0, i32 14
  %188 = load i8*, i8** %187, align 8
  %189 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %190 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %189, i32 0, i32 0
  %191 = load i8, i8* %190, align 8
  %192 = zext i8 %191 to i32
  %193 = load i32*, i32** %4, align 8
  %194 = call i32 @gdGetBuf(i8* %188, i32 %192, i32* %193)
  br label %195

195:                                              ; preds = %185, %161
  store i32 1, i32* %3, align 4
  br label %196

196:                                              ; preds = %195, %184, %150, %11
  %197 = load i32, i32* %3, align 4
  ret i32 %197
}

declare dso_local i32 @gdGetBuf(i8*, i32, i32*) #1

declare dso_local i32 @gd_error(i8*) #1

declare dso_local i32 @gd_error_ex(i32, i8*, i32, i32) #1

declare dso_local i64 @gdMalloc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
