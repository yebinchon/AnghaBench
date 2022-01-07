; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/jscript/extr_compile.c_compile_script.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/jscript/extr_compile.c_compile_script.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i32 }
%struct.TYPE_11__ = type { %struct.TYPE_12__*, %struct.TYPE_13__*, i32, i32 }
%struct.TYPE_13__ = type { i32 }

@.str = private unnamed_addr constant [17 x i8] c"Decoding failed\0A\00", align 1
@S_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @compile_script(i32* %0, i32* %1, i32* %2, i32* %3, i64 %4, i64 %5, %struct.TYPE_12__** %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca %struct.TYPE_12__**, align 8
  %16 = alloca %struct.TYPE_11__, align 8
  %17 = alloca i32, align 4
  store i32* %0, i32** %9, align 8
  store i32* %1, i32** %10, align 8
  store i32* %2, i32** %11, align 8
  store i32* %3, i32** %12, align 8
  store i64 %4, i64* %13, align 8
  store i64 %5, i64* %14, align 8
  store %struct.TYPE_12__** %6, %struct.TYPE_12__*** %15, align 8
  %18 = bitcast %struct.TYPE_11__* %16 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %18, i8 0, i64 24, i1 false)
  %19 = load i32*, i32** %10, align 8
  %20 = call i32 @init_code(%struct.TYPE_11__* %16, i32* %19)
  store i32 %20, i32* %17, align 4
  %21 = load i32, i32* %17, align 4
  %22 = call i64 @FAILED(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %7
  %25 = load i32, i32* %17, align 4
  store i32 %25, i32* %8, align 4
  br label %102

26:                                               ; preds = %7
  %27 = load i32*, i32** %11, align 8
  %28 = icmp ne i32* %27, null
  br i1 %28, label %29, label %38

29:                                               ; preds = %26
  %30 = load i32*, i32** %11, align 8
  %31 = call i32 @compile_arguments(%struct.TYPE_11__* %16, i32* %30)
  store i32 %31, i32* %17, align 4
  %32 = load i32, i32* %17, align 4
  %33 = call i64 @FAILED(i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %29
  %36 = load i32, i32* %17, align 4
  store i32 %36, i32* %8, align 4
  br label %102

37:                                               ; preds = %29
  br label %38

38:                                               ; preds = %37, %26
  %39 = load i64, i64* %14, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %54

41:                                               ; preds = %38
  %42 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %16, i32 0, i32 0
  %43 = load %struct.TYPE_12__*, %struct.TYPE_12__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @decode_source(i32 %45)
  store i32 %46, i32* %17, align 4
  %47 = load i32, i32* %17, align 4
  %48 = call i64 @FAILED(i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %41
  %51 = call i32 @WARN(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %52 = load i32, i32* %17, align 4
  store i32 %52, i32* %8, align 4
  br label %102

53:                                               ; preds = %41
  br label %54

54:                                               ; preds = %53, %38
  %55 = load i32*, i32** %9, align 8
  %56 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %16, i32 0, i32 0
  %57 = load %struct.TYPE_12__*, %struct.TYPE_12__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = load i32*, i32** %12, align 8
  %61 = load i64, i64* %13, align 8
  %62 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %16, i32 0, i32 1
  %63 = call i32 @script_parse(i32* %55, %struct.TYPE_11__* %16, i32 %59, i32* %60, i64 %61, %struct.TYPE_13__** %62)
  store i32 %63, i32* %17, align 4
  %64 = load i32, i32* %17, align 4
  %65 = call i64 @FAILED(i32 %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %72

67:                                               ; preds = %54
  %68 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %16, i32 0, i32 0
  %69 = load %struct.TYPE_12__*, %struct.TYPE_12__** %68, align 8
  %70 = call i32 @release_bytecode(%struct.TYPE_12__* %69)
  %71 = load i32, i32* %17, align 4
  store i32 %71, i32* %8, align 4
  br label %102

72:                                               ; preds = %54
  %73 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %16, i32 0, i32 2
  %74 = call i32 @heap_pool_init(i32* %73)
  %75 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %16, i32 0, i32 1
  %76 = load %struct.TYPE_13__*, %struct.TYPE_13__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load i64, i64* %13, align 8
  %80 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %16, i32 0, i32 0
  %81 = load %struct.TYPE_12__*, %struct.TYPE_12__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %81, i32 0, i32 0
  %83 = call i32 @compile_function(%struct.TYPE_11__* %16, i32 %78, i32* null, i64 %79, i32* %82)
  store i32 %83, i32* %17, align 4
  %84 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %16, i32 0, i32 2
  %85 = call i32 @heap_pool_free(i32* %84)
  %86 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %16, i32 0, i32 1
  %87 = load %struct.TYPE_13__*, %struct.TYPE_13__** %86, align 8
  %88 = call i32 @parser_release(%struct.TYPE_13__* %87)
  %89 = load i32, i32* %17, align 4
  %90 = call i64 @FAILED(i32 %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %97

92:                                               ; preds = %72
  %93 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %16, i32 0, i32 0
  %94 = load %struct.TYPE_12__*, %struct.TYPE_12__** %93, align 8
  %95 = call i32 @release_bytecode(%struct.TYPE_12__* %94)
  %96 = load i32, i32* %17, align 4
  store i32 %96, i32* %8, align 4
  br label %102

97:                                               ; preds = %72
  %98 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %16, i32 0, i32 0
  %99 = load %struct.TYPE_12__*, %struct.TYPE_12__** %98, align 8
  %100 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %15, align 8
  store %struct.TYPE_12__* %99, %struct.TYPE_12__** %100, align 8
  %101 = load i32, i32* @S_OK, align 4
  store i32 %101, i32* %8, align 4
  br label %102

102:                                              ; preds = %97, %92, %67, %50, %35, %24
  %103 = load i32, i32* %8, align 4
  ret i32 %103
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @init_code(%struct.TYPE_11__*, i32*) #2

declare dso_local i64 @FAILED(i32) #2

declare dso_local i32 @compile_arguments(%struct.TYPE_11__*, i32*) #2

declare dso_local i32 @decode_source(i32) #2

declare dso_local i32 @WARN(i8*) #2

declare dso_local i32 @script_parse(i32*, %struct.TYPE_11__*, i32, i32*, i64, %struct.TYPE_13__**) #2

declare dso_local i32 @release_bytecode(%struct.TYPE_12__*) #2

declare dso_local i32 @heap_pool_init(i32*) #2

declare dso_local i32 @compile_function(%struct.TYPE_11__*, i32, i32*, i64, i32*) #2

declare dso_local i32 @heap_pool_free(i32*) #2

declare dso_local i32 @parser_release(%struct.TYPE_13__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
