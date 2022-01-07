; ModuleID = '/home/carl/AnghaBench/nginx-rtmp-module/dash/extr_ngx_rtmp_dash_module.c_ngx_rtmp_dash_update_fragments.c'
source_filename = "/home/carl/AnghaBench/nginx-rtmp-module/dash/extr_ngx_rtmp_dash_module.c_ngx_rtmp_dash_update_fragments.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i32, %struct.TYPE_10__, %struct.TYPE_9__, i64, i64 }
%struct.TYPE_10__ = type { i64 }
%struct.TYPE_9__ = type { i64 }
%struct.TYPE_11__ = type { i8*, i32 }
%struct.TYPE_13__ = type { i32 }

@ngx_rtmp_dash_module = common dso_local global i32 0, align 4
@NGX_RTMP_DASH_MAX_MDAT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i8*)* @ngx_rtmp_dash_update_fragments to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ngx_rtmp_dash_update_fragments(i32* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_12__*, align 8
  %10 = alloca %struct.TYPE_11__*, align 8
  %11 = alloca %struct.TYPE_13__*, align 8
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %12 = load i32*, i32** %4, align 8
  %13 = load i32, i32* @ngx_rtmp_dash_module, align 4
  %14 = call %struct.TYPE_13__* @ngx_rtmp_get_module_app_conf(i32* %12, i32 %13)
  store %struct.TYPE_13__* %14, %struct.TYPE_13__** %11, align 8
  %15 = load i32*, i32** %4, align 8
  %16 = load i32, i32* @ngx_rtmp_dash_module, align 4
  %17 = call %struct.TYPE_12__* @ngx_rtmp_get_module_ctx(i32* %15, i32 %16)
  store %struct.TYPE_12__* %17, %struct.TYPE_12__** %9, align 8
  %18 = load i32*, i32** %4, align 8
  %19 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %20 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = call %struct.TYPE_11__* @ngx_rtmp_dash_get_frag(i32* %18, i32 %21)
  store %struct.TYPE_11__* %22, %struct.TYPE_11__** %10, align 8
  %23 = load i8*, i8** %6, align 8
  %24 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %25 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %24, i32 0, i32 0
  %26 = load i8*, i8** %25, align 8
  %27 = ptrtoint i8* %23 to i64
  %28 = ptrtoint i8* %26 to i64
  %29 = sub i64 %27, %28
  %30 = trunc i64 %29 to i32
  store i32 %30, i32* %7, align 4
  %31 = load i32, i32* %7, align 4
  %32 = icmp sge i32 %31, 0
  br i1 %32, label %33, label %62

33:                                               ; preds = %3
  %34 = load i8*, i8** %6, align 8
  %35 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %36 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %35, i32 0, i32 0
  %37 = load i8*, i8** %36, align 8
  %38 = ptrtoint i8* %34 to i64
  %39 = ptrtoint i8* %37 to i64
  %40 = sub i64 %38, %39
  %41 = trunc i64 %40 to i32
  %42 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %43 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %42, i32 0, i32 1
  store i32 %41, i32* %43, align 8
  %44 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %45 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %48 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = icmp sge i32 %46, %49
  %51 = zext i1 %50 to i32
  store i32 %51, i32* %8, align 4
  %52 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %53 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %56 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = mul nsw i32 %57, 2
  %59 = icmp sge i32 %54, %58
  br i1 %59, label %60, label %61

60:                                               ; preds = %33
  store i32 1, i32* %5, align 4
  br label %61

61:                                               ; preds = %60, %33
  br label %67

62:                                               ; preds = %3
  %63 = load i32, i32* %7, align 4
  %64 = sub nsw i32 0, %63
  %65 = icmp sgt i32 %64, 1000
  %66 = zext i1 %65 to i32
  store i32 %66, i32* %8, align 4
  br label %67

67:                                               ; preds = %62, %61
  %68 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %69 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %68, i32 0, i32 5
  %70 = load i64, i64* %69, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %76

72:                                               ; preds = %67
  %73 = load i32, i32* %8, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %76, label %75

75:                                               ; preds = %72
  store i32 0, i32* %5, align 4
  br label %76

76:                                               ; preds = %75, %72, %67
  %77 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %78 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %77, i32 0, i32 5
  %79 = load i64, i64* %78, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %88, label %81

81:                                               ; preds = %76
  %82 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %83 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %82, i32 0, i32 4
  %84 = load i64, i64* %83, align 8
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %88

86:                                               ; preds = %81
  %87 = load i32, i32* %8, align 4
  store i32 %87, i32* %5, align 4
  br label %88

88:                                               ; preds = %86, %81, %76
  %89 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %90 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %89, i32 0, i32 3
  %91 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = load i64, i64* @NGX_RTMP_DASH_MAX_MDAT, align 8
  %94 = icmp sge i64 %92, %93
  br i1 %94, label %95, label %96

95:                                               ; preds = %88
  store i32 1, i32* %5, align 4
  br label %96

96:                                               ; preds = %95, %88
  %97 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %98 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %97, i32 0, i32 2
  %99 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = load i64, i64* @NGX_RTMP_DASH_MAX_MDAT, align 8
  %102 = icmp sge i64 %100, %101
  br i1 %102, label %103, label %104

103:                                              ; preds = %96
  store i32 1, i32* %5, align 4
  br label %104

104:                                              ; preds = %103, %96
  %105 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %106 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %110, label %109

109:                                              ; preds = %104
  store i32 1, i32* %5, align 4
  br label %110

110:                                              ; preds = %109, %104
  %111 = load i32, i32* %5, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %126

113:                                              ; preds = %110
  %114 = load i32*, i32** %4, align 8
  %115 = call i32 @ngx_rtmp_dash_close_fragments(i32* %114)
  %116 = load i32*, i32** %4, align 8
  %117 = call i32 @ngx_rtmp_dash_open_fragments(i32* %116)
  %118 = load i32*, i32** %4, align 8
  %119 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %120 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = call %struct.TYPE_11__* @ngx_rtmp_dash_get_frag(i32* %118, i32 %121)
  store %struct.TYPE_11__* %122, %struct.TYPE_11__** %10, align 8
  %123 = load i8*, i8** %6, align 8
  %124 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %125 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %124, i32 0, i32 0
  store i8* %123, i8** %125, align 8
  br label %126

126:                                              ; preds = %113, %110
  ret void
}

declare dso_local %struct.TYPE_13__* @ngx_rtmp_get_module_app_conf(i32*, i32) #1

declare dso_local %struct.TYPE_12__* @ngx_rtmp_get_module_ctx(i32*, i32) #1

declare dso_local %struct.TYPE_11__* @ngx_rtmp_dash_get_frag(i32*, i32) #1

declare dso_local i32 @ngx_rtmp_dash_close_fragments(i32*) #1

declare dso_local i32 @ngx_rtmp_dash_open_fragments(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
