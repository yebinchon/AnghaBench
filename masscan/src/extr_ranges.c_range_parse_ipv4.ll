; ModuleID = '/home/carl/AnghaBench/masscan/src/extr_ranges.c_range_parse_ipv4.c'
source_filename = "/home/carl/AnghaBench/masscan/src/extr_ranges.c_range_parse_ipv4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Range = type { i32, i32, i32, i32 }

@range_parse_ipv4.badrange = internal constant %struct.Range { i32 -1, i32 0, i32 0, i32 0 }, align 4
@.str = private unnamed_addr constant [75 x i8] c"err: ending addr %u.%u.%u.%u cannot come before starting addr %u.%u.%u.%u\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i64 } @range_parse_ipv4(i8* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.Range, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.Range, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %15 = load i8*, i8** %5, align 8
  %16 = icmp eq i8* %15, null
  br i1 %16, label %17, label %19

17:                                               ; preds = %3
  %18 = bitcast %struct.Range* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %18, i8* align 4 bitcast (%struct.Range* @range_parse_ipv4.badrange to i8*), i64 16, i1 false)
  br label %254

19:                                               ; preds = %3
  %20 = load i32*, i32** %6, align 8
  %21 = icmp eq i32* %20, null
  br i1 %21, label %22, label %26

22:                                               ; preds = %19
  store i32* %8, i32** %6, align 8
  store i32 0, i32* %8, align 4
  %23 = load i8*, i8** %5, align 8
  %24 = call i64 @strlen(i8* %23)
  %25 = trunc i64 %24 to i32
  store i32 %25, i32* %7, align 4
  br label %29

26:                                               ; preds = %19
  %27 = load i32*, i32** %6, align 8
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %8, align 4
  br label %29

29:                                               ; preds = %26, %22
  br label %30

30:                                               ; preds = %47, %29
  %31 = load i32, i32* %8, align 4
  %32 = load i32, i32* %7, align 4
  %33 = icmp ult i32 %31, %32
  br i1 %33, label %34, label %45

34:                                               ; preds = %30
  %35 = load i8*, i8** %5, align 8
  %36 = load i32, i32* %8, align 4
  %37 = zext i32 %36 to i64
  %38 = getelementptr inbounds i8, i8* %35, i64 %37
  %39 = load i8, i8* %38, align 1
  %40 = sext i8 %39 to i32
  %41 = and i32 %40, 255
  %42 = trunc i32 %41 to i8
  %43 = call i64 @isspace(i8 signext %42)
  %44 = icmp ne i64 %43, 0
  br label %45

45:                                               ; preds = %34, %30
  %46 = phi i1 [ false, %30 ], [ %44, %34 ]
  br i1 %46, label %47, label %50

47:                                               ; preds = %45
  %48 = load i32, i32* %8, align 4
  %49 = add i32 %48, 1
  store i32 %49, i32* %8, align 4
  br label %30

50:                                               ; preds = %45
  %51 = load i8*, i8** %5, align 8
  %52 = load i32, i32* %7, align 4
  %53 = getelementptr inbounds %struct.Range, %struct.Range* %9, i32 0, i32 1
  %54 = call i32 @parse_ipv4(i8* %51, i32* %8, i32 %52, i32* %53)
  store i32 %54, i32* %10, align 4
  %55 = load i32, i32* %10, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %50
  %58 = bitcast %struct.Range* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %58, i8* align 4 bitcast (%struct.Range* @range_parse_ipv4.badrange to i8*), i64 16, i1 false)
  br label %254

59:                                               ; preds = %50
  %60 = getelementptr inbounds %struct.Range, %struct.Range* %9, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = getelementptr inbounds %struct.Range, %struct.Range* %9, i32 0, i32 2
  store i32 %61, i32* %62, align 4
  br label %63

63:                                               ; preds = %80, %59
  %64 = load i32, i32* %8, align 4
  %65 = load i32, i32* %7, align 4
  %66 = icmp ult i32 %64, %65
  br i1 %66, label %67, label %78

67:                                               ; preds = %63
  %68 = load i8*, i8** %5, align 8
  %69 = load i32, i32* %8, align 4
  %70 = zext i32 %69 to i64
  %71 = getelementptr inbounds i8, i8* %68, i64 %70
  %72 = load i8, i8* %71, align 1
  %73 = sext i8 %72 to i32
  %74 = and i32 %73, 255
  %75 = trunc i32 %74 to i8
  %76 = call i64 @isspace(i8 signext %75)
  %77 = icmp ne i64 %76, 0
  br label %78

78:                                               ; preds = %67, %63
  %79 = phi i1 [ false, %63 ], [ %77, %67 ]
  br i1 %79, label %80, label %83

80:                                               ; preds = %78
  %81 = load i32, i32* %8, align 4
  %82 = add i32 %81, 1
  store i32 %82, i32* %8, align 4
  br label %63

83:                                               ; preds = %78
  %84 = load i32, i32* %8, align 4
  %85 = load i32, i32* %7, align 4
  %86 = icmp uge i32 %84, %85
  br i1 %86, label %87, label %88

87:                                               ; preds = %83
  br label %249

88:                                               ; preds = %83
  %89 = load i8*, i8** %5, align 8
  %90 = load i32, i32* %8, align 4
  %91 = zext i32 %90 to i64
  %92 = getelementptr inbounds i8, i8* %89, i64 %91
  %93 = load i8, i8* %92, align 1
  %94 = sext i8 %93 to i32
  %95 = icmp eq i32 %94, 47
  br i1 %95, label %96, label %185

96:                                               ; preds = %88
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %97 = load i32, i32* %8, align 4
  %98 = add i32 %97, 1
  store i32 %98, i32* %8, align 4
  %99 = load i8*, i8** %5, align 8
  %100 = load i32, i32* %8, align 4
  %101 = zext i32 %100 to i64
  %102 = getelementptr inbounds i8, i8* %99, i64 %101
  %103 = load i8, i8* %102, align 1
  %104 = sext i8 %103 to i32
  %105 = and i32 %104, 255
  %106 = trunc i32 %105 to i8
  %107 = call i64 @isdigit(i8 signext %106)
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %111, label %109

109:                                              ; preds = %96
  %110 = bitcast %struct.Range* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %110, i8* align 4 bitcast (%struct.Range* @range_parse_ipv4.badrange to i8*), i64 16, i1 false)
  br label %254

111:                                              ; preds = %96
  br label %112

112:                                              ; preds = %126, %111
  %113 = load i32, i32* %8, align 4
  %114 = load i32, i32* %7, align 4
  %115 = icmp ult i32 %113, %114
  br i1 %115, label %116, label %124

116:                                              ; preds = %112
  %117 = load i8*, i8** %5, align 8
  %118 = load i32, i32* %8, align 4
  %119 = zext i32 %118 to i64
  %120 = getelementptr inbounds i8, i8* %117, i64 %119
  %121 = load i8, i8* %120, align 1
  %122 = sext i8 %121 to i32
  %123 = icmp eq i32 %122, 48
  br label %124

124:                                              ; preds = %116, %112
  %125 = phi i1 [ false, %112 ], [ %123, %116 ]
  br i1 %125, label %126, label %129

126:                                              ; preds = %124
  %127 = load i32, i32* %8, align 4
  %128 = add i32 %127, 1
  store i32 %128, i32* %8, align 4
  br label %112

129:                                              ; preds = %124
  br label %130

130:                                              ; preds = %164, %129
  %131 = load i32, i32* %8, align 4
  %132 = load i32, i32* %7, align 4
  %133 = icmp ult i32 %131, %132
  br i1 %133, label %134, label %145

134:                                              ; preds = %130
  %135 = load i8*, i8** %5, align 8
  %136 = load i32, i32* %8, align 4
  %137 = zext i32 %136 to i64
  %138 = getelementptr inbounds i8, i8* %135, i64 %137
  %139 = load i8, i8* %138, align 1
  %140 = sext i8 %139 to i32
  %141 = and i32 %140, 255
  %142 = trunc i32 %141 to i8
  %143 = call i64 @isdigit(i8 signext %142)
  %144 = icmp ne i64 %143, 0
  br label %145

145:                                              ; preds = %134, %130
  %146 = phi i1 [ false, %130 ], [ %144, %134 ]
  br i1 %146, label %147, label %165

147:                                              ; preds = %145
  %148 = load i32, i32* %11, align 4
  %149 = mul nsw i32 %148, 10
  %150 = load i8*, i8** %5, align 8
  %151 = load i32, i32* %8, align 4
  %152 = add i32 %151, 1
  store i32 %152, i32* %8, align 4
  %153 = zext i32 %151 to i64
  %154 = getelementptr inbounds i8, i8* %150, i64 %153
  %155 = load i8, i8* %154, align 1
  %156 = sext i8 %155 to i32
  %157 = sub nsw i32 %156, 48
  %158 = add nsw i32 %149, %157
  store i32 %158, i32* %11, align 4
  %159 = load i32, i32* %13, align 4
  %160 = add i32 %159, 1
  store i32 %160, i32* %13, align 4
  %161 = icmp ugt i32 %160, 2
  br i1 %161, label %162, label %164

162:                                              ; preds = %147
  %163 = bitcast %struct.Range* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %163, i8* align 4 bitcast (%struct.Range* @range_parse_ipv4.badrange to i8*), i64 16, i1 false)
  br label %254

164:                                              ; preds = %147
  br label %130

165:                                              ; preds = %145
  %166 = load i32, i32* %11, align 4
  %167 = icmp sgt i32 %166, 32
  br i1 %167, label %168, label %170

168:                                              ; preds = %165
  %169 = bitcast %struct.Range* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %169, i8* align 4 bitcast (%struct.Range* @range_parse_ipv4.badrange to i8*), i64 16, i1 false)
  br label %254

170:                                              ; preds = %165
  %171 = load i32, i32* %11, align 4
  %172 = zext i32 %171 to i64
  %173 = lshr i64 -4294967296, %172
  %174 = trunc i64 %173 to i32
  store i32 %174, i32* %12, align 4
  %175 = load i32, i32* %12, align 4
  %176 = getelementptr inbounds %struct.Range, %struct.Range* %9, i32 0, i32 1
  %177 = load i32, i32* %176, align 4
  %178 = and i32 %177, %175
  store i32 %178, i32* %176, align 4
  %179 = getelementptr inbounds %struct.Range, %struct.Range* %9, i32 0, i32 1
  %180 = load i32, i32* %179, align 4
  %181 = load i32, i32* %12, align 4
  %182 = xor i32 %181, -1
  %183 = or i32 %180, %182
  %184 = getelementptr inbounds %struct.Range, %struct.Range* %9, i32 0, i32 2
  store i32 %183, i32* %184, align 4
  br label %249

185:                                              ; preds = %88
  %186 = load i32, i32* %8, align 4
  %187 = load i32, i32* %7, align 4
  %188 = icmp ult i32 %186, %187
  br i1 %188, label %189, label %248

189:                                              ; preds = %185
  %190 = load i8*, i8** %5, align 8
  %191 = load i32, i32* %8, align 4
  %192 = zext i32 %191 to i64
  %193 = getelementptr inbounds i8, i8* %190, i64 %192
  %194 = load i8, i8* %193, align 1
  %195 = sext i8 %194 to i32
  %196 = icmp eq i32 %195, 45
  br i1 %196, label %197, label %248

197:                                              ; preds = %189
  %198 = load i32, i32* %8, align 4
  %199 = add i32 %198, 1
  store i32 %199, i32* %8, align 4
  %200 = load i8*, i8** %5, align 8
  %201 = load i32, i32* %7, align 4
  %202 = call i32 @parse_ipv4(i8* %200, i32* %8, i32 %201, i32* %14)
  store i32 %202, i32* %10, align 4
  %203 = load i32, i32* %10, align 4
  %204 = icmp ne i32 %203, 0
  br i1 %204, label %205, label %207

205:                                              ; preds = %197
  %206 = bitcast %struct.Range* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %206, i8* align 4 bitcast (%struct.Range* @range_parse_ipv4.badrange to i8*), i64 16, i1 false)
  br label %254

207:                                              ; preds = %197
  %208 = load i32, i32* %14, align 4
  %209 = getelementptr inbounds %struct.Range, %struct.Range* %9, i32 0, i32 1
  %210 = load i32, i32* %209, align 4
  %211 = icmp ult i32 %208, %210
  br i1 %211, label %212, label %244

212:                                              ; preds = %207
  %213 = getelementptr inbounds %struct.Range, %struct.Range* %9, i32 0, i32 1
  store i32 -1, i32* %213, align 4
  %214 = getelementptr inbounds %struct.Range, %struct.Range* %9, i32 0, i32 2
  store i32 0, i32* %214, align 4
  %215 = load i32, i32* %14, align 4
  %216 = lshr i32 %215, 24
  %217 = and i32 %216, 255
  %218 = load i32, i32* %14, align 4
  %219 = lshr i32 %218, 16
  %220 = and i32 %219, 255
  %221 = load i32, i32* %14, align 4
  %222 = lshr i32 %221, 8
  %223 = and i32 %222, 255
  %224 = load i32, i32* %14, align 4
  %225 = lshr i32 %224, 0
  %226 = and i32 %225, 255
  %227 = getelementptr inbounds %struct.Range, %struct.Range* %9, i32 0, i32 1
  %228 = load i32, i32* %227, align 4
  %229 = lshr i32 %228, 24
  %230 = and i32 %229, 255
  %231 = getelementptr inbounds %struct.Range, %struct.Range* %9, i32 0, i32 1
  %232 = load i32, i32* %231, align 4
  %233 = lshr i32 %232, 16
  %234 = and i32 %233, 255
  %235 = getelementptr inbounds %struct.Range, %struct.Range* %9, i32 0, i32 1
  %236 = load i32, i32* %235, align 4
  %237 = lshr i32 %236, 8
  %238 = and i32 %237, 255
  %239 = getelementptr inbounds %struct.Range, %struct.Range* %9, i32 0, i32 1
  %240 = load i32, i32* %239, align 4
  %241 = lshr i32 %240, 0
  %242 = and i32 %241, 255
  %243 = call i32 @LOG(i32 0, i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str, i64 0, i64 0), i32 %217, i32 %220, i32 %223, i32 %226, i32 %230, i32 %234, i32 %238, i32 %242)
  br label %247

244:                                              ; preds = %207
  %245 = load i32, i32* %14, align 4
  %246 = getelementptr inbounds %struct.Range, %struct.Range* %9, i32 0, i32 2
  store i32 %245, i32* %246, align 4
  br label %247

247:                                              ; preds = %244, %212
  br label %249

248:                                              ; preds = %189, %185
  br label %249

249:                                              ; preds = %248, %247, %170, %87
  %250 = load i32, i32* %8, align 4
  %251 = load i32*, i32** %6, align 8
  store i32 %250, i32* %251, align 4
  %252 = bitcast %struct.Range* %4 to i8*
  %253 = bitcast %struct.Range* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %252, i8* align 4 %253, i64 16, i1 false)
  br label %254

254:                                              ; preds = %249, %205, %168, %162, %109, %57, %17
  %255 = bitcast %struct.Range* %4 to { i64, i64 }*
  %256 = load { i64, i64 }, { i64, i64 }* %255, align 4
  ret { i64, i64 } %256
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i64 @strlen(i8*) #2

declare dso_local i64 @isspace(i8 signext) #2

declare dso_local i32 @parse_ipv4(i8*, i32*, i32, i32*) #2

declare dso_local i64 @isdigit(i8 signext) #2

declare dso_local i32 @LOG(i32, i8*, i32, i32, i32, i32, i32, i32, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
