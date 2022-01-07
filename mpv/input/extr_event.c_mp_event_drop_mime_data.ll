; ModuleID = '/home/carl/AnghaBench/mpv/input/extr_event.c_mp_event_drop_mime_data.c'
source_filename = "/home/carl/AnghaBench/mpv/input/extr_event.c_mp_event_drop_mime_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.input_ctx = type { i32 }
%struct.TYPE_10__ = type { i32*, i64 }

@.str = private unnamed_addr constant [2 x i8] c"#\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mp_event_drop_mime_data(%struct.input_ctx* %0, i8* %1, i32* %2, i64 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_10__, align 8
  %8 = alloca %struct.input_ctx*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8**, align 8
  %14 = alloca %struct.TYPE_10__, align 8
  %15 = alloca %struct.TYPE_10__, align 8
  %16 = alloca i8*, align 8
  %17 = bitcast %struct.TYPE_10__* %7 to { i32*, i64 }*
  %18 = getelementptr inbounds { i32*, i64 }, { i32*, i64 }* %17, i32 0, i32 0
  store i32* %2, i32** %18, align 8
  %19 = getelementptr inbounds { i32*, i64 }, { i32*, i64 }* %17, i32 0, i32 1
  store i64 %3, i64* %19, align 8
  store %struct.input_ctx* %0, %struct.input_ctx** %8, align 8
  store i8* %1, i8** %9, align 8
  store i32 %4, i32* %10, align 4
  %20 = load %struct.input_ctx*, %struct.input_ctx** %8, align 8
  %21 = load i8*, i8** %9, align 8
  %22 = call i64 @mp_event_get_mime_type_score(%struct.input_ctx* %20, i8* %21)
  %23 = icmp sge i64 %22, 0
  br i1 %23, label %24, label %93

24:                                               ; preds = %5
  %25 = call i8* @talloc_new(i32* null)
  store i8* %25, i8** %11, align 8
  store i32 0, i32* %12, align 4
  store i8** null, i8*** %13, align 8
  br label %26

26:                                               ; preds = %69, %68, %24
  %27 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %7, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %82

30:                                               ; preds = %26
  %31 = bitcast %struct.TYPE_10__* %7 to { i32*, i64 }*
  %32 = getelementptr inbounds { i32*, i64 }, { i32*, i64 }* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = getelementptr inbounds { i32*, i64 }, { i32*, i64 }* %31, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = call { i32*, i64 } @bstr_getline(i32* %33, i64 %35, %struct.TYPE_10__* %7)
  %37 = bitcast %struct.TYPE_10__* %14 to { i32*, i64 }*
  %38 = getelementptr inbounds { i32*, i64 }, { i32*, i64 }* %37, i32 0, i32 0
  %39 = extractvalue { i32*, i64 } %36, 0
  store i32* %39, i32** %38, align 8
  %40 = getelementptr inbounds { i32*, i64 }, { i32*, i64 }* %37, i32 0, i32 1
  %41 = extractvalue { i32*, i64 } %36, 1
  store i64 %41, i64* %40, align 8
  %42 = bitcast %struct.TYPE_10__* %14 to { i32*, i64 }*
  %43 = getelementptr inbounds { i32*, i64 }, { i32*, i64 }* %42, i32 0, i32 0
  %44 = load i32*, i32** %43, align 8
  %45 = getelementptr inbounds { i32*, i64 }, { i32*, i64 }* %42, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = call { i32*, i64 } @bstr_strip_linebreaks(i32* %44, i64 %46)
  %48 = bitcast %struct.TYPE_10__* %15 to { i32*, i64 }*
  %49 = getelementptr inbounds { i32*, i64 }, { i32*, i64 }* %48, i32 0, i32 0
  %50 = extractvalue { i32*, i64 } %47, 0
  store i32* %50, i32** %49, align 8
  %51 = getelementptr inbounds { i32*, i64 }, { i32*, i64 }* %48, i32 0, i32 1
  %52 = extractvalue { i32*, i64 } %47, 1
  store i64 %52, i64* %51, align 8
  %53 = bitcast %struct.TYPE_10__* %14 to i8*
  %54 = bitcast %struct.TYPE_10__* %15 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %53, i8* align 8 %54, i64 16, i1 false)
  %55 = bitcast %struct.TYPE_10__* %14 to { i32*, i64 }*
  %56 = getelementptr inbounds { i32*, i64 }, { i32*, i64 }* %55, i32 0, i32 0
  %57 = load i32*, i32** %56, align 8
  %58 = getelementptr inbounds { i32*, i64 }, { i32*, i64 }* %55, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = call i64 @bstr_startswith0(i32* %57, i64 %59, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %68, label %62

62:                                               ; preds = %30
  %63 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %14, i32 0, i32 0
  %64 = load i32*, i32** %63, align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 0
  %66 = load i32, i32* %65, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %69, label %68

68:                                               ; preds = %62, %30
  br label %26

69:                                               ; preds = %62
  %70 = load i8*, i8** %11, align 8
  %71 = bitcast %struct.TYPE_10__* %14 to { i32*, i64 }*
  %72 = getelementptr inbounds { i32*, i64 }, { i32*, i64 }* %71, i32 0, i32 0
  %73 = load i32*, i32** %72, align 8
  %74 = getelementptr inbounds { i32*, i64 }, { i32*, i64 }* %71, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = call i8* @bstrto0(i8* %70, i32* %73, i64 %75)
  store i8* %76, i8** %16, align 8
  %77 = load i8*, i8** %11, align 8
  %78 = load i8**, i8*** %13, align 8
  %79 = load i32, i32* %12, align 4
  %80 = load i8*, i8** %16, align 8
  %81 = call i32 @MP_TARRAY_APPEND(i8* %77, i8** %78, i32 %79, i8* %80)
  br label %26

82:                                               ; preds = %26
  %83 = load %struct.input_ctx*, %struct.input_ctx** %8, align 8
  %84 = load i32, i32* %12, align 4
  %85 = load i8**, i8*** %13, align 8
  %86 = load i32, i32* %10, align 4
  %87 = call i32 @mp_event_drop_files(%struct.input_ctx* %83, i32 %84, i8** %85, i32 %86)
  %88 = load i8*, i8** %11, align 8
  %89 = call i32 @talloc_free(i8* %88)
  %90 = load i32, i32* %12, align 4
  %91 = icmp sgt i32 %90, 0
  %92 = zext i1 %91 to i32
  store i32 %92, i32* %6, align 4
  br label %94

93:                                               ; preds = %5
  store i32 -1, i32* %6, align 4
  br label %94

94:                                               ; preds = %93, %82
  %95 = load i32, i32* %6, align 4
  ret i32 %95
}

declare dso_local i64 @mp_event_get_mime_type_score(%struct.input_ctx*, i8*) #1

declare dso_local i8* @talloc_new(i32*) #1

declare dso_local { i32*, i64 } @bstr_getline(i32*, i64, %struct.TYPE_10__*) #1

declare dso_local { i32*, i64 } @bstr_strip_linebreaks(i32*, i64) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @bstr_startswith0(i32*, i64, i8*) #1

declare dso_local i8* @bstrto0(i8*, i32*, i64) #1

declare dso_local i32 @MP_TARRAY_APPEND(i8*, i8**, i32, i8*) #1

declare dso_local i32 @mp_event_drop_files(%struct.input_ctx*, i32, i8**, i32) #1

declare dso_local i32 @talloc_free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
