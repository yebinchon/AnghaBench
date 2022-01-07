; ModuleID = '/home/carl/AnghaBench/reactos/dll/3rdparty/libpng/extr_pngtrans.c_png_do_strip_channel.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/3rdparty/libpng/extr_pngtrans.c_png_do_strip_channel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i32, i32, i32, i64 }

@PNG_COLOR_TYPE_GRAY_ALPHA = common dso_local global i64 0, align 8
@PNG_COLOR_TYPE_GRAY = common dso_local global i64 0, align 8
@PNG_COLOR_TYPE_RGB_ALPHA = common dso_local global i64 0, align 8
@PNG_COLOR_TYPE_RGB = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @png_do_strip_channel(%struct.TYPE_3__* %0, i8** %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8**, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i8**, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store i8** %1, i8*** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load i8**, i8*** %5, align 8
  store i8** %10, i8*** %7, align 8
  %11 = load i8**, i8*** %5, align 8
  store i8** %11, i8*** %8, align 8
  %12 = load i8**, i8*** %5, align 8
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = getelementptr inbounds i8*, i8** %12, i64 %15
  store i8** %16, i8*** %9, align 8
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = icmp eq i32 %19, 2
  br i1 %20, label %21, label %103

21:                                               ; preds = %3
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = icmp eq i32 %24, 8
  br i1 %25, label %26, label %52

26:                                               ; preds = %21
  %27 = load i32, i32* %6, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %26
  %30 = load i8**, i8*** %7, align 8
  %31 = getelementptr inbounds i8*, i8** %30, i32 1
  store i8** %31, i8*** %7, align 8
  br label %37

32:                                               ; preds = %26
  %33 = load i8**, i8*** %7, align 8
  %34 = getelementptr inbounds i8*, i8** %33, i64 2
  store i8** %34, i8*** %7, align 8
  %35 = load i8**, i8*** %8, align 8
  %36 = getelementptr inbounds i8*, i8** %35, i32 1
  store i8** %36, i8*** %8, align 8
  br label %37

37:                                               ; preds = %32, %29
  br label %38

38:                                               ; preds = %42, %37
  %39 = load i8**, i8*** %7, align 8
  %40 = load i8**, i8*** %9, align 8
  %41 = icmp ult i8** %39, %40
  br i1 %41, label %42, label %49

42:                                               ; preds = %38
  %43 = load i8**, i8*** %7, align 8
  %44 = load i8*, i8** %43, align 8
  %45 = load i8**, i8*** %8, align 8
  %46 = getelementptr inbounds i8*, i8** %45, i32 1
  store i8** %46, i8*** %8, align 8
  store i8* %44, i8** %45, align 8
  %47 = load i8**, i8*** %7, align 8
  %48 = getelementptr inbounds i8*, i8** %47, i64 2
  store i8** %48, i8*** %7, align 8
  br label %38

49:                                               ; preds = %38
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 3
  store i32 8, i32* %51, align 8
  br label %90

52:                                               ; preds = %21
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 4
  %56 = icmp eq i32 %55, 16
  br i1 %56, label %57, label %88

57:                                               ; preds = %52
  %58 = load i32, i32* %6, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %57
  %61 = load i8**, i8*** %7, align 8
  %62 = getelementptr inbounds i8*, i8** %61, i64 2
  store i8** %62, i8*** %7, align 8
  br label %68

63:                                               ; preds = %57
  %64 = load i8**, i8*** %7, align 8
  %65 = getelementptr inbounds i8*, i8** %64, i64 4
  store i8** %65, i8*** %7, align 8
  %66 = load i8**, i8*** %8, align 8
  %67 = getelementptr inbounds i8*, i8** %66, i64 2
  store i8** %67, i8*** %8, align 8
  br label %68

68:                                               ; preds = %63, %60
  br label %69

69:                                               ; preds = %73, %68
  %70 = load i8**, i8*** %7, align 8
  %71 = load i8**, i8*** %9, align 8
  %72 = icmp ult i8** %70, %71
  br i1 %72, label %73, label %85

73:                                               ; preds = %69
  %74 = load i8**, i8*** %7, align 8
  %75 = getelementptr inbounds i8*, i8** %74, i32 1
  store i8** %75, i8*** %7, align 8
  %76 = load i8*, i8** %74, align 8
  %77 = load i8**, i8*** %8, align 8
  %78 = getelementptr inbounds i8*, i8** %77, i32 1
  store i8** %78, i8*** %8, align 8
  store i8* %76, i8** %77, align 8
  %79 = load i8**, i8*** %7, align 8
  %80 = load i8*, i8** %79, align 8
  %81 = load i8**, i8*** %8, align 8
  %82 = getelementptr inbounds i8*, i8** %81, i32 1
  store i8** %82, i8*** %8, align 8
  store i8* %80, i8** %81, align 8
  %83 = load i8**, i8*** %7, align 8
  %84 = getelementptr inbounds i8*, i8** %83, i64 3
  store i8** %84, i8*** %7, align 8
  br label %69

85:                                               ; preds = %69
  %86 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %86, i32 0, i32 3
  store i32 16, i32* %87, align 8
  br label %89

88:                                               ; preds = %52
  br label %231

89:                                               ; preds = %85
  br label %90

90:                                               ; preds = %89, %49
  %91 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %92 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %91, i32 0, i32 1
  store i32 1, i32* %92, align 8
  %93 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %94 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %93, i32 0, i32 4
  %95 = load i64, i64* %94, align 8
  %96 = load i64, i64* @PNG_COLOR_TYPE_GRAY_ALPHA, align 8
  %97 = icmp eq i64 %95, %96
  br i1 %97, label %98, label %102

98:                                               ; preds = %90
  %99 = load i64, i64* @PNG_COLOR_TYPE_GRAY, align 8
  %100 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %101 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %100, i32 0, i32 4
  store i64 %99, i64* %101, align 8
  br label %102

102:                                              ; preds = %98, %90
  br label %222

103:                                              ; preds = %3
  %104 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %105 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 8
  %107 = icmp eq i32 %106, 4
  br i1 %107, label %108, label %220

108:                                              ; preds = %103
  %109 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %110 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %109, i32 0, i32 2
  %111 = load i32, i32* %110, align 4
  %112 = icmp eq i32 %111, 8
  br i1 %112, label %113, label %149

113:                                              ; preds = %108
  %114 = load i32, i32* %6, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %119

116:                                              ; preds = %113
  %117 = load i8**, i8*** %7, align 8
  %118 = getelementptr inbounds i8*, i8** %117, i32 1
  store i8** %118, i8*** %7, align 8
  br label %124

119:                                              ; preds = %113
  %120 = load i8**, i8*** %7, align 8
  %121 = getelementptr inbounds i8*, i8** %120, i64 4
  store i8** %121, i8*** %7, align 8
  %122 = load i8**, i8*** %8, align 8
  %123 = getelementptr inbounds i8*, i8** %122, i64 3
  store i8** %123, i8*** %8, align 8
  br label %124

124:                                              ; preds = %119, %116
  br label %125

125:                                              ; preds = %129, %124
  %126 = load i8**, i8*** %7, align 8
  %127 = load i8**, i8*** %9, align 8
  %128 = icmp ult i8** %126, %127
  br i1 %128, label %129, label %146

129:                                              ; preds = %125
  %130 = load i8**, i8*** %7, align 8
  %131 = getelementptr inbounds i8*, i8** %130, i32 1
  store i8** %131, i8*** %7, align 8
  %132 = load i8*, i8** %130, align 8
  %133 = load i8**, i8*** %8, align 8
  %134 = getelementptr inbounds i8*, i8** %133, i32 1
  store i8** %134, i8*** %8, align 8
  store i8* %132, i8** %133, align 8
  %135 = load i8**, i8*** %7, align 8
  %136 = getelementptr inbounds i8*, i8** %135, i32 1
  store i8** %136, i8*** %7, align 8
  %137 = load i8*, i8** %135, align 8
  %138 = load i8**, i8*** %8, align 8
  %139 = getelementptr inbounds i8*, i8** %138, i32 1
  store i8** %139, i8*** %8, align 8
  store i8* %137, i8** %138, align 8
  %140 = load i8**, i8*** %7, align 8
  %141 = load i8*, i8** %140, align 8
  %142 = load i8**, i8*** %8, align 8
  %143 = getelementptr inbounds i8*, i8** %142, i32 1
  store i8** %143, i8*** %8, align 8
  store i8* %141, i8** %142, align 8
  %144 = load i8**, i8*** %7, align 8
  %145 = getelementptr inbounds i8*, i8** %144, i64 2
  store i8** %145, i8*** %7, align 8
  br label %125

146:                                              ; preds = %125
  %147 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %148 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %147, i32 0, i32 3
  store i32 24, i32* %148, align 8
  br label %207

149:                                              ; preds = %108
  %150 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %151 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %150, i32 0, i32 2
  %152 = load i32, i32* %151, align 4
  %153 = icmp eq i32 %152, 16
  br i1 %153, label %154, label %205

154:                                              ; preds = %149
  %155 = load i32, i32* %6, align 4
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %160

157:                                              ; preds = %154
  %158 = load i8**, i8*** %7, align 8
  %159 = getelementptr inbounds i8*, i8** %158, i64 2
  store i8** %159, i8*** %7, align 8
  br label %165

160:                                              ; preds = %154
  %161 = load i8**, i8*** %7, align 8
  %162 = getelementptr inbounds i8*, i8** %161, i64 8
  store i8** %162, i8*** %7, align 8
  %163 = load i8**, i8*** %8, align 8
  %164 = getelementptr inbounds i8*, i8** %163, i64 6
  store i8** %164, i8*** %8, align 8
  br label %165

165:                                              ; preds = %160, %157
  br label %166

166:                                              ; preds = %170, %165
  %167 = load i8**, i8*** %7, align 8
  %168 = load i8**, i8*** %9, align 8
  %169 = icmp ult i8** %167, %168
  br i1 %169, label %170, label %202

170:                                              ; preds = %166
  %171 = load i8**, i8*** %7, align 8
  %172 = getelementptr inbounds i8*, i8** %171, i32 1
  store i8** %172, i8*** %7, align 8
  %173 = load i8*, i8** %171, align 8
  %174 = load i8**, i8*** %8, align 8
  %175 = getelementptr inbounds i8*, i8** %174, i32 1
  store i8** %175, i8*** %8, align 8
  store i8* %173, i8** %174, align 8
  %176 = load i8**, i8*** %7, align 8
  %177 = getelementptr inbounds i8*, i8** %176, i32 1
  store i8** %177, i8*** %7, align 8
  %178 = load i8*, i8** %176, align 8
  %179 = load i8**, i8*** %8, align 8
  %180 = getelementptr inbounds i8*, i8** %179, i32 1
  store i8** %180, i8*** %8, align 8
  store i8* %178, i8** %179, align 8
  %181 = load i8**, i8*** %7, align 8
  %182 = getelementptr inbounds i8*, i8** %181, i32 1
  store i8** %182, i8*** %7, align 8
  %183 = load i8*, i8** %181, align 8
  %184 = load i8**, i8*** %8, align 8
  %185 = getelementptr inbounds i8*, i8** %184, i32 1
  store i8** %185, i8*** %8, align 8
  store i8* %183, i8** %184, align 8
  %186 = load i8**, i8*** %7, align 8
  %187 = getelementptr inbounds i8*, i8** %186, i32 1
  store i8** %187, i8*** %7, align 8
  %188 = load i8*, i8** %186, align 8
  %189 = load i8**, i8*** %8, align 8
  %190 = getelementptr inbounds i8*, i8** %189, i32 1
  store i8** %190, i8*** %8, align 8
  store i8* %188, i8** %189, align 8
  %191 = load i8**, i8*** %7, align 8
  %192 = getelementptr inbounds i8*, i8** %191, i32 1
  store i8** %192, i8*** %7, align 8
  %193 = load i8*, i8** %191, align 8
  %194 = load i8**, i8*** %8, align 8
  %195 = getelementptr inbounds i8*, i8** %194, i32 1
  store i8** %195, i8*** %8, align 8
  store i8* %193, i8** %194, align 8
  %196 = load i8**, i8*** %7, align 8
  %197 = load i8*, i8** %196, align 8
  %198 = load i8**, i8*** %8, align 8
  %199 = getelementptr inbounds i8*, i8** %198, i32 1
  store i8** %199, i8*** %8, align 8
  store i8* %197, i8** %198, align 8
  %200 = load i8**, i8*** %7, align 8
  %201 = getelementptr inbounds i8*, i8** %200, i64 3
  store i8** %201, i8*** %7, align 8
  br label %166

202:                                              ; preds = %166
  %203 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %204 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %203, i32 0, i32 3
  store i32 48, i32* %204, align 8
  br label %206

205:                                              ; preds = %149
  br label %231

206:                                              ; preds = %202
  br label %207

207:                                              ; preds = %206, %146
  %208 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %209 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %208, i32 0, i32 1
  store i32 3, i32* %209, align 8
  %210 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %211 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %210, i32 0, i32 4
  %212 = load i64, i64* %211, align 8
  %213 = load i64, i64* @PNG_COLOR_TYPE_RGB_ALPHA, align 8
  %214 = icmp eq i64 %212, %213
  br i1 %214, label %215, label %219

215:                                              ; preds = %207
  %216 = load i64, i64* @PNG_COLOR_TYPE_RGB, align 8
  %217 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %218 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %217, i32 0, i32 4
  store i64 %216, i64* %218, align 8
  br label %219

219:                                              ; preds = %215, %207
  br label %221

220:                                              ; preds = %103
  br label %231

221:                                              ; preds = %219
  br label %222

222:                                              ; preds = %221, %102
  %223 = load i8**, i8*** %8, align 8
  %224 = load i8**, i8*** %5, align 8
  %225 = ptrtoint i8** %223 to i64
  %226 = ptrtoint i8** %224 to i64
  %227 = sub i64 %225, %226
  %228 = sdiv exact i64 %227, 8
  %229 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %230 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %229, i32 0, i32 0
  store i64 %228, i64* %230, align 8
  br label %231

231:                                              ; preds = %222, %220, %205, %88
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
