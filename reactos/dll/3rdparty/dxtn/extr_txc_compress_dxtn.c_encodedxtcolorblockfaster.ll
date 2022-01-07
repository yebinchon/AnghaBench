; ModuleID = '/home/carl/AnghaBench/reactos/dll/3rdparty/dxtn/extr_txc_compress_dxtn.c_encodedxtcolorblockfaster.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/3rdparty/dxtn/extr_txc_compress_dxtn.c_encodedxtcolorblockfaster.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GL_FALSE = common dso_local global i32 0, align 4
@REDWEIGHT = common dso_local global i64 0, align 8
@GREENWEIGHT = common dso_local global i64 0, align 8
@BLUEWEIGHT = common dso_local global i64 0, align 8
@GL_COMPRESSED_RGBA_S3TC_DXT1_EXT = common dso_local global i64 0, align 8
@ALPHACUT = common dso_local global i64 0, align 8
@GL_TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64*, [4 x [4 x i64]]*, i64, i64, i64)* @encodedxtcolorblockfaster to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @encodedxtcolorblockfaster(i64* %0, [4 x [4 x i64]]* %1, i64 %2, i64 %3, i64 %4) #0 {
  %6 = alloca i64*, align 8
  %7 = alloca [4 x [4 x i64]]*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca [2 x i64*], align 16
  %12 = alloca [2 x [3 x i64]], align 16
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  store i64* %0, i64** %6, align 8
  store [4 x [4 x i64]]* %1, [4 x [4 x i64]]** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  store i64 %4, i64* %10, align 8
  %19 = load i32, i32* @GL_FALSE, align 4
  store i32 %19, i32* %18, align 4
  %20 = load [4 x [4 x i64]]*, [4 x [4 x i64]]** %7, align 8
  %21 = getelementptr inbounds [4 x [4 x i64]], [4 x [4 x i64]]* %20, i64 0
  %22 = getelementptr inbounds [4 x [4 x i64]], [4 x [4 x i64]]* %21, i64 0, i64 0
  %23 = getelementptr inbounds [4 x i64], [4 x i64]* %22, i64 0, i64 0
  %24 = load i64, i64* %23, align 8
  %25 = load [4 x [4 x i64]]*, [4 x [4 x i64]]** %7, align 8
  %26 = getelementptr inbounds [4 x [4 x i64]], [4 x [4 x i64]]* %25, i64 0
  %27 = getelementptr inbounds [4 x [4 x i64]], [4 x [4 x i64]]* %26, i64 0, i64 0
  %28 = getelementptr inbounds [4 x i64], [4 x i64]* %27, i64 0, i64 0
  %29 = load i64, i64* %28, align 8
  %30 = mul i64 %24, %29
  %31 = load i64, i64* @REDWEIGHT, align 8
  %32 = mul i64 %30, %31
  %33 = load [4 x [4 x i64]]*, [4 x [4 x i64]]** %7, align 8
  %34 = getelementptr inbounds [4 x [4 x i64]], [4 x [4 x i64]]* %33, i64 0
  %35 = getelementptr inbounds [4 x [4 x i64]], [4 x [4 x i64]]* %34, i64 0, i64 0
  %36 = getelementptr inbounds [4 x i64], [4 x i64]* %35, i64 0, i64 1
  %37 = load i64, i64* %36, align 8
  %38 = load [4 x [4 x i64]]*, [4 x [4 x i64]]** %7, align 8
  %39 = getelementptr inbounds [4 x [4 x i64]], [4 x [4 x i64]]* %38, i64 0
  %40 = getelementptr inbounds [4 x [4 x i64]], [4 x [4 x i64]]* %39, i64 0, i64 0
  %41 = getelementptr inbounds [4 x i64], [4 x i64]* %40, i64 0, i64 1
  %42 = load i64, i64* %41, align 8
  %43 = mul i64 %37, %42
  %44 = load i64, i64* @GREENWEIGHT, align 8
  %45 = mul i64 %43, %44
  %46 = add i64 %32, %45
  %47 = load [4 x [4 x i64]]*, [4 x [4 x i64]]** %7, align 8
  %48 = getelementptr inbounds [4 x [4 x i64]], [4 x [4 x i64]]* %47, i64 0
  %49 = getelementptr inbounds [4 x [4 x i64]], [4 x [4 x i64]]* %48, i64 0, i64 0
  %50 = getelementptr inbounds [4 x i64], [4 x i64]* %49, i64 0, i64 2
  %51 = load i64, i64* %50, align 8
  %52 = load [4 x [4 x i64]]*, [4 x [4 x i64]]** %7, align 8
  %53 = getelementptr inbounds [4 x [4 x i64]], [4 x [4 x i64]]* %52, i64 0
  %54 = getelementptr inbounds [4 x [4 x i64]], [4 x [4 x i64]]* %53, i64 0, i64 0
  %55 = getelementptr inbounds [4 x i64], [4 x i64]* %54, i64 0, i64 2
  %56 = load i64, i64* %55, align 8
  %57 = mul i64 %51, %56
  %58 = load i64, i64* @BLUEWEIGHT, align 8
  %59 = mul i64 %57, %58
  %60 = add i64 %46, %59
  store i64 %60, i64* %16, align 8
  store i64 %60, i64* %15, align 8
  %61 = load [4 x [4 x i64]]*, [4 x [4 x i64]]** %7, align 8
  %62 = getelementptr inbounds [4 x [4 x i64]], [4 x [4 x i64]]* %61, i64 0
  %63 = getelementptr inbounds [4 x [4 x i64]], [4 x [4 x i64]]* %62, i64 0, i64 0
  %64 = getelementptr inbounds [4 x i64], [4 x i64]* %63, i64 0, i64 0
  %65 = getelementptr inbounds [2 x i64*], [2 x i64*]* %11, i64 0, i64 1
  store i64* %64, i64** %65, align 8
  %66 = getelementptr inbounds [2 x i64*], [2 x i64*]* %11, i64 0, i64 0
  store i64* %64, i64** %66, align 16
  store i64 0, i64* %14, align 8
  br label %67

67:                                               ; preds = %178, %5
  %68 = load i64, i64* %14, align 8
  %69 = load i64, i64* %9, align 8
  %70 = icmp ult i64 %68, %69
  br i1 %70, label %71, label %181

71:                                               ; preds = %67
  store i64 0, i64* %13, align 8
  br label %72

72:                                               ; preds = %174, %71
  %73 = load i64, i64* %13, align 8
  %74 = load i64, i64* %8, align 8
  %75 = icmp ult i64 %73, %74
  br i1 %75, label %76, label %177

76:                                               ; preds = %72
  %77 = load i64, i64* %10, align 8
  %78 = load i64, i64* @GL_COMPRESSED_RGBA_S3TC_DXT1_EXT, align 8
  %79 = icmp ne i64 %77, %78
  br i1 %79, label %90, label %80

80:                                               ; preds = %76
  %81 = load [4 x [4 x i64]]*, [4 x [4 x i64]]** %7, align 8
  %82 = load i64, i64* %14, align 8
  %83 = getelementptr inbounds [4 x [4 x i64]], [4 x [4 x i64]]* %81, i64 %82
  %84 = load i64, i64* %13, align 8
  %85 = getelementptr inbounds [4 x [4 x i64]], [4 x [4 x i64]]* %83, i64 0, i64 %84
  %86 = getelementptr inbounds [4 x i64], [4 x i64]* %85, i64 0, i64 3
  %87 = load i64, i64* %86, align 8
  %88 = load i64, i64* @ALPHACUT, align 8
  %89 = icmp ugt i64 %87, %88
  br i1 %89, label %90, label %171

90:                                               ; preds = %80, %76
  %91 = load [4 x [4 x i64]]*, [4 x [4 x i64]]** %7, align 8
  %92 = load i64, i64* %14, align 8
  %93 = getelementptr inbounds [4 x [4 x i64]], [4 x [4 x i64]]* %91, i64 %92
  %94 = load i64, i64* %13, align 8
  %95 = getelementptr inbounds [4 x [4 x i64]], [4 x [4 x i64]]* %93, i64 0, i64 %94
  %96 = getelementptr inbounds [4 x i64], [4 x i64]* %95, i64 0, i64 0
  %97 = load i64, i64* %96, align 8
  %98 = load [4 x [4 x i64]]*, [4 x [4 x i64]]** %7, align 8
  %99 = load i64, i64* %14, align 8
  %100 = getelementptr inbounds [4 x [4 x i64]], [4 x [4 x i64]]* %98, i64 %99
  %101 = load i64, i64* %13, align 8
  %102 = getelementptr inbounds [4 x [4 x i64]], [4 x [4 x i64]]* %100, i64 0, i64 %101
  %103 = getelementptr inbounds [4 x i64], [4 x i64]* %102, i64 0, i64 0
  %104 = load i64, i64* %103, align 8
  %105 = mul i64 %97, %104
  %106 = load i64, i64* @REDWEIGHT, align 8
  %107 = mul i64 %105, %106
  %108 = load [4 x [4 x i64]]*, [4 x [4 x i64]]** %7, align 8
  %109 = load i64, i64* %14, align 8
  %110 = getelementptr inbounds [4 x [4 x i64]], [4 x [4 x i64]]* %108, i64 %109
  %111 = load i64, i64* %13, align 8
  %112 = getelementptr inbounds [4 x [4 x i64]], [4 x [4 x i64]]* %110, i64 0, i64 %111
  %113 = getelementptr inbounds [4 x i64], [4 x i64]* %112, i64 0, i64 1
  %114 = load i64, i64* %113, align 8
  %115 = load [4 x [4 x i64]]*, [4 x [4 x i64]]** %7, align 8
  %116 = load i64, i64* %14, align 8
  %117 = getelementptr inbounds [4 x [4 x i64]], [4 x [4 x i64]]* %115, i64 %116
  %118 = load i64, i64* %13, align 8
  %119 = getelementptr inbounds [4 x [4 x i64]], [4 x [4 x i64]]* %117, i64 0, i64 %118
  %120 = getelementptr inbounds [4 x i64], [4 x i64]* %119, i64 0, i64 1
  %121 = load i64, i64* %120, align 8
  %122 = mul i64 %114, %121
  %123 = load i64, i64* @GREENWEIGHT, align 8
  %124 = mul i64 %122, %123
  %125 = add i64 %107, %124
  %126 = load [4 x [4 x i64]]*, [4 x [4 x i64]]** %7, align 8
  %127 = load i64, i64* %14, align 8
  %128 = getelementptr inbounds [4 x [4 x i64]], [4 x [4 x i64]]* %126, i64 %127
  %129 = load i64, i64* %13, align 8
  %130 = getelementptr inbounds [4 x [4 x i64]], [4 x [4 x i64]]* %128, i64 0, i64 %129
  %131 = getelementptr inbounds [4 x i64], [4 x i64]* %130, i64 0, i64 2
  %132 = load i64, i64* %131, align 8
  %133 = load [4 x [4 x i64]]*, [4 x [4 x i64]]** %7, align 8
  %134 = load i64, i64* %14, align 8
  %135 = getelementptr inbounds [4 x [4 x i64]], [4 x [4 x i64]]* %133, i64 %134
  %136 = load i64, i64* %13, align 8
  %137 = getelementptr inbounds [4 x [4 x i64]], [4 x [4 x i64]]* %135, i64 0, i64 %136
  %138 = getelementptr inbounds [4 x i64], [4 x i64]* %137, i64 0, i64 2
  %139 = load i64, i64* %138, align 8
  %140 = mul i64 %132, %139
  %141 = load i64, i64* @BLUEWEIGHT, align 8
  %142 = mul i64 %140, %141
  %143 = add i64 %125, %142
  store i64 %143, i64* %17, align 8
  %144 = load i64, i64* %17, align 8
  %145 = load i64, i64* %16, align 8
  %146 = icmp ugt i64 %144, %145
  br i1 %146, label %147, label %156

147:                                              ; preds = %90
  %148 = load i64, i64* %17, align 8
  store i64 %148, i64* %16, align 8
  %149 = load [4 x [4 x i64]]*, [4 x [4 x i64]]** %7, align 8
  %150 = load i64, i64* %14, align 8
  %151 = getelementptr inbounds [4 x [4 x i64]], [4 x [4 x i64]]* %149, i64 %150
  %152 = load i64, i64* %13, align 8
  %153 = getelementptr inbounds [4 x [4 x i64]], [4 x [4 x i64]]* %151, i64 0, i64 %152
  %154 = getelementptr inbounds [4 x i64], [4 x i64]* %153, i64 0, i64 0
  %155 = getelementptr inbounds [2 x i64*], [2 x i64*]* %11, i64 0, i64 1
  store i64* %154, i64** %155, align 8
  br label %170

156:                                              ; preds = %90
  %157 = load i64, i64* %17, align 8
  %158 = load i64, i64* %15, align 8
  %159 = icmp ult i64 %157, %158
  br i1 %159, label %160, label %169

160:                                              ; preds = %156
  %161 = load i64, i64* %17, align 8
  store i64 %161, i64* %15, align 8
  %162 = load [4 x [4 x i64]]*, [4 x [4 x i64]]** %7, align 8
  %163 = load i64, i64* %14, align 8
  %164 = getelementptr inbounds [4 x [4 x i64]], [4 x [4 x i64]]* %162, i64 %163
  %165 = load i64, i64* %13, align 8
  %166 = getelementptr inbounds [4 x [4 x i64]], [4 x [4 x i64]]* %164, i64 0, i64 %165
  %167 = getelementptr inbounds [4 x i64], [4 x i64]* %166, i64 0, i64 0
  %168 = getelementptr inbounds [2 x i64*], [2 x i64*]* %11, i64 0, i64 0
  store i64* %167, i64** %168, align 16
  br label %169

169:                                              ; preds = %160, %156
  br label %170

170:                                              ; preds = %169, %147
  br label %173

171:                                              ; preds = %80
  %172 = load i32, i32* @GL_TRUE, align 4
  store i32 %172, i32* %18, align 4
  br label %173

173:                                              ; preds = %171, %170
  br label %174

174:                                              ; preds = %173
  %175 = load i64, i64* %13, align 8
  %176 = add i64 %175, 1
  store i64 %176, i64* %13, align 8
  br label %72

177:                                              ; preds = %72
  br label %178

178:                                              ; preds = %177
  %179 = load i64, i64* %14, align 8
  %180 = add i64 %179, 1
  store i64 %180, i64* %14, align 8
  br label %67

181:                                              ; preds = %67
  store i64 0, i64* %14, align 8
  br label %182

182:                                              ; preds = %204, %181
  %183 = load i64, i64* %14, align 8
  %184 = icmp ult i64 %183, 2
  br i1 %184, label %185, label %207

185:                                              ; preds = %182
  store i64 0, i64* %13, align 8
  br label %186

186:                                              ; preds = %200, %185
  %187 = load i64, i64* %13, align 8
  %188 = icmp ult i64 %187, 3
  br i1 %188, label %189, label %203

189:                                              ; preds = %186
  %190 = load i64, i64* %14, align 8
  %191 = getelementptr inbounds [2 x i64*], [2 x i64*]* %11, i64 0, i64 %190
  %192 = load i64*, i64** %191, align 8
  %193 = load i64, i64* %13, align 8
  %194 = getelementptr inbounds i64, i64* %192, i64 %193
  %195 = load i64, i64* %194, align 8
  %196 = load i64, i64* %14, align 8
  %197 = getelementptr inbounds [2 x [3 x i64]], [2 x [3 x i64]]* %12, i64 0, i64 %196
  %198 = load i64, i64* %13, align 8
  %199 = getelementptr inbounds [3 x i64], [3 x i64]* %197, i64 0, i64 %198
  store i64 %195, i64* %199, align 8
  br label %200

200:                                              ; preds = %189
  %201 = load i64, i64* %13, align 8
  %202 = add i64 %201, 1
  store i64 %202, i64* %13, align 8
  br label %186

203:                                              ; preds = %186
  br label %204

204:                                              ; preds = %203
  %205 = load i64, i64* %14, align 8
  %206 = add i64 %205, 1
  store i64 %206, i64* %14, align 8
  br label %182

207:                                              ; preds = %182
  %208 = getelementptr inbounds [2 x [3 x i64]], [2 x [3 x i64]]* %12, i64 0, i64 0
  %209 = getelementptr inbounds [3 x i64], [3 x i64]* %208, i64 0, i64 0
  %210 = getelementptr inbounds [2 x i64*], [2 x i64*]* %11, i64 0, i64 0
  store i64* %209, i64** %210, align 16
  %211 = getelementptr inbounds [2 x [3 x i64]], [2 x [3 x i64]]* %12, i64 0, i64 1
  %212 = getelementptr inbounds [3 x i64], [3 x i64]* %211, i64 0, i64 0
  %213 = getelementptr inbounds [2 x i64*], [2 x i64*]* %11, i64 0, i64 1
  store i64* %212, i64** %213, align 8
  %214 = load i64*, i64** %6, align 8
  %215 = load [4 x [4 x i64]]*, [4 x [4 x i64]]** %7, align 8
  %216 = bitcast [4 x [4 x i64]]* %215 to i64***
  %217 = getelementptr inbounds [2 x i64*], [2 x i64*]* %11, i64 0, i64 0
  %218 = load i64, i64* %8, align 8
  %219 = load i64, i64* %9, align 8
  %220 = load i64, i64* %10, align 8
  %221 = load i32, i32* %18, align 4
  %222 = call i32 @fancybasecolorsearch(i64* %214, i64*** %216, i64** %217, i64 %218, i64 %219, i64 %220, i32 %221)
  %223 = load i64*, i64** %6, align 8
  %224 = load [4 x [4 x i64]]*, [4 x [4 x i64]]** %7, align 8
  %225 = bitcast [4 x [4 x i64]]* %224 to i64***
  %226 = getelementptr inbounds [2 x i64*], [2 x i64*]* %11, i64 0, i64 0
  %227 = load i64, i64* %8, align 8
  %228 = load i64, i64* %9, align 8
  %229 = load i64, i64* %10, align 8
  %230 = load i32, i32* %18, align 4
  %231 = call i32 @storedxtencodedblock(i64* %223, i64*** %225, i64** %226, i64 %227, i64 %228, i64 %229, i32 %230)
  ret void
}

declare dso_local i32 @fancybasecolorsearch(i64*, i64***, i64**, i64, i64, i64, i32) #1

declare dso_local i32 @storedxtencodedblock(i64*, i64***, i64**, i64, i64, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
