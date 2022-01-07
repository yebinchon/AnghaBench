; ModuleID = '/home/carl/AnghaBench/poco/PDF/src/extr_hpdf_fontdef_tt.c_CheckCompositGryph.c'
source_filename = "/home/carl/AnghaBench/poco/PDF/src/extr_hpdf_fontdef_tt.c_CheckCompositGryph.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i32, %struct.TYPE_7__, i32, %struct.TYPE_6__ }
%struct.TYPE_7__ = type { i32*, i32*, i64 }
%struct.TYPE_6__ = type { i64 }

@.str = private unnamed_addr constant [21 x i8] c" CheckCompositGryph\0A\00", align 1
@HPDF_SEEK_SET = common dso_local global i32 0, align 4
@HPDF_OK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c" CheckCompositGryph composit font gid=%u\0A\00", align 1
@HPDF_SEEK_CUR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [55 x i8] c" gid=%d, num_of_contours=%d, flags=%d, glyph_index=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*, i64)* @CheckCompositGryph to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @CheckCompositGryph(%struct.TYPE_9__* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %4, align 8
  store i64 %1, i64* %5, align 8
  %17 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = sext i32 %19 to i64
  %21 = inttoptr i64 %20 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %21, %struct.TYPE_8__** %6, align 8
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = load i64, i64* %5, align 8
  %27 = getelementptr inbounds i32, i32* %25, i64 %26
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %7, align 4
  %29 = call i32 @HPDF_PTRACE(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 3
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %2
  %36 = load i32, i32* %7, align 4
  %37 = mul nsw i32 %36, 2
  store i32 %37, i32* %7, align 4
  br label %38

38:                                               ; preds = %35, %2
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 2
  %42 = load i64, i64* %41, align 8
  %43 = load i32, i32* %7, align 4
  %44 = sext i32 %43 to i64
  %45 = add nsw i64 %44, %42
  %46 = trunc i64 %45 to i32
  store i32 %46, i32* %7, align 4
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* %7, align 4
  %51 = load i32, i32* @HPDF_SEEK_SET, align 4
  %52 = call i32 @HPDF_Stream_Seek(i32 %49, i32 %50, i32 %51)
  store i32 %52, i32* %8, align 4
  %53 = load i32, i32* @HPDF_OK, align 4
  %54 = icmp ne i32 %52, %53
  br i1 %54, label %55, label %57

55:                                               ; preds = %38
  %56 = load i32, i32* %8, align 4
  store i32 %56, i32* %3, align 4
  br label %213

57:                                               ; preds = %38
  store i64 1, i64* %12, align 8
  store i64 8, i64* %13, align 8
  store i64 32, i64* %14, align 8
  store i64 64, i64* %15, align 8
  store i64 128, i64* %16, align 8
  %58 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @GetINT16(i32 %60, i32* %9)
  store i32 %61, i32* %8, align 4
  %62 = load i32, i32* @HPDF_OK, align 4
  %63 = icmp ne i32 %61, %62
  br i1 %63, label %64, label %66

64:                                               ; preds = %57
  %65 = load i32, i32* %8, align 4
  store i32 %65, i32* %3, align 4
  br label %213

66:                                               ; preds = %57
  %67 = load i32, i32* %9, align 4
  %68 = icmp ne i32 %67, -1
  br i1 %68, label %69, label %71

69:                                               ; preds = %66
  %70 = load i32, i32* @HPDF_OK, align 4
  store i32 %70, i32* %3, align 4
  br label %213

71:                                               ; preds = %66
  %72 = load i64, i64* %5, align 8
  %73 = inttoptr i64 %72 to i8*
  %74 = call i32 @HPDF_PTRACE(i8* %73)
  %75 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 8
  %78 = load i32, i32* @HPDF_SEEK_CUR, align 4
  %79 = call i32 @HPDF_Stream_Seek(i32 %77, i32 8, i32 %78)
  store i32 %79, i32* %8, align 4
  %80 = load i32, i32* @HPDF_OK, align 4
  %81 = icmp ne i32 %79, %80
  br i1 %81, label %82, label %84

82:                                               ; preds = %71
  %83 = load i32, i32* %8, align 4
  store i32 %83, i32* %3, align 4
  br label %213

84:                                               ; preds = %71
  br label %85

85:                                               ; preds = %205, %84
  %86 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %87 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 8
  %89 = call i32 @GetINT16(i32 %88, i32* %10)
  store i32 %89, i32* %8, align 4
  %90 = load i32, i32* @HPDF_OK, align 4
  %91 = icmp ne i32 %89, %90
  br i1 %91, label %92, label %94

92:                                               ; preds = %85
  %93 = load i32, i32* %8, align 4
  store i32 %93, i32* %3, align 4
  br label %213

94:                                               ; preds = %85
  %95 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %96 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 8
  %98 = call i32 @GetINT16(i32 %97, i32* %11)
  store i32 %98, i32* %8, align 4
  %99 = load i32, i32* @HPDF_OK, align 4
  %100 = icmp ne i32 %98, %99
  br i1 %100, label %101, label %103

101:                                              ; preds = %94
  %102 = load i32, i32* %8, align 4
  store i32 %102, i32* %3, align 4
  br label %213

103:                                              ; preds = %94
  %104 = load i32, i32* %10, align 4
  %105 = sext i32 %104 to i64
  %106 = and i64 %105, 1
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %119

108:                                              ; preds = %103
  %109 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %110 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %109, i32 0, i32 2
  %111 = load i32, i32* %110, align 8
  %112 = load i32, i32* @HPDF_SEEK_CUR, align 4
  %113 = call i32 @HPDF_Stream_Seek(i32 %111, i32 4, i32 %112)
  store i32 %113, i32* %8, align 4
  %114 = load i32, i32* @HPDF_OK, align 4
  %115 = icmp ne i32 %113, %114
  br i1 %115, label %116, label %118

116:                                              ; preds = %108
  %117 = load i32, i32* %8, align 4
  store i32 %117, i32* %3, align 4
  br label %213

118:                                              ; preds = %108
  br label %130

119:                                              ; preds = %103
  %120 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %121 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %120, i32 0, i32 2
  %122 = load i32, i32* %121, align 8
  %123 = load i32, i32* @HPDF_SEEK_CUR, align 4
  %124 = call i32 @HPDF_Stream_Seek(i32 %122, i32 2, i32 %123)
  store i32 %124, i32* %8, align 4
  %125 = load i32, i32* @HPDF_OK, align 4
  %126 = icmp ne i32 %124, %125
  br i1 %126, label %127, label %129

127:                                              ; preds = %119
  %128 = load i32, i32* %8, align 4
  store i32 %128, i32* %3, align 4
  br label %213

129:                                              ; preds = %119
  br label %130

130:                                              ; preds = %129, %118
  %131 = load i32, i32* %10, align 4
  %132 = sext i32 %131 to i64
  %133 = and i64 %132, 8
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %146

135:                                              ; preds = %130
  %136 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %137 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %136, i32 0, i32 2
  %138 = load i32, i32* %137, align 8
  %139 = load i32, i32* @HPDF_SEEK_CUR, align 4
  %140 = call i32 @HPDF_Stream_Seek(i32 %138, i32 2, i32 %139)
  store i32 %140, i32* %8, align 4
  %141 = load i32, i32* @HPDF_OK, align 4
  %142 = icmp ne i32 %140, %141
  br i1 %142, label %143, label %145

143:                                              ; preds = %135
  %144 = load i32, i32* %8, align 4
  store i32 %144, i32* %3, align 4
  br label %213

145:                                              ; preds = %135
  br label %180

146:                                              ; preds = %130
  %147 = load i32, i32* %10, align 4
  %148 = sext i32 %147 to i64
  %149 = and i64 %148, 64
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %151, label %162

151:                                              ; preds = %146
  %152 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %153 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %152, i32 0, i32 2
  %154 = load i32, i32* %153, align 8
  %155 = load i32, i32* @HPDF_SEEK_CUR, align 4
  %156 = call i32 @HPDF_Stream_Seek(i32 %154, i32 4, i32 %155)
  store i32 %156, i32* %8, align 4
  %157 = load i32, i32* @HPDF_OK, align 4
  %158 = icmp ne i32 %156, %157
  br i1 %158, label %159, label %161

159:                                              ; preds = %151
  %160 = load i32, i32* %8, align 4
  store i32 %160, i32* %3, align 4
  br label %213

161:                                              ; preds = %151
  br label %179

162:                                              ; preds = %146
  %163 = load i32, i32* %10, align 4
  %164 = sext i32 %163 to i64
  %165 = and i64 %164, 128
  %166 = icmp ne i64 %165, 0
  br i1 %166, label %167, label %178

167:                                              ; preds = %162
  %168 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %169 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %168, i32 0, i32 2
  %170 = load i32, i32* %169, align 8
  %171 = load i32, i32* @HPDF_SEEK_CUR, align 4
  %172 = call i32 @HPDF_Stream_Seek(i32 %170, i32 8, i32 %171)
  store i32 %172, i32* %8, align 4
  %173 = load i32, i32* @HPDF_OK, align 4
  %174 = icmp ne i32 %172, %173
  br i1 %174, label %175, label %177

175:                                              ; preds = %167
  %176 = load i32, i32* %8, align 4
  store i32 %176, i32* %3, align 4
  br label %213

177:                                              ; preds = %167
  br label %178

178:                                              ; preds = %177, %162
  br label %179

179:                                              ; preds = %178, %161
  br label %180

180:                                              ; preds = %179, %145
  %181 = load i32, i32* %11, align 4
  %182 = icmp sgt i32 %181, 0
  br i1 %182, label %183, label %197

183:                                              ; preds = %180
  %184 = load i32, i32* %11, align 4
  %185 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %186 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %185, i32 0, i32 0
  %187 = load i32, i32* %186, align 8
  %188 = icmp slt i32 %184, %187
  br i1 %188, label %189, label %197

189:                                              ; preds = %183
  %190 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %191 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %190, i32 0, i32 1
  %192 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %191, i32 0, i32 1
  %193 = load i32*, i32** %192, align 8
  %194 = load i32, i32* %11, align 4
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds i32, i32* %193, i64 %195
  store i32 1, i32* %196, align 4
  br label %197

197:                                              ; preds = %189, %183, %180
  %198 = load i64, i64* %5, align 8
  %199 = load i32, i32* %9, align 4
  %200 = load i32, i32* %10, align 4
  %201 = load i32, i32* %11, align 4
  %202 = sext i32 %201 to i64
  %203 = inttoptr i64 %202 to i8*
  %204 = call i32 @HPDF_PTRACE(i8* %203)
  br label %205

205:                                              ; preds = %197
  %206 = load i32, i32* %10, align 4
  %207 = sext i32 %206 to i64
  %208 = and i64 %207, 32
  %209 = icmp ne i64 %208, 0
  br i1 %209, label %85, label %210

210:                                              ; preds = %205
  br label %211

211:                                              ; preds = %210
  %212 = load i32, i32* @HPDF_OK, align 4
  store i32 %212, i32* %3, align 4
  br label %213

213:                                              ; preds = %211, %175, %159, %143, %127, %116, %101, %92, %82, %69, %64, %55
  %214 = load i32, i32* %3, align 4
  ret i32 %214
}

declare dso_local i32 @HPDF_PTRACE(i8*) #1

declare dso_local i32 @HPDF_Stream_Seek(i32, i32, i32) #1

declare dso_local i32 @GetINT16(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
