; ModuleID = '/home/carl/AnghaBench/openwrt/package/kernel/lantiq/ltq-deu/src/extr_ifxmips_des.c_ifx_deu_des.c'
source_filename = "/home/carl/AnghaBench/openwrt/package/kernel/lantiq/ltq-deu/src/extr_ifxmips_des.c_ifx_deu_des.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.des_t = type { i32, i32, i32, i32, %struct.TYPE_2__, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }
%struct.TYPE_2__ = type { i64, i32, i32, i64 }
%struct.des_ctx = type { i32*, i64, i32 }

@DES_3DES_START = common dso_local global i64 0, align 8
@CRTCL_SECT_START = common dso_local global i32 0, align 4
@CRTCL_SECT_END = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ifx_deu_des(i8* %0, i32* %1, i32* %2, i32* %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.des_t*, align 8
  %16 = alloca %struct.des_ctx*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store i8* %0, i8** %8, align 8
  store i32* %1, i32** %9, align 8
  store i32* %2, i32** %10, align 8
  store i32* %3, i32** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  %21 = load i64, i64* @DES_3DES_START, align 8
  %22 = inttoptr i64 %21 to %struct.des_t*
  store %struct.des_t* %22, %struct.des_t** %15, align 8
  %23 = load i8*, i8** %8, align 8
  %24 = bitcast i8* %23 to %struct.des_ctx*
  store %struct.des_ctx* %24, %struct.des_ctx** %16, align 8
  %25 = load %struct.des_ctx*, %struct.des_ctx** %16, align 8
  %26 = getelementptr inbounds %struct.des_ctx, %struct.des_ctx* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  store i32* %27, i32** %17, align 8
  store i32 0, i32* %19, align 4
  store i32 0, i32* %20, align 4
  %28 = load i32, i32* @CRTCL_SECT_START, align 4
  %29 = load %struct.des_ctx*, %struct.des_ctx** %16, align 8
  %30 = getelementptr inbounds %struct.des_ctx, %struct.des_ctx* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = load %struct.des_t*, %struct.des_t** %15, align 8
  %33 = getelementptr inbounds %struct.des_t, %struct.des_t* %32, i32 0, i32 4
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  store volatile i64 %31, i64* %34, align 8
  %35 = load %struct.des_ctx*, %struct.des_ctx** %16, align 8
  %36 = getelementptr inbounds %struct.des_ctx, %struct.des_ctx* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = icmp eq i64 %37, 0
  br i1 %38, label %39, label %52

39:                                               ; preds = %7
  %40 = load i32*, i32** %17, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 0
  %42 = load i32, i32* %41, align 4
  %43 = call i8* @DEU_ENDIAN_SWAP(i32 %42)
  %44 = load %struct.des_t*, %struct.des_t** %15, align 8
  %45 = getelementptr inbounds %struct.des_t, %struct.des_t* %44, i32 0, i32 8
  store volatile i8* %43, i8** %45, align 8
  %46 = load i32*, i32** %17, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 1
  %48 = load i32, i32* %47, align 4
  %49 = call i8* @DEU_ENDIAN_SWAP(i32 %48)
  %50 = load %struct.des_t*, %struct.des_t** %15, align 8
  %51 = getelementptr inbounds %struct.des_t, %struct.des_t* %50, i32 0, i32 7
  store volatile i8* %49, i8** %51, align 8
  br label %98

52:                                               ; preds = %7
  %53 = load %struct.des_ctx*, %struct.des_ctx** %16, align 8
  %54 = getelementptr inbounds %struct.des_ctx, %struct.des_ctx* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 8
  switch i32 %55, label %95 [
    i32 24, label %56
    i32 16, label %69
    i32 8, label %82
  ]

56:                                               ; preds = %52
  %57 = load i32*, i32** %17, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 4
  %59 = load i32, i32* %58, align 4
  %60 = call i8* @DEU_ENDIAN_SWAP(i32 %59)
  %61 = load %struct.des_t*, %struct.des_t** %15, align 8
  %62 = getelementptr inbounds %struct.des_t, %struct.des_t* %61, i32 0, i32 12
  store volatile i8* %60, i8** %62, align 8
  %63 = load i32*, i32** %17, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 5
  %65 = load i32, i32* %64, align 4
  %66 = call i8* @DEU_ENDIAN_SWAP(i32 %65)
  %67 = load %struct.des_t*, %struct.des_t** %15, align 8
  %68 = getelementptr inbounds %struct.des_t, %struct.des_t* %67, i32 0, i32 11
  store volatile i8* %66, i8** %68, align 8
  br label %69

69:                                               ; preds = %52, %56
  %70 = load i32*, i32** %17, align 8
  %71 = getelementptr inbounds i32, i32* %70, i64 2
  %72 = load i32, i32* %71, align 4
  %73 = call i8* @DEU_ENDIAN_SWAP(i32 %72)
  %74 = load %struct.des_t*, %struct.des_t** %15, align 8
  %75 = getelementptr inbounds %struct.des_t, %struct.des_t* %74, i32 0, i32 10
  store volatile i8* %73, i8** %75, align 8
  %76 = load i32*, i32** %17, align 8
  %77 = getelementptr inbounds i32, i32* %76, i64 3
  %78 = load i32, i32* %77, align 4
  %79 = call i8* @DEU_ENDIAN_SWAP(i32 %78)
  %80 = load %struct.des_t*, %struct.des_t** %15, align 8
  %81 = getelementptr inbounds %struct.des_t, %struct.des_t* %80, i32 0, i32 9
  store volatile i8* %79, i8** %81, align 8
  br label %82

82:                                               ; preds = %52, %69
  %83 = load i32*, i32** %17, align 8
  %84 = getelementptr inbounds i32, i32* %83, i64 0
  %85 = load i32, i32* %84, align 4
  %86 = call i8* @DEU_ENDIAN_SWAP(i32 %85)
  %87 = load %struct.des_t*, %struct.des_t** %15, align 8
  %88 = getelementptr inbounds %struct.des_t, %struct.des_t* %87, i32 0, i32 8
  store volatile i8* %86, i8** %88, align 8
  %89 = load i32*, i32** %17, align 8
  %90 = getelementptr inbounds i32, i32* %89, i64 1
  %91 = load i32, i32* %90, align 4
  %92 = call i8* @DEU_ENDIAN_SWAP(i32 %91)
  %93 = load %struct.des_t*, %struct.des_t** %15, align 8
  %94 = getelementptr inbounds %struct.des_t, %struct.des_t* %93, i32 0, i32 7
  store volatile i8* %92, i8** %94, align 8
  br label %97

95:                                               ; preds = %52
  %96 = load i32, i32* @CRTCL_SECT_END, align 4
  br label %197

97:                                               ; preds = %82
  br label %98

98:                                               ; preds = %97, %39
  %99 = load i32, i32* %13, align 4
  %100 = icmp ne i32 %99, 0
  %101 = xor i1 %100, true
  %102 = zext i1 %101 to i32
  %103 = load %struct.des_t*, %struct.des_t** %15, align 8
  %104 = getelementptr inbounds %struct.des_t, %struct.des_t* %103, i32 0, i32 4
  %105 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %104, i32 0, i32 1
  store volatile i32 %102, i32* %105, align 8
  %106 = load i32, i32* %14, align 4
  %107 = load %struct.des_t*, %struct.des_t** %15, align 8
  %108 = getelementptr inbounds %struct.des_t, %struct.des_t* %107, i32 0, i32 4
  %109 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %108, i32 0, i32 2
  store volatile i32 %106, i32* %109, align 4
  %110 = load i32, i32* %14, align 4
  %111 = icmp sgt i32 %110, 0
  br i1 %111, label %112, label %126

112:                                              ; preds = %98
  %113 = load i32*, i32** %11, align 8
  %114 = load i32, i32* %113, align 4
  %115 = call i8* @DEU_ENDIAN_SWAP(i32 %114)
  %116 = ptrtoint i8* %115 to i32
  %117 = load %struct.des_t*, %struct.des_t** %15, align 8
  %118 = getelementptr inbounds %struct.des_t, %struct.des_t* %117, i32 0, i32 0
  store volatile i32 %116, i32* %118, align 8
  %119 = load i32*, i32** %11, align 8
  %120 = getelementptr inbounds i32, i32* %119, i64 1
  %121 = load i32, i32* %120, align 4
  %122 = call i8* @DEU_ENDIAN_SWAP(i32 %121)
  %123 = ptrtoint i8* %122 to i32
  %124 = load %struct.des_t*, %struct.des_t** %15, align 8
  %125 = getelementptr inbounds %struct.des_t, %struct.des_t* %124, i32 0, i32 1
  store volatile i32 %123, i32* %125, align 4
  br label %126

126:                                              ; preds = %112, %98
  %127 = load i32, i32* %12, align 4
  %128 = sdiv i32 %127, 4
  store i32 %128, i32* %20, align 4
  store i32 0, i32* %19, align 4
  br label %129

129:                                              ; preds = %175, %126
  %130 = load i32, i32* %19, align 4
  %131 = load i32, i32* %20, align 4
  %132 = icmp slt i32 %130, %131
  br i1 %132, label %133, label %178

133:                                              ; preds = %129
  %134 = load i32*, i32** %10, align 8
  %135 = load i32, i32* %19, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds i32, i32* %134, i64 %136
  %138 = load i32, i32* %137, align 4
  %139 = call i8* @INPUT_ENDIAN_SWAP(i32 %138)
  %140 = load %struct.des_t*, %struct.des_t** %15, align 8
  %141 = getelementptr inbounds %struct.des_t, %struct.des_t* %140, i32 0, i32 6
  store volatile i8* %139, i8** %141, align 8
  %142 = load i32*, i32** %10, align 8
  %143 = getelementptr inbounds i32, i32* %142, i64 1
  %144 = load i32, i32* %19, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds i32, i32* %143, i64 %145
  %147 = load i32, i32* %146, align 4
  %148 = call i8* @INPUT_ENDIAN_SWAP(i32 %147)
  %149 = load %struct.des_t*, %struct.des_t** %15, align 8
  %150 = getelementptr inbounds %struct.des_t, %struct.des_t* %149, i32 0, i32 5
  store volatile i8* %148, i8** %150, align 8
  br label %151

151:                                              ; preds = %157, %133
  %152 = load %struct.des_t*, %struct.des_t** %15, align 8
  %153 = getelementptr inbounds %struct.des_t, %struct.des_t* %152, i32 0, i32 4
  %154 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %153, i32 0, i32 3
  %155 = load volatile i64, i64* %154, align 8
  %156 = icmp ne i64 %155, 0
  br i1 %156, label %157, label %158

157:                                              ; preds = %151
  br label %151

158:                                              ; preds = %151
  %159 = load %struct.des_t*, %struct.des_t** %15, align 8
  %160 = getelementptr inbounds %struct.des_t, %struct.des_t* %159, i32 0, i32 2
  %161 = load volatile i32, i32* %160, align 8
  %162 = load i32*, i32** %9, align 8
  %163 = getelementptr inbounds i32, i32* %162, i64 0
  %164 = load i32, i32* %19, align 4
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds i32, i32* %163, i64 %165
  store i32 %161, i32* %166, align 4
  %167 = load %struct.des_t*, %struct.des_t** %15, align 8
  %168 = getelementptr inbounds %struct.des_t, %struct.des_t* %167, i32 0, i32 3
  %169 = load volatile i32, i32* %168, align 4
  %170 = load i32*, i32** %9, align 8
  %171 = getelementptr inbounds i32, i32* %170, i64 1
  %172 = load i32, i32* %19, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds i32, i32* %171, i64 %173
  store i32 %169, i32* %174, align 4
  br label %175

175:                                              ; preds = %158
  %176 = load i32, i32* %19, align 4
  %177 = add nsw i32 %176, 2
  store i32 %177, i32* %19, align 4
  br label %129

178:                                              ; preds = %129
  %179 = load i32, i32* %14, align 4
  %180 = icmp sgt i32 %179, 0
  br i1 %180, label %181, label %195

181:                                              ; preds = %178
  %182 = load %struct.des_t*, %struct.des_t** %15, align 8
  %183 = getelementptr inbounds %struct.des_t, %struct.des_t* %182, i32 0, i32 0
  %184 = load volatile i32, i32* %183, align 8
  %185 = call i8* @DEU_ENDIAN_SWAP(i32 %184)
  %186 = ptrtoint i8* %185 to i32
  %187 = load i32*, i32** %11, align 8
  store i32 %186, i32* %187, align 4
  %188 = load %struct.des_t*, %struct.des_t** %15, align 8
  %189 = getelementptr inbounds %struct.des_t, %struct.des_t* %188, i32 0, i32 1
  %190 = load volatile i32, i32* %189, align 4
  %191 = call i8* @DEU_ENDIAN_SWAP(i32 %190)
  %192 = ptrtoint i8* %191 to i32
  %193 = load i32*, i32** %11, align 8
  %194 = getelementptr inbounds i32, i32* %193, i64 1
  store i32 %192, i32* %194, align 4
  br label %195

195:                                              ; preds = %181, %178
  %196 = load i32, i32* @CRTCL_SECT_END, align 4
  br label %197

197:                                              ; preds = %195, %95
  ret void
}

declare dso_local i8* @DEU_ENDIAN_SWAP(i32) #1

declare dso_local i8* @INPUT_ENDIAN_SWAP(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
