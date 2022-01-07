; ModuleID = '/home/carl/AnghaBench/nginx/src/core/extr_ngx_resolver.c_ngx_resolver_create_name_query.c'
source_filename = "/home/carl/AnghaBench/nginx/src/core/extr_ngx_resolver.c_ngx_resolver_create_name_query.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i64 }
%struct.TYPE_14__ = type { i8*, i8*, i64 }
%struct.TYPE_11__ = type { i32, i8* }
%struct.TYPE_13__ = type { i32, i32, i64, i64 }
%struct.TYPE_15__ = type { i8, i8, i32, i32, i64, i64, i64, i64, i64, i64, i64, i64 }

@NGX_ERROR = common dso_local global i32 0, align 4
@NGX_LOG_DEBUG_CORE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"resolve: \22%V\22 A %i\00", align 1
@NGX_RESOLVE_A = common dso_local global i32 0, align 4
@NGX_DECLINED = common dso_local global i32 0, align 4
@NGX_OK = common dso_local global i32 0, align 4
@NGX_RESOLVE_AAAA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_12__*, %struct.TYPE_14__*, %struct.TYPE_11__*)* @ngx_resolver_create_name_query to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ngx_resolver_create_name_query(%struct.TYPE_12__* %0, %struct.TYPE_14__* %1, %struct.TYPE_11__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca %struct.TYPE_14__*, align 8
  %7 = alloca %struct.TYPE_11__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_13__*, align 8
  %14 = alloca %struct.TYPE_15__*, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %5, align 8
  store %struct.TYPE_14__* %1, %struct.TYPE_14__** %6, align 8
  store %struct.TYPE_11__* %2, %struct.TYPE_11__** %7, align 8
  %15 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %16 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %25

19:                                               ; preds = %3
  %20 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %21 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = add nsw i32 1, %22
  %24 = add nsw i32 %23, 1
  br label %26

25:                                               ; preds = %3
  br label %26

26:                                               ; preds = %25, %19
  %27 = phi i32 [ %24, %19 ], [ 1, %25 ]
  %28 = sext i32 %27 to i64
  store i64 %28, i64* %11, align 8
  %29 = load i64, i64* %11, align 8
  %30 = add i64 80, %29
  %31 = add i64 %30, 24
  store i64 %31, i64* %10, align 8
  %32 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %33 = load i64, i64* %10, align 8
  %34 = call i8* @ngx_resolver_alloc(%struct.TYPE_12__* %32, i64 %33)
  store i8* %34, i8** %8, align 8
  %35 = load i8*, i8** %8, align 8
  %36 = icmp eq i8* %35, null
  br i1 %36, label %37, label %39

37:                                               ; preds = %26
  %38 = load i32, i32* @NGX_ERROR, align 4
  store i32 %38, i32* %4, align 4
  br label %171

39:                                               ; preds = %26
  %40 = load i64, i64* %10, align 8
  %41 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %42 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %41, i32 0, i32 2
  store i64 %40, i64* %42, align 8
  %43 = load i8*, i8** %8, align 8
  %44 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %45 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %44, i32 0, i32 0
  store i8* %43, i8** %45, align 8
  %46 = load i8*, i8** %8, align 8
  %47 = bitcast i8* %46 to %struct.TYPE_15__*
  store %struct.TYPE_15__* %47, %struct.TYPE_15__** %14, align 8
  %48 = call i32 (...) @ngx_random()
  store i32 %48, i32* %12, align 4
  %49 = load i32, i32* @NGX_LOG_DEBUG_CORE, align 4
  %50 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %54 = load i32, i32* %12, align 4
  %55 = and i32 %54, 65535
  %56 = call i32 @ngx_log_debug2(i32 %49, i32 %52, i32 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), %struct.TYPE_11__* %53, i32 %55)
  %57 = load i32, i32* %12, align 4
  %58 = ashr i32 %57, 8
  %59 = and i32 %58, 255
  %60 = trunc i32 %59 to i8
  %61 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %62 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %61, i32 0, i32 0
  store i8 %60, i8* %62, align 8
  %63 = load i32, i32* %12, align 4
  %64 = and i32 %63, 255
  %65 = trunc i32 %64 to i8
  %66 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %67 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %66, i32 0, i32 1
  store i8 %65, i8* %67, align 1
  %68 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %69 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %68, i32 0, i32 2
  store i32 1, i32* %69, align 4
  %70 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %71 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %70, i32 0, i32 11
  store i64 0, i64* %71, align 8
  %72 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %73 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %72, i32 0, i32 10
  store i64 0, i64* %73, align 8
  %74 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %75 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %74, i32 0, i32 3
  store i32 1, i32* %75, align 8
  %76 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %77 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %76, i32 0, i32 9
  store i64 0, i64* %77, align 8
  %78 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %79 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %78, i32 0, i32 8
  store i64 0, i64* %79, align 8
  %80 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %81 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %80, i32 0, i32 7
  store i64 0, i64* %81, align 8
  %82 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %83 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %82, i32 0, i32 6
  store i64 0, i64* %83, align 8
  %84 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %85 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %84, i32 0, i32 5
  store i64 0, i64* %85, align 8
  %86 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %87 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %86, i32 0, i32 4
  store i64 0, i64* %87, align 8
  %88 = load i64, i64* %11, align 8
  %89 = add i64 80, %88
  %90 = load i8*, i8** %8, align 8
  %91 = getelementptr inbounds i8, i8* %90, i64 %89
  store i8* %91, i8** %8, align 8
  %92 = load i8*, i8** %8, align 8
  %93 = bitcast i8* %92 to %struct.TYPE_13__*
  store %struct.TYPE_13__* %93, %struct.TYPE_13__** %13, align 8
  %94 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %95 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %94, i32 0, i32 3
  store i64 0, i64* %95, align 8
  %96 = load i32, i32* @NGX_RESOLVE_A, align 4
  %97 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %98 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %97, i32 0, i32 1
  store i32 %96, i32* %98, align 4
  %99 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %100 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %99, i32 0, i32 2
  store i64 0, i64* %100, align 8
  %101 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %102 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %101, i32 0, i32 0
  store i32 1, i32* %102, align 8
  store i64 0, i64* %10, align 8
  %103 = load i8*, i8** %8, align 8
  %104 = getelementptr inbounds i8, i8* %103, i32 -1
  store i8* %104, i8** %8, align 8
  %105 = load i8*, i8** %8, align 8
  %106 = getelementptr inbounds i8, i8* %105, i32 -1
  store i8* %106, i8** %8, align 8
  store i8 0, i8* %105, align 1
  %107 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %108 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %111, label %113

111:                                              ; preds = %39
  %112 = load i32, i32* @NGX_DECLINED, align 4
  store i32 %112, i32* %4, align 4
  br label %171

113:                                              ; preds = %39
  %114 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %115 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %114, i32 0, i32 1
  %116 = load i8*, i8** %115, align 8
  %117 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %118 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds i8, i8* %116, i64 %120
  %122 = getelementptr inbounds i8, i8* %121, i64 -1
  store i8* %122, i8** %9, align 8
  br label %123

123:                                              ; preds = %155, %113
  %124 = load i8*, i8** %9, align 8
  %125 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %126 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %125, i32 0, i32 1
  %127 = load i8*, i8** %126, align 8
  %128 = icmp uge i8* %124, %127
  br i1 %128, label %129, label %158

129:                                              ; preds = %123
  %130 = load i8*, i8** %9, align 8
  %131 = load i8, i8* %130, align 1
  %132 = sext i8 %131 to i32
  %133 = icmp ne i32 %132, 46
  br i1 %133, label %134, label %140

134:                                              ; preds = %129
  %135 = load i8*, i8** %9, align 8
  %136 = load i8, i8* %135, align 1
  %137 = load i8*, i8** %8, align 8
  store i8 %136, i8* %137, align 1
  %138 = load i64, i64* %10, align 8
  %139 = add i64 %138, 1
  store i64 %139, i64* %10, align 8
  br label %152

140:                                              ; preds = %129
  %141 = load i64, i64* %10, align 8
  %142 = icmp eq i64 %141, 0
  br i1 %142, label %146, label %143

143:                                              ; preds = %140
  %144 = load i64, i64* %10, align 8
  %145 = icmp ugt i64 %144, 255
  br i1 %145, label %146, label %148

146:                                              ; preds = %143, %140
  %147 = load i32, i32* @NGX_DECLINED, align 4
  store i32 %147, i32* %4, align 4
  br label %171

148:                                              ; preds = %143
  %149 = load i64, i64* %10, align 8
  %150 = trunc i64 %149 to i8
  %151 = load i8*, i8** %8, align 8
  store i8 %150, i8* %151, align 1
  store i64 0, i64* %10, align 8
  br label %152

152:                                              ; preds = %148, %134
  %153 = load i8*, i8** %8, align 8
  %154 = getelementptr inbounds i8, i8* %153, i32 -1
  store i8* %154, i8** %8, align 8
  br label %155

155:                                              ; preds = %152
  %156 = load i8*, i8** %9, align 8
  %157 = getelementptr inbounds i8, i8* %156, i32 -1
  store i8* %157, i8** %9, align 8
  br label %123

158:                                              ; preds = %123
  %159 = load i64, i64* %10, align 8
  %160 = icmp eq i64 %159, 0
  br i1 %160, label %164, label %161

161:                                              ; preds = %158
  %162 = load i64, i64* %10, align 8
  %163 = icmp ugt i64 %162, 255
  br i1 %163, label %164, label %166

164:                                              ; preds = %161, %158
  %165 = load i32, i32* @NGX_DECLINED, align 4
  store i32 %165, i32* %4, align 4
  br label %171

166:                                              ; preds = %161
  %167 = load i64, i64* %10, align 8
  %168 = trunc i64 %167 to i8
  %169 = load i8*, i8** %8, align 8
  store i8 %168, i8* %169, align 1
  %170 = load i32, i32* @NGX_OK, align 4
  store i32 %170, i32* %4, align 4
  br label %171

171:                                              ; preds = %166, %164, %146, %111, %37
  %172 = load i32, i32* %4, align 4
  ret i32 %172
}

declare dso_local i8* @ngx_resolver_alloc(%struct.TYPE_12__*, i64) #1

declare dso_local i32 @ngx_random(...) #1

declare dso_local i32 @ngx_log_debug2(i32, i32, i32, i8*, %struct.TYPE_11__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
