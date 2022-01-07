; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/hash/extr_dynahash.c_expand_table.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/hash/extr_dynahash.c_expand_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i64, %struct.TYPE_12__***, i32, %struct.TYPE_13__* }
%struct.TYPE_12__ = type { %struct.TYPE_12__*, i32 }
%struct.TYPE_13__ = type { i32, i64, i64, i64, i32 }

@hash_expansions = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_11__*)* @expand_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @expand_table(%struct.TYPE_11__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_11__*, align 8
  %4 = alloca %struct.TYPE_13__*, align 8
  %5 = alloca %struct.TYPE_12__**, align 8
  %6 = alloca %struct.TYPE_12__**, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.TYPE_12__**, align 8
  %14 = alloca %struct.TYPE_12__**, align 8
  %15 = alloca %struct.TYPE_12__*, align 8
  %16 = alloca %struct.TYPE_12__*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %3, align 8
  %17 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %17, i32 0, i32 3
  %19 = load %struct.TYPE_13__*, %struct.TYPE_13__** %18, align 8
  store %struct.TYPE_13__* %19, %struct.TYPE_13__** %4, align 8
  %20 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %21 = call i32 @IS_PARTITIONED(%struct.TYPE_13__* %20)
  %22 = icmp ne i32 %21, 0
  %23 = xor i1 %22, true
  %24 = zext i1 %23 to i32
  %25 = call i32 @Assert(i32 %24)
  %26 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = add nsw i32 %28, 1
  %30 = sext i32 %29 to i64
  store i64 %30, i64* %8, align 8
  %31 = load i64, i64* %8, align 8
  %32 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = ashr i64 %31, %34
  store i64 %35, i64* %9, align 8
  %36 = load i64, i64* %8, align 8
  %37 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 8
  %40 = call i64 @MOD(i64 %36, i32 %39)
  store i64 %40, i64* %10, align 8
  %41 = load i64, i64* %9, align 8
  %42 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = icmp sge i64 %41, %44
  br i1 %45, label %46, label %73

46:                                               ; preds = %1
  %47 = load i64, i64* %9, align 8
  %48 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %48, i32 0, i32 2
  %50 = load i64, i64* %49, align 8
  %51 = icmp sge i64 %47, %50
  br i1 %51, label %52, label %58

52:                                               ; preds = %46
  %53 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %54 = call i32 @dir_realloc(%struct.TYPE_11__* %53)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %57, label %56

56:                                               ; preds = %52
  store i32 0, i32* %2, align 4
  br label %167

57:                                               ; preds = %52
  br label %58

58:                                               ; preds = %57, %46
  %59 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %60 = call %struct.TYPE_12__** @seg_alloc(%struct.TYPE_11__* %59)
  %61 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %62 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %61, i32 0, i32 1
  %63 = load %struct.TYPE_12__***, %struct.TYPE_12__**** %62, align 8
  %64 = load i64, i64* %9, align 8
  %65 = getelementptr inbounds %struct.TYPE_12__**, %struct.TYPE_12__*** %63, i64 %64
  store %struct.TYPE_12__** %60, %struct.TYPE_12__*** %65, align 8
  %66 = icmp ne %struct.TYPE_12__** %60, null
  br i1 %66, label %68, label %67

67:                                               ; preds = %58
  store i32 0, i32* %2, align 4
  br label %167

68:                                               ; preds = %58
  %69 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %70 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = add nsw i64 %71, 1
  store i64 %72, i64* %70, align 8
  br label %73

73:                                               ; preds = %68, %1
  %74 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %75 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %75, align 8
  %78 = load i64, i64* %8, align 8
  %79 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %80 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %79, i32 0, i32 3
  %81 = load i64, i64* %80, align 8
  %82 = and i64 %78, %81
  store i64 %82, i64* %7, align 8
  %83 = load i64, i64* %8, align 8
  %84 = trunc i64 %83 to i32
  %85 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %86 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %85, i32 0, i32 4
  %87 = load i32, i32* %86, align 8
  %88 = icmp sgt i32 %84, %87
  br i1 %88, label %89, label %106

89:                                               ; preds = %73
  %90 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %91 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %90, i32 0, i32 4
  %92 = load i32, i32* %91, align 8
  %93 = sext i32 %92 to i64
  %94 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %95 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %94, i32 0, i32 3
  store i64 %93, i64* %95, align 8
  %96 = load i64, i64* %8, align 8
  %97 = trunc i64 %96 to i32
  %98 = sext i32 %97 to i64
  %99 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %100 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %99, i32 0, i32 3
  %101 = load i64, i64* %100, align 8
  %102 = or i64 %98, %101
  %103 = trunc i64 %102 to i32
  %104 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %105 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %104, i32 0, i32 4
  store i32 %103, i32* %105, align 8
  br label %106

106:                                              ; preds = %89, %73
  %107 = load i64, i64* %7, align 8
  %108 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %109 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = ashr i64 %107, %110
  store i64 %111, i64* %11, align 8
  %112 = load i64, i64* %7, align 8
  %113 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %114 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %113, i32 0, i32 2
  %115 = load i32, i32* %114, align 8
  %116 = call i64 @MOD(i64 %112, i32 %115)
  store i64 %116, i64* %12, align 8
  %117 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %118 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %117, i32 0, i32 1
  %119 = load %struct.TYPE_12__***, %struct.TYPE_12__**** %118, align 8
  %120 = load i64, i64* %11, align 8
  %121 = getelementptr inbounds %struct.TYPE_12__**, %struct.TYPE_12__*** %119, i64 %120
  %122 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %121, align 8
  store %struct.TYPE_12__** %122, %struct.TYPE_12__*** %5, align 8
  %123 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %124 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %123, i32 0, i32 1
  %125 = load %struct.TYPE_12__***, %struct.TYPE_12__**** %124, align 8
  %126 = load i64, i64* %9, align 8
  %127 = getelementptr inbounds %struct.TYPE_12__**, %struct.TYPE_12__*** %125, i64 %126
  %128 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %127, align 8
  store %struct.TYPE_12__** %128, %struct.TYPE_12__*** %6, align 8
  %129 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %5, align 8
  %130 = load i64, i64* %12, align 8
  %131 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %129, i64 %130
  store %struct.TYPE_12__** %131, %struct.TYPE_12__*** %13, align 8
  %132 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %6, align 8
  %133 = load i64, i64* %10, align 8
  %134 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %132, i64 %133
  store %struct.TYPE_12__** %134, %struct.TYPE_12__*** %14, align 8
  %135 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %13, align 8
  %136 = load %struct.TYPE_12__*, %struct.TYPE_12__** %135, align 8
  store %struct.TYPE_12__* %136, %struct.TYPE_12__** %15, align 8
  br label %137

137:                                              ; preds = %162, %106
  %138 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  %139 = icmp ne %struct.TYPE_12__* %138, null
  br i1 %139, label %140, label %164

140:                                              ; preds = %137
  %141 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  %142 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %141, i32 0, i32 0
  %143 = load %struct.TYPE_12__*, %struct.TYPE_12__** %142, align 8
  store %struct.TYPE_12__* %143, %struct.TYPE_12__** %16, align 8
  %144 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %145 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  %146 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %145, i32 0, i32 1
  %147 = load i32, i32* %146, align 8
  %148 = call i64 @calc_bucket(%struct.TYPE_13__* %144, i32 %147)
  %149 = load i64, i64* %7, align 8
  %150 = icmp eq i64 %148, %149
  br i1 %150, label %151, label %156

151:                                              ; preds = %140
  %152 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  %153 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %13, align 8
  store %struct.TYPE_12__* %152, %struct.TYPE_12__** %153, align 8
  %154 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  %155 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %154, i32 0, i32 0
  store %struct.TYPE_12__** %155, %struct.TYPE_12__*** %13, align 8
  br label %161

156:                                              ; preds = %140
  %157 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  %158 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %14, align 8
  store %struct.TYPE_12__* %157, %struct.TYPE_12__** %158, align 8
  %159 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  %160 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %159, i32 0, i32 0
  store %struct.TYPE_12__** %160, %struct.TYPE_12__*** %14, align 8
  br label %161

161:                                              ; preds = %156, %151
  br label %162

162:                                              ; preds = %161
  %163 = load %struct.TYPE_12__*, %struct.TYPE_12__** %16, align 8
  store %struct.TYPE_12__* %163, %struct.TYPE_12__** %15, align 8
  br label %137

164:                                              ; preds = %137
  %165 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %13, align 8
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %165, align 8
  %166 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %14, align 8
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %166, align 8
  store i32 1, i32* %2, align 4
  br label %167

167:                                              ; preds = %164, %67, %56
  %168 = load i32, i32* %2, align 4
  ret i32 %168
}

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @IS_PARTITIONED(%struct.TYPE_13__*) #1

declare dso_local i64 @MOD(i64, i32) #1

declare dso_local i32 @dir_realloc(%struct.TYPE_11__*) #1

declare dso_local %struct.TYPE_12__** @seg_alloc(%struct.TYPE_11__*) #1

declare dso_local i64 @calc_bucket(%struct.TYPE_13__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
