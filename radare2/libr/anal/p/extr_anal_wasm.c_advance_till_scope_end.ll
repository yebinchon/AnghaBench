; ModuleID = '/home/carl/AnghaBench/radare2/libr/anal/p/extr_anal_wasm.c_advance_till_scope_end.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/anal/p/extr_anal_wasm.c_advance_till_scope_end.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32, i64 (i32, i8*, i32*, i32)* }
%struct.TYPE_14__ = type { i8*, i64 }
%struct.TYPE_13__ = type { i64, %struct.TYPE_12__, i32, %struct.TYPE_10__ }
%struct.TYPE_12__ = type { i64 }
%struct.TYPE_10__ = type { i32 }

@WASM_TYPE_OP_CORE = common dso_local global i64 0, align 8
@WASM_OP_TRAP = common dso_local global i64 0, align 8
@WASM_OP_LOOP = common dso_local global i64 0, align 8
@WASM_OP_BLOCK = common dso_local global i64 0, align 8
@WASM_OP_IF = common dso_local global i64 0, align 8
@WASM_OP_ELSE = common dso_local global i64 0, align 8
@WASM_OP_END = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_15__*, %struct.TYPE_14__*, i8*, i64, i64, i32)* @advance_till_scope_end to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @advance_till_scope_end(%struct.TYPE_15__* %0, %struct.TYPE_14__* %1, i8* %2, i64 %3, i64 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_15__*, align 8
  %9 = alloca %struct.TYPE_14__*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca [16 x i32], align 16
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca %struct.TYPE_13__, align 8
  %18 = alloca i32, align 4
  %19 = alloca i64, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %8, align 8
  store %struct.TYPE_14__* %1, %struct.TYPE_14__** %9, align 8
  store i8* %2, i8** %10, align 8
  store i64 %3, i64* %11, align 8
  store i64 %4, i64* %12, align 8
  store i32 %5, i32* %13, align 4
  %20 = getelementptr inbounds [16 x i32], [16 x i32]* %14, i64 0, i64 0
  store i32* %20, i32** %15, align 8
  %21 = load i32*, i32** %15, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 64
  store i32* %22, i32** %16, align 8
  %23 = bitcast %struct.TYPE_13__* %17 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %23, i8 0, i64 24, i1 false)
  store i32 0, i32* %18, align 4
  br label %24

24:                                               ; preds = %130, %6
  %25 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %26 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %26, i32 0, i32 1
  %28 = load i64 (i32, i8*, i32*, i32)*, i64 (i32, i8*, i32*, i32)** %27, align 8
  %29 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %30 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i8*, i8** %10, align 8
  %34 = getelementptr inbounds [16 x i32], [16 x i32]* %14, i64 0, i64 0
  %35 = call i64 %28(i32 %32, i8* %33, i32* %34, i32 64)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %135

37:                                               ; preds = %24
  %38 = load i32*, i32** %15, align 8
  %39 = load i32*, i32** %16, align 8
  %40 = load i32*, i32** %15, align 8
  %41 = ptrtoint i32* %39 to i64
  %42 = ptrtoint i32* %40 to i64
  %43 = sub i64 %41, %42
  %44 = sdiv exact i64 %43, 4
  %45 = trunc i64 %44 to i32
  %46 = call i32 @wasm_dis(%struct.TYPE_13__* %17, i32* %38, i32 %45)
  store i32 %46, i32* %18, align 4
  %47 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %17, i32 0, i32 2
  %48 = load i32, i32* %47, align 8
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %61

50:                                               ; preds = %37
  %51 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %17, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @WASM_TYPE_OP_CORE, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %62

55:                                               ; preds = %50
  %56 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %17, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @WASM_OP_TRAP, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %61, label %62

61:                                               ; preds = %55, %37
  br label %135

62:                                               ; preds = %55, %50
  %63 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %17, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @WASM_TYPE_OP_CORE, align 8
  %66 = icmp eq i64 %64, %65
  br i1 %66, label %67, label %130

67:                                               ; preds = %62
  %68 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %17, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  store i64 %70, i64* %19, align 8
  %71 = load i64, i64* %19, align 8
  %72 = load i64, i64* @WASM_OP_LOOP, align 8
  %73 = icmp eq i64 %71, %72
  br i1 %73, label %82, label %74

74:                                               ; preds = %67
  %75 = load i64, i64* %19, align 8
  %76 = load i64, i64* @WASM_OP_BLOCK, align 8
  %77 = icmp eq i64 %75, %76
  br i1 %77, label %82, label %78

78:                                               ; preds = %74
  %79 = load i64, i64* %19, align 8
  %80 = load i64, i64* @WASM_OP_IF, align 8
  %81 = icmp eq i64 %79, %80
  br i1 %81, label %82, label %85

82:                                               ; preds = %78, %74, %67
  %83 = load i64, i64* %12, align 8
  %84 = add nsw i64 %83, 1
  store i64 %84, i64* %12, align 8
  br label %85

85:                                               ; preds = %82, %78
  %86 = load i32, i32* %13, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %103

88:                                               ; preds = %85
  %89 = load i64, i64* %19, align 8
  %90 = load i64, i64* @WASM_OP_ELSE, align 8
  %91 = icmp eq i64 %89, %90
  br i1 %91, label %92, label %103

92:                                               ; preds = %88
  %93 = load i64, i64* %12, align 8
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %103, label %95

95:                                               ; preds = %92
  %96 = load i64, i64* %11, align 8
  %97 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %98 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %97, i32 0, i32 1
  store i64 %96, i64* %98, align 8
  %99 = load i8*, i8** %10, align 8
  %100 = getelementptr i8, i8* %99, i64 1
  %101 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %102 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %101, i32 0, i32 0
  store i8* %100, i8** %102, align 8
  store i32 1, i32* %7, align 4
  br label %136

103:                                              ; preds = %92, %88, %85
  %104 = load i64, i64* %19, align 8
  %105 = load i64, i64* @WASM_OP_END, align 8
  %106 = icmp eq i64 %104, %105
  br i1 %106, label %107, label %113

107:                                              ; preds = %103
  %108 = load i64, i64* %12, align 8
  %109 = icmp sgt i64 %108, 0
  br i1 %109, label %110, label %113

110:                                              ; preds = %107
  %111 = load i64, i64* %12, align 8
  %112 = add nsw i64 %111, -1
  store i64 %112, i64* %12, align 8
  br label %128

113:                                              ; preds = %107, %103
  %114 = load i64, i64* %19, align 8
  %115 = load i64, i64* @WASM_OP_END, align 8
  %116 = icmp eq i64 %114, %115
  br i1 %116, label %117, label %127

117:                                              ; preds = %113
  %118 = load i64, i64* %12, align 8
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %127, label %120

120:                                              ; preds = %117
  %121 = load i64, i64* %11, align 8
  %122 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %123 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %122, i32 0, i32 1
  store i64 %121, i64* %123, align 8
  %124 = load i8*, i8** %10, align 8
  %125 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %126 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %125, i32 0, i32 0
  store i8* %124, i8** %126, align 8
  store i32 1, i32* %7, align 4
  br label %136

127:                                              ; preds = %117, %113
  br label %128

128:                                              ; preds = %127, %110
  br label %129

129:                                              ; preds = %128
  br label %130

130:                                              ; preds = %129, %62
  %131 = load i32, i32* %18, align 4
  %132 = load i8*, i8** %10, align 8
  %133 = sext i32 %131 to i64
  %134 = getelementptr i8, i8* %132, i64 %133
  store i8* %134, i8** %10, align 8
  br label %24

135:                                              ; preds = %61, %24
  store i32 0, i32* %7, align 4
  br label %136

136:                                              ; preds = %135, %120, %95
  %137 = load i32, i32* %7, align 4
  ret i32 %137
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @wasm_dis(%struct.TYPE_13__*, i32*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
