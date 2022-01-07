; ModuleID = '/home/carl/AnghaBench/mruby/src/extr_hash.c_ht_put.c'
source_filename = "/home/carl/AnghaBench/mruby/src/extr_hash.c_ht_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i64, i64, i32*, %struct.TYPE_12__*, %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i64, %struct.TYPE_11__*, %struct.TYPE_12__* }
%struct.TYPE_11__ = type { i8*, i8* }

@MRB_HT_INIT_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_13__*, i8*, i8*)* @ht_put to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ht_put(i32* %0, %struct.TYPE_13__* %1, i8* %2, i8* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_13__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.TYPE_12__*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_13__* %1, %struct.TYPE_13__** %6, align 8
  store i8* %2, i8** %7, align 8
  store i8* %3, i8** %8, align 8
  store i64 0, i64* %11, align 8
  %13 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %14 = icmp eq %struct.TYPE_13__* %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %4
  br label %207

16:                                               ; preds = %4
  %17 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %17, i32 0, i32 2
  %19 = load i32*, i32** %18, align 8
  %20 = icmp ne i32* %19, null
  br i1 %20, label %21, label %27

21:                                               ; preds = %16
  %22 = load i32*, i32** %5, align 8
  %23 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %24 = load i8*, i8** %7, align 8
  %25 = load i8*, i8** %8, align 8
  %26 = call i32 @ht_index_put(i32* %22, %struct.TYPE_13__* %23, i8* %24, i8* %25)
  br label %207

27:                                               ; preds = %16
  %28 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %28, i32 0, i32 4
  %30 = load %struct.TYPE_12__*, %struct.TYPE_12__** %29, align 8
  store %struct.TYPE_12__* %30, %struct.TYPE_12__** %9, align 8
  br label %31

31:                                               ; preds = %108, %27
  %32 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %33 = icmp ne %struct.TYPE_12__* %32, null
  br i1 %33, label %34, label %112

34:                                               ; preds = %31
  store i64 0, i64* %10, align 8
  br label %35

35:                                               ; preds = %105, %34
  %36 = load i64, i64* %10, align 8
  %37 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %38 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp ult i64 %36, %39
  br i1 %40, label %41, label %108

41:                                               ; preds = %35
  %42 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %43 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %42, i32 0, i32 1
  %44 = load %struct.TYPE_11__*, %struct.TYPE_11__** %43, align 8
  %45 = load i64, i64* %10, align 8
  %46 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %44, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %46, i32 0, i32 1
  %48 = load i8*, i8** %47, align 8
  store i8* %48, i8** %12, align 8
  %49 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %50 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %49, i32 0, i32 2
  %51 = load %struct.TYPE_12__*, %struct.TYPE_12__** %50, align 8
  %52 = icmp ne %struct.TYPE_12__* %51, null
  br i1 %52, label %82, label %53

53:                                               ; preds = %41
  %54 = load i64, i64* %10, align 8
  %55 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %56 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = icmp uge i64 %54, %57
  br i1 %58, label %59, label %82

59:                                               ; preds = %53
  %60 = load i8*, i8** %7, align 8
  %61 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %62 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %61, i32 0, i32 1
  %63 = load %struct.TYPE_11__*, %struct.TYPE_11__** %62, align 8
  %64 = load i64, i64* %10, align 8
  %65 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %63, i64 %64
  %66 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %65, i32 0, i32 1
  store i8* %60, i8** %66, align 8
  %67 = load i8*, i8** %8, align 8
  %68 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %69 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %68, i32 0, i32 1
  %70 = load %struct.TYPE_11__*, %struct.TYPE_11__** %69, align 8
  %71 = load i64, i64* %10, align 8
  %72 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %70, i64 %71
  %73 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %72, i32 0, i32 0
  store i8* %67, i8** %73, align 8
  %74 = load i64, i64* %10, align 8
  %75 = add i64 %74, 1
  %76 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %77 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %76, i32 0, i32 0
  store i64 %75, i64* %77, align 8
  %78 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %79 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %78, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = add i64 %80, 1
  store i64 %81, i64* %79, align 8
  br label %207

82:                                               ; preds = %53, %41
  %83 = load i8*, i8** %12, align 8
  %84 = call i64 @mrb_undef_p(i8* %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %89

86:                                               ; preds = %82
  %87 = load i64, i64* %11, align 8
  %88 = add i64 %87, 1
  store i64 %88, i64* %11, align 8
  br label %105

89:                                               ; preds = %82
  %90 = load i32*, i32** %5, align 8
  %91 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %92 = load i8*, i8** %12, align 8
  %93 = load i8*, i8** %7, align 8
  %94 = call i64 @ht_hash_equal(i32* %90, %struct.TYPE_13__* %91, i8* %92, i8* %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %104

96:                                               ; preds = %89
  %97 = load i8*, i8** %8, align 8
  %98 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %99 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %98, i32 0, i32 1
  %100 = load %struct.TYPE_11__*, %struct.TYPE_11__** %99, align 8
  %101 = load i64, i64* %10, align 8
  %102 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %100, i64 %101
  %103 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %102, i32 0, i32 0
  store i8* %97, i8** %103, align 8
  br label %207

104:                                              ; preds = %89
  br label %105

105:                                              ; preds = %104, %86
  %106 = load i64, i64* %10, align 8
  %107 = add i64 %106, 1
  store i64 %107, i64* %10, align 8
  br label %35

108:                                              ; preds = %35
  %109 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %110 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %109, i32 0, i32 2
  %111 = load %struct.TYPE_12__*, %struct.TYPE_12__** %110, align 8
  store %struct.TYPE_12__* %111, %struct.TYPE_12__** %9, align 8
  br label %31

112:                                              ; preds = %31
  %113 = load i64, i64* %11, align 8
  %114 = icmp ugt i64 %113, 0
  br i1 %114, label %115, label %123

115:                                              ; preds = %112
  %116 = load i64, i64* %11, align 8
  %117 = load i64, i64* @MRB_HT_INIT_SIZE, align 8
  %118 = icmp ugt i64 %116, %117
  br i1 %118, label %119, label %123

119:                                              ; preds = %115
  %120 = load i32*, i32** %5, align 8
  %121 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %122 = call i32 @ht_compact(i32* %120, %struct.TYPE_13__* %121)
  br label %123

123:                                              ; preds = %119, %115, %112
  %124 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %125 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %124, i32 0, i32 1
  %126 = load i64, i64* %125, align 8
  %127 = add i64 %126, 1
  store i64 %127, i64* %125, align 8
  %128 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %129 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %128, i32 0, i32 3
  %130 = load %struct.TYPE_12__*, %struct.TYPE_12__** %129, align 8
  %131 = icmp ne %struct.TYPE_12__* %130, null
  br i1 %131, label %132, label %149

132:                                              ; preds = %123
  %133 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %134 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %133, i32 0, i32 0
  %135 = load i64, i64* %134, align 8
  %136 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %137 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %136, i32 0, i32 3
  %138 = load %struct.TYPE_12__*, %struct.TYPE_12__** %137, align 8
  %139 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %138, i32 0, i32 0
  %140 = load i64, i64* %139, align 8
  %141 = icmp ult i64 %135, %140
  br i1 %141, label %142, label %149

142:                                              ; preds = %132
  %143 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %144 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %143, i32 0, i32 3
  %145 = load %struct.TYPE_12__*, %struct.TYPE_12__** %144, align 8
  store %struct.TYPE_12__* %145, %struct.TYPE_12__** %9, align 8
  %146 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %147 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %146, i32 0, i32 0
  %148 = load i64, i64* %147, align 8
  store i64 %148, i64* %10, align 8
  br label %173

149:                                              ; preds = %132, %123
  %150 = load i32*, i32** %5, align 8
  %151 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %152 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %151, i32 0, i32 3
  %153 = load %struct.TYPE_12__*, %struct.TYPE_12__** %152, align 8
  %154 = call %struct.TYPE_12__* @segment_alloc(i32* %150, %struct.TYPE_12__* %153)
  store %struct.TYPE_12__* %154, %struct.TYPE_12__** %9, align 8
  store i64 0, i64* %10, align 8
  %155 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %156 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %155, i32 0, i32 4
  %157 = load %struct.TYPE_12__*, %struct.TYPE_12__** %156, align 8
  %158 = icmp eq %struct.TYPE_12__* %157, null
  br i1 %158, label %159, label %163

159:                                              ; preds = %149
  %160 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %161 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %162 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %161, i32 0, i32 4
  store %struct.TYPE_12__* %160, %struct.TYPE_12__** %162, align 8
  br label %169

163:                                              ; preds = %149
  %164 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %165 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %166 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %165, i32 0, i32 3
  %167 = load %struct.TYPE_12__*, %struct.TYPE_12__** %166, align 8
  %168 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %167, i32 0, i32 2
  store %struct.TYPE_12__* %164, %struct.TYPE_12__** %168, align 8
  br label %169

169:                                              ; preds = %163, %159
  %170 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %171 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %172 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %171, i32 0, i32 3
  store %struct.TYPE_12__* %170, %struct.TYPE_12__** %172, align 8
  br label %173

173:                                              ; preds = %169, %142
  %174 = load i8*, i8** %7, align 8
  %175 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %176 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %175, i32 0, i32 1
  %177 = load %struct.TYPE_11__*, %struct.TYPE_11__** %176, align 8
  %178 = load i64, i64* %10, align 8
  %179 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %177, i64 %178
  %180 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %179, i32 0, i32 1
  store i8* %174, i8** %180, align 8
  %181 = load i8*, i8** %8, align 8
  %182 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %183 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %182, i32 0, i32 1
  %184 = load %struct.TYPE_11__*, %struct.TYPE_11__** %183, align 8
  %185 = load i64, i64* %10, align 8
  %186 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %184, i64 %185
  %187 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %186, i32 0, i32 0
  store i8* %181, i8** %187, align 8
  %188 = load i64, i64* %10, align 8
  %189 = add i64 %188, 1
  %190 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %191 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %190, i32 0, i32 0
  store i64 %189, i64* %191, align 8
  %192 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %193 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %192, i32 0, i32 2
  %194 = load i32*, i32** %193, align 8
  %195 = icmp eq i32* %194, null
  br i1 %195, label %196, label %207

196:                                              ; preds = %173
  %197 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %198 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %197, i32 0, i32 1
  %199 = load i64, i64* %198, align 8
  %200 = load i64, i64* @MRB_HT_INIT_SIZE, align 8
  %201 = mul i64 %200, 4
  %202 = icmp ugt i64 %199, %201
  br i1 %202, label %203, label %207

203:                                              ; preds = %196
  %204 = load i32*, i32** %5, align 8
  %205 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %206 = call i32 @ht_index(i32* %204, %struct.TYPE_13__* %205)
  br label %207

207:                                              ; preds = %15, %21, %59, %96, %203, %196, %173
  ret void
}

declare dso_local i32 @ht_index_put(i32*, %struct.TYPE_13__*, i8*, i8*) #1

declare dso_local i64 @mrb_undef_p(i8*) #1

declare dso_local i64 @ht_hash_equal(i32*, %struct.TYPE_13__*, i8*, i8*) #1

declare dso_local i32 @ht_compact(i32*, %struct.TYPE_13__*) #1

declare dso_local %struct.TYPE_12__* @segment_alloc(i32*, %struct.TYPE_12__*) #1

declare dso_local i32 @ht_index(i32*, %struct.TYPE_13__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
