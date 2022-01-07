; ModuleID = '/home/carl/AnghaBench/mpv/common/extr_common.c_mp_append_escaped_string_noalloc.c'
source_filename = "/home/carl/AnghaBench/mpv/common/extr_common.c_mp_append_escaped_string_noalloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i8* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mp_append_escaped_string_noalloc(i8* %0, %struct.TYPE_12__* %1, %struct.TYPE_12__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_12__*, align 8
  %7 = alloca %struct.TYPE_12__*, align 8
  %8 = alloca %struct.TYPE_12__, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_12__, align 8
  %11 = alloca %struct.TYPE_12__, align 8
  %12 = alloca %struct.TYPE_12__, align 8
  %13 = alloca %struct.TYPE_12__, align 8
  store i8* %0, i8** %5, align 8
  store %struct.TYPE_12__* %1, %struct.TYPE_12__** %6, align 8
  store %struct.TYPE_12__* %2, %struct.TYPE_12__** %7, align 8
  %14 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %15 = bitcast %struct.TYPE_12__* %8 to i8*
  %16 = bitcast %struct.TYPE_12__* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %15, i8* align 8 %16, i64 16, i1 false)
  store i32 0, i32* %9, align 4
  br label %17

17:                                               ; preds = %3, %134
  %18 = load i32, i32* %9, align 4
  %19 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %8, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp sge i32 %18, %20
  br i1 %21, label %31, label %22

22:                                               ; preds = %17
  %23 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %8, i32 0, i32 1
  %24 = load i8*, i8** %23, align 8
  %25 = load i32, i32* %9, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i8, i8* %24, i64 %26
  %28 = load i8, i8* %27, align 1
  %29 = sext i8 %28 to i32
  %30 = icmp eq i32 %29, 34
  br i1 %30, label %31, label %79

31:                                               ; preds = %22, %17
  %32 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %33 = load i32, i32* %9, align 4
  %34 = bitcast %struct.TYPE_12__* %8 to { i32, i8* }*
  %35 = getelementptr inbounds { i32, i8* }, { i32, i8* }* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = getelementptr inbounds { i32, i8* }, { i32, i8* }* %34, i32 0, i32 1
  %38 = load i8*, i8** %37, align 8
  %39 = call { i32, i8* } @bstr_cut(i32 %36, i8* %38, i32 %33)
  %40 = bitcast %struct.TYPE_12__* %10 to { i32, i8* }*
  %41 = getelementptr inbounds { i32, i8* }, { i32, i8* }* %40, i32 0, i32 0
  %42 = extractvalue { i32, i8* } %39, 0
  store i32 %42, i32* %41, align 8
  %43 = getelementptr inbounds { i32, i8* }, { i32, i8* }* %40, i32 0, i32 1
  %44 = extractvalue { i32, i8* } %39, 1
  store i8* %44, i8** %43, align 8
  %45 = bitcast %struct.TYPE_12__* %32 to i8*
  %46 = bitcast %struct.TYPE_12__* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %45, i8* align 8 %46, i64 16, i1 false)
  %47 = load i32, i32* %9, align 4
  %48 = bitcast %struct.TYPE_12__* %8 to { i32, i8* }*
  %49 = getelementptr inbounds { i32, i8* }, { i32, i8* }* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = getelementptr inbounds { i32, i8* }, { i32, i8* }* %48, i32 0, i32 1
  %52 = load i8*, i8** %51, align 8
  %53 = call { i32, i8* } @bstr_splice(i32 %50, i8* %52, i32 0, i32 %47)
  %54 = bitcast %struct.TYPE_12__* %11 to { i32, i8* }*
  %55 = getelementptr inbounds { i32, i8* }, { i32, i8* }* %54, i32 0, i32 0
  %56 = extractvalue { i32, i8* } %53, 0
  store i32 %56, i32* %55, align 8
  %57 = getelementptr inbounds { i32, i8* }, { i32, i8* }* %54, i32 0, i32 1
  %58 = extractvalue { i32, i8* } %53, 1
  store i8* %58, i8** %57, align 8
  %59 = bitcast %struct.TYPE_12__* %8 to i8*
  %60 = bitcast %struct.TYPE_12__* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %59, i8* align 8 %60, i64 16, i1 false)
  %61 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %62 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %61, i32 0, i32 1
  %63 = load i8*, i8** %62, align 8
  %64 = icmp eq i8* %63, null
  br i1 %64, label %65, label %69

65:                                               ; preds = %31
  %66 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %67 = bitcast %struct.TYPE_12__* %66 to i8*
  %68 = bitcast %struct.TYPE_12__* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %67, i8* align 8 %68, i64 16, i1 false)
  br label %78

69:                                               ; preds = %31
  %70 = load i8*, i8** %5, align 8
  %71 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %72 = bitcast %struct.TYPE_12__* %8 to { i32, i8* }*
  %73 = getelementptr inbounds { i32, i8* }, { i32, i8* }* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = getelementptr inbounds { i32, i8* }, { i32, i8* }* %72, i32 0, i32 1
  %76 = load i8*, i8** %75, align 8
  %77 = call i32 @bstr_xappend(i8* %70, %struct.TYPE_12__* %71, i32 %74, i8* %76)
  br label %78

78:                                               ; preds = %69, %65
  store i32 1, i32* %4, align 4
  br label %136

79:                                               ; preds = %22
  %80 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %8, i32 0, i32 1
  %81 = load i8*, i8** %80, align 8
  %82 = load i32, i32* %9, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i8, i8* %81, i64 %83
  %85 = load i8, i8* %84, align 1
  %86 = sext i8 %85 to i32
  %87 = icmp eq i32 %86, 92
  br i1 %87, label %88, label %130

88:                                               ; preds = %79
  %89 = load i8*, i8** %5, align 8
  %90 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %91 = load i32, i32* %9, align 4
  %92 = bitcast %struct.TYPE_12__* %8 to { i32, i8* }*
  %93 = getelementptr inbounds { i32, i8* }, { i32, i8* }* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = getelementptr inbounds { i32, i8* }, { i32, i8* }* %92, i32 0, i32 1
  %96 = load i8*, i8** %95, align 8
  %97 = call { i32, i8* } @bstr_splice(i32 %94, i8* %96, i32 0, i32 %91)
  %98 = bitcast %struct.TYPE_12__* %12 to { i32, i8* }*
  %99 = getelementptr inbounds { i32, i8* }, { i32, i8* }* %98, i32 0, i32 0
  %100 = extractvalue { i32, i8* } %97, 0
  store i32 %100, i32* %99, align 8
  %101 = getelementptr inbounds { i32, i8* }, { i32, i8* }* %98, i32 0, i32 1
  %102 = extractvalue { i32, i8* } %97, 1
  store i8* %102, i8** %101, align 8
  %103 = bitcast %struct.TYPE_12__* %12 to { i32, i8* }*
  %104 = getelementptr inbounds { i32, i8* }, { i32, i8* }* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = getelementptr inbounds { i32, i8* }, { i32, i8* }* %103, i32 0, i32 1
  %107 = load i8*, i8** %106, align 8
  %108 = call i32 @bstr_xappend(i8* %89, %struct.TYPE_12__* %90, i32 %105, i8* %107)
  %109 = load i32, i32* %9, align 4
  %110 = add nsw i32 %109, 1
  %111 = bitcast %struct.TYPE_12__* %8 to { i32, i8* }*
  %112 = getelementptr inbounds { i32, i8* }, { i32, i8* }* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = getelementptr inbounds { i32, i8* }, { i32, i8* }* %111, i32 0, i32 1
  %115 = load i8*, i8** %114, align 8
  %116 = call { i32, i8* } @bstr_cut(i32 %113, i8* %115, i32 %110)
  %117 = bitcast %struct.TYPE_12__* %13 to { i32, i8* }*
  %118 = getelementptr inbounds { i32, i8* }, { i32, i8* }* %117, i32 0, i32 0
  %119 = extractvalue { i32, i8* } %116, 0
  store i32 %119, i32* %118, align 8
  %120 = getelementptr inbounds { i32, i8* }, { i32, i8* }* %117, i32 0, i32 1
  %121 = extractvalue { i32, i8* } %116, 1
  store i8* %121, i8** %120, align 8
  %122 = bitcast %struct.TYPE_12__* %8 to i8*
  %123 = bitcast %struct.TYPE_12__* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %122, i8* align 8 %123, i64 16, i1 false)
  store i32 0, i32* %9, align 4
  %124 = load i8*, i8** %5, align 8
  %125 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %126 = call i32 @mp_parse_escape(i8* %124, %struct.TYPE_12__* %125, %struct.TYPE_12__* %8)
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %129, label %128

128:                                              ; preds = %88
  br label %135

129:                                              ; preds = %88
  br label %133

130:                                              ; preds = %79
  %131 = load i32, i32* %9, align 4
  %132 = add nsw i32 %131, 1
  store i32 %132, i32* %9, align 4
  br label %133

133:                                              ; preds = %130, %129
  br label %134

134:                                              ; preds = %133
  br label %17

135:                                              ; preds = %128
  store i32 0, i32* %4, align 4
  br label %136

136:                                              ; preds = %135, %78
  %137 = load i32, i32* %4, align 4
  ret i32 %137
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local { i32, i8* } @bstr_cut(i32, i8*, i32) #2

declare dso_local { i32, i8* } @bstr_splice(i32, i8*, i32, i32) #2

declare dso_local i32 @bstr_xappend(i8*, %struct.TYPE_12__*, i32, i8*) #2

declare dso_local i32 @mp_parse_escape(i8*, %struct.TYPE_12__*, %struct.TYPE_12__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
