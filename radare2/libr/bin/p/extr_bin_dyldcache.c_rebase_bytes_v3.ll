; ModuleID = '/home/carl/AnghaBench/radare2/libr/bin/p/extr_bin_dyldcache.c_rebase_bytes_v3.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/bin/p/extr_bin_dyldcache.c_rebase_bytes_v3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i64, i64, i64*, i64, i64, i64, i64 }

@DYLD_CACHE_SLIDE_V3_PAGE_ATTR_NO_REBASE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, i32*, i64, i32, i64)* @rebase_bytes_v3 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rebase_bytes_v3(%struct.TYPE_3__* %0, i32* %1, i64 %2, i32 %3, i64 %4) #0 {
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
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %6, align 8
  store i32* %1, i32** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  store i64 %4, i64* %10, align 8
  store i32 0, i32* %11, align 4
  br label %21

21:                                               ; preds = %149, %5
  %22 = load i32, i32* %11, align 4
  %23 = load i32, i32* %9, align 4
  %24 = icmp slt i32 %22, %23
  br i1 %24, label %25, label %158

25:                                               ; preds = %21
  %26 = load i64, i64* %8, align 8
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = sub i64 %26, %29
  store i64 %30, i64* %12, align 8
  %31 = load i64, i64* %12, align 8
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = udiv i64 %31, %34
  store i64 %35, i64* %13, align 8
  %36 = load i64, i64* %12, align 8
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = urem i64 %36, %39
  store i64 %40, i64* %14, align 8
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* %14, align 8
  %45 = sub i64 %43, %44
  store i64 %45, i64* %15, align 8
  %46 = load i64, i64* %13, align 8
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 2
  %49 = load i64, i64* %48, align 8
  %50 = icmp uge i64 %46, %49
  br i1 %50, label %51, label %52

51:                                               ; preds = %25
  br label %149

52:                                               ; preds = %25
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 3
  %55 = load i64*, i64** %54, align 8
  %56 = load i64, i64* %13, align 8
  %57 = getelementptr inbounds i64, i64* %55, i64 %56
  %58 = load i64, i64* %57, align 8
  store i64 %58, i64* %16, align 8
  %59 = load i64, i64* %16, align 8
  %60 = load i64, i64* @DYLD_CACHE_SLIDE_V3_PAGE_ATTR_NO_REBASE, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %62, label %63

62:                                               ; preds = %52
  br label %149

63:                                               ; preds = %52
  %64 = load i64, i64* %16, align 8
  store i64 %64, i64* %17, align 8
  %65 = load i64, i64* %17, align 8
  %66 = load i64, i64* %14, align 8
  %67 = icmp uge i64 %65, %66
  br i1 %67, label %68, label %148

68:                                               ; preds = %63
  %69 = load i64, i64* %17, align 8
  %70 = load i64, i64* %14, align 8
  %71 = load i32, i32* %9, align 4
  %72 = sext i32 %71 to i64
  %73 = add i64 %70, %72
  %74 = icmp ult i64 %69, %73
  br i1 %74, label %75, label %148

75:                                               ; preds = %68
  br label %76

76:                                               ; preds = %144, %75
  %77 = load i32, i32* %11, align 4
  %78 = sext i32 %77 to i64
  %79 = load i64, i64* %17, align 8
  %80 = add i64 %78, %79
  %81 = load i64, i64* %14, align 8
  %82 = sub i64 %80, %81
  store i64 %82, i64* %18, align 8
  %83 = load i64, i64* %18, align 8
  %84 = load i32, i32* %9, align 4
  %85 = sext i32 %84 to i64
  %86 = icmp uge i64 %83, %85
  br i1 %86, label %87, label %88

87:                                               ; preds = %76
  br label %147

88:                                               ; preds = %76
  %89 = load i32*, i32** %7, align 8
  %90 = load i64, i64* %18, align 8
  %91 = getelementptr inbounds i32, i32* %89, i64 %90
  %92 = call i64 @r_read_le64(i32* %91)
  store i64 %92, i64* %19, align 8
  %93 = load i64, i64* %19, align 8
  %94 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %95 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %94, i32 0, i32 4
  %96 = load i64, i64* %95, align 8
  %97 = and i64 %93, %96
  %98 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %99 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %98, i32 0, i32 5
  %100 = load i64, i64* %99, align 8
  %101 = lshr i64 %97, %100
  store i64 %101, i64* %16, align 8
  %102 = load i64, i64* %18, align 8
  %103 = load i64, i64* %10, align 8
  %104 = icmp uge i64 %102, %103
  br i1 %104, label %105, label %140

105:                                              ; preds = %88
  store i64 0, i64* %20, align 8
  %106 = load i64, i64* %19, align 8
  %107 = call i64 @R_IS_PTR_AUTHENTICATED(i64 %106)
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %116

109:                                              ; preds = %105
  %110 = load i64, i64* %19, align 8
  %111 = and i64 %110, 4294967295
  %112 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %113 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %112, i32 0, i32 6
  %114 = load i64, i64* %113, align 8
  %115 = add i64 %111, %114
  store i64 %115, i64* %20, align 8
  br label %125

116:                                              ; preds = %105
  %117 = load i64, i64* %19, align 8
  %118 = shl i64 %117, 13
  %119 = and i64 %118, -72057594037927936
  %120 = load i64, i64* %19, align 8
  %121 = and i64 %120, 8796093022207
  %122 = or i64 %119, %121
  store i64 %122, i64* %20, align 8
  %123 = load i64, i64* %20, align 8
  %124 = and i64 %123, 72057594037927935
  store i64 %124, i64* %20, align 8
  br label %125

125:                                              ; preds = %116, %109
  %126 = load i64, i64* %20, align 8
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %134

128:                                              ; preds = %125
  %129 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %130 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %129, i32 0, i32 7
  %131 = load i64, i64* %130, align 8
  %132 = load i64, i64* %20, align 8
  %133 = add i64 %132, %131
  store i64 %133, i64* %20, align 8
  br label %134

134:                                              ; preds = %128, %125
  %135 = load i32*, i32** %7, align 8
  %136 = load i64, i64* %18, align 8
  %137 = getelementptr inbounds i32, i32* %135, i64 %136
  %138 = load i64, i64* %20, align 8
  %139 = call i32 @r_write_le64(i32* %137, i64 %138)
  br label %140

140:                                              ; preds = %134, %88
  %141 = load i64, i64* %16, align 8
  %142 = load i64, i64* %17, align 8
  %143 = add i64 %142, %141
  store i64 %143, i64* %17, align 8
  br label %144

144:                                              ; preds = %140
  %145 = load i64, i64* %16, align 8
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %76, label %147

147:                                              ; preds = %144, %87
  br label %148

148:                                              ; preds = %147, %68, %63
  br label %149

149:                                              ; preds = %148, %62, %51
  %150 = load i64, i64* %15, align 8
  %151 = load i32, i32* %11, align 4
  %152 = sext i32 %151 to i64
  %153 = add i64 %152, %150
  %154 = trunc i64 %153 to i32
  store i32 %154, i32* %11, align 4
  %155 = load i64, i64* %15, align 8
  %156 = load i64, i64* %8, align 8
  %157 = add i64 %156, %155
  store i64 %157, i64* %8, align 8
  br label %21

158:                                              ; preds = %21
  ret void
}

declare dso_local i64 @r_read_le64(i32*) #1

declare dso_local i64 @R_IS_PTR_AUTHENTICATED(i64) #1

declare dso_local i32 @r_write_le64(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
