; ModuleID = '/home/carl/AnghaBench/mpv/demux/extr_cue.c_read_cmd.c'
source_filename = "/home/carl/AnghaBench/mpv/demux/extr_cue.c_read_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }
%struct.bstr = type { i64, i32* }

@CUE_EMPTY = common dso_local global i32 0, align 4
@cue_command_strings = common dso_local global %struct.TYPE_2__* null, align 8
@WHITESPACE = common dso_local global i32 0, align 4
@CUE_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bstr*, %struct.bstr*)* @read_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_cmd(%struct.bstr* %0, %struct.bstr* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bstr*, align 8
  %5 = alloca %struct.bstr*, align 8
  %6 = alloca %struct.bstr, align 8
  %7 = alloca %struct.bstr, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.bstr, align 8
  %10 = alloca %struct.bstr, align 8
  %11 = alloca %struct.bstr, align 8
  store %struct.bstr* %0, %struct.bstr** %4, align 8
  store %struct.bstr* %1, %struct.bstr** %5, align 8
  %12 = load %struct.bstr*, %struct.bstr** %4, align 8
  %13 = load %struct.bstr*, %struct.bstr** %4, align 8
  %14 = bitcast %struct.bstr* %12 to { i64, i32* }*
  %15 = getelementptr inbounds { i64, i32* }, { i64, i32* }* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = getelementptr inbounds { i64, i32* }, { i64, i32* }* %14, i32 0, i32 1
  %18 = load i32*, i32** %17, align 8
  %19 = call i32 @bstr_getline(i64 %16, i32* %18, %struct.bstr* %13)
  %20 = call { i64, i32* } @bstr_strip_linebreaks(i32 %19)
  %21 = bitcast %struct.bstr* %6 to { i64, i32* }*
  %22 = getelementptr inbounds { i64, i32* }, { i64, i32* }* %21, i32 0, i32 0
  %23 = extractvalue { i64, i32* } %20, 0
  store i64 %23, i64* %22, align 8
  %24 = getelementptr inbounds { i64, i32* }, { i64, i32* }* %21, i32 0, i32 1
  %25 = extractvalue { i64, i32* } %20, 1
  store i32* %25, i32** %24, align 8
  %26 = bitcast %struct.bstr* %6 to { i64, i32* }*
  %27 = getelementptr inbounds { i64, i32* }, { i64, i32* }* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = getelementptr inbounds { i64, i32* }, { i64, i32* }* %26, i32 0, i32 1
  %30 = load i32*, i32** %29, align 8
  %31 = call { i64, i32* } @bstr_lstrip(i64 %28, i32* %30)
  %32 = bitcast %struct.bstr* %7 to { i64, i32* }*
  %33 = getelementptr inbounds { i64, i32* }, { i64, i32* }* %32, i32 0, i32 0
  %34 = extractvalue { i64, i32* } %31, 0
  store i64 %34, i64* %33, align 8
  %35 = getelementptr inbounds { i64, i32* }, { i64, i32* }* %32, i32 0, i32 1
  %36 = extractvalue { i64, i32* } %31, 1
  store i32* %36, i32** %35, align 8
  %37 = bitcast %struct.bstr* %6 to i8*
  %38 = bitcast %struct.bstr* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %37, i8* align 8 %38, i64 16, i1 false)
  %39 = getelementptr inbounds %struct.bstr, %struct.bstr* %6, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp eq i64 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %2
  %43 = load i32, i32* @CUE_EMPTY, align 4
  store i32 %43, i32* %3, align 4
  br label %135

44:                                               ; preds = %2
  store i32 0, i32* %8, align 4
  br label %45

45:                                               ; preds = %130, %44
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cue_command_strings, align 8
  %47 = load i32, i32* %8, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = icmp ne i32 %51, -1
  br i1 %52, label %53, label %133

53:                                               ; preds = %45
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cue_command_strings, align 8
  %55 = load i32, i32* %8, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i64 %56
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = call { i64, i32* } @bstr0(i32 %59)
  %61 = bitcast %struct.bstr* %9 to { i64, i32* }*
  %62 = getelementptr inbounds { i64, i32* }, { i64, i32* }* %61, i32 0, i32 0
  %63 = extractvalue { i64, i32* } %60, 0
  store i64 %63, i64* %62, align 8
  %64 = getelementptr inbounds { i64, i32* }, { i64, i32* }* %61, i32 0, i32 1
  %65 = extractvalue { i64, i32* } %60, 1
  store i32* %65, i32** %64, align 8
  %66 = bitcast %struct.bstr* %6 to { i64, i32* }*
  %67 = getelementptr inbounds { i64, i32* }, { i64, i32* }* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = getelementptr inbounds { i64, i32* }, { i64, i32* }* %66, i32 0, i32 1
  %70 = load i32*, i32** %69, align 8
  %71 = bitcast %struct.bstr* %9 to { i64, i32* }*
  %72 = getelementptr inbounds { i64, i32* }, { i64, i32* }* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = getelementptr inbounds { i64, i32* }, { i64, i32* }* %71, i32 0, i32 1
  %75 = load i32*, i32** %74, align 8
  %76 = call i64 @bstr_case_startswith(i64 %68, i32* %70, i64 %73, i32* %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %129

78:                                               ; preds = %53
  %79 = getelementptr inbounds %struct.bstr, %struct.bstr* %9, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = bitcast %struct.bstr* %6 to { i64, i32* }*
  %82 = getelementptr inbounds { i64, i32* }, { i64, i32* }* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = getelementptr inbounds { i64, i32* }, { i64, i32* }* %81, i32 0, i32 1
  %85 = load i32*, i32** %84, align 8
  %86 = call { i64, i32* } @bstr_cut(i64 %83, i32* %85, i64 %80)
  %87 = bitcast %struct.bstr* %10 to { i64, i32* }*
  %88 = getelementptr inbounds { i64, i32* }, { i64, i32* }* %87, i32 0, i32 0
  %89 = extractvalue { i64, i32* } %86, 0
  store i64 %89, i64* %88, align 8
  %90 = getelementptr inbounds { i64, i32* }, { i64, i32* }* %87, i32 0, i32 1
  %91 = extractvalue { i64, i32* } %86, 1
  store i32* %91, i32** %90, align 8
  %92 = getelementptr inbounds %struct.bstr, %struct.bstr* %10, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %104

95:                                               ; preds = %78
  %96 = load i32, i32* @WHITESPACE, align 4
  %97 = getelementptr inbounds %struct.bstr, %struct.bstr* %10, i32 0, i32 1
  %98 = load i32*, i32** %97, align 8
  %99 = getelementptr inbounds i32, i32* %98, i64 0
  %100 = load i32, i32* %99, align 4
  %101 = call i32 @strchr(i32 %96, i32 %100)
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %104, label %103

103:                                              ; preds = %95
  br label %130

104:                                              ; preds = %95, %78
  %105 = load %struct.bstr*, %struct.bstr** %5, align 8
  %106 = icmp ne %struct.bstr* %105, null
  br i1 %106, label %107, label %122

107:                                              ; preds = %104
  %108 = load %struct.bstr*, %struct.bstr** %5, align 8
  %109 = bitcast %struct.bstr* %10 to { i64, i32* }*
  %110 = getelementptr inbounds { i64, i32* }, { i64, i32* }* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = getelementptr inbounds { i64, i32* }, { i64, i32* }* %109, i32 0, i32 1
  %113 = load i32*, i32** %112, align 8
  %114 = call { i64, i32* } @bstr_lstrip(i64 %111, i32* %113)
  %115 = bitcast %struct.bstr* %11 to { i64, i32* }*
  %116 = getelementptr inbounds { i64, i32* }, { i64, i32* }* %115, i32 0, i32 0
  %117 = extractvalue { i64, i32* } %114, 0
  store i64 %117, i64* %116, align 8
  %118 = getelementptr inbounds { i64, i32* }, { i64, i32* }* %115, i32 0, i32 1
  %119 = extractvalue { i64, i32* } %114, 1
  store i32* %119, i32** %118, align 8
  %120 = bitcast %struct.bstr* %108 to i8*
  %121 = bitcast %struct.bstr* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %120, i8* align 8 %121, i64 16, i1 false)
  br label %122

122:                                              ; preds = %107, %104
  %123 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cue_command_strings, align 8
  %124 = load i32, i32* %8, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %123, i64 %125
  %127 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  store i32 %128, i32* %3, align 4
  br label %135

129:                                              ; preds = %53
  br label %130

130:                                              ; preds = %129, %103
  %131 = load i32, i32* %8, align 4
  %132 = add nsw i32 %131, 1
  store i32 %132, i32* %8, align 4
  br label %45

133:                                              ; preds = %45
  %134 = load i32, i32* @CUE_ERROR, align 4
  store i32 %134, i32* %3, align 4
  br label %135

135:                                              ; preds = %133, %122, %42
  %136 = load i32, i32* %3, align 4
  ret i32 %136
}

declare dso_local { i64, i32* } @bstr_strip_linebreaks(i32) #1

declare dso_local i32 @bstr_getline(i64, i32*, %struct.bstr*) #1

declare dso_local { i64, i32* } @bstr_lstrip(i64, i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local { i64, i32* } @bstr0(i32) #1

declare dso_local i64 @bstr_case_startswith(i64, i32*, i64, i32*) #1

declare dso_local { i64, i32* } @bstr_cut(i64, i32*, i64) #1

declare dso_local i32 @strchr(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
