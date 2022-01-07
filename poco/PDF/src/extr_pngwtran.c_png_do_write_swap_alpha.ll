; ModuleID = '/home/carl/AnghaBench/poco/PDF/src/extr_pngwtran.c_png_do_write_swap_alpha.c'
source_filename = "/home/carl/AnghaBench/poco/PDF/src/extr_pngwtran.c_png_do_write_swap_alpha.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i32, i64 }

@.str = private unnamed_addr constant [28 x i8] c"in png_do_write_swap_alpha\0A\00", align 1
@PNG_COLOR_TYPE_RGB_ALPHA = common dso_local global i64 0, align 8
@PNG_COLOR_TYPE_GRAY_ALPHA = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @png_do_write_swap_alpha(%struct.TYPE_3__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca [2 x i8*], align 16
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca [2 x i8*], align 16
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  store i32* %1, i32** %4, align 8
  %25 = call i32 @png_debug(i32 1, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @PNG_COLOR_TYPE_RGB_ALPHA, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %141

31:                                               ; preds = %2
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = icmp eq i32 %34, 8
  br i1 %35, label %36, label %74

36:                                               ; preds = %31
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 2
  %39 = load i64, i64* %38, align 8
  store i64 %39, i64* %8, align 8
  store i64 0, i64* %7, align 8
  %40 = load i32*, i32** %4, align 8
  store i32* %40, i32** %6, align 8
  store i32* %40, i32** %5, align 8
  br label %41

41:                                               ; preds = %70, %36
  %42 = load i64, i64* %7, align 8
  %43 = load i64, i64* %8, align 8
  %44 = icmp slt i64 %42, %43
  br i1 %44, label %45, label %73

45:                                               ; preds = %41
  %46 = load i32*, i32** %5, align 8
  %47 = getelementptr inbounds i32, i32* %46, i32 1
  store i32* %47, i32** %5, align 8
  %48 = load i32, i32* %46, align 4
  %49 = sext i32 %48 to i64
  %50 = inttoptr i64 %49 to i8*
  store i8* %50, i8** %9, align 8
  %51 = load i32*, i32** %5, align 8
  %52 = getelementptr inbounds i32, i32* %51, i32 1
  store i32* %52, i32** %5, align 8
  %53 = load i32, i32* %51, align 4
  %54 = load i32*, i32** %6, align 8
  %55 = getelementptr inbounds i32, i32* %54, i32 1
  store i32* %55, i32** %6, align 8
  store i32 %53, i32* %54, align 4
  %56 = load i32*, i32** %5, align 8
  %57 = getelementptr inbounds i32, i32* %56, i32 1
  store i32* %57, i32** %5, align 8
  %58 = load i32, i32* %56, align 4
  %59 = load i32*, i32** %6, align 8
  %60 = getelementptr inbounds i32, i32* %59, i32 1
  store i32* %60, i32** %6, align 8
  store i32 %58, i32* %59, align 4
  %61 = load i32*, i32** %5, align 8
  %62 = getelementptr inbounds i32, i32* %61, i32 1
  store i32* %62, i32** %5, align 8
  %63 = load i32, i32* %61, align 4
  %64 = load i32*, i32** %6, align 8
  %65 = getelementptr inbounds i32, i32* %64, i32 1
  store i32* %65, i32** %6, align 8
  store i32 %63, i32* %64, align 4
  %66 = load i8*, i8** %9, align 8
  %67 = ptrtoint i8* %66 to i32
  %68 = load i32*, i32** %6, align 8
  %69 = getelementptr inbounds i32, i32* %68, i32 1
  store i32* %69, i32** %6, align 8
  store i32 %67, i32* %68, align 4
  br label %70

70:                                               ; preds = %45
  %71 = load i64, i64* %7, align 8
  %72 = add nsw i64 %71, 1
  store i64 %72, i64* %7, align 8
  br label %41

73:                                               ; preds = %41
  br label %140

74:                                               ; preds = %31
  %75 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 2
  %77 = load i64, i64* %76, align 8
  store i64 %77, i64* %13, align 8
  store i64 0, i64* %12, align 8
  %78 = load i32*, i32** %4, align 8
  store i32* %78, i32** %11, align 8
  store i32* %78, i32** %10, align 8
  br label %79

79:                                               ; preds = %136, %74
  %80 = load i64, i64* %12, align 8
  %81 = load i64, i64* %13, align 8
  %82 = icmp slt i64 %80, %81
  br i1 %82, label %83, label %139

83:                                               ; preds = %79
  %84 = load i32*, i32** %10, align 8
  %85 = getelementptr inbounds i32, i32* %84, i32 1
  store i32* %85, i32** %10, align 8
  %86 = load i32, i32* %84, align 4
  %87 = sext i32 %86 to i64
  %88 = inttoptr i64 %87 to i8*
  %89 = getelementptr inbounds [2 x i8*], [2 x i8*]* %14, i64 0, i64 0
  store i8* %88, i8** %89, align 16
  %90 = load i32*, i32** %10, align 8
  %91 = getelementptr inbounds i32, i32* %90, i32 1
  store i32* %91, i32** %10, align 8
  %92 = load i32, i32* %90, align 4
  %93 = sext i32 %92 to i64
  %94 = inttoptr i64 %93 to i8*
  %95 = getelementptr inbounds [2 x i8*], [2 x i8*]* %14, i64 0, i64 1
  store i8* %94, i8** %95, align 8
  %96 = load i32*, i32** %10, align 8
  %97 = getelementptr inbounds i32, i32* %96, i32 1
  store i32* %97, i32** %10, align 8
  %98 = load i32, i32* %96, align 4
  %99 = load i32*, i32** %11, align 8
  %100 = getelementptr inbounds i32, i32* %99, i32 1
  store i32* %100, i32** %11, align 8
  store i32 %98, i32* %99, align 4
  %101 = load i32*, i32** %10, align 8
  %102 = getelementptr inbounds i32, i32* %101, i32 1
  store i32* %102, i32** %10, align 8
  %103 = load i32, i32* %101, align 4
  %104 = load i32*, i32** %11, align 8
  %105 = getelementptr inbounds i32, i32* %104, i32 1
  store i32* %105, i32** %11, align 8
  store i32 %103, i32* %104, align 4
  %106 = load i32*, i32** %10, align 8
  %107 = getelementptr inbounds i32, i32* %106, i32 1
  store i32* %107, i32** %10, align 8
  %108 = load i32, i32* %106, align 4
  %109 = load i32*, i32** %11, align 8
  %110 = getelementptr inbounds i32, i32* %109, i32 1
  store i32* %110, i32** %11, align 8
  store i32 %108, i32* %109, align 4
  %111 = load i32*, i32** %10, align 8
  %112 = getelementptr inbounds i32, i32* %111, i32 1
  store i32* %112, i32** %10, align 8
  %113 = load i32, i32* %111, align 4
  %114 = load i32*, i32** %11, align 8
  %115 = getelementptr inbounds i32, i32* %114, i32 1
  store i32* %115, i32** %11, align 8
  store i32 %113, i32* %114, align 4
  %116 = load i32*, i32** %10, align 8
  %117 = getelementptr inbounds i32, i32* %116, i32 1
  store i32* %117, i32** %10, align 8
  %118 = load i32, i32* %116, align 4
  %119 = load i32*, i32** %11, align 8
  %120 = getelementptr inbounds i32, i32* %119, i32 1
  store i32* %120, i32** %11, align 8
  store i32 %118, i32* %119, align 4
  %121 = load i32*, i32** %10, align 8
  %122 = getelementptr inbounds i32, i32* %121, i32 1
  store i32* %122, i32** %10, align 8
  %123 = load i32, i32* %121, align 4
  %124 = load i32*, i32** %11, align 8
  %125 = getelementptr inbounds i32, i32* %124, i32 1
  store i32* %125, i32** %11, align 8
  store i32 %123, i32* %124, align 4
  %126 = getelementptr inbounds [2 x i8*], [2 x i8*]* %14, i64 0, i64 0
  %127 = load i8*, i8** %126, align 16
  %128 = ptrtoint i8* %127 to i32
  %129 = load i32*, i32** %11, align 8
  %130 = getelementptr inbounds i32, i32* %129, i32 1
  store i32* %130, i32** %11, align 8
  store i32 %128, i32* %129, align 4
  %131 = getelementptr inbounds [2 x i8*], [2 x i8*]* %14, i64 0, i64 1
  %132 = load i8*, i8** %131, align 8
  %133 = ptrtoint i8* %132 to i32
  %134 = load i32*, i32** %11, align 8
  %135 = getelementptr inbounds i32, i32* %134, i32 1
  store i32* %135, i32** %11, align 8
  store i32 %133, i32* %134, align 4
  br label %136

136:                                              ; preds = %83
  %137 = load i64, i64* %12, align 8
  %138 = add nsw i64 %137, 1
  store i64 %138, i64* %12, align 8
  br label %79

139:                                              ; preds = %79
  br label %140

140:                                              ; preds = %139, %73
  br label %228

141:                                              ; preds = %2
  %142 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %143 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %142, i32 0, i32 0
  %144 = load i64, i64* %143, align 8
  %145 = load i64, i64* @PNG_COLOR_TYPE_GRAY_ALPHA, align 8
  %146 = icmp eq i64 %144, %145
  br i1 %146, label %147, label %227

147:                                              ; preds = %141
  %148 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %149 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %148, i32 0, i32 1
  %150 = load i32, i32* %149, align 8
  %151 = icmp eq i32 %150, 8
  br i1 %151, label %152, label %180

152:                                              ; preds = %147
  %153 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %154 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %153, i32 0, i32 2
  %155 = load i64, i64* %154, align 8
  store i64 %155, i64* %18, align 8
  store i64 0, i64* %17, align 8
  %156 = load i32*, i32** %4, align 8
  store i32* %156, i32** %16, align 8
  store i32* %156, i32** %15, align 8
  br label %157

157:                                              ; preds = %176, %152
  %158 = load i64, i64* %17, align 8
  %159 = load i64, i64* %18, align 8
  %160 = icmp slt i64 %158, %159
  br i1 %160, label %161, label %179

161:                                              ; preds = %157
  %162 = load i32*, i32** %15, align 8
  %163 = getelementptr inbounds i32, i32* %162, i32 1
  store i32* %163, i32** %15, align 8
  %164 = load i32, i32* %162, align 4
  %165 = sext i32 %164 to i64
  %166 = inttoptr i64 %165 to i8*
  store i8* %166, i8** %19, align 8
  %167 = load i32*, i32** %15, align 8
  %168 = getelementptr inbounds i32, i32* %167, i32 1
  store i32* %168, i32** %15, align 8
  %169 = load i32, i32* %167, align 4
  %170 = load i32*, i32** %16, align 8
  %171 = getelementptr inbounds i32, i32* %170, i32 1
  store i32* %171, i32** %16, align 8
  store i32 %169, i32* %170, align 4
  %172 = load i8*, i8** %19, align 8
  %173 = ptrtoint i8* %172 to i32
  %174 = load i32*, i32** %16, align 8
  %175 = getelementptr inbounds i32, i32* %174, i32 1
  store i32* %175, i32** %16, align 8
  store i32 %173, i32* %174, align 4
  br label %176

176:                                              ; preds = %161
  %177 = load i64, i64* %17, align 8
  %178 = add nsw i64 %177, 1
  store i64 %178, i64* %17, align 8
  br label %157

179:                                              ; preds = %157
  br label %226

180:                                              ; preds = %147
  %181 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %182 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %181, i32 0, i32 2
  %183 = load i64, i64* %182, align 8
  store i64 %183, i64* %23, align 8
  store i64 0, i64* %22, align 8
  %184 = load i32*, i32** %4, align 8
  store i32* %184, i32** %21, align 8
  store i32* %184, i32** %20, align 8
  br label %185

185:                                              ; preds = %222, %180
  %186 = load i64, i64* %22, align 8
  %187 = load i64, i64* %23, align 8
  %188 = icmp slt i64 %186, %187
  br i1 %188, label %189, label %225

189:                                              ; preds = %185
  %190 = load i32*, i32** %20, align 8
  %191 = getelementptr inbounds i32, i32* %190, i32 1
  store i32* %191, i32** %20, align 8
  %192 = load i32, i32* %190, align 4
  %193 = sext i32 %192 to i64
  %194 = inttoptr i64 %193 to i8*
  %195 = getelementptr inbounds [2 x i8*], [2 x i8*]* %24, i64 0, i64 0
  store i8* %194, i8** %195, align 16
  %196 = load i32*, i32** %20, align 8
  %197 = getelementptr inbounds i32, i32* %196, i32 1
  store i32* %197, i32** %20, align 8
  %198 = load i32, i32* %196, align 4
  %199 = sext i32 %198 to i64
  %200 = inttoptr i64 %199 to i8*
  %201 = getelementptr inbounds [2 x i8*], [2 x i8*]* %24, i64 0, i64 1
  store i8* %200, i8** %201, align 8
  %202 = load i32*, i32** %20, align 8
  %203 = getelementptr inbounds i32, i32* %202, i32 1
  store i32* %203, i32** %20, align 8
  %204 = load i32, i32* %202, align 4
  %205 = load i32*, i32** %21, align 8
  %206 = getelementptr inbounds i32, i32* %205, i32 1
  store i32* %206, i32** %21, align 8
  store i32 %204, i32* %205, align 4
  %207 = load i32*, i32** %20, align 8
  %208 = getelementptr inbounds i32, i32* %207, i32 1
  store i32* %208, i32** %20, align 8
  %209 = load i32, i32* %207, align 4
  %210 = load i32*, i32** %21, align 8
  %211 = getelementptr inbounds i32, i32* %210, i32 1
  store i32* %211, i32** %21, align 8
  store i32 %209, i32* %210, align 4
  %212 = getelementptr inbounds [2 x i8*], [2 x i8*]* %24, i64 0, i64 0
  %213 = load i8*, i8** %212, align 16
  %214 = ptrtoint i8* %213 to i32
  %215 = load i32*, i32** %21, align 8
  %216 = getelementptr inbounds i32, i32* %215, i32 1
  store i32* %216, i32** %21, align 8
  store i32 %214, i32* %215, align 4
  %217 = getelementptr inbounds [2 x i8*], [2 x i8*]* %24, i64 0, i64 1
  %218 = load i8*, i8** %217, align 8
  %219 = ptrtoint i8* %218 to i32
  %220 = load i32*, i32** %21, align 8
  %221 = getelementptr inbounds i32, i32* %220, i32 1
  store i32* %221, i32** %21, align 8
  store i32 %219, i32* %220, align 4
  br label %222

222:                                              ; preds = %189
  %223 = load i64, i64* %22, align 8
  %224 = add nsw i64 %223, 1
  store i64 %224, i64* %22, align 8
  br label %185

225:                                              ; preds = %185
  br label %226

226:                                              ; preds = %225, %179
  br label %227

227:                                              ; preds = %226, %141
  br label %228

228:                                              ; preds = %227, %140
  ret void
}

declare dso_local i32 @png_debug(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
