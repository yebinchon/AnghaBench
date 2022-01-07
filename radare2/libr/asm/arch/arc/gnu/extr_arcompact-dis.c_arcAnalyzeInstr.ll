; ModuleID = '/home/carl/AnghaBench/radare2/libr/asm/arch/arc/gnu/extr_arcompact-dis.c_arcAnalyzeInstr.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/asm/arch/arc/gnu/extr_arcompact-dis.c_arcAnalyzeInstr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.arcDisState = type { i32, i32*, i32, i32, i32, i32, %struct.arcDisState* }
%struct.TYPE_10__ = type { i64, i32 (i64, i32*, i32, %struct.TYPE_10__*)*, i32, i32 (i32, i64, %struct.TYPE_10__*)* }

@BFD_ENDIAN_LITTLE = common dso_local global i64 0, align 8
@_coreRegName = common dso_local global i32 0, align 4
@_auxRegName = common dso_local global i32 0, align 4
@_condCodeName = common dso_local global i32 0, align 4
@_instName = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @arcAnalyzeInstr(%struct.arcDisState* noalias sret %0, i64 %1, %struct.TYPE_10__* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca [4 x i32], align 16
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i64 %1, i64* %4, align 8
  store %struct.TYPE_10__* %2, %struct.TYPE_10__** %5, align 8
  %11 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %12 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @BFD_ENDIAN_LITTLE, align 8
  %15 = icmp eq i64 %13, %14
  %16 = zext i1 %15 to i64
  %17 = select i1 %15, i32 1, i32 0
  store i32 %17, i32* %9, align 4
  %18 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @BFD_ENDIAN_LITTLE, align 8
  %22 = icmp eq i64 %20, %21
  %23 = zext i1 %22 to i64
  %24 = select i1 %22, i32 0, i32 1
  store i32 %24, i32* %10, align 4
  %25 = call i32 @memset(%struct.arcDisState* %0, i32 0, i32 40)
  %26 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %26, i32 0, i32 1
  %28 = load i32 (i64, i32*, i32, %struct.TYPE_10__*)*, i32 (i64, i32*, i32, %struct.TYPE_10__*)** %27, align 8
  %29 = load i64, i64* %4, align 8
  %30 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 0
  %31 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %32 = call i32 %28(i64 %29, i32* %30, i32 2, %struct.TYPE_10__* %31)
  store i32 %32, i32* %6, align 4
  %33 = load i32, i32* %6, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %44

35:                                               ; preds = %3
  %36 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %36, i32 0, i32 3
  %38 = load i32 (i32, i64, %struct.TYPE_10__*)*, i32 (i32, i64, %struct.TYPE_10__*)** %37, align 8
  %39 = load i32, i32* %6, align 4
  %40 = load i64, i64* %4, align 8
  %41 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %42 = call i32 %38(i32 %39, i64 %40, %struct.TYPE_10__* %41)
  %43 = getelementptr inbounds %struct.arcDisState, %struct.arcDisState* %0, i32 0, i32 0
  store i32 -1, i32* %43, align 8
  br label %189

44:                                               ; preds = %3
  %45 = load i32, i32* %9, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 %46
  %48 = load i32, i32* %47, align 4
  %49 = and i32 %48, 248
  %50 = icmp sgt i32 %49, 56
  br i1 %50, label %51, label %101

51:                                               ; preds = %44
  %52 = load i32, i32* %9, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 %53
  %55 = load i32, i32* %54, align 4
  %56 = and i32 %55, 248
  %57 = icmp ne i32 %56, 72
  br i1 %57, label %58, label %101

58:                                               ; preds = %51
  %59 = getelementptr inbounds %struct.arcDisState, %struct.arcDisState* %0, i32 0, i32 0
  store i32 2, i32* %59, align 8
  %60 = load i32, i32* %9, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 %61
  %63 = load i32, i32* %62, align 4
  %64 = shl i32 %63, 8
  %65 = load i32, i32* %10, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 %66
  %68 = load i32, i32* %67, align 4
  %69 = or i32 %64, %68
  %70 = getelementptr inbounds %struct.arcDisState, %struct.arcDisState* %0, i32 0, i32 1
  %71 = load i32*, i32** %70, align 8
  %72 = getelementptr inbounds i32, i32* %71, i64 0
  store i32 %69, i32* %72, align 4
  %73 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %74 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %73, i32 0, i32 1
  %75 = load i32 (i64, i32*, i32, %struct.TYPE_10__*)*, i32 (i64, i32*, i32, %struct.TYPE_10__*)** %74, align 8
  %76 = load i64, i64* %4, align 8
  %77 = add nsw i64 %76, 2
  %78 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 0
  %79 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %80 = call i32 %75(i64 %77, i32* %78, i32 4, %struct.TYPE_10__* %79)
  store i32 %80, i32* %6, align 4
  %81 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %82 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = load i64, i64* @BFD_ENDIAN_LITTLE, align 8
  %85 = icmp eq i64 %83, %84
  br i1 %85, label %86, label %93

86:                                               ; preds = %58
  %87 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 0
  %88 = call i8* @bfd_getl32(i32* %87)
  %89 = ptrtoint i8* %88 to i32
  %90 = getelementptr inbounds %struct.arcDisState, %struct.arcDisState* %0, i32 0, i32 1
  %91 = load i32*, i32** %90, align 8
  %92 = getelementptr inbounds i32, i32* %91, i64 1
  store i32 %89, i32* %92, align 4
  br label %100

93:                                               ; preds = %58
  %94 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 0
  %95 = call i8* @bfd_getb32(i32* %94)
  %96 = ptrtoint i8* %95 to i32
  %97 = getelementptr inbounds %struct.arcDisState, %struct.arcDisState* %0, i32 0, i32 1
  %98 = load i32*, i32** %97, align 8
  %99 = getelementptr inbounds i32, i32* %98, i64 1
  store i32 %96, i32* %99, align 4
  br label %100

100:                                              ; preds = %93, %86
  br label %172

101:                                              ; preds = %51, %44
  %102 = getelementptr inbounds %struct.arcDisState, %struct.arcDisState* %0, i32 0, i32 0
  store i32 4, i32* %102, align 8
  %103 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %104 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %103, i32 0, i32 1
  %105 = load i32 (i64, i32*, i32, %struct.TYPE_10__*)*, i32 (i64, i32*, i32, %struct.TYPE_10__*)** %104, align 8
  %106 = load i64, i64* %4, align 8
  %107 = add nsw i64 %106, 2
  %108 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 2
  %109 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %110 = call i32 %105(i64 %107, i32* %108, i32 2, %struct.TYPE_10__* %109)
  store i32 %110, i32* %6, align 4
  %111 = load i32, i32* %6, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %123

113:                                              ; preds = %101
  %114 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %115 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %114, i32 0, i32 3
  %116 = load i32 (i32, i64, %struct.TYPE_10__*)*, i32 (i32, i64, %struct.TYPE_10__*)** %115, align 8
  %117 = load i32, i32* %6, align 4
  %118 = load i64, i64* %4, align 8
  %119 = add nsw i64 %118, 2
  %120 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %121 = call i32 %116(i32 %117, i64 %119, %struct.TYPE_10__* %120)
  %122 = getelementptr inbounds %struct.arcDisState, %struct.arcDisState* %0, i32 0, i32 0
  store i32 -1, i32* %122, align 8
  br label %189

123:                                              ; preds = %101
  %124 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %125 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %124, i32 0, i32 0
  %126 = load i64, i64* %125, align 8
  %127 = load i64, i64* @BFD_ENDIAN_LITTLE, align 8
  %128 = icmp eq i64 %126, %127
  br i1 %128, label %129, label %136

129:                                              ; preds = %123
  %130 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 0
  %131 = call i8* @bfd_getl32(i32* %130)
  %132 = ptrtoint i8* %131 to i32
  %133 = getelementptr inbounds %struct.arcDisState, %struct.arcDisState* %0, i32 0, i32 1
  %134 = load i32*, i32** %133, align 8
  %135 = getelementptr inbounds i32, i32* %134, i64 0
  store i32 %132, i32* %135, align 4
  br label %143

136:                                              ; preds = %123
  %137 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 0
  %138 = call i8* @bfd_getb32(i32* %137)
  %139 = ptrtoint i8* %138 to i32
  %140 = getelementptr inbounds %struct.arcDisState, %struct.arcDisState* %0, i32 0, i32 1
  %141 = load i32*, i32** %140, align 8
  %142 = getelementptr inbounds i32, i32* %141, i64 0
  store i32 %139, i32* %142, align 4
  br label %143

143:                                              ; preds = %136, %129
  %144 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %145 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %144, i32 0, i32 1
  %146 = load i32 (i64, i32*, i32, %struct.TYPE_10__*)*, i32 (i64, i32*, i32, %struct.TYPE_10__*)** %145, align 8
  %147 = load i64, i64* %4, align 8
  %148 = add nsw i64 %147, 4
  %149 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 0
  %150 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %151 = call i32 %146(i64 %148, i32* %149, i32 4, %struct.TYPE_10__* %150)
  store i32 %151, i32* %6, align 4
  %152 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %153 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %152, i32 0, i32 0
  %154 = load i64, i64* %153, align 8
  %155 = load i64, i64* @BFD_ENDIAN_LITTLE, align 8
  %156 = icmp eq i64 %154, %155
  br i1 %156, label %157, label %164

157:                                              ; preds = %143
  %158 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 0
  %159 = call i8* @bfd_getl32(i32* %158)
  %160 = ptrtoint i8* %159 to i32
  %161 = getelementptr inbounds %struct.arcDisState, %struct.arcDisState* %0, i32 0, i32 1
  %162 = load i32*, i32** %161, align 8
  %163 = getelementptr inbounds i32, i32* %162, i64 1
  store i32 %160, i32* %163, align 4
  br label %171

164:                                              ; preds = %143
  %165 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 0
  %166 = call i8* @bfd_getb32(i32* %165)
  %167 = ptrtoint i8* %166 to i32
  %168 = getelementptr inbounds %struct.arcDisState, %struct.arcDisState* %0, i32 0, i32 1
  %169 = load i32*, i32** %168, align 8
  %170 = getelementptr inbounds i32, i32* %169, i64 1
  store i32 %167, i32* %170, align 4
  br label %171

171:                                              ; preds = %164, %157
  br label %172

172:                                              ; preds = %171, %100
  %173 = getelementptr inbounds %struct.arcDisState, %struct.arcDisState* %0, i32 0, i32 6
  store %struct.arcDisState* %0, %struct.arcDisState** %173, align 8
  %174 = load i32, i32* @_coreRegName, align 4
  %175 = getelementptr inbounds %struct.arcDisState, %struct.arcDisState* %0, i32 0, i32 5
  store i32 %174, i32* %175, align 4
  %176 = load i32, i32* @_auxRegName, align 4
  %177 = getelementptr inbounds %struct.arcDisState, %struct.arcDisState* %0, i32 0, i32 4
  store i32 %176, i32* %177, align 8
  %178 = load i32, i32* @_condCodeName, align 4
  %179 = getelementptr inbounds %struct.arcDisState, %struct.arcDisState* %0, i32 0, i32 3
  store i32 %178, i32* %179, align 4
  %180 = load i32, i32* @_instName, align 4
  %181 = getelementptr inbounds %struct.arcDisState, %struct.arcDisState* %0, i32 0, i32 2
  store i32 %180, i32* %181, align 8
  %182 = load i64, i64* %4, align 8
  %183 = bitcast %struct.arcDisState* %0 to i8*
  %184 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %185 = call i32 @dsmOneArcInst(i64 %182, i8* %183, %struct.TYPE_10__* %184)
  store i32 %185, i32* %8, align 4
  %186 = load i32, i32* %8, align 4
  %187 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %188 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %187, i32 0, i32 2
  store i32 %186, i32* %188, align 8
  br label %189

189:                                              ; preds = %172, %113, %35
  ret void
}

declare dso_local i32 @memset(%struct.arcDisState*, i32, i32) #1

declare dso_local i8* @bfd_getl32(i32*) #1

declare dso_local i8* @bfd_getb32(i32*) #1

declare dso_local i32 @dsmOneArcInst(i64, i8*, %struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
