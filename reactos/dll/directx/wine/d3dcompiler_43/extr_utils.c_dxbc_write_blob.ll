; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/d3dcompiler_43/extr_utils.c_dxbc_write_blob.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/d3dcompiler_43/extr_utils.c_dxbc_write_blob.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dxbc = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32, i32 }

@.str = private unnamed_addr constant [19 x i8] c"dxbc %p, blob %p.\0A\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"Failed to create blob\0A\00", align 1
@TAG_DXBC = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [21 x i8] c"Created ID3DBlob %p\0A\00", align 1
@S_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dxbc_write_blob(%struct.dxbc* %0, i32** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dxbc*, align 8
  %5 = alloca i32**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  store %struct.dxbc* %0, %struct.dxbc** %4, align 8
  store i32** %1, i32*** %5, align 8
  store i32 32, i32* %6, align 4
  %12 = load i32, i32* %6, align 4
  %13 = load %struct.dxbc*, %struct.dxbc** %4, align 8
  %14 = getelementptr inbounds %struct.dxbc, %struct.dxbc* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = mul nsw i32 4, %15
  %17 = add nsw i32 %12, %16
  store i32 %17, i32* %7, align 4
  %18 = load %struct.dxbc*, %struct.dxbc** %4, align 8
  %19 = load i32**, i32*** %5, align 8
  %20 = call i32 (i8*, %struct.dxbc*, ...) @TRACE(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), %struct.dxbc* %18, i32** %19)
  store i32 0, i32* %11, align 4
  br label %21

21:                                               ; preds = %39, %2
  %22 = load i32, i32* %11, align 4
  %23 = load %struct.dxbc*, %struct.dxbc** %4, align 8
  %24 = getelementptr inbounds %struct.dxbc, %struct.dxbc* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp ult i32 %22, %25
  br i1 %26, label %27, label %42

27:                                               ; preds = %21
  %28 = load %struct.dxbc*, %struct.dxbc** %4, align 8
  %29 = getelementptr inbounds %struct.dxbc, %struct.dxbc* %28, i32 0, i32 1
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = load i32, i32* %11, align 4
  %32 = zext i32 %31 to i64
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i64 %32
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = add nsw i32 12, %35
  %37 = load i32, i32* %6, align 4
  %38 = add nsw i32 %37, %36
  store i32 %38, i32* %6, align 4
  br label %39

39:                                               ; preds = %27
  %40 = load i32, i32* %11, align 4
  %41 = add i32 %40, 1
  store i32 %41, i32* %11, align 4
  br label %21

42:                                               ; preds = %21
  %43 = load i32, i32* %6, align 4
  %44 = call i32 @D3DCreateBlob(i32 %43, i32** %8)
  store i32 %44, i32* %9, align 4
  %45 = load i32, i32* %9, align 4
  %46 = call i64 @FAILED(i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %42
  %49 = call i32 @WARN(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %50 = load i32, i32* %9, align 4
  store i32 %50, i32* %3, align 4
  br label %155

51:                                               ; preds = %42
  %52 = load i32*, i32** %8, align 8
  %53 = call i8* @ID3D10Blob_GetBufferPointer(i32* %52)
  store i8* %53, i8** %10, align 8
  %54 = load i32, i32* @TAG_DXBC, align 4
  %55 = call i32 @write_dword(i8** %10, i32 %54)
  %56 = call i32 @write_dword_unknown(i8** %10, i32 0)
  %57 = call i32 @write_dword_unknown(i8** %10, i32 0)
  %58 = call i32 @write_dword_unknown(i8** %10, i32 0)
  %59 = call i32 @write_dword_unknown(i8** %10, i32 0)
  %60 = call i32 @write_dword_unknown(i8** %10, i32 1)
  %61 = load i32, i32* %6, align 4
  %62 = call i32 @write_dword(i8** %10, i32 %61)
  %63 = load %struct.dxbc*, %struct.dxbc** %4, align 8
  %64 = getelementptr inbounds %struct.dxbc, %struct.dxbc* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = call i32 @write_dword(i8** %10, i32 %65)
  store i32 0, i32* %11, align 4
  br label %67

67:                                               ; preds = %87, %51
  %68 = load i32, i32* %11, align 4
  %69 = load %struct.dxbc*, %struct.dxbc** %4, align 8
  %70 = getelementptr inbounds %struct.dxbc, %struct.dxbc* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = icmp ult i32 %68, %71
  br i1 %72, label %73, label %90

73:                                               ; preds = %67
  %74 = load i32, i32* %7, align 4
  %75 = call i32 @write_dword(i8** %10, i32 %74)
  %76 = load %struct.dxbc*, %struct.dxbc** %4, align 8
  %77 = getelementptr inbounds %struct.dxbc, %struct.dxbc* %76, i32 0, i32 1
  %78 = load %struct.TYPE_2__*, %struct.TYPE_2__** %77, align 8
  %79 = load i32, i32* %11, align 4
  %80 = zext i32 %79 to i64
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i64 %80
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = add nsw i32 8, %83
  %85 = load i32, i32* %7, align 4
  %86 = add nsw i32 %85, %84
  store i32 %86, i32* %7, align 4
  br label %87

87:                                               ; preds = %73
  %88 = load i32, i32* %11, align 4
  %89 = add i32 %88, 1
  store i32 %89, i32* %11, align 4
  br label %67

90:                                               ; preds = %67
  store i32 0, i32* %11, align 4
  br label %91

91:                                               ; preds = %145, %90
  %92 = load i32, i32* %11, align 4
  %93 = load %struct.dxbc*, %struct.dxbc** %4, align 8
  %94 = getelementptr inbounds %struct.dxbc, %struct.dxbc* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = icmp ult i32 %92, %95
  br i1 %96, label %97, label %148

97:                                               ; preds = %91
  %98 = load %struct.dxbc*, %struct.dxbc** %4, align 8
  %99 = getelementptr inbounds %struct.dxbc, %struct.dxbc* %98, i32 0, i32 1
  %100 = load %struct.TYPE_2__*, %struct.TYPE_2__** %99, align 8
  %101 = load i32, i32* %11, align 4
  %102 = zext i32 %101 to i64
  %103 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %100, i64 %102
  %104 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = call i32 @write_dword(i8** %10, i32 %105)
  %107 = load %struct.dxbc*, %struct.dxbc** %4, align 8
  %108 = getelementptr inbounds %struct.dxbc, %struct.dxbc* %107, i32 0, i32 1
  %109 = load %struct.TYPE_2__*, %struct.TYPE_2__** %108, align 8
  %110 = load i32, i32* %11, align 4
  %111 = zext i32 %110 to i64
  %112 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %109, i64 %111
  %113 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = call i32 @write_dword(i8** %10, i32 %114)
  %116 = load i8*, i8** %10, align 8
  %117 = load %struct.dxbc*, %struct.dxbc** %4, align 8
  %118 = getelementptr inbounds %struct.dxbc, %struct.dxbc* %117, i32 0, i32 1
  %119 = load %struct.TYPE_2__*, %struct.TYPE_2__** %118, align 8
  %120 = load i32, i32* %11, align 4
  %121 = zext i32 %120 to i64
  %122 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %119, i64 %121
  %123 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %122, i32 0, i32 2
  %124 = load i32, i32* %123, align 4
  %125 = load %struct.dxbc*, %struct.dxbc** %4, align 8
  %126 = getelementptr inbounds %struct.dxbc, %struct.dxbc* %125, i32 0, i32 1
  %127 = load %struct.TYPE_2__*, %struct.TYPE_2__** %126, align 8
  %128 = load i32, i32* %11, align 4
  %129 = zext i32 %128 to i64
  %130 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %127, i64 %129
  %131 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  %133 = call i32 @memcpy(i8* %116, i32 %124, i32 %132)
  %134 = load %struct.dxbc*, %struct.dxbc** %4, align 8
  %135 = getelementptr inbounds %struct.dxbc, %struct.dxbc* %134, i32 0, i32 1
  %136 = load %struct.TYPE_2__*, %struct.TYPE_2__** %135, align 8
  %137 = load i32, i32* %11, align 4
  %138 = zext i32 %137 to i64
  %139 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %136, i64 %138
  %140 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 4
  %142 = load i8*, i8** %10, align 8
  %143 = sext i32 %141 to i64
  %144 = getelementptr inbounds i8, i8* %142, i64 %143
  store i8* %144, i8** %10, align 8
  br label %145

145:                                              ; preds = %97
  %146 = load i32, i32* %11, align 4
  %147 = add i32 %146, 1
  store i32 %147, i32* %11, align 4
  br label %91

148:                                              ; preds = %91
  %149 = load i32*, i32** %8, align 8
  %150 = bitcast i32* %149 to %struct.dxbc*
  %151 = call i32 (i8*, %struct.dxbc*, ...) @TRACE(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), %struct.dxbc* %150)
  %152 = load i32*, i32** %8, align 8
  %153 = load i32**, i32*** %5, align 8
  store i32* %152, i32** %153, align 8
  %154 = load i32, i32* @S_OK, align 4
  store i32 %154, i32* %3, align 4
  br label %155

155:                                              ; preds = %148, %48
  %156 = load i32, i32* %3, align 4
  ret i32 %156
}

declare dso_local i32 @TRACE(i8*, %struct.dxbc*, ...) #1

declare dso_local i32 @D3DCreateBlob(i32, i32**) #1

declare dso_local i64 @FAILED(i32) #1

declare dso_local i32 @WARN(i8*) #1

declare dso_local i8* @ID3D10Blob_GetBufferPointer(i32*) #1

declare dso_local i32 @write_dword(i8**, i32) #1

declare dso_local i32 @write_dword_unknown(i8**, i32) #1

declare dso_local i32 @memcpy(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
