; ModuleID = '/home/carl/AnghaBench/poco/PDF/src/extr_hpdf_fontdef_tt.c_RecreateGLYF.c'
source_filename = "/home/carl/AnghaBench/poco/PDF/src/extr_hpdf_fontdef_tt.c_RecreateGLYF.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32 }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_11__ = type { i64, %struct.TYPE_10__, i32, %struct.TYPE_9__ }
%struct.TYPE_10__ = type { i64 }
%struct.TYPE_9__ = type { i32*, i32*, i64 }

@.str = private unnamed_addr constant [15 x i8] c" RecreateGLYF\0A\00", align 1
@HPDF_STREAM_BUF_SIZ = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c" RecreateGLYF[%u] move from [%u] to [%u]\0A\00", align 1
@HPDF_SEEK_SET = common dso_local global i32 0, align 4
@HPDF_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_13__*, i32*, %struct.TYPE_12__*)* @RecreateGLYF to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @RecreateGLYF(%struct.TYPE_13__* %0, i32* %1, %struct.TYPE_12__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_13__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_12__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_11__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %5, align 8
  store i32* %1, i32** %6, align 8
  store %struct.TYPE_12__* %2, %struct.TYPE_12__** %7, align 8
  store i32 0, i32* %8, align 4
  %19 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %20 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %9, align 4
  %22 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = sext i32 %24 to i64
  %26 = inttoptr i64 %25 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %26, %struct.TYPE_11__** %10, align 8
  %27 = call i32 @HPDF_PTRACE(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  store i64 0, i64* %12, align 8
  br label %28

28:                                               ; preds = %190, %3
  %29 = load i64, i64* %12, align 8
  %30 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %31 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp ult i64 %29, %32
  br i1 %33, label %34, label %193

34:                                               ; preds = %28
  %35 = load i32, i32* @HPDF_STREAM_BUF_SIZ, align 4
  %36 = zext i32 %35 to i64
  %37 = call i8* @llvm.stacksave()
  store i8* %37, i8** %13, align 8
  %38 = alloca i32, i64 %36, align 16
  store i64 %36, i64* %14, align 8
  %39 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %40 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %39, i32 0, i32 3
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %40, i32 0, i32 0
  %42 = load i32*, i32** %41, align 8
  %43 = load i64, i64* %12, align 8
  %44 = getelementptr inbounds i32, i32* %42, i64 %43
  %45 = load i32, i32* %44, align 4
  %46 = icmp eq i32 %45, 1
  br i1 %46, label %47, label %180

47:                                               ; preds = %34
  %48 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %49 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %48, i32 0, i32 3
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %49, i32 0, i32 1
  %51 = load i32*, i32** %50, align 8
  %52 = load i64, i64* %12, align 8
  %53 = getelementptr inbounds i32, i32* %51, i64 %52
  %54 = load i32, i32* %53, align 4
  store i32 %54, i32* %15, align 4
  %55 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %56 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %55, i32 0, i32 3
  %57 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %56, i32 0, i32 1
  %58 = load i32*, i32** %57, align 8
  %59 = load i64, i64* %12, align 8
  %60 = add i64 %59, 1
  %61 = getelementptr inbounds i32, i32* %58, i64 %60
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* %15, align 4
  %64 = sub nsw i32 %62, %63
  store i32 %64, i32* %16, align 4
  %65 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %66 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* %9, align 4
  %69 = sub nsw i32 %67, %68
  %70 = load i32*, i32** %6, align 8
  %71 = load i64, i64* %12, align 8
  %72 = getelementptr inbounds i32, i32* %70, i64 %71
  store i32 %69, i32* %72, align 4
  %73 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %74 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = icmp eq i64 %76, 0
  br i1 %77, label %78, label %86

78:                                               ; preds = %47
  %79 = load i32*, i32** %6, align 8
  %80 = load i64, i64* %12, align 8
  %81 = getelementptr inbounds i32, i32* %79, i64 %80
  %82 = load i32, i32* %81, align 4
  %83 = sdiv i32 %82, 2
  store i32 %83, i32* %81, align 4
  %84 = load i32, i32* %16, align 4
  %85 = mul nsw i32 %84, 2
  store i32 %85, i32* %16, align 4
  br label %86

86:                                               ; preds = %78, %47
  %87 = load i64, i64* %12, align 8
  %88 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %89 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %88, i32 0, i32 3
  %90 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %89, i32 0, i32 2
  %91 = load i64, i64* %90, align 8
  %92 = trunc i64 %91 to i32
  %93 = load i32, i32* %15, align 4
  %94 = add nsw i32 %92, %93
  %95 = load i32*, i32** %6, align 8
  %96 = load i64, i64* %12, align 8
  %97 = getelementptr inbounds i32, i32* %95, i64 %96
  %98 = load i32, i32* %97, align 4
  %99 = sext i32 %98 to i64
  %100 = inttoptr i64 %99 to i8*
  %101 = call i32 @HPDF_PTRACE(i8* %100)
  %102 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %103 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %102, i32 0, i32 1
  %104 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = icmp eq i64 %105, 0
  br i1 %106, label %107, label %110

107:                                              ; preds = %86
  %108 = load i32, i32* %15, align 4
  %109 = mul nsw i32 %108, 2
  store i32 %109, i32* %15, align 4
  br label %110

110:                                              ; preds = %107, %86
  %111 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %112 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %111, i32 0, i32 3
  %113 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %112, i32 0, i32 2
  %114 = load i64, i64* %113, align 8
  %115 = load i32, i32* %15, align 4
  %116 = sext i32 %115 to i64
  %117 = add nsw i64 %116, %114
  %118 = trunc i64 %117 to i32
  store i32 %118, i32* %15, align 4
  %119 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %120 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %119, i32 0, i32 2
  %121 = load i32, i32* %120, align 8
  %122 = load i32, i32* %15, align 4
  %123 = load i32, i32* @HPDF_SEEK_SET, align 4
  %124 = call i32 @HPDF_Stream_Seek(i32 %121, i32 %122, i32 %123)
  store i32 %124, i32* %11, align 4
  %125 = load i32, i32* @HPDF_OK, align 4
  %126 = icmp ne i32 %124, %125
  br i1 %126, label %127, label %129

127:                                              ; preds = %110
  %128 = load i32, i32* %11, align 4
  store i32 %128, i32* %4, align 4
  store i32 1, i32* %17, align 4
  br label %186

129:                                              ; preds = %110
  br label %130

130:                                              ; preds = %161, %129
  %131 = load i32, i32* %16, align 4
  %132 = icmp sgt i32 %131, 0
  br i1 %132, label %133, label %165

133:                                              ; preds = %130
  %134 = load i32, i32* %16, align 4
  %135 = load i32, i32* @HPDF_STREAM_BUF_SIZ, align 4
  %136 = icmp sgt i32 %134, %135
  br i1 %136, label %137, label %139

137:                                              ; preds = %133
  %138 = load i32, i32* @HPDF_STREAM_BUF_SIZ, align 4
  br label %141

139:                                              ; preds = %133
  %140 = load i32, i32* %16, align 4
  br label %141

141:                                              ; preds = %139, %137
  %142 = phi i32 [ %138, %137 ], [ %140, %139 ]
  store i32 %142, i32* %18, align 4
  %143 = load i32, i32* %18, align 4
  %144 = call i32 @HPDF_MemSet(i32* %38, i32 0, i32 %143)
  %145 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %146 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %145, i32 0, i32 2
  %147 = load i32, i32* %146, align 8
  %148 = call i32 @HPDF_Stream_Read(i32 %147, i32* %38, i32* %18)
  store i32 %148, i32* %11, align 4
  %149 = load i32, i32* @HPDF_OK, align 4
  %150 = icmp ne i32 %148, %149
  br i1 %150, label %151, label %153

151:                                              ; preds = %141
  %152 = load i32, i32* %11, align 4
  store i32 %152, i32* %4, align 4
  store i32 1, i32* %17, align 4
  br label %186

153:                                              ; preds = %141
  %154 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %155 = load i32, i32* %18, align 4
  %156 = call i32 @HPDF_Stream_Write(%struct.TYPE_12__* %154, i32* %38, i32 %155)
  store i32 %156, i32* %11, align 4
  %157 = load i32, i32* @HPDF_OK, align 4
  %158 = icmp ne i32 %156, %157
  br i1 %158, label %159, label %161

159:                                              ; preds = %153
  %160 = load i32, i32* %11, align 4
  store i32 %160, i32* %4, align 4
  store i32 1, i32* %17, align 4
  br label %186

161:                                              ; preds = %153
  %162 = load i32, i32* %18, align 4
  %163 = load i32, i32* %16, align 4
  %164 = sub nsw i32 %163, %162
  store i32 %164, i32* %16, align 4
  br label %130

165:                                              ; preds = %130
  %166 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %167 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 4
  %169 = load i32, i32* %9, align 4
  %170 = sub nsw i32 %168, %169
  store i32 %170, i32* %8, align 4
  %171 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %172 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %171, i32 0, i32 1
  %173 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %172, i32 0, i32 0
  %174 = load i64, i64* %173, align 8
  %175 = icmp eq i64 %174, 0
  br i1 %175, label %176, label %179

176:                                              ; preds = %165
  %177 = load i32, i32* %8, align 4
  %178 = sdiv i32 %177, 2
  store i32 %178, i32* %8, align 4
  br label %179

179:                                              ; preds = %176, %165
  br label %185

180:                                              ; preds = %34
  %181 = load i32, i32* %8, align 4
  %182 = load i32*, i32** %6, align 8
  %183 = load i64, i64* %12, align 8
  %184 = getelementptr inbounds i32, i32* %182, i64 %183
  store i32 %181, i32* %184, align 4
  br label %185

185:                                              ; preds = %180, %179
  store i32 0, i32* %17, align 4
  br label %186

186:                                              ; preds = %185, %159, %151, %127
  %187 = load i8*, i8** %13, align 8
  call void @llvm.stackrestore(i8* %187)
  %188 = load i32, i32* %17, align 4
  switch i32 %188, label %203 [
    i32 0, label %189
    i32 1, label %201
  ]

189:                                              ; preds = %186
  br label %190

190:                                              ; preds = %189
  %191 = load i64, i64* %12, align 8
  %192 = add i64 %191, 1
  store i64 %192, i64* %12, align 8
  br label %28

193:                                              ; preds = %28
  %194 = load i32, i32* %8, align 4
  %195 = load i32*, i32** %6, align 8
  %196 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %197 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %196, i32 0, i32 0
  %198 = load i64, i64* %197, align 8
  %199 = getelementptr inbounds i32, i32* %195, i64 %198
  store i32 %194, i32* %199, align 4
  %200 = load i32, i32* @HPDF_OK, align 4
  store i32 %200, i32* %4, align 4
  br label %201

201:                                              ; preds = %193, %186
  %202 = load i32, i32* %4, align 4
  ret i32 %202

203:                                              ; preds = %186
  unreachable
}

declare dso_local i32 @HPDF_PTRACE(i8*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @HPDF_Stream_Seek(i32, i32, i32) #1

declare dso_local i32 @HPDF_MemSet(i32*, i32, i32) #1

declare dso_local i32 @HPDF_Stream_Read(i32, i32*, i32*) #1

declare dso_local i32 @HPDF_Stream_Write(%struct.TYPE_12__*, i32*, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
