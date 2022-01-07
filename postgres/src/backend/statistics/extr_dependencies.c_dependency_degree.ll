; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/statistics/extr_dependencies.c_dependency_degree.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/statistics/extr_dependencies.c_dependency_degree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32 }
%struct.TYPE_6__ = type { i64 }

@TYPECACHE_LT_OPR = common dso_local global i32 0, align 4
@InvalidOid = common dso_local global i64 0, align 8
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [54 x i8] c"cache lookup failed for ordering operator for type %u\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (double (i32, i32*, i32, i64*, %struct.TYPE_5__**, i32*)* @dependency_degree to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal double @dependency_degree(i32 %0, i32* %1, i32 %2, i64* %3, %struct.TYPE_5__** %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64*, align 8
  %11 = alloca %struct.TYPE_5__**, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64*, align 8
  %16 = alloca i64*, align 8
  %17 = alloca i64*, align 8
  %18 = alloca i64*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca %struct.TYPE_5__*, align 8
  %24 = alloca %struct.TYPE_6__*, align 8
  store i32 %0, i32* %7, align 4
  store i32* %1, i32** %8, align 8
  store i32 %2, i32* %9, align 4
  store i64* %3, i64** %10, align 8
  store %struct.TYPE_5__** %4, %struct.TYPE_5__*** %11, align 8
  store i32* %5, i32** %12, align 8
  store i32 0, i32* %20, align 4
  store i32 0, i32* %21, align 4
  store i32 0, i32* %22, align 4
  %25 = load i32, i32* %9, align 4
  %26 = icmp sge i32 %25, 2
  %27 = zext i1 %26 to i32
  %28 = call i32 @Assert(i32 %27)
  %29 = load i32, i32* %9, align 4
  %30 = call i64* @multi_sort_init(i32 %29)
  store i64* %30, i64** %15, align 8
  %31 = load i32*, i32** %12, align 8
  %32 = call i64* @build_attnums_array(i32* %31, i32* %19)
  store i64* %32, i64** %17, align 8
  %33 = load i32, i32* %9, align 4
  %34 = sext i32 %33 to i64
  %35 = mul i64 %34, 8
  %36 = trunc i64 %35 to i32
  %37 = call i64 @palloc(i32 %36)
  %38 = inttoptr i64 %37 to i64*
  store i64* %38, i64** %18, align 8
  store i32 0, i32* %13, align 4
  br label %39

39:                                               ; preds = %56, %6
  %40 = load i32, i32* %13, align 4
  %41 = load i32, i32* %9, align 4
  %42 = icmp slt i32 %40, %41
  br i1 %42, label %43, label %59

43:                                               ; preds = %39
  %44 = load i64*, i64** %17, align 8
  %45 = load i64*, i64** %10, align 8
  %46 = load i32, i32* %13, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i64, i64* %45, i64 %47
  %49 = load i64, i64* %48, align 8
  %50 = getelementptr inbounds i64, i64* %44, i64 %49
  %51 = load i64, i64* %50, align 8
  %52 = load i64*, i64** %18, align 8
  %53 = load i32, i32* %13, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i64, i64* %52, i64 %54
  store i64 %51, i64* %55, align 8
  br label %56

56:                                               ; preds = %43
  %57 = load i32, i32* %13, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %13, align 4
  br label %39

59:                                               ; preds = %39
  store i32 0, i32* %13, align 4
  br label %60

60:                                               ; preds = %99, %59
  %61 = load i32, i32* %13, align 4
  %62 = load i32, i32* %9, align 4
  %63 = icmp slt i32 %61, %62
  br i1 %63, label %64, label %102

64:                                               ; preds = %60
  %65 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %11, align 8
  %66 = load i64*, i64** %10, align 8
  %67 = load i32, i32* %13, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i64, i64* %66, i64 %68
  %70 = load i64, i64* %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %65, i64 %70
  %72 = load %struct.TYPE_5__*, %struct.TYPE_5__** %71, align 8
  store %struct.TYPE_5__* %72, %struct.TYPE_5__** %23, align 8
  %73 = load %struct.TYPE_5__*, %struct.TYPE_5__** %23, align 8
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* @TYPECACHE_LT_OPR, align 4
  %77 = call %struct.TYPE_6__* @lookup_type_cache(i32 %75, i32 %76)
  store %struct.TYPE_6__* %77, %struct.TYPE_6__** %24, align 8
  %78 = load %struct.TYPE_6__*, %struct.TYPE_6__** %24, align 8
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = load i64, i64* @InvalidOid, align 8
  %82 = icmp eq i64 %80, %81
  br i1 %82, label %83, label %89

83:                                               ; preds = %64
  %84 = load i32, i32* @ERROR, align 4
  %85 = load %struct.TYPE_5__*, %struct.TYPE_5__** %23, align 8
  %86 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @elog(i32 %84, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0), i32 %87)
  br label %89

89:                                               ; preds = %83, %64
  %90 = load i64*, i64** %15, align 8
  %91 = load i32, i32* %13, align 4
  %92 = load %struct.TYPE_6__*, %struct.TYPE_6__** %24, align 8
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = load %struct.TYPE_5__*, %struct.TYPE_5__** %23, align 8
  %96 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @multi_sort_add_dimension(i64* %90, i32 %91, i64 %94, i32 %97)
  br label %99

99:                                               ; preds = %89
  %100 = load i32, i32* %13, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %13, align 4
  br label %60

102:                                              ; preds = %60
  %103 = load i32, i32* %7, align 4
  %104 = load i32*, i32** %8, align 8
  %105 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %11, align 8
  %106 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %105, i64 0
  %107 = load %struct.TYPE_5__*, %struct.TYPE_5__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = load i64*, i64** %15, align 8
  %111 = load i32, i32* %9, align 4
  %112 = load i64*, i64** %18, align 8
  %113 = call i64* @build_sorted_items(i32 %103, i32* %14, i32* %104, i32 %109, i64* %110, i32 %111, i64* %112)
  store i64* %113, i64** %16, align 8
  store i32 1, i32* %20, align 4
  store i32 1, i32* %13, align 4
  br label %114

114:                                              ; preds = %167, %102
  %115 = load i32, i32* %13, align 4
  %116 = load i32, i32* %14, align 4
  %117 = icmp sle i32 %115, %116
  br i1 %117, label %118, label %170

118:                                              ; preds = %114
  %119 = load i32, i32* %13, align 4
  %120 = load i32, i32* %14, align 4
  %121 = icmp eq i32 %119, %120
  br i1 %121, label %137, label %122

122:                                              ; preds = %118
  %123 = load i32, i32* %9, align 4
  %124 = sub nsw i32 %123, 2
  %125 = load i64*, i64** %16, align 8
  %126 = load i32, i32* %13, align 4
  %127 = sub nsw i32 %126, 1
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds i64, i64* %125, i64 %128
  %130 = load i64*, i64** %16, align 8
  %131 = load i32, i32* %13, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds i64, i64* %130, i64 %132
  %134 = load i64*, i64** %15, align 8
  %135 = call i64 @multi_sort_compare_dims(i32 0, i32 %124, i64* %129, i64* %133, i64* %134)
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %145

137:                                              ; preds = %122, %118
  %138 = load i32, i32* %21, align 4
  %139 = icmp eq i32 %138, 0
  br i1 %139, label %140, label %144

140:                                              ; preds = %137
  %141 = load i32, i32* %20, align 4
  %142 = load i32, i32* %22, align 4
  %143 = add nsw i32 %142, %141
  store i32 %143, i32* %22, align 4
  br label %144

144:                                              ; preds = %140, %137
  store i32 0, i32* %21, align 4
  store i32 1, i32* %20, align 4
  br label %167

145:                                              ; preds = %122
  %146 = load i32, i32* %9, align 4
  %147 = sub nsw i32 %146, 1
  %148 = load i64*, i64** %16, align 8
  %149 = load i32, i32* %13, align 4
  %150 = sub nsw i32 %149, 1
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds i64, i64* %148, i64 %151
  %153 = load i64*, i64** %16, align 8
  %154 = load i32, i32* %13, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds i64, i64* %153, i64 %155
  %157 = load i64*, i64** %15, align 8
  %158 = call i64 @multi_sort_compare_dim(i32 %147, i64* %152, i64* %156, i64* %157)
  %159 = icmp ne i64 %158, 0
  br i1 %159, label %160, label %163

160:                                              ; preds = %145
  %161 = load i32, i32* %21, align 4
  %162 = add nsw i32 %161, 1
  store i32 %162, i32* %21, align 4
  br label %163

163:                                              ; preds = %160, %145
  br label %164

164:                                              ; preds = %163
  %165 = load i32, i32* %20, align 4
  %166 = add nsw i32 %165, 1
  store i32 %166, i32* %20, align 4
  br label %167

167:                                              ; preds = %164, %144
  %168 = load i32, i32* %13, align 4
  %169 = add nsw i32 %168, 1
  store i32 %169, i32* %13, align 4
  br label %114

170:                                              ; preds = %114
  %171 = load i64*, i64** %16, align 8
  %172 = icmp ne i64* %171, null
  br i1 %172, label %173, label %176

173:                                              ; preds = %170
  %174 = load i64*, i64** %16, align 8
  %175 = call i32 @pfree(i64* %174)
  br label %176

176:                                              ; preds = %173, %170
  %177 = load i64*, i64** %15, align 8
  %178 = call i32 @pfree(i64* %177)
  %179 = load i64*, i64** %17, align 8
  %180 = call i32 @pfree(i64* %179)
  %181 = load i64*, i64** %18, align 8
  %182 = call i32 @pfree(i64* %181)
  %183 = load i32, i32* %22, align 4
  %184 = sitofp i32 %183 to double
  %185 = fmul double %184, 1.000000e+00
  %186 = load i32, i32* %7, align 4
  %187 = sitofp i32 %186 to double
  %188 = fdiv double %185, %187
  ret double %188
}

declare dso_local i32 @Assert(i32) #1

declare dso_local i64* @multi_sort_init(i32) #1

declare dso_local i64* @build_attnums_array(i32*, i32*) #1

declare dso_local i64 @palloc(i32) #1

declare dso_local %struct.TYPE_6__* @lookup_type_cache(i32, i32) #1

declare dso_local i32 @elog(i32, i8*, i32) #1

declare dso_local i32 @multi_sort_add_dimension(i64*, i32, i64, i32) #1

declare dso_local i64* @build_sorted_items(i32, i32*, i32*, i32, i64*, i32, i64*) #1

declare dso_local i64 @multi_sort_compare_dims(i32, i32, i64*, i64*, i64*) #1

declare dso_local i64 @multi_sort_compare_dim(i32, i64*, i64*, i64*) #1

declare dso_local i32 @pfree(i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
