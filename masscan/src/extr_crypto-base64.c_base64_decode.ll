; ModuleID = '/home/carl/AnghaBench/masscan/src/extr_crypto-base64.c_base64_decode.c'
source_filename = "/home/carl/AnghaBench/masscan/src/extr_crypto-base64.c_base64_decode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@base64_decode.rstr = internal constant [256 x i8] c"\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF>\FF\FF\FF?456789:;<=\FF\FF\FF\FF\FF\FF\FF\00\01\02\03\04\05\06\07\08\09\0A\0B\0C\0D\0E\0F\10\11\12\13\14\15\16\17\18\19\FF\FF\FF\FF\FF\FF\1A\1B\1C\1D\1E\1F !\22#$%&'()*+,-./0123\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF", align 16

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @base64_decode(i8* %0, i64 %1, i8* %2, i64 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i64 %1, i64* %6, align 8
  store i8* %2, i8** %7, align 8
  store i64 %3, i64* %8, align 8
  store i64 0, i64* %9, align 8
  store i64 0, i64* %10, align 8
  %15 = load i8*, i8** %5, align 8
  store i8* %15, i8** %11, align 8
  %16 = load i8*, i8** %7, align 8
  store i8* %16, i8** %12, align 8
  br label %17

17:                                               ; preds = %233, %4
  %18 = load i64, i64* %9, align 8
  %19 = load i64, i64* %8, align 8
  %20 = icmp ult i64 %18, %19
  br i1 %20, label %21, label %234

21:                                               ; preds = %17
  store i32 0, i32* %14, align 4
  br label %22

22:                                               ; preds = %38, %21
  %23 = load i64, i64* %9, align 8
  %24 = load i64, i64* %8, align 8
  %25 = icmp ult i64 %23, %24
  br i1 %25, label %26, label %36

26:                                               ; preds = %22
  %27 = load i8*, i8** %12, align 8
  %28 = load i64, i64* %9, align 8
  %29 = getelementptr inbounds i8, i8* %27, i64 %28
  %30 = load i8, i8* %29, align 1
  %31 = zext i8 %30 to i64
  %32 = getelementptr inbounds [256 x i8], [256 x i8]* @base64_decode.rstr, i64 0, i64 %31
  %33 = load i8, i8* %32, align 1
  %34 = zext i8 %33 to i32
  store i32 %34, i32* %14, align 4
  %35 = icmp ugt i32 %34, 64
  br label %36

36:                                               ; preds = %26, %22
  %37 = phi i1 [ false, %22 ], [ %35, %26 ]
  br i1 %37, label %38, label %41

38:                                               ; preds = %36
  %39 = load i64, i64* %9, align 8
  %40 = add i64 %39, 1
  store i64 %40, i64* %9, align 8
  br label %22

41:                                               ; preds = %36
  %42 = load i8*, i8** %12, align 8
  %43 = load i64, i64* %9, align 8
  %44 = getelementptr inbounds i8, i8* %42, i64 %43
  %45 = load i8, i8* %44, align 1
  %46 = zext i8 %45 to i32
  %47 = icmp eq i32 %46, 61
  br i1 %47, label %53, label %48

48:                                               ; preds = %41
  %49 = load i64, i64* %9, align 8
  %50 = add i64 %49, 1
  store i64 %50, i64* %9, align 8
  %51 = load i64, i64* %8, align 8
  %52 = icmp uge i64 %49, %51
  br i1 %52, label %53, label %54

53:                                               ; preds = %48, %41
  br label %234

54:                                               ; preds = %48
  %55 = load i32, i32* %14, align 4
  %56 = shl i32 %55, 2
  %57 = and i32 %56, 252
  store i32 %57, i32* %13, align 4
  br label %58

58:                                               ; preds = %74, %54
  %59 = load i64, i64* %9, align 8
  %60 = load i64, i64* %8, align 8
  %61 = icmp ult i64 %59, %60
  br i1 %61, label %62, label %72

62:                                               ; preds = %58
  %63 = load i8*, i8** %12, align 8
  %64 = load i64, i64* %9, align 8
  %65 = getelementptr inbounds i8, i8* %63, i64 %64
  %66 = load i8, i8* %65, align 1
  %67 = zext i8 %66 to i64
  %68 = getelementptr inbounds [256 x i8], [256 x i8]* @base64_decode.rstr, i64 0, i64 %67
  %69 = load i8, i8* %68, align 1
  %70 = zext i8 %69 to i32
  store i32 %70, i32* %14, align 4
  %71 = icmp ugt i32 %70, 64
  br label %72

72:                                               ; preds = %62, %58
  %73 = phi i1 [ false, %58 ], [ %71, %62 ]
  br i1 %73, label %74, label %77

74:                                               ; preds = %72
  %75 = load i64, i64* %9, align 8
  %76 = add i64 %75, 1
  store i64 %76, i64* %9, align 8
  br label %58

77:                                               ; preds = %72
  %78 = load i8*, i8** %12, align 8
  %79 = load i64, i64* %9, align 8
  %80 = getelementptr inbounds i8, i8* %78, i64 %79
  %81 = load i8, i8* %80, align 1
  %82 = zext i8 %81 to i32
  %83 = icmp eq i32 %82, 61
  br i1 %83, label %89, label %84

84:                                               ; preds = %77
  %85 = load i64, i64* %9, align 8
  %86 = add i64 %85, 1
  store i64 %86, i64* %9, align 8
  %87 = load i64, i64* %8, align 8
  %88 = icmp uge i64 %85, %87
  br i1 %88, label %89, label %90

89:                                               ; preds = %84, %77
  br label %234

90:                                               ; preds = %84
  %91 = load i32, i32* %14, align 4
  %92 = lshr i32 %91, 4
  %93 = and i32 %92, 3
  %94 = load i32, i32* %13, align 4
  %95 = or i32 %94, %93
  store i32 %95, i32* %13, align 4
  %96 = load i64, i64* %10, align 8
  %97 = load i64, i64* %6, align 8
  %98 = icmp ult i64 %96, %97
  br i1 %98, label %99, label %106

99:                                               ; preds = %90
  %100 = load i32, i32* %13, align 4
  %101 = trunc i32 %100 to i8
  %102 = load i8*, i8** %11, align 8
  %103 = load i64, i64* %10, align 8
  %104 = add i64 %103, 1
  store i64 %104, i64* %10, align 8
  %105 = getelementptr inbounds i8, i8* %102, i64 %103
  store i8 %101, i8* %105, align 1
  br label %106

106:                                              ; preds = %99, %90
  %107 = load i64, i64* %9, align 8
  %108 = load i64, i64* %8, align 8
  %109 = icmp uge i64 %107, %108
  br i1 %109, label %110, label %111

110:                                              ; preds = %106
  br label %234

111:                                              ; preds = %106
  %112 = load i32, i32* %14, align 4
  %113 = shl i32 %112, 4
  %114 = and i32 %113, 240
  store i32 %114, i32* %13, align 4
  br label %115

115:                                              ; preds = %138, %111
  %116 = load i64, i64* %9, align 8
  %117 = load i64, i64* %8, align 8
  %118 = icmp ult i64 %116, %117
  br i1 %118, label %119, label %136

119:                                              ; preds = %115
  %120 = load i8*, i8** %12, align 8
  %121 = load i64, i64* %9, align 8
  %122 = getelementptr inbounds i8, i8* %120, i64 %121
  %123 = load i8, i8* %122, align 1
  %124 = zext i8 %123 to i32
  %125 = icmp ne i32 %124, 61
  br i1 %125, label %126, label %136

126:                                              ; preds = %119
  %127 = load i8*, i8** %12, align 8
  %128 = load i64, i64* %9, align 8
  %129 = getelementptr inbounds i8, i8* %127, i64 %128
  %130 = load i8, i8* %129, align 1
  %131 = zext i8 %130 to i64
  %132 = getelementptr inbounds [256 x i8], [256 x i8]* @base64_decode.rstr, i64 0, i64 %131
  %133 = load i8, i8* %132, align 1
  %134 = zext i8 %133 to i32
  store i32 %134, i32* %14, align 4
  %135 = icmp ugt i32 %134, 64
  br label %136

136:                                              ; preds = %126, %119, %115
  %137 = phi i1 [ false, %119 ], [ false, %115 ], [ %135, %126 ]
  br i1 %137, label %138, label %139

138:                                              ; preds = %136
  br label %115

139:                                              ; preds = %136
  %140 = load i8*, i8** %12, align 8
  %141 = load i64, i64* %9, align 8
  %142 = getelementptr inbounds i8, i8* %140, i64 %141
  %143 = load i8, i8* %142, align 1
  %144 = zext i8 %143 to i32
  %145 = icmp eq i32 %144, 61
  br i1 %145, label %151, label %146

146:                                              ; preds = %139
  %147 = load i64, i64* %9, align 8
  %148 = add i64 %147, 1
  store i64 %148, i64* %9, align 8
  %149 = load i64, i64* %8, align 8
  %150 = icmp uge i64 %147, %149
  br i1 %150, label %151, label %152

151:                                              ; preds = %146, %139
  br label %234

152:                                              ; preds = %146
  %153 = load i32, i32* %14, align 4
  %154 = lshr i32 %153, 2
  %155 = and i32 %154, 15
  %156 = load i32, i32* %13, align 4
  %157 = or i32 %156, %155
  store i32 %157, i32* %13, align 4
  %158 = load i64, i64* %10, align 8
  %159 = load i64, i64* %6, align 8
  %160 = icmp ult i64 %158, %159
  br i1 %160, label %161, label %168

161:                                              ; preds = %152
  %162 = load i32, i32* %13, align 4
  %163 = trunc i32 %162 to i8
  %164 = load i8*, i8** %11, align 8
  %165 = load i64, i64* %10, align 8
  %166 = add i64 %165, 1
  store i64 %166, i64* %10, align 8
  %167 = getelementptr inbounds i8, i8* %164, i64 %165
  store i8 %163, i8* %167, align 1
  br label %168

168:                                              ; preds = %161, %152
  %169 = load i64, i64* %9, align 8
  %170 = load i64, i64* %8, align 8
  %171 = icmp uge i64 %169, %170
  br i1 %171, label %172, label %173

172:                                              ; preds = %168
  br label %234

173:                                              ; preds = %168
  %174 = load i32, i32* %14, align 4
  %175 = shl i32 %174, 6
  %176 = and i32 %175, 192
  store i32 %176, i32* %13, align 4
  br label %177

177:                                              ; preds = %200, %173
  %178 = load i64, i64* %9, align 8
  %179 = load i64, i64* %8, align 8
  %180 = icmp ult i64 %178, %179
  br i1 %180, label %181, label %198

181:                                              ; preds = %177
  %182 = load i8*, i8** %12, align 8
  %183 = load i64, i64* %9, align 8
  %184 = getelementptr inbounds i8, i8* %182, i64 %183
  %185 = load i8, i8* %184, align 1
  %186 = zext i8 %185 to i32
  %187 = icmp ne i32 %186, 61
  br i1 %187, label %188, label %198

188:                                              ; preds = %181
  %189 = load i8*, i8** %12, align 8
  %190 = load i64, i64* %9, align 8
  %191 = getelementptr inbounds i8, i8* %189, i64 %190
  %192 = load i8, i8* %191, align 1
  %193 = zext i8 %192 to i64
  %194 = getelementptr inbounds [256 x i8], [256 x i8]* @base64_decode.rstr, i64 0, i64 %193
  %195 = load i8, i8* %194, align 1
  %196 = zext i8 %195 to i32
  store i32 %196, i32* %14, align 4
  %197 = icmp ugt i32 %196, 64
  br label %198

198:                                              ; preds = %188, %181, %177
  %199 = phi i1 [ false, %181 ], [ false, %177 ], [ %197, %188 ]
  br i1 %199, label %200, label %201

200:                                              ; preds = %198
  br label %177

201:                                              ; preds = %198
  %202 = load i8*, i8** %12, align 8
  %203 = load i64, i64* %9, align 8
  %204 = getelementptr inbounds i8, i8* %202, i64 %203
  %205 = load i8, i8* %204, align 1
  %206 = zext i8 %205 to i32
  %207 = icmp eq i32 %206, 61
  br i1 %207, label %213, label %208

208:                                              ; preds = %201
  %209 = load i64, i64* %9, align 8
  %210 = add i64 %209, 1
  store i64 %210, i64* %9, align 8
  %211 = load i64, i64* %8, align 8
  %212 = icmp uge i64 %209, %211
  br i1 %212, label %213, label %214

213:                                              ; preds = %208, %201
  br label %234

214:                                              ; preds = %208
  %215 = load i32, i32* %14, align 4
  %216 = load i32, i32* %13, align 4
  %217 = or i32 %216, %215
  store i32 %217, i32* %13, align 4
  %218 = load i64, i64* %10, align 8
  %219 = load i64, i64* %6, align 8
  %220 = icmp ult i64 %218, %219
  br i1 %220, label %221, label %228

221:                                              ; preds = %214
  %222 = load i32, i32* %13, align 4
  %223 = trunc i32 %222 to i8
  %224 = load i8*, i8** %11, align 8
  %225 = load i64, i64* %10, align 8
  %226 = add i64 %225, 1
  store i64 %226, i64* %10, align 8
  %227 = getelementptr inbounds i8, i8* %224, i64 %225
  store i8 %223, i8* %227, align 1
  br label %228

228:                                              ; preds = %221, %214
  %229 = load i64, i64* %9, align 8
  %230 = load i64, i64* %8, align 8
  %231 = icmp uge i64 %229, %230
  br i1 %231, label %232, label %233

232:                                              ; preds = %228
  br label %234

233:                                              ; preds = %228
  br label %17

234:                                              ; preds = %232, %213, %172, %151, %110, %89, %53, %17
  %235 = load i64, i64* %10, align 8
  %236 = load i64, i64* %6, align 8
  %237 = icmp ult i64 %235, %236
  br i1 %237, label %238, label %242

238:                                              ; preds = %234
  %239 = load i8*, i8** %11, align 8
  %240 = load i64, i64* %10, align 8
  %241 = getelementptr inbounds i8, i8* %239, i64 %240
  store i8 0, i8* %241, align 1
  br label %242

242:                                              ; preds = %238, %234
  %243 = load i64, i64* %10, align 8
  ret i64 %243
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
