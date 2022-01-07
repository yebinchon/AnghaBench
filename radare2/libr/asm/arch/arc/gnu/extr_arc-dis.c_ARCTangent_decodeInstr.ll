; ModuleID = '/home/carl/AnghaBench/radare2/libr/asm/arch/arc/gnu/extr_arc-dis.c_ARCTangent_decodeInstr.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/asm/arch/arc/gnu/extr_arc-dis.c_ARCTangent_decodeInstr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 (i64, i32*, i32, %struct.TYPE_7__*)*, i64, {}*, i32 (i32, i64, %struct.TYPE_7__*)*, i32 (i8*, i8*, i64*)*, i8* }
%struct.arcDisState = type { i64*, i64*, i32, i64*, i32, i32, i32, i32, %struct.arcDisState*, i8** }

@BFD_ENDIAN_LITTLE = common dso_local global i64 0, align 8
@_coreRegName = common dso_local global i32 0, align 4
@_auxRegName = common dso_local global i32 0, align 4
@_condCodeName = common dso_local global i32 0, align 4
@_instName = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"%s \00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ARCTangent_decodeInstr(i64 %0, %struct.TYPE_7__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca [4 x i32], align 16
  %8 = alloca %struct.arcDisState, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32 (i8*, i8*, i64*)*, align 8
  %11 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %5, align 8
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 5
  %14 = load i8*, i8** %13, align 8
  store i8* %14, i8** %9, align 8
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 4
  %17 = load i32 (i8*, i8*, i64*)*, i32 (i8*, i8*, i64*)** %16, align 8
  store i32 (i8*, i8*, i64*)* %17, i32 (i8*, i8*, i64*)** %10, align 8
  %18 = call i32 @memset(%struct.arcDisState* %8, i32 0, i32 64)
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 0
  %21 = load i32 (i64, i32*, i32, %struct.TYPE_7__*)*, i32 (i64, i32*, i32, %struct.TYPE_7__*)** %20, align 8
  %22 = load i64, i64* %4, align 8
  %23 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 0
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %25 = call i32 %21(i64 %22, i32* %23, i32 4, %struct.TYPE_7__* %24)
  store i32 %25, i32* %6, align 4
  %26 = load i32, i32* %6, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %36

28:                                               ; preds = %2
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 3
  %31 = load i32 (i32, i64, %struct.TYPE_7__*)*, i32 (i32, i64, %struct.TYPE_7__*)** %30, align 8
  %32 = load i32, i32* %6, align 4
  %33 = load i64, i64* %4, align 8
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %35 = call i32 %31(i32 %32, i64 %33, %struct.TYPE_7__* %34)
  store i32 -1, i32* %3, align 4
  br label %126

36:                                               ; preds = %2
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @BFD_ENDIAN_LITTLE, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %48

42:                                               ; preds = %36
  %43 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 0
  %44 = call i8* @bfd_getl32(i32* %43)
  %45 = getelementptr inbounds %struct.arcDisState, %struct.arcDisState* %8, i32 0, i32 9
  %46 = load i8**, i8*** %45, align 8
  %47 = getelementptr inbounds i8*, i8** %46, i64 0
  store i8* %44, i8** %47, align 8
  br label %54

48:                                               ; preds = %36
  %49 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 0
  %50 = call i8* @bfd_getb32(i32* %49)
  %51 = getelementptr inbounds %struct.arcDisState, %struct.arcDisState* %8, i32 0, i32 9
  %52 = load i8**, i8*** %51, align 8
  %53 = getelementptr inbounds i8*, i8** %52, i64 0
  store i8* %50, i8** %53, align 8
  br label %54

54:                                               ; preds = %48, %42
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 0
  %57 = load i32 (i64, i32*, i32, %struct.TYPE_7__*)*, i32 (i64, i32*, i32, %struct.TYPE_7__*)** %56, align 8
  %58 = load i64, i64* %4, align 8
  %59 = add nsw i64 %58, 4
  %60 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 0
  %61 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %62 = call i32 %57(i64 %59, i32* %60, i32 4, %struct.TYPE_7__* %61)
  store i32 %62, i32* %6, align 4
  %63 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @BFD_ENDIAN_LITTLE, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %68, label %74

68:                                               ; preds = %54
  %69 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 0
  %70 = call i8* @bfd_getl32(i32* %69)
  %71 = getelementptr inbounds %struct.arcDisState, %struct.arcDisState* %8, i32 0, i32 9
  %72 = load i8**, i8*** %71, align 8
  %73 = getelementptr inbounds i8*, i8** %72, i64 1
  store i8* %70, i8** %73, align 8
  br label %80

74:                                               ; preds = %54
  %75 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 0
  %76 = call i8* @bfd_getb32(i32* %75)
  %77 = getelementptr inbounds %struct.arcDisState, %struct.arcDisState* %8, i32 0, i32 9
  %78 = load i8**, i8*** %77, align 8
  %79 = getelementptr inbounds i8*, i8** %78, i64 1
  store i8* %76, i8** %79, align 8
  br label %80

80:                                               ; preds = %74, %68
  %81 = getelementptr inbounds %struct.arcDisState, %struct.arcDisState* %8, i32 0, i32 8
  store %struct.arcDisState* %8, %struct.arcDisState** %81, align 8
  %82 = load i32, i32* @_coreRegName, align 4
  %83 = getelementptr inbounds %struct.arcDisState, %struct.arcDisState* %8, i32 0, i32 7
  store i32 %82, i32* %83, align 4
  %84 = load i32, i32* @_auxRegName, align 4
  %85 = getelementptr inbounds %struct.arcDisState, %struct.arcDisState* %8, i32 0, i32 6
  store i32 %84, i32* %85, align 8
  %86 = load i32, i32* @_condCodeName, align 4
  %87 = getelementptr inbounds %struct.arcDisState, %struct.arcDisState* %8, i32 0, i32 5
  store i32 %86, i32* %87, align 4
  %88 = load i32, i32* @_instName, align 4
  %89 = getelementptr inbounds %struct.arcDisState, %struct.arcDisState* %8, i32 0, i32 4
  store i32 %88, i32* %89, align 8
  %90 = load i64, i64* %4, align 8
  %91 = bitcast %struct.arcDisState* %8 to i8*
  %92 = call i32 @dsmOneArcInst(i64 %90, i8* %91)
  %93 = load i32 (i8*, i8*, i64*)*, i32 (i8*, i8*, i64*)** %10, align 8
  %94 = load i8*, i8** %9, align 8
  %95 = getelementptr inbounds %struct.arcDisState, %struct.arcDisState* %8, i32 0, i32 0
  %96 = load i64*, i64** %95, align 8
  %97 = call i32 %93(i8* %94, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i64* %96)
  %98 = call i64 @__TRANSLATION_REQUIRED(%struct.arcDisState* byval(%struct.arcDisState) align 8 %8)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %117

100:                                              ; preds = %80
  %101 = getelementptr inbounds %struct.arcDisState, %struct.arcDisState* %8, i32 0, i32 3
  %102 = load i64*, i64** %101, align 8
  %103 = getelementptr inbounds %struct.arcDisState, %struct.arcDisState* %8, i32 0, i32 1
  %104 = load i64*, i64** %103, align 8
  %105 = getelementptr inbounds i64, i64* %104, i64 1
  %106 = load i64, i64* %105, align 8
  %107 = sub i64 %106, 48
  %108 = getelementptr inbounds i64, i64* %102, i64 %107
  %109 = load i64, i64* %108, align 8
  store i64 %109, i64* %11, align 8
  %110 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %111 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %110, i32 0, i32 2
  %112 = bitcast {}** %111 to i32 (i64, %struct.TYPE_7__*)**
  %113 = load i32 (i64, %struct.TYPE_7__*)*, i32 (i64, %struct.TYPE_7__*)** %112, align 8
  %114 = load i64, i64* %11, align 8
  %115 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %116 = call i32 %113(i64 %114, %struct.TYPE_7__* %115)
  br label %123

117:                                              ; preds = %80
  %118 = load i32 (i8*, i8*, i64*)*, i32 (i8*, i8*, i64*)** %10, align 8
  %119 = load i8*, i8** %9, align 8
  %120 = getelementptr inbounds %struct.arcDisState, %struct.arcDisState* %8, i32 0, i32 1
  %121 = load i64*, i64** %120, align 8
  %122 = call i32 %118(i8* %119, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i64* %121)
  br label %123

123:                                              ; preds = %117, %100
  %124 = getelementptr inbounds %struct.arcDisState, %struct.arcDisState* %8, i32 0, i32 2
  %125 = load i32, i32* %124, align 8
  store i32 %125, i32* %3, align 4
  br label %126

126:                                              ; preds = %123, %28
  %127 = load i32, i32* %3, align 4
  ret i32 %127
}

declare dso_local i32 @memset(%struct.arcDisState*, i32, i32) #1

declare dso_local i8* @bfd_getl32(i32*) #1

declare dso_local i8* @bfd_getb32(i32*) #1

declare dso_local i32 @dsmOneArcInst(i64, i8*) #1

declare dso_local i64 @__TRANSLATION_REQUIRED(%struct.arcDisState* byval(%struct.arcDisState) align 8) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
