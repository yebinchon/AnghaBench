; ModuleID = '/home/carl/AnghaBench/mpv/test/extr_scale_test.c_assert_imgs_equal.c'
source_filename = "/home/carl/AnghaBench/mpv/test/extr_scale_test.c_assert_imgs_equal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scale_test = type { i32 }
%struct.mp_image = type { i64, i64, i64, i32, i32*, %struct.TYPE_2__, i8** }
%struct.TYPE_2__ = type { i32, i32* }

@MP_IMGFLAG_BYTE_ALIGNED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"img%d_ref\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"img%d_new\00", align 1
@.str.2 = private unnamed_addr constant [38 x i8] c"Images mismatching, dumping to %s/%s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.scale_test*, i32*, %struct.mp_image*, %struct.mp_image*)* @assert_imgs_equal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @assert_imgs_equal(%struct.scale_test* %0, i32* %1, %struct.mp_image* %2, %struct.mp_image* %3) #0 {
  %5 = alloca %struct.scale_test*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.mp_image*, align 8
  %8 = alloca %struct.mp_image*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  store %struct.scale_test* %0, %struct.scale_test** %5, align 8
  store i32* %1, i32** %6, align 8
  store %struct.mp_image* %2, %struct.mp_image** %7, align 8
  store %struct.mp_image* %3, %struct.mp_image** %8, align 8
  %17 = load %struct.mp_image*, %struct.mp_image** %7, align 8
  %18 = getelementptr inbounds %struct.mp_image, %struct.mp_image* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.mp_image*, %struct.mp_image** %8, align 8
  %21 = getelementptr inbounds %struct.mp_image, %struct.mp_image* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp eq i64 %19, %22
  %24 = zext i1 %23 to i32
  %25 = call i32 @assert(i32 %24)
  %26 = load %struct.mp_image*, %struct.mp_image** %7, align 8
  %27 = getelementptr inbounds %struct.mp_image, %struct.mp_image* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.mp_image*, %struct.mp_image** %8, align 8
  %30 = getelementptr inbounds %struct.mp_image, %struct.mp_image* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = icmp eq i64 %28, %31
  %33 = zext i1 %32 to i32
  %34 = call i32 @assert(i32 %33)
  %35 = load %struct.mp_image*, %struct.mp_image** %7, align 8
  %36 = getelementptr inbounds %struct.mp_image, %struct.mp_image* %35, i32 0, i32 2
  %37 = load i64, i64* %36, align 8
  %38 = load %struct.mp_image*, %struct.mp_image** %8, align 8
  %39 = getelementptr inbounds %struct.mp_image, %struct.mp_image* %38, i32 0, i32 2
  %40 = load i64, i64* %39, align 8
  %41 = icmp eq i64 %37, %40
  %42 = zext i1 %41 to i32
  %43 = call i32 @assert(i32 %42)
  %44 = load %struct.mp_image*, %struct.mp_image** %7, align 8
  %45 = getelementptr inbounds %struct.mp_image, %struct.mp_image* %44, i32 0, i32 5
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* @MP_IMGFLAG_BYTE_ALIGNED, align 4
  %49 = and i32 %47, %48
  %50 = call i32 @assert(i32 %49)
  %51 = load %struct.mp_image*, %struct.mp_image** %7, align 8
  %52 = getelementptr inbounds %struct.mp_image, %struct.mp_image* %51, i32 0, i32 5
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 1
  %54 = load i32*, i32** %53, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 0
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @assert(i32 %56)
  store i32 0, i32* %9, align 4
  br label %58

58:                                               ; preds = %160, %4
  %59 = load i32, i32* %9, align 4
  %60 = load %struct.mp_image*, %struct.mp_image** %7, align 8
  %61 = getelementptr inbounds %struct.mp_image, %struct.mp_image* %60, i32 0, i32 3
  %62 = load i32, i32* %61, align 8
  %63 = icmp slt i32 %59, %62
  br i1 %63, label %64, label %163

64:                                               ; preds = %58
  store i32 0, i32* %10, align 4
  br label %65

65:                                               ; preds = %156, %64
  %66 = load i32, i32* %10, align 4
  %67 = sext i32 %66 to i64
  %68 = load %struct.mp_image*, %struct.mp_image** %7, align 8
  %69 = getelementptr inbounds %struct.mp_image, %struct.mp_image* %68, i32 0, i32 2
  %70 = load i64, i64* %69, align 8
  %71 = icmp slt i64 %67, %70
  br i1 %71, label %72, label %159

72:                                               ; preds = %65
  %73 = load %struct.mp_image*, %struct.mp_image** %7, align 8
  %74 = getelementptr inbounds %struct.mp_image, %struct.mp_image* %73, i32 0, i32 6
  %75 = load i8**, i8*** %74, align 8
  %76 = load i32, i32* %9, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i8*, i8** %75, i64 %77
  %79 = load i8*, i8** %78, align 8
  %80 = load %struct.mp_image*, %struct.mp_image** %7, align 8
  %81 = getelementptr inbounds %struct.mp_image, %struct.mp_image* %80, i32 0, i32 4
  %82 = load i32*, i32** %81, align 8
  %83 = load i32, i32* %9, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i32, i32* %82, i64 %84
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* %10, align 4
  %88 = mul nsw i32 %86, %87
  %89 = sext i32 %88 to i64
  %90 = getelementptr i8, i8* %79, i64 %89
  store i8* %90, i8** %11, align 8
  %91 = load %struct.mp_image*, %struct.mp_image** %8, align 8
  %92 = getelementptr inbounds %struct.mp_image, %struct.mp_image* %91, i32 0, i32 6
  %93 = load i8**, i8*** %92, align 8
  %94 = load i32, i32* %9, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i8*, i8** %93, i64 %95
  %97 = load i8*, i8** %96, align 8
  %98 = load %struct.mp_image*, %struct.mp_image** %8, align 8
  %99 = getelementptr inbounds %struct.mp_image, %struct.mp_image* %98, i32 0, i32 4
  %100 = load i32*, i32** %99, align 8
  %101 = load i32, i32* %9, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i32, i32* %100, i64 %102
  %104 = load i32, i32* %103, align 4
  %105 = load i32, i32* %10, align 4
  %106 = mul nsw i32 %104, %105
  %107 = sext i32 %106 to i64
  %108 = getelementptr i8, i8* %97, i64 %107
  store i8* %108, i8** %12, align 8
  %109 = load %struct.mp_image*, %struct.mp_image** %7, align 8
  %110 = getelementptr inbounds %struct.mp_image, %struct.mp_image* %109, i32 0, i32 5
  %111 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %110, i32 0, i32 1
  %112 = load i32*, i32** %111, align 8
  %113 = load i32, i32* %9, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i32, i32* %112, i64 %114
  %116 = load i32, i32* %115, align 4
  %117 = sext i32 %116 to i64
  %118 = load %struct.mp_image*, %struct.mp_image** %8, align 8
  %119 = getelementptr inbounds %struct.mp_image, %struct.mp_image* %118, i32 0, i32 1
  %120 = load i64, i64* %119, align 8
  %121 = mul i64 %117, %120
  store i64 %121, i64* %13, align 8
  %122 = load i8*, i8** %11, align 8
  %123 = load i8*, i8** %12, align 8
  %124 = load i64, i64* %13, align 8
  %125 = call i64 @memcmp(i8* %122, i8* %123, i64 %124)
  %126 = icmp eq i64 %125, 0
  %127 = zext i1 %126 to i32
  store i32 %127, i32* %14, align 4
  %128 = load i32, i32* %14, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %155, label %130

130:                                              ; preds = %72
  %131 = load %struct.scale_test*, %struct.scale_test** %5, align 8
  %132 = getelementptr inbounds %struct.scale_test, %struct.scale_test* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = add nsw i32 %133, 1
  store i32 %134, i32* %132, align 4
  %135 = load %struct.scale_test*, %struct.scale_test** %5, align 8
  %136 = getelementptr inbounds %struct.scale_test, %struct.scale_test* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 4
  %138 = call i8* @mp_tprintf(i32 80, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %137)
  store i8* %138, i8** %15, align 8
  %139 = load %struct.scale_test*, %struct.scale_test** %5, align 8
  %140 = getelementptr inbounds %struct.scale_test, %struct.scale_test* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 4
  %142 = call i8* @mp_tprintf(i32 80, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 %141)
  store i8* %142, i8** %16, align 8
  %143 = load i32*, i32** %6, align 8
  %144 = load i8*, i8** %15, align 8
  %145 = load i8*, i8** %16, align 8
  %146 = call i32 @fprintf(i32* %143, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i8* %144, i8* %145)
  %147 = load %struct.scale_test*, %struct.scale_test** %5, align 8
  %148 = load i8*, i8** %15, align 8
  %149 = load %struct.mp_image*, %struct.mp_image** %7, align 8
  %150 = call i32 @dump_image(%struct.scale_test* %147, i8* %148, %struct.mp_image* %149)
  %151 = load %struct.scale_test*, %struct.scale_test** %5, align 8
  %152 = load i8*, i8** %16, align 8
  %153 = load %struct.mp_image*, %struct.mp_image** %8, align 8
  %154 = call i32 @dump_image(%struct.scale_test* %151, i8* %152, %struct.mp_image* %153)
  br label %163

155:                                              ; preds = %72
  br label %156

156:                                              ; preds = %155
  %157 = load i32, i32* %10, align 4
  %158 = add nsw i32 %157, 1
  store i32 %158, i32* %10, align 4
  br label %65

159:                                              ; preds = %65
  br label %160

160:                                              ; preds = %159
  %161 = load i32, i32* %9, align 4
  %162 = add nsw i32 %161, 1
  store i32 %162, i32* %9, align 4
  br label %58

163:                                              ; preds = %130, %58
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @memcmp(i8*, i8*, i64) #1

declare dso_local i8* @mp_tprintf(i32, i8*, i32) #1

declare dso_local i32 @fprintf(i32*, i8*, i8*, i8*) #1

declare dso_local i32 @dump_image(%struct.scale_test*, i8*, %struct.mp_image*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
