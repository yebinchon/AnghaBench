; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/jscript/extr_jsregexp.c_regexp_match.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/jscript/extr_jsregexp.c_regexp_match.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i32 }
%struct.TYPE_20__ = type { i32, i32 }
%struct.TYPE_21__ = type { %struct.TYPE_17__* }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_19__ = type { i32, i32* }

@E_OUTOFMEMORY = common dso_local global i64 0, align 8
@S_FALSE = common dso_local global i64 0, align 8
@S_OK = common dso_local global i64 0, align 8
@REG_GLOB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_18__*, i32*, i32*, i32, %struct.TYPE_20__**, i32*)* @regexp_match to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @regexp_match(%struct.TYPE_18__* %0, i32* %1, i32* %2, i32 %3, %struct.TYPE_20__** %4, i32* %5) #0 {
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_18__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_20__**, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.TYPE_21__*, align 8
  %15 = alloca %struct.TYPE_20__*, align 8
  %16 = alloca %struct.TYPE_19__*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i64, align 8
  %22 = alloca %struct.TYPE_20__*, align 8
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %8, align 8
  store i32* %1, i32** %9, align 8
  store i32* %2, i32** %10, align 8
  store i32 %3, i32* %11, align 4
  store %struct.TYPE_20__** %4, %struct.TYPE_20__*** %12, align 8
  store i32* %5, i32** %13, align 8
  %23 = load i32*, i32** %9, align 8
  %24 = call %struct.TYPE_21__* @regexp_from_jsdisp(i32* %23)
  store %struct.TYPE_21__* %24, %struct.TYPE_21__** %14, align 8
  store %struct.TYPE_20__* null, %struct.TYPE_20__** %15, align 8
  store i32 0, i32* %17, align 4
  store i32 0, i32* %18, align 4
  %25 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %26 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %25, i32 0, i32 0
  %27 = call i32* @heap_pool_mark(i32* %26)
  store i32* %27, i32** %19, align 8
  %28 = load i32*, i32** %10, align 8
  %29 = call i32* @jsstr_flatten(i32* %28)
  store i32* %29, i32** %20, align 8
  %30 = load i32*, i32** %20, align 8
  %31 = icmp ne i32* %30, null
  br i1 %31, label %34, label %32

32:                                               ; preds = %6
  %33 = load i64, i64* @E_OUTOFMEMORY, align 8
  store i64 %33, i64* %7, align 8
  br label %155

34:                                               ; preds = %6
  %35 = load %struct.TYPE_21__*, %struct.TYPE_21__** %14, align 8
  %36 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %35, i32 0, i32 0
  %37 = load %struct.TYPE_17__*, %struct.TYPE_17__** %36, align 8
  %38 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %39 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %38, i32 0, i32 0
  %40 = load i32*, i32** %20, align 8
  %41 = call %struct.TYPE_19__* @alloc_match_state(%struct.TYPE_17__* %37, i32* %39, i32* %40)
  store %struct.TYPE_19__* %41, %struct.TYPE_19__** %16, align 8
  %42 = load %struct.TYPE_19__*, %struct.TYPE_19__** %16, align 8
  %43 = icmp ne %struct.TYPE_19__* %42, null
  br i1 %43, label %48, label %44

44:                                               ; preds = %34
  %45 = load i32*, i32** %19, align 8
  %46 = call i32 @heap_pool_clear(i32* %45)
  %47 = load i64, i64* @E_OUTOFMEMORY, align 8
  store i64 %47, i64* %7, align 8
  br label %155

48:                                               ; preds = %34
  br label %49

49:                                               ; preds = %48, %138
  %50 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %51 = load %struct.TYPE_21__*, %struct.TYPE_21__** %14, align 8
  %52 = load i32*, i32** %10, align 8
  %53 = load i32*, i32** %20, align 8
  %54 = load %struct.TYPE_19__*, %struct.TYPE_19__** %16, align 8
  %55 = call i64 @do_regexp_match_next(%struct.TYPE_18__* %50, %struct.TYPE_21__* %51, i32 0, i32* %52, i32* %53, %struct.TYPE_19__* %54)
  store i64 %55, i64* %21, align 8
  %56 = load i64, i64* %21, align 8
  %57 = load i64, i64* @S_FALSE, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %59, label %61

59:                                               ; preds = %49
  %60 = load i64, i64* @S_OK, align 8
  store i64 %60, i64* %21, align 8
  br label %139

61:                                               ; preds = %49
  %62 = load i64, i64* %21, align 8
  %63 = call i64 @FAILED(i64 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %61
  br label %139

66:                                               ; preds = %61
  %67 = load i32, i32* %18, align 4
  %68 = load i32, i32* %17, align 4
  %69 = icmp eq i32 %67, %68
  br i1 %69, label %70, label %96

70:                                               ; preds = %66
  %71 = load %struct.TYPE_20__*, %struct.TYPE_20__** %15, align 8
  %72 = icmp ne %struct.TYPE_20__* %71, null
  br i1 %72, label %73, label %88

73:                                               ; preds = %70
  %74 = load %struct.TYPE_20__*, %struct.TYPE_20__** %15, align 8
  store %struct.TYPE_20__* %74, %struct.TYPE_20__** %22, align 8
  %75 = load %struct.TYPE_20__*, %struct.TYPE_20__** %22, align 8
  %76 = load i32, i32* %18, align 4
  %77 = shl i32 %76, 1
  store i32 %77, i32* %18, align 4
  %78 = sext i32 %77 to i64
  %79 = mul i64 %78, 8
  %80 = trunc i64 %79 to i32
  %81 = call %struct.TYPE_20__* @heap_realloc(%struct.TYPE_20__* %75, i32 %80)
  store %struct.TYPE_20__* %81, %struct.TYPE_20__** %15, align 8
  %82 = load %struct.TYPE_20__*, %struct.TYPE_20__** %15, align 8
  %83 = icmp ne %struct.TYPE_20__* %82, null
  br i1 %83, label %87, label %84

84:                                               ; preds = %73
  %85 = load %struct.TYPE_20__*, %struct.TYPE_20__** %22, align 8
  %86 = call i32 @heap_free(%struct.TYPE_20__* %85)
  br label %87

87:                                               ; preds = %84, %73
  br label %90

88:                                               ; preds = %70
  store i32 4, i32* %18, align 4
  %89 = call %struct.TYPE_20__* @heap_alloc(i32 32)
  store %struct.TYPE_20__* %89, %struct.TYPE_20__** %15, align 8
  br label %90

90:                                               ; preds = %88, %87
  %91 = load %struct.TYPE_20__*, %struct.TYPE_20__** %15, align 8
  %92 = icmp ne %struct.TYPE_20__* %91, null
  br i1 %92, label %95, label %93

93:                                               ; preds = %90
  %94 = load i64, i64* @E_OUTOFMEMORY, align 8
  store i64 %94, i64* %21, align 8
  br label %139

95:                                               ; preds = %90
  br label %96

96:                                               ; preds = %95, %66
  %97 = load %struct.TYPE_19__*, %struct.TYPE_19__** %16, align 8
  %98 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %97, i32 0, i32 1
  %99 = load i32*, i32** %98, align 8
  %100 = load i32*, i32** %20, align 8
  %101 = ptrtoint i32* %99 to i64
  %102 = ptrtoint i32* %100 to i64
  %103 = sub i64 %101, %102
  %104 = sdiv exact i64 %103, 4
  %105 = load %struct.TYPE_19__*, %struct.TYPE_19__** %16, align 8
  %106 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = sext i32 %107 to i64
  %109 = sub nsw i64 %104, %108
  %110 = trunc i64 %109 to i32
  %111 = load %struct.TYPE_20__*, %struct.TYPE_20__** %15, align 8
  %112 = load i32, i32* %17, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %111, i64 %113
  %115 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %114, i32 0, i32 0
  store i32 %110, i32* %115, align 4
  %116 = load %struct.TYPE_19__*, %struct.TYPE_19__** %16, align 8
  %117 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = load %struct.TYPE_20__*, %struct.TYPE_20__** %15, align 8
  %120 = load i32, i32* %17, align 4
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %17, align 4
  %122 = sext i32 %120 to i64
  %123 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %119, i64 %122
  %124 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %123, i32 0, i32 1
  store i32 %118, i32* %124, align 4
  %125 = load i32, i32* %11, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %138, label %127

127:                                              ; preds = %96
  %128 = load %struct.TYPE_21__*, %struct.TYPE_21__** %14, align 8
  %129 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %128, i32 0, i32 0
  %130 = load %struct.TYPE_17__*, %struct.TYPE_17__** %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  %133 = load i32, i32* @REG_GLOB, align 4
  %134 = and i32 %132, %133
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %138, label %136

136:                                              ; preds = %127
  %137 = load i64, i64* @S_OK, align 8
  store i64 %137, i64* %21, align 8
  br label %139

138:                                              ; preds = %127, %96
  br label %49

139:                                              ; preds = %136, %93, %65, %59
  %140 = load i32*, i32** %19, align 8
  %141 = call i32 @heap_pool_clear(i32* %140)
  %142 = load i64, i64* %21, align 8
  %143 = call i64 @FAILED(i64 %142)
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %145, label %149

145:                                              ; preds = %139
  %146 = load %struct.TYPE_20__*, %struct.TYPE_20__** %15, align 8
  %147 = call i32 @heap_free(%struct.TYPE_20__* %146)
  %148 = load i64, i64* %21, align 8
  store i64 %148, i64* %7, align 8
  br label %155

149:                                              ; preds = %139
  %150 = load %struct.TYPE_20__*, %struct.TYPE_20__** %15, align 8
  %151 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %12, align 8
  store %struct.TYPE_20__* %150, %struct.TYPE_20__** %151, align 8
  %152 = load i32, i32* %17, align 4
  %153 = load i32*, i32** %13, align 8
  store i32 %152, i32* %153, align 4
  %154 = load i64, i64* @S_OK, align 8
  store i64 %154, i64* %7, align 8
  br label %155

155:                                              ; preds = %149, %145, %44, %32
  %156 = load i64, i64* %7, align 8
  ret i64 %156
}

declare dso_local %struct.TYPE_21__* @regexp_from_jsdisp(i32*) #1

declare dso_local i32* @heap_pool_mark(i32*) #1

declare dso_local i32* @jsstr_flatten(i32*) #1

declare dso_local %struct.TYPE_19__* @alloc_match_state(%struct.TYPE_17__*, i32*, i32*) #1

declare dso_local i32 @heap_pool_clear(i32*) #1

declare dso_local i64 @do_regexp_match_next(%struct.TYPE_18__*, %struct.TYPE_21__*, i32, i32*, i32*, %struct.TYPE_19__*) #1

declare dso_local i64 @FAILED(i64) #1

declare dso_local %struct.TYPE_20__* @heap_realloc(%struct.TYPE_20__*, i32) #1

declare dso_local i32 @heap_free(%struct.TYPE_20__*) #1

declare dso_local %struct.TYPE_20__* @heap_alloc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
