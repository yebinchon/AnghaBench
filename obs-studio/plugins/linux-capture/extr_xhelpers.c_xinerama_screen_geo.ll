; ModuleID = '/home/carl/AnghaBench/obs-studio/plugins/linux-capture/extr_xhelpers.c_xinerama_screen_geo.c'
source_filename = "/home/carl/AnghaBench/obs-studio/plugins/linux-capture/extr_xhelpers.c_xinerama_screen_geo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__*, i64 }
%struct.TYPE_5__ = type { i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xinerama_screen_geo(i32* %0, i32 %1, i32* %2, i32* %3, i32* %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca %struct.TYPE_6__, align 8
  %18 = alloca %struct.TYPE_6__, align 8
  store i32* %0, i32** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32* %2, i32** %10, align 8
  store i32* %3, i32** %11, align 8
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  %19 = load i32*, i32** %8, align 8
  %20 = icmp ne i32* %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %6
  br label %81

22:                                               ; preds = %6
  store i32 0, i32* %14, align 4
  %23 = load i32*, i32** %8, align 8
  %24 = call i32 @xcb_xinerama_query_screens_unchecked(i32* %23)
  store i32 %24, i32* %15, align 4
  %25 = load i32*, i32** %8, align 8
  %26 = load i32, i32* %15, align 4
  %27 = call i32* @xcb_xinerama_query_screens_reply(i32* %25, i32 %26, i32* null)
  store i32* %27, i32** %16, align 8
  %28 = load i32*, i32** %16, align 8
  %29 = icmp ne i32* %28, null
  br i1 %29, label %31, label %30

30:                                               ; preds = %22
  br label %81

31:                                               ; preds = %22
  %32 = load i32*, i32** %16, align 8
  %33 = call { %struct.TYPE_5__*, i64 } @xcb_xinerama_query_screens_screen_info_iterator(i32* %32)
  %34 = bitcast %struct.TYPE_6__* %18 to { %struct.TYPE_5__*, i64 }*
  %35 = getelementptr inbounds { %struct.TYPE_5__*, i64 }, { %struct.TYPE_5__*, i64 }* %34, i32 0, i32 0
  %36 = extractvalue { %struct.TYPE_5__*, i64 } %33, 0
  store %struct.TYPE_5__* %36, %struct.TYPE_5__** %35, align 8
  %37 = getelementptr inbounds { %struct.TYPE_5__*, i64 }, { %struct.TYPE_5__*, i64 }* %34, i32 0, i32 1
  %38 = extractvalue { %struct.TYPE_5__*, i64 } %33, 1
  store i64 %38, i64* %37, align 8
  %39 = bitcast %struct.TYPE_6__* %17 to i8*
  %40 = bitcast %struct.TYPE_6__* %18 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %39, i8* align 8 %40, i64 16, i1 false)
  br label %41

41:                                               ; preds = %70, %31
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %74

45:                                               ; preds = %41
  %46 = load i32, i32* %9, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %69, label %48

48:                                               ; preds = %45
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 3
  %52 = load i32, i32* %51, align 4
  %53 = load i32*, i32** %10, align 8
  store i32 %52, i32* %53, align 4
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 4
  %58 = load i32*, i32** %11, align 8
  store i32 %57, i32* %58, align 4
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = load i32*, i32** %12, align 8
  store i32 %62, i32* %63, align 4
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %65 = load %struct.TYPE_5__*, %struct.TYPE_5__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load i32*, i32** %13, align 8
  store i32 %67, i32* %68, align 4
  store i32 1, i32* %14, align 4
  br label %69

69:                                               ; preds = %48, %45
  br label %70

70:                                               ; preds = %69
  %71 = load i32, i32* %9, align 4
  %72 = add nsw i32 %71, -1
  store i32 %72, i32* %9, align 4
  %73 = call i32 @xcb_xinerama_screen_info_next(%struct.TYPE_6__* %17)
  br label %41

74:                                               ; preds = %41
  %75 = load i32*, i32** %16, align 8
  %76 = call i32 @free(i32* %75)
  %77 = load i32, i32* %14, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %74
  store i32 0, i32* %7, align 4
  br label %86

80:                                               ; preds = %74
  br label %81

81:                                               ; preds = %80, %30, %21
  %82 = load i32*, i32** %13, align 8
  store i32 0, i32* %82, align 4
  %83 = load i32*, i32** %12, align 8
  store i32 0, i32* %83, align 4
  %84 = load i32*, i32** %11, align 8
  store i32 0, i32* %84, align 4
  %85 = load i32*, i32** %10, align 8
  store i32 0, i32* %85, align 4
  store i32 -1, i32* %7, align 4
  br label %86

86:                                               ; preds = %81, %79
  %87 = load i32, i32* %7, align 4
  ret i32 %87
}

declare dso_local i32 @xcb_xinerama_query_screens_unchecked(i32*) #1

declare dso_local i32* @xcb_xinerama_query_screens_reply(i32*, i32, i32*) #1

declare dso_local { %struct.TYPE_5__*, i64 } @xcb_xinerama_query_screens_screen_info_iterator(i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @xcb_xinerama_screen_info_next(%struct.TYPE_6__*) #1

declare dso_local i32 @free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
