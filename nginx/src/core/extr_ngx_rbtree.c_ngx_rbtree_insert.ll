; ModuleID = '/home/carl/AnghaBench/nginx/src/core/extr_ngx_rbtree.c_ngx_rbtree_insert.c'
source_filename = "/home/carl/AnghaBench/nginx/src/core/extr_ngx_rbtree.c_ngx_rbtree_insert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i32 (%struct.TYPE_18__*, %struct.TYPE_18__*, %struct.TYPE_18__*)*, %struct.TYPE_18__*, %struct.TYPE_18__* }
%struct.TYPE_18__ = type { %struct.TYPE_18__*, %struct.TYPE_18__*, %struct.TYPE_18__* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ngx_rbtree_insert(%struct.TYPE_17__* %0, %struct.TYPE_18__* %1) #0 {
  %3 = alloca %struct.TYPE_17__*, align 8
  %4 = alloca %struct.TYPE_18__*, align 8
  %5 = alloca %struct.TYPE_18__**, align 8
  %6 = alloca %struct.TYPE_18__*, align 8
  %7 = alloca %struct.TYPE_18__*, align 8
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %3, align 8
  store %struct.TYPE_18__* %1, %struct.TYPE_18__** %4, align 8
  %8 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %8, i32 0, i32 2
  store %struct.TYPE_18__** %9, %struct.TYPE_18__*** %5, align 8
  %10 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %10, i32 0, i32 1
  %12 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  store %struct.TYPE_18__* %12, %struct.TYPE_18__** %7, align 8
  %13 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %5, align 8
  %14 = load %struct.TYPE_18__*, %struct.TYPE_18__** %13, align 8
  %15 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %16 = icmp eq %struct.TYPE_18__* %14, %15
  br i1 %16, label %17, label %30

17:                                               ; preds = %2
  %18 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %18, i32 0, i32 0
  store %struct.TYPE_18__* null, %struct.TYPE_18__** %19, align 8
  %20 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %21 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %21, i32 0, i32 1
  store %struct.TYPE_18__* %20, %struct.TYPE_18__** %22, align 8
  %23 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %24 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %24, i32 0, i32 2
  store %struct.TYPE_18__* %23, %struct.TYPE_18__** %25, align 8
  %26 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %27 = call i32 @ngx_rbt_black(%struct.TYPE_18__* %26)
  %28 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %29 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %5, align 8
  store %struct.TYPE_18__* %28, %struct.TYPE_18__** %29, align 8
  br label %199

30:                                               ; preds = %2
  %31 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %31, i32 0, i32 0
  %33 = load i32 (%struct.TYPE_18__*, %struct.TYPE_18__*, %struct.TYPE_18__*)*, i32 (%struct.TYPE_18__*, %struct.TYPE_18__*, %struct.TYPE_18__*)** %32, align 8
  %34 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %5, align 8
  %35 = load %struct.TYPE_18__*, %struct.TYPE_18__** %34, align 8
  %36 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %37 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %38 = call i32 %33(%struct.TYPE_18__* %35, %struct.TYPE_18__* %36, %struct.TYPE_18__* %37)
  br label %39

39:                                               ; preds = %194, %30
  %40 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %41 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %5, align 8
  %42 = load %struct.TYPE_18__*, %struct.TYPE_18__** %41, align 8
  %43 = icmp ne %struct.TYPE_18__* %40, %42
  br i1 %43, label %44, label %50

44:                                               ; preds = %39
  %45 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %45, i32 0, i32 0
  %47 = load %struct.TYPE_18__*, %struct.TYPE_18__** %46, align 8
  %48 = call i64 @ngx_rbt_is_red(%struct.TYPE_18__* %47)
  %49 = icmp ne i64 %48, 0
  br label %50

50:                                               ; preds = %44, %39
  %51 = phi i1 [ false, %39 ], [ %49, %44 ]
  br i1 %51, label %52, label %195

52:                                               ; preds = %50
  %53 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %54 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %53, i32 0, i32 0
  %55 = load %struct.TYPE_18__*, %struct.TYPE_18__** %54, align 8
  %56 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %57 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %56, i32 0, i32 0
  %58 = load %struct.TYPE_18__*, %struct.TYPE_18__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %58, i32 0, i32 0
  %60 = load %struct.TYPE_18__*, %struct.TYPE_18__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %60, i32 0, i32 1
  %62 = load %struct.TYPE_18__*, %struct.TYPE_18__** %61, align 8
  %63 = icmp eq %struct.TYPE_18__* %55, %62
  br i1 %63, label %64, label %129

64:                                               ; preds = %52
  %65 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %66 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %65, i32 0, i32 0
  %67 = load %struct.TYPE_18__*, %struct.TYPE_18__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %67, i32 0, i32 0
  %69 = load %struct.TYPE_18__*, %struct.TYPE_18__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %69, i32 0, i32 2
  %71 = load %struct.TYPE_18__*, %struct.TYPE_18__** %70, align 8
  store %struct.TYPE_18__* %71, %struct.TYPE_18__** %6, align 8
  %72 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %73 = call i64 @ngx_rbt_is_red(%struct.TYPE_18__* %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %93

75:                                               ; preds = %64
  %76 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %77 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %76, i32 0, i32 0
  %78 = load %struct.TYPE_18__*, %struct.TYPE_18__** %77, align 8
  %79 = call i32 @ngx_rbt_black(%struct.TYPE_18__* %78)
  %80 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %81 = call i32 @ngx_rbt_black(%struct.TYPE_18__* %80)
  %82 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %83 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %82, i32 0, i32 0
  %84 = load %struct.TYPE_18__*, %struct.TYPE_18__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %84, i32 0, i32 0
  %86 = load %struct.TYPE_18__*, %struct.TYPE_18__** %85, align 8
  %87 = call i32 @ngx_rbt_red(%struct.TYPE_18__* %86)
  %88 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %89 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %88, i32 0, i32 0
  %90 = load %struct.TYPE_18__*, %struct.TYPE_18__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %90, i32 0, i32 0
  %92 = load %struct.TYPE_18__*, %struct.TYPE_18__** %91, align 8
  store %struct.TYPE_18__* %92, %struct.TYPE_18__** %4, align 8
  br label %128

93:                                               ; preds = %64
  %94 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %95 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %96 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %95, i32 0, i32 0
  %97 = load %struct.TYPE_18__*, %struct.TYPE_18__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %97, i32 0, i32 2
  %99 = load %struct.TYPE_18__*, %struct.TYPE_18__** %98, align 8
  %100 = icmp eq %struct.TYPE_18__* %94, %99
  br i1 %100, label %101, label %109

101:                                              ; preds = %93
  %102 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %103 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %102, i32 0, i32 0
  %104 = load %struct.TYPE_18__*, %struct.TYPE_18__** %103, align 8
  store %struct.TYPE_18__* %104, %struct.TYPE_18__** %4, align 8
  %105 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %5, align 8
  %106 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %107 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %108 = call i32 @ngx_rbtree_left_rotate(%struct.TYPE_18__** %105, %struct.TYPE_18__* %106, %struct.TYPE_18__* %107)
  br label %109

109:                                              ; preds = %101, %93
  %110 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %111 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %110, i32 0, i32 0
  %112 = load %struct.TYPE_18__*, %struct.TYPE_18__** %111, align 8
  %113 = call i32 @ngx_rbt_black(%struct.TYPE_18__* %112)
  %114 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %115 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %114, i32 0, i32 0
  %116 = load %struct.TYPE_18__*, %struct.TYPE_18__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %116, i32 0, i32 0
  %118 = load %struct.TYPE_18__*, %struct.TYPE_18__** %117, align 8
  %119 = call i32 @ngx_rbt_red(%struct.TYPE_18__* %118)
  %120 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %5, align 8
  %121 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %122 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %123 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %122, i32 0, i32 0
  %124 = load %struct.TYPE_18__*, %struct.TYPE_18__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %124, i32 0, i32 0
  %126 = load %struct.TYPE_18__*, %struct.TYPE_18__** %125, align 8
  %127 = call i32 @ngx_rbtree_right_rotate(%struct.TYPE_18__** %120, %struct.TYPE_18__* %121, %struct.TYPE_18__* %126)
  br label %128

128:                                              ; preds = %109, %75
  br label %194

129:                                              ; preds = %52
  %130 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %131 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %130, i32 0, i32 0
  %132 = load %struct.TYPE_18__*, %struct.TYPE_18__** %131, align 8
  %133 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %132, i32 0, i32 0
  %134 = load %struct.TYPE_18__*, %struct.TYPE_18__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %134, i32 0, i32 1
  %136 = load %struct.TYPE_18__*, %struct.TYPE_18__** %135, align 8
  store %struct.TYPE_18__* %136, %struct.TYPE_18__** %6, align 8
  %137 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %138 = call i64 @ngx_rbt_is_red(%struct.TYPE_18__* %137)
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %158

140:                                              ; preds = %129
  %141 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %142 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %141, i32 0, i32 0
  %143 = load %struct.TYPE_18__*, %struct.TYPE_18__** %142, align 8
  %144 = call i32 @ngx_rbt_black(%struct.TYPE_18__* %143)
  %145 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %146 = call i32 @ngx_rbt_black(%struct.TYPE_18__* %145)
  %147 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %148 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %147, i32 0, i32 0
  %149 = load %struct.TYPE_18__*, %struct.TYPE_18__** %148, align 8
  %150 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %149, i32 0, i32 0
  %151 = load %struct.TYPE_18__*, %struct.TYPE_18__** %150, align 8
  %152 = call i32 @ngx_rbt_red(%struct.TYPE_18__* %151)
  %153 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %154 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %153, i32 0, i32 0
  %155 = load %struct.TYPE_18__*, %struct.TYPE_18__** %154, align 8
  %156 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %155, i32 0, i32 0
  %157 = load %struct.TYPE_18__*, %struct.TYPE_18__** %156, align 8
  store %struct.TYPE_18__* %157, %struct.TYPE_18__** %4, align 8
  br label %193

158:                                              ; preds = %129
  %159 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %160 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %161 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %160, i32 0, i32 0
  %162 = load %struct.TYPE_18__*, %struct.TYPE_18__** %161, align 8
  %163 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %162, i32 0, i32 1
  %164 = load %struct.TYPE_18__*, %struct.TYPE_18__** %163, align 8
  %165 = icmp eq %struct.TYPE_18__* %159, %164
  br i1 %165, label %166, label %174

166:                                              ; preds = %158
  %167 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %168 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %167, i32 0, i32 0
  %169 = load %struct.TYPE_18__*, %struct.TYPE_18__** %168, align 8
  store %struct.TYPE_18__* %169, %struct.TYPE_18__** %4, align 8
  %170 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %5, align 8
  %171 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %172 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %173 = call i32 @ngx_rbtree_right_rotate(%struct.TYPE_18__** %170, %struct.TYPE_18__* %171, %struct.TYPE_18__* %172)
  br label %174

174:                                              ; preds = %166, %158
  %175 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %176 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %175, i32 0, i32 0
  %177 = load %struct.TYPE_18__*, %struct.TYPE_18__** %176, align 8
  %178 = call i32 @ngx_rbt_black(%struct.TYPE_18__* %177)
  %179 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %180 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %179, i32 0, i32 0
  %181 = load %struct.TYPE_18__*, %struct.TYPE_18__** %180, align 8
  %182 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %181, i32 0, i32 0
  %183 = load %struct.TYPE_18__*, %struct.TYPE_18__** %182, align 8
  %184 = call i32 @ngx_rbt_red(%struct.TYPE_18__* %183)
  %185 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %5, align 8
  %186 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %187 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %188 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %187, i32 0, i32 0
  %189 = load %struct.TYPE_18__*, %struct.TYPE_18__** %188, align 8
  %190 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %189, i32 0, i32 0
  %191 = load %struct.TYPE_18__*, %struct.TYPE_18__** %190, align 8
  %192 = call i32 @ngx_rbtree_left_rotate(%struct.TYPE_18__** %185, %struct.TYPE_18__* %186, %struct.TYPE_18__* %191)
  br label %193

193:                                              ; preds = %174, %140
  br label %194

194:                                              ; preds = %193, %128
  br label %39

195:                                              ; preds = %50
  %196 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %5, align 8
  %197 = load %struct.TYPE_18__*, %struct.TYPE_18__** %196, align 8
  %198 = call i32 @ngx_rbt_black(%struct.TYPE_18__* %197)
  br label %199

199:                                              ; preds = %195, %17
  ret void
}

declare dso_local i32 @ngx_rbt_black(%struct.TYPE_18__*) #1

declare dso_local i64 @ngx_rbt_is_red(%struct.TYPE_18__*) #1

declare dso_local i32 @ngx_rbt_red(%struct.TYPE_18__*) #1

declare dso_local i32 @ngx_rbtree_left_rotate(%struct.TYPE_18__**, %struct.TYPE_18__*, %struct.TYPE_18__*) #1

declare dso_local i32 @ngx_rbtree_right_rotate(%struct.TYPE_18__**, %struct.TYPE_18__*, %struct.TYPE_18__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
