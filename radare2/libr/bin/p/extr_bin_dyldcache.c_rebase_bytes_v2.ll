; ModuleID = '/home/carl/AnghaBench/radare2/libr/bin/p/extr_bin_dyldcache.c_rebase_bytes_v2.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/bin/p/extr_bin_dyldcache.c_rebase_bytes_v2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i64, i64, i32*, i64, i64, i64, i64, i64 }

@DYLD_CACHE_SLIDE_PAGE_ATTR_NO_REBASE = common dso_local global i32 0, align 4
@DYLD_CACHE_SLIDE_PAGE_ATTR_EXTRA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, i32*, i64, i32, i64)* @rebase_bytes_v2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rebase_bytes_v2(%struct.TYPE_3__* %0, i32* %1, i64 %2, i32 %3, i64 %4) #0 {
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %6, align 8
  store i32* %1, i32** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  store i64 %4, i64* %10, align 8
  store i32 0, i32* %11, align 4
  br label %22

22:                                               ; preds = %155, %5
  %23 = load i32, i32* %11, align 4
  %24 = load i32, i32* %9, align 4
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %26, label %164

26:                                               ; preds = %22
  %27 = load i64, i64* %8, align 8
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = sub i64 %27, %30
  store i64 %31, i64* %12, align 8
  %32 = load i64, i64* %12, align 8
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = udiv i64 %32, %35
  store i64 %36, i64* %13, align 8
  %37 = load i64, i64* %12, align 8
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = urem i64 %37, %40
  store i64 %41, i64* %14, align 8
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* %14, align 8
  %46 = sub i64 %44, %45
  store i64 %46, i64* %15, align 8
  %47 = load i64, i64* %13, align 8
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 2
  %50 = load i64, i64* %49, align 8
  %51 = icmp uge i64 %47, %50
  br i1 %51, label %52, label %53

52:                                               ; preds = %26
  br label %155

53:                                               ; preds = %26
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 3
  %56 = load i32*, i32** %55, align 8
  %57 = load i64, i64* %13, align 8
  %58 = getelementptr inbounds i32, i32* %56, i64 %57
  %59 = load i32, i32* %58, align 4
  store i32 %59, i32* %16, align 4
  %60 = load i32, i32* %16, align 4
  %61 = load i32, i32* @DYLD_CACHE_SLIDE_PAGE_ATTR_NO_REBASE, align 4
  %62 = icmp eq i32 %60, %61
  br i1 %62, label %63, label %64

63:                                               ; preds = %53
  br label %155

64:                                               ; preds = %53
  %65 = load i32, i32* %16, align 4
  %66 = load i32, i32* @DYLD_CACHE_SLIDE_PAGE_ATTR_EXTRA, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %154, label %69

69:                                               ; preds = %64
  %70 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 3
  %72 = load i32*, i32** %71, align 8
  %73 = load i64, i64* %13, align 8
  %74 = getelementptr inbounds i32, i32* %72, i64 %73
  %75 = load i32, i32* %74, align 4
  %76 = mul nsw i32 %75, 4
  %77 = sext i32 %76 to i64
  store i64 %77, i64* %17, align 8
  %78 = load i64, i64* %17, align 8
  %79 = load i64, i64* %14, align 8
  %80 = icmp uge i64 %78, %79
  br i1 %80, label %81, label %153

81:                                               ; preds = %69
  %82 = load i64, i64* %17, align 8
  %83 = load i64, i64* %14, align 8
  %84 = load i32, i32* %9, align 4
  %85 = sext i32 %84 to i64
  %86 = add i64 %83, %85
  %87 = icmp ult i64 %82, %86
  br i1 %87, label %88, label %153

88:                                               ; preds = %81
  store i32 1, i32* %18, align 4
  br label %89

89:                                               ; preds = %147, %88
  %90 = load i32, i32* %18, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %152

92:                                               ; preds = %89
  %93 = load i32, i32* %11, align 4
  %94 = sext i32 %93 to i64
  %95 = load i64, i64* %17, align 8
  %96 = add i64 %94, %95
  %97 = load i64, i64* %14, align 8
  %98 = sub i64 %96, %97
  store i64 %98, i64* %19, align 8
  %99 = load i64, i64* %19, align 8
  %100 = load i32, i32* %9, align 4
  %101 = sext i32 %100 to i64
  %102 = icmp uge i64 %99, %101
  br i1 %102, label %103, label %104

103:                                              ; preds = %92
  br label %152

104:                                              ; preds = %92
  %105 = load i32*, i32** %7, align 8
  %106 = load i64, i64* %19, align 8
  %107 = getelementptr inbounds i32, i32* %105, i64 %106
  %108 = call i64 @r_read_le64(i32* %107)
  store i64 %108, i64* %20, align 8
  %109 = load i64, i64* %20, align 8
  %110 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %111 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %110, i32 0, i32 4
  %112 = load i64, i64* %111, align 8
  %113 = and i64 %109, %112
  %114 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %115 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %114, i32 0, i32 5
  %116 = load i64, i64* %115, align 8
  %117 = lshr i64 %113, %116
  %118 = trunc i64 %117 to i32
  store i32 %118, i32* %18, align 4
  %119 = load i64, i64* %19, align 8
  %120 = load i64, i64* %10, align 8
  %121 = icmp uge i64 %119, %120
  br i1 %121, label %122, label %147

122:                                              ; preds = %104
  %123 = load i64, i64* %20, align 8
  %124 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %125 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %124, i32 0, i32 6
  %126 = load i64, i64* %125, align 8
  %127 = and i64 %123, %126
  store i64 %127, i64* %21, align 8
  %128 = load i64, i64* %21, align 8
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %141

130:                                              ; preds = %122
  %131 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %132 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %131, i32 0, i32 7
  %133 = load i64, i64* %132, align 8
  %134 = load i64, i64* %21, align 8
  %135 = add i64 %134, %133
  store i64 %135, i64* %21, align 8
  %136 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %137 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %136, i32 0, i32 8
  %138 = load i64, i64* %137, align 8
  %139 = load i64, i64* %21, align 8
  %140 = add i64 %139, %138
  store i64 %140, i64* %21, align 8
  br label %141

141:                                              ; preds = %130, %122
  %142 = load i32*, i32** %7, align 8
  %143 = load i64, i64* %19, align 8
  %144 = getelementptr inbounds i32, i32* %142, i64 %143
  %145 = load i64, i64* %21, align 8
  %146 = call i32 @r_write_le64(i32* %144, i64 %145)
  br label %147

147:                                              ; preds = %141, %104
  %148 = load i32, i32* %18, align 4
  %149 = sext i32 %148 to i64
  %150 = load i64, i64* %17, align 8
  %151 = add i64 %150, %149
  store i64 %151, i64* %17, align 8
  br label %89

152:                                              ; preds = %103, %89
  br label %153

153:                                              ; preds = %152, %81, %69
  br label %154

154:                                              ; preds = %153, %64
  br label %155

155:                                              ; preds = %154, %63, %52
  %156 = load i64, i64* %15, align 8
  %157 = load i32, i32* %11, align 4
  %158 = sext i32 %157 to i64
  %159 = add i64 %158, %156
  %160 = trunc i64 %159 to i32
  store i32 %160, i32* %11, align 4
  %161 = load i64, i64* %15, align 8
  %162 = load i64, i64* %8, align 8
  %163 = add i64 %162, %161
  store i64 %163, i64* %8, align 8
  br label %22

164:                                              ; preds = %22
  ret void
}

declare dso_local i64 @r_read_le64(i32*) #1

declare dso_local i32 @r_write_le64(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
