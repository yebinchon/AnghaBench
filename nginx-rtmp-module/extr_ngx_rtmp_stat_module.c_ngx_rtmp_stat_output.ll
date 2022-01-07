; ModuleID = '/home/carl/AnghaBench/nginx-rtmp-module/extr_ngx_rtmp_stat_module.c_ngx_rtmp_stat_output.c'
source_filename = "/home/carl/AnghaBench/nginx-rtmp-module/extr_ngx_rtmp_stat_module.c_ngx_rtmp_stat_output.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32 }
%struct.TYPE_10__ = type { %struct.TYPE_11__*, %struct.TYPE_10__* }
%struct.TYPE_11__ = type { i64, i64, i32* }

@NGX_RTMP_STAT_BUFSIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_9__*, %struct.TYPE_10__***, i8*, i64, i64)* @ngx_rtmp_stat_output to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ngx_rtmp_stat_output(%struct.TYPE_9__* %0, %struct.TYPE_10__*** %1, i8* %2, i64 %3, i64 %4) #0 {
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca %struct.TYPE_10__***, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_10__*, align 8
  %12 = alloca %struct.TYPE_11__*, align 8
  %13 = alloca i64, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %6, align 8
  store %struct.TYPE_10__*** %1, %struct.TYPE_10__**** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  store i64 %4, i64* %10, align 8
  %14 = load i64, i64* %9, align 8
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %5
  br label %134

17:                                               ; preds = %5
  %18 = load i64, i64* %10, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %29

20:                                               ; preds = %17
  %21 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %22 = load i8*, i8** %8, align 8
  %23 = load i64, i64* %9, align 8
  %24 = call i8* @ngx_rtmp_stat_escape(%struct.TYPE_9__* %21, i8* %22, i64 %23)
  store i8* %24, i8** %8, align 8
  %25 = load i8*, i8** %8, align 8
  %26 = icmp eq i8* %25, null
  br i1 %26, label %27, label %28

27:                                               ; preds = %20
  br label %134

28:                                               ; preds = %20
  br label %29

29:                                               ; preds = %28, %17
  %30 = load i64, i64* %10, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %38

32:                                               ; preds = %29
  %33 = load i64, i64* %9, align 8
  %34 = load i8*, i8** %8, align 8
  %35 = load i64, i64* %9, align 8
  %36 = call i64 @ngx_escape_html(i32* null, i8* %34, i64 %35)
  %37 = add i64 %33, %36
  br label %40

38:                                               ; preds = %29
  %39 = load i64, i64* %9, align 8
  br label %40

40:                                               ; preds = %38, %32
  %41 = phi i64 [ %37, %32 ], [ %39, %38 ]
  store i64 %41, i64* %13, align 8
  %42 = load %struct.TYPE_10__***, %struct.TYPE_10__**** %7, align 8
  %43 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %42, align 8
  %44 = load %struct.TYPE_10__*, %struct.TYPE_10__** %43, align 8
  store %struct.TYPE_10__* %44, %struct.TYPE_10__** %11, align 8
  %45 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %46 = icmp ne %struct.TYPE_10__* %45, null
  br i1 %46, label %47, label %65

47:                                               ; preds = %40
  %48 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %49 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %48, i32 0, i32 0
  %50 = load %struct.TYPE_11__*, %struct.TYPE_11__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* %13, align 8
  %54 = add i64 %52, %53
  %55 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %56 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %55, i32 0, i32 0
  %57 = load %struct.TYPE_11__*, %struct.TYPE_11__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = icmp ugt i64 %54, %59
  br i1 %60, label %61, label %65

61:                                               ; preds = %47
  %62 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %63 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %62, i32 0, i32 1
  %64 = load %struct.TYPE_10__***, %struct.TYPE_10__**** %7, align 8
  store %struct.TYPE_10__** %63, %struct.TYPE_10__*** %64, align 8
  br label %65

65:                                               ; preds = %61, %47, %40
  %66 = load %struct.TYPE_10__***, %struct.TYPE_10__**** %7, align 8
  %67 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %66, align 8
  %68 = load %struct.TYPE_10__*, %struct.TYPE_10__** %67, align 8
  %69 = icmp eq %struct.TYPE_10__* %68, null
  br i1 %69, label %70, label %103

70:                                               ; preds = %65
  %71 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %72 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = call %struct.TYPE_10__* @ngx_alloc_chain_link(i32 %73)
  store %struct.TYPE_10__* %74, %struct.TYPE_10__** %11, align 8
  %75 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %76 = icmp eq %struct.TYPE_10__* %75, null
  br i1 %76, label %77, label %78

77:                                               ; preds = %70
  br label %134

78:                                               ; preds = %70
  %79 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %80 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* @NGX_RTMP_STAT_BUFSIZE, align 4
  %83 = load i64, i64* %13, align 8
  %84 = call i32 @ngx_max(i32 %82, i64 %83)
  %85 = call %struct.TYPE_11__* @ngx_create_temp_buf(i32 %81, i32 %84)
  store %struct.TYPE_11__* %85, %struct.TYPE_11__** %12, align 8
  %86 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %87 = icmp eq %struct.TYPE_11__* %86, null
  br i1 %87, label %93, label %88

88:                                               ; preds = %78
  %89 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %90 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %89, i32 0, i32 2
  %91 = load i32*, i32** %90, align 8
  %92 = icmp eq i32* %91, null
  br i1 %92, label %93, label %94

93:                                               ; preds = %88, %78
  br label %134

94:                                               ; preds = %88
  %95 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %96 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %95, i32 0, i32 1
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %96, align 8
  %97 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %98 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %99 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %98, i32 0, i32 0
  store %struct.TYPE_11__* %97, %struct.TYPE_11__** %99, align 8
  %100 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %101 = load %struct.TYPE_10__***, %struct.TYPE_10__**** %7, align 8
  %102 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %101, align 8
  store %struct.TYPE_10__* %100, %struct.TYPE_10__** %102, align 8
  br label %103

103:                                              ; preds = %94, %65
  %104 = load %struct.TYPE_10__***, %struct.TYPE_10__**** %7, align 8
  %105 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %104, align 8
  %106 = load %struct.TYPE_10__*, %struct.TYPE_10__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %106, i32 0, i32 0
  %108 = load %struct.TYPE_11__*, %struct.TYPE_11__** %107, align 8
  store %struct.TYPE_11__* %108, %struct.TYPE_11__** %12, align 8
  %109 = load i64, i64* %10, align 8
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %123

111:                                              ; preds = %103
  %112 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %113 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = inttoptr i64 %114 to i32*
  %116 = load i8*, i8** %8, align 8
  %117 = load i64, i64* %9, align 8
  %118 = call i64 @ngx_escape_html(i32* %115, i8* %116, i64 %117)
  %119 = inttoptr i64 %118 to i32*
  %120 = ptrtoint i32* %119 to i64
  %121 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %122 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %121, i32 0, i32 0
  store i64 %120, i64* %122, align 8
  br label %134

123:                                              ; preds = %103
  %124 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %125 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %124, i32 0, i32 0
  %126 = load i64, i64* %125, align 8
  %127 = inttoptr i64 %126 to i32*
  %128 = load i8*, i8** %8, align 8
  %129 = load i64, i64* %9, align 8
  %130 = call i32* @ngx_cpymem(i32* %127, i8* %128, i64 %129)
  %131 = ptrtoint i32* %130 to i64
  %132 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %133 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %132, i32 0, i32 0
  store i64 %131, i64* %133, align 8
  br label %134

134:                                              ; preds = %16, %27, %77, %93, %123, %111
  ret void
}

declare dso_local i8* @ngx_rtmp_stat_escape(%struct.TYPE_9__*, i8*, i64) #1

declare dso_local i64 @ngx_escape_html(i32*, i8*, i64) #1

declare dso_local %struct.TYPE_10__* @ngx_alloc_chain_link(i32) #1

declare dso_local %struct.TYPE_11__* @ngx_create_temp_buf(i32, i32) #1

declare dso_local i32 @ngx_max(i32, i64) #1

declare dso_local i32* @ngx_cpymem(i32*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
