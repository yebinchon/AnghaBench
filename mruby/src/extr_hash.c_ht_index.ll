; ModuleID = '/home/carl/AnghaBench/mruby/src/extr_hash.c_ht_index.c'
source_filename = "/home/carl/AnghaBench/mruby/src/extr_hash.c_ht_index.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i64, i64, %struct.TYPE_11__*, %struct.TYPE_12__* }
%struct.TYPE_11__ = type { i64, %struct.TYPE_11__*, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_12__ = type { i64, i32, %struct.TYPE_10__** }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_13__*)* @ht_index to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ht_index(i32* %0, %struct.TYPE_13__* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_13__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_12__*, align 8
  %8 = alloca %struct.TYPE_11__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store i32* %0, i32** %3, align 8
  store %struct.TYPE_13__* %1, %struct.TYPE_13__** %4, align 8
  %13 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  store i64 %15, i64* %5, align 8
  %16 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %16, i32 0, i32 3
  %18 = load %struct.TYPE_12__*, %struct.TYPE_12__** %17, align 8
  store %struct.TYPE_12__* %18, %struct.TYPE_12__** %7, align 8
  %19 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %20 = icmp ne %struct.TYPE_12__* %19, null
  br i1 %20, label %21, label %36

21:                                               ; preds = %2
  %22 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %23 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %26 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = call i64 @UPPER_BOUND(i32 %27)
  %29 = icmp sge i64 %24, %28
  br i1 %29, label %30, label %36

30:                                               ; preds = %21
  %31 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %32 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = add nsw i32 %33, 1
  %35 = sext i32 %34 to i64
  store i64 %35, i64* %5, align 8
  br label %36

36:                                               ; preds = %30, %21, %2
  %37 = load i64, i64* %5, align 8
  %38 = call i32 @power2(i64 %37)
  %39 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %40 = icmp ne %struct.TYPE_12__* %39, null
  br i1 %40, label %41, label %48

41:                                               ; preds = %36
  %42 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %43 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = sext i32 %44 to i64
  %46 = load i64, i64* %5, align 8
  %47 = icmp ult i64 %45, %46
  br i1 %47, label %48, label %71

48:                                               ; preds = %41, %36
  %49 = load i32*, i32** %3, align 8
  %50 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %51 = load i64, i64* %5, align 8
  %52 = mul i64 8, %51
  %53 = add i64 24, %52
  %54 = trunc i64 %53 to i32
  %55 = call i64 @mrb_realloc_simple(i32* %49, %struct.TYPE_12__* %50, i32 %54)
  %56 = inttoptr i64 %55 to %struct.TYPE_12__*
  store %struct.TYPE_12__* %56, %struct.TYPE_12__** %7, align 8
  %57 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %58 = icmp eq %struct.TYPE_12__* %57, null
  br i1 %58, label %59, label %67

59:                                               ; preds = %48
  %60 = load i32*, i32** %3, align 8
  %61 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %62 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %61, i32 0, i32 3
  %63 = load %struct.TYPE_12__*, %struct.TYPE_12__** %62, align 8
  %64 = call i32 @mrb_free(i32* %60, %struct.TYPE_12__* %63)
  %65 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %66 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %65, i32 0, i32 3
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %66, align 8
  br label %174

67:                                               ; preds = %48
  %68 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %69 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %70 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %69, i32 0, i32 3
  store %struct.TYPE_12__* %68, %struct.TYPE_12__** %70, align 8
  br label %71

71:                                               ; preds = %67, %41
  %72 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %73 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %76 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %75, i32 0, i32 0
  store i64 %74, i64* %76, align 8
  %77 = load i64, i64* %5, align 8
  %78 = trunc i64 %77 to i32
  %79 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %80 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %79, i32 0, i32 1
  store i32 %78, i32* %80, align 8
  store i64 0, i64* %9, align 8
  br label %81

81:                                               ; preds = %91, %71
  %82 = load i64, i64* %9, align 8
  %83 = load i64, i64* %5, align 8
  %84 = icmp ult i64 %82, %83
  br i1 %84, label %85, label %94

85:                                               ; preds = %81
  %86 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %87 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %86, i32 0, i32 2
  %88 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %87, align 8
  %89 = load i64, i64* %9, align 8
  %90 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %88, i64 %89
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %90, align 8
  br label %91

91:                                               ; preds = %85
  %92 = load i64, i64* %9, align 8
  %93 = add i64 %92, 1
  store i64 %93, i64* %9, align 8
  br label %81

94:                                               ; preds = %81
  %95 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %96 = call i64 @HT_MASK(%struct.TYPE_12__* %95)
  store i64 %96, i64* %6, align 8
  %97 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %98 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %97, i32 0, i32 2
  %99 = load %struct.TYPE_11__*, %struct.TYPE_11__** %98, align 8
  store %struct.TYPE_11__* %99, %struct.TYPE_11__** %8, align 8
  br label %100

100:                                              ; preds = %170, %94
  %101 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %102 = icmp ne %struct.TYPE_11__* %101, null
  br i1 %102, label %103, label %174

103:                                              ; preds = %100
  store i64 0, i64* %9, align 8
  br label %104

104:                                              ; preds = %167, %103
  %105 = load i64, i64* %9, align 8
  %106 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %107 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = icmp ult i64 %105, %108
  br i1 %109, label %110, label %170

110:                                              ; preds = %104
  store i64 0, i64* %12, align 8
  %111 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %112 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %111, i32 0, i32 1
  %113 = load %struct.TYPE_11__*, %struct.TYPE_11__** %112, align 8
  %114 = icmp ne %struct.TYPE_11__* %113, null
  br i1 %114, label %122, label %115

115:                                              ; preds = %110
  %116 = load i64, i64* %9, align 8
  %117 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %118 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %117, i32 0, i32 1
  %119 = load i64, i64* %118, align 8
  %120 = icmp uge i64 %116, %119
  br i1 %120, label %121, label %122

121:                                              ; preds = %115
  br label %174

122:                                              ; preds = %115, %110
  %123 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %124 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %123, i32 0, i32 2
  %125 = load %struct.TYPE_10__*, %struct.TYPE_10__** %124, align 8
  %126 = load i64, i64* %9, align 8
  %127 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %125, i64 %126
  %128 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  store i32 %129, i32* %10, align 4
  %130 = load i32, i32* %10, align 4
  %131 = call i64 @mrb_undef_p(i32 %130)
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %134

133:                                              ; preds = %122
  br label %167

134:                                              ; preds = %122
  %135 = load i32*, i32** %3, align 8
  %136 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %137 = load i32, i32* %10, align 4
  %138 = call i64 @ht_hash_func(i32* %135, %struct.TYPE_13__* %136, i32 %137)
  %139 = load i64, i64* %6, align 8
  %140 = and i64 %138, %139
  store i64 %140, i64* %11, align 8
  br label %141

141:                                              ; preds = %149, %134
  %142 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %143 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %142, i32 0, i32 2
  %144 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %143, align 8
  %145 = load i64, i64* %11, align 8
  %146 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %144, i64 %145
  %147 = load %struct.TYPE_10__*, %struct.TYPE_10__** %146, align 8
  %148 = icmp ne %struct.TYPE_10__* %147, null
  br i1 %148, label %149, label %156

149:                                              ; preds = %141
  %150 = load i64, i64* %11, align 8
  %151 = load i64, i64* %12, align 8
  %152 = add i64 %151, 1
  store i64 %152, i64* %12, align 8
  %153 = add i64 %150, %152
  %154 = load i64, i64* %6, align 8
  %155 = and i64 %153, %154
  store i64 %155, i64* %11, align 8
  br label %141

156:                                              ; preds = %141
  %157 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %158 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %157, i32 0, i32 2
  %159 = load %struct.TYPE_10__*, %struct.TYPE_10__** %158, align 8
  %160 = load i64, i64* %9, align 8
  %161 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %159, i64 %160
  %162 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %163 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %162, i32 0, i32 2
  %164 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %163, align 8
  %165 = load i64, i64* %11, align 8
  %166 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %164, i64 %165
  store %struct.TYPE_10__* %161, %struct.TYPE_10__** %166, align 8
  br label %167

167:                                              ; preds = %156, %133
  %168 = load i64, i64* %9, align 8
  %169 = add i64 %168, 1
  store i64 %169, i64* %9, align 8
  br label %104

170:                                              ; preds = %104
  %171 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %172 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %171, i32 0, i32 1
  %173 = load %struct.TYPE_11__*, %struct.TYPE_11__** %172, align 8
  store %struct.TYPE_11__* %173, %struct.TYPE_11__** %8, align 8
  br label %100

174:                                              ; preds = %59, %121, %100
  ret void
}

declare dso_local i64 @UPPER_BOUND(i32) #1

declare dso_local i32 @power2(i64) #1

declare dso_local i64 @mrb_realloc_simple(i32*, %struct.TYPE_12__*, i32) #1

declare dso_local i32 @mrb_free(i32*, %struct.TYPE_12__*) #1

declare dso_local i64 @HT_MASK(%struct.TYPE_12__*) #1

declare dso_local i64 @mrb_undef_p(i32) #1

declare dso_local i64 @ht_hash_func(i32*, %struct.TYPE_13__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
