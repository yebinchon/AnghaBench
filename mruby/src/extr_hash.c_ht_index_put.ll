; ModuleID = '/home/carl/AnghaBench/mruby/src/extr_hash.c_ht_index_put.c'
source_filename = "/home/carl/AnghaBench/mruby/src/extr_hash.c_ht_index_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i64, i32, %struct.TYPE_13__*, %struct.TYPE_14__* }
%struct.TYPE_13__ = type { i64, %struct.TYPE_12__*, %struct.TYPE_13__* }
%struct.TYPE_12__ = type { i8*, i8* }
%struct.TYPE_14__ = type { i64, i64, %struct.TYPE_12__** }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_15__*, i8*, i8*)* @ht_index_put to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ht_index_put(i32* %0, %struct.TYPE_15__* %1, i8* %2, i8* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_15__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.TYPE_14__*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.TYPE_13__*, align 8
  %15 = alloca i8*, align 8
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_15__* %1, %struct.TYPE_15__** %6, align 8
  store i8* %2, i8** %7, align 8
  store i8* %3, i8** %8, align 8
  %16 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %17 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %16, i32 0, i32 3
  %18 = load %struct.TYPE_14__*, %struct.TYPE_14__** %17, align 8
  store %struct.TYPE_14__* %18, %struct.TYPE_14__** %9, align 8
  store i64 0, i64* %12, align 8
  %19 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %20 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %23 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = call i64 @UPPER_BOUND(i64 %24)
  %26 = icmp sge i64 %21, %25
  br i1 %26, label %27, label %34

27:                                               ; preds = %4
  %28 = load i32*, i32** %5, align 8
  %29 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %30 = call i32 @ht_compact(i32* %28, %struct.TYPE_15__* %29)
  %31 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %31, i32 0, i32 3
  %33 = load %struct.TYPE_14__*, %struct.TYPE_14__** %32, align 8
  store %struct.TYPE_14__* %33, %struct.TYPE_14__** %9, align 8
  br label %34

34:                                               ; preds = %27, %4
  %35 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %36 = call i64 @HT_MASK(%struct.TYPE_14__* %35)
  store i64 %36, i64* %13, align 8
  %37 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %38 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  store i64 %39, i64* %11, align 8
  %40 = load i32*, i32** %5, align 8
  %41 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %42 = load i8*, i8** %7, align 8
  %43 = call i64 @ht_hash_func(i32* %40, %struct.TYPE_15__* %41, i8* %42)
  %44 = load i64, i64* %13, align 8
  %45 = and i64 %43, %44
  store i64 %45, i64* %10, align 8
  br label %46

46:                                               ; preds = %92, %34
  %47 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %48 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %47, i32 0, i32 2
  %49 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %48, align 8
  %50 = load i64, i64* %10, align 8
  %51 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %49, i64 %50
  %52 = load %struct.TYPE_12__*, %struct.TYPE_12__** %51, align 8
  %53 = icmp ne %struct.TYPE_12__* %52, null
  br i1 %53, label %54, label %99

54:                                               ; preds = %46
  %55 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %56 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %55, i32 0, i32 2
  %57 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %56, align 8
  %58 = load i64, i64* %10, align 8
  %59 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %57, i64 %58
  %60 = load %struct.TYPE_12__*, %struct.TYPE_12__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %60, i32 0, i32 1
  %62 = load i8*, i8** %61, align 8
  store i8* %62, i8** %15, align 8
  %63 = load i8*, i8** %15, align 8
  %64 = call i64 @mrb_undef_p(i8* %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %75

66:                                               ; preds = %54
  %67 = load i64, i64* %11, align 8
  %68 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %69 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = icmp eq i64 %67, %70
  br i1 %71, label %72, label %74

72:                                               ; preds = %66
  %73 = load i64, i64* %10, align 8
  store i64 %73, i64* %11, align 8
  br label %74

74:                                               ; preds = %72, %66
  br label %92

75:                                               ; preds = %54
  %76 = load i32*, i32** %5, align 8
  %77 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %78 = load i8*, i8** %7, align 8
  %79 = load i8*, i8** %15, align 8
  %80 = call i64 @ht_hash_equal(i32* %76, %struct.TYPE_15__* %77, i8* %78, i8* %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %91

82:                                               ; preds = %75
  %83 = load i8*, i8** %8, align 8
  %84 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %85 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %84, i32 0, i32 2
  %86 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %85, align 8
  %87 = load i64, i64* %10, align 8
  %88 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %86, i64 %87
  %89 = load %struct.TYPE_12__*, %struct.TYPE_12__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %89, i32 0, i32 0
  store i8* %83, i8** %90, align 8
  br label %182

91:                                               ; preds = %75
  br label %92

92:                                               ; preds = %91, %74
  %93 = load i64, i64* %10, align 8
  %94 = load i64, i64* %12, align 8
  %95 = add i64 %94, 1
  store i64 %95, i64* %12, align 8
  %96 = add i64 %93, %95
  %97 = load i64, i64* %13, align 8
  %98 = and i64 %96, %97
  store i64 %98, i64* %10, align 8
  br label %46

99:                                               ; preds = %46
  %100 = load i64, i64* %11, align 8
  %101 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %102 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %101, i32 0, i32 1
  %103 = load i64, i64* %102, align 8
  %104 = icmp ult i64 %100, %103
  br i1 %104, label %105, label %107

105:                                              ; preds = %99
  %106 = load i64, i64* %11, align 8
  store i64 %106, i64* %10, align 8
  br label %107

107:                                              ; preds = %105, %99
  %108 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %109 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %108, i32 0, i32 2
  %110 = load %struct.TYPE_13__*, %struct.TYPE_13__** %109, align 8
  store %struct.TYPE_13__* %110, %struct.TYPE_13__** %14, align 8
  %111 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %112 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %115 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = icmp slt i64 %113, %116
  br i1 %117, label %118, label %132

118:                                              ; preds = %107
  %119 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %120 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %119, i32 0, i32 1
  %121 = load %struct.TYPE_12__*, %struct.TYPE_12__** %120, align 8
  %122 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %123 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %122, i32 0, i32 0
  %124 = load i64, i64* %123, align 8
  %125 = add nsw i64 %124, 1
  store i64 %125, i64* %123, align 8
  %126 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %121, i64 %124
  %127 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %128 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %127, i32 0, i32 2
  %129 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %128, align 8
  %130 = load i64, i64* %10, align 8
  %131 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %129, i64 %130
  store %struct.TYPE_12__* %126, %struct.TYPE_12__** %131, align 8
  br label %157

132:                                              ; preds = %107
  %133 = load i32*, i32** %5, align 8
  %134 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %135 = call %struct.TYPE_13__* @segment_alloc(i32* %133, %struct.TYPE_13__* %134)
  %136 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %137 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %136, i32 0, i32 2
  store %struct.TYPE_13__* %135, %struct.TYPE_13__** %137, align 8
  %138 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %139 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %138, i32 0, i32 2
  %140 = load %struct.TYPE_13__*, %struct.TYPE_13__** %139, align 8
  store %struct.TYPE_13__* %140, %struct.TYPE_13__** %14, align 8
  %141 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %142 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %141, i32 0, i32 2
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %142, align 8
  %143 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %144 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %145 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %144, i32 0, i32 2
  store %struct.TYPE_13__* %143, %struct.TYPE_13__** %145, align 8
  %146 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %147 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %146, i32 0, i32 0
  store i64 1, i64* %147, align 8
  %148 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %149 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %148, i32 0, i32 1
  %150 = load %struct.TYPE_12__*, %struct.TYPE_12__** %149, align 8
  %151 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %150, i64 0
  %152 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %153 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %152, i32 0, i32 2
  %154 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %153, align 8
  %155 = load i64, i64* %10, align 8
  %156 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %154, i64 %155
  store %struct.TYPE_12__* %151, %struct.TYPE_12__** %156, align 8
  br label %157

157:                                              ; preds = %132, %118
  %158 = load i8*, i8** %7, align 8
  %159 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %160 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %159, i32 0, i32 2
  %161 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %160, align 8
  %162 = load i64, i64* %10, align 8
  %163 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %161, i64 %162
  %164 = load %struct.TYPE_12__*, %struct.TYPE_12__** %163, align 8
  %165 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %164, i32 0, i32 1
  store i8* %158, i8** %165, align 8
  %166 = load i8*, i8** %8, align 8
  %167 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %168 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %167, i32 0, i32 2
  %169 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %168, align 8
  %170 = load i64, i64* %10, align 8
  %171 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %169, i64 %170
  %172 = load %struct.TYPE_12__*, %struct.TYPE_12__** %171, align 8
  %173 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %172, i32 0, i32 0
  store i8* %166, i8** %173, align 8
  %174 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %175 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %174, i32 0, i32 0
  %176 = load i64, i64* %175, align 8
  %177 = add nsw i64 %176, 1
  store i64 %177, i64* %175, align 8
  %178 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %179 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %178, i32 0, i32 1
  %180 = load i32, i32* %179, align 8
  %181 = add nsw i32 %180, 1
  store i32 %181, i32* %179, align 8
  br label %182

182:                                              ; preds = %157, %82
  ret void
}

declare dso_local i64 @UPPER_BOUND(i64) #1

declare dso_local i32 @ht_compact(i32*, %struct.TYPE_15__*) #1

declare dso_local i64 @HT_MASK(%struct.TYPE_14__*) #1

declare dso_local i64 @ht_hash_func(i32*, %struct.TYPE_15__*, i8*) #1

declare dso_local i64 @mrb_undef_p(i8*) #1

declare dso_local i64 @ht_hash_equal(i32*, %struct.TYPE_15__*, i8*, i8*) #1

declare dso_local %struct.TYPE_13__* @segment_alloc(i32*, %struct.TYPE_13__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
