; ModuleID = '/home/carl/AnghaBench/poco/Foundation/src/extr_pcre_compile.c_is_anchored.c'
source_filename = "/home/carl/AnghaBench/poco/Foundation/src/extr_pcre_compile.c_is_anchored.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i64 }

@OP_lengths = common dso_local global i32 0, align 4
@FALSE = common dso_local global i8* null, align 8
@OP_BRA = common dso_local global i32 0, align 4
@OP_BRAPOS = common dso_local global i32 0, align 4
@OP_SBRA = common dso_local global i32 0, align 4
@OP_SBRAPOS = common dso_local global i32 0, align 4
@OP_CBRA = common dso_local global i32 0, align 4
@OP_CBRAPOS = common dso_local global i32 0, align 4
@OP_SCBRA = common dso_local global i32 0, align 4
@OP_SCBRAPOS = common dso_local global i32 0, align 4
@LINK_SIZE = common dso_local global i64 0, align 8
@OP_ASSERT = common dso_local global i32 0, align 4
@OP_COND = common dso_local global i32 0, align 4
@OP_ALT = common dso_local global i64 0, align 8
@OP_ONCE = common dso_local global i32 0, align 4
@OP_ONCE_NC = common dso_local global i32 0, align 4
@OP_TYPESTAR = common dso_local global i32 0, align 4
@OP_TYPEMINSTAR = common dso_local global i32 0, align 4
@OP_TYPEPOSSTAR = common dso_local global i32 0, align 4
@OP_ALLANY = common dso_local global i64 0, align 8
@OP_SOD = common dso_local global i32 0, align 4
@OP_SOM = common dso_local global i32 0, align 4
@OP_CIRC = common dso_local global i32 0, align 4
@TRUE = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i64*, i32, %struct.TYPE_3__*, i32)* @is_anchored to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @is_anchored(i64* %0, i32 %1, %struct.TYPE_3__* %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_3__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i64* %0, i64** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.TYPE_3__* %2, %struct.TYPE_3__** %8, align 8
  store i32 %3, i32* %9, align 4
  br label %14

14:                                               ; preds = %212, %4
  %15 = load i64*, i64** %6, align 8
  %16 = load i32, i32* @OP_lengths, align 4
  %17 = call i32* @PRIV(i32 %16)
  %18 = load i64*, i64** %6, align 8
  %19 = load i64, i64* %18, align 8
  %20 = getelementptr inbounds i32, i32* %17, i64 %19
  %21 = load i32, i32* %20, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i64, i64* %15, i64 %22
  %24 = load i8*, i8** @FALSE, align 8
  %25 = call i64* @first_significant_code(i64* %23, i8* %24)
  store i64* %25, i64** %10, align 8
  %26 = load i64*, i64** %10, align 8
  %27 = load i64, i64* %26, align 8
  %28 = trunc i64 %27 to i32
  store i32 %28, i32* %11, align 4
  %29 = load i32, i32* %11, align 4
  %30 = load i32, i32* @OP_BRA, align 4
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %44, label %32

32:                                               ; preds = %14
  %33 = load i32, i32* %11, align 4
  %34 = load i32, i32* @OP_BRAPOS, align 4
  %35 = icmp eq i32 %33, %34
  br i1 %35, label %44, label %36

36:                                               ; preds = %32
  %37 = load i32, i32* %11, align 4
  %38 = load i32, i32* @OP_SBRA, align 4
  %39 = icmp eq i32 %37, %38
  br i1 %39, label %44, label %40

40:                                               ; preds = %36
  %41 = load i32, i32* %11, align 4
  %42 = load i32, i32* @OP_SBRAPOS, align 4
  %43 = icmp eq i32 %41, %42
  br i1 %43, label %44, label %54

44:                                               ; preds = %40, %36, %32, %14
  %45 = load i64*, i64** %10, align 8
  %46 = load i32, i32* %7, align 4
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %48 = load i32, i32* %9, align 4
  %49 = call i8* @is_anchored(i64* %45, i32 %46, %struct.TYPE_3__* %47, i32 %48)
  %50 = icmp ne i8* %49, null
  br i1 %50, label %53, label %51

51:                                               ; preds = %44
  %52 = load i8*, i8** @FALSE, align 8
  store i8* %52, i8** %5, align 8
  br label %219

53:                                               ; preds = %44
  br label %207

54:                                               ; preds = %40
  %55 = load i32, i32* %11, align 4
  %56 = load i32, i32* @OP_CBRA, align 4
  %57 = icmp eq i32 %55, %56
  br i1 %57, label %70, label %58

58:                                               ; preds = %54
  %59 = load i32, i32* %11, align 4
  %60 = load i32, i32* @OP_CBRAPOS, align 4
  %61 = icmp eq i32 %59, %60
  br i1 %61, label %70, label %62

62:                                               ; preds = %58
  %63 = load i32, i32* %11, align 4
  %64 = load i32, i32* @OP_SCBRA, align 4
  %65 = icmp eq i32 %63, %64
  br i1 %65, label %70, label %66

66:                                               ; preds = %62
  %67 = load i32, i32* %11, align 4
  %68 = load i32, i32* @OP_SCBRAPOS, align 4
  %69 = icmp eq i32 %67, %68
  br i1 %69, label %70, label %94

70:                                               ; preds = %66, %62, %58, %54
  %71 = load i64*, i64** %10, align 8
  %72 = load i64, i64* @LINK_SIZE, align 8
  %73 = add nsw i64 1, %72
  %74 = call i32 @GET2(i64* %71, i64 %73)
  store i32 %74, i32* %12, align 4
  %75 = load i32, i32* %7, align 4
  %76 = load i32, i32* %12, align 4
  %77 = icmp slt i32 %76, 32
  br i1 %77, label %78, label %81

78:                                               ; preds = %70
  %79 = load i32, i32* %12, align 4
  %80 = shl i32 1, %79
  br label %82

81:                                               ; preds = %70
  br label %82

82:                                               ; preds = %81, %78
  %83 = phi i32 [ %80, %78 ], [ 1, %81 ]
  %84 = or i32 %75, %83
  store i32 %84, i32* %13, align 4
  %85 = load i64*, i64** %10, align 8
  %86 = load i32, i32* %13, align 4
  %87 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %88 = load i32, i32* %9, align 4
  %89 = call i8* @is_anchored(i64* %85, i32 %86, %struct.TYPE_3__* %87, i32 %88)
  %90 = icmp ne i8* %89, null
  br i1 %90, label %93, label %91

91:                                               ; preds = %82
  %92 = load i8*, i8** @FALSE, align 8
  store i8* %92, i8** %5, align 8
  br label %219

93:                                               ; preds = %82
  br label %206

94:                                               ; preds = %66
  %95 = load i32, i32* %11, align 4
  %96 = load i32, i32* @OP_ASSERT, align 4
  %97 = icmp eq i32 %95, %96
  br i1 %97, label %98, label %108

98:                                               ; preds = %94
  %99 = load i64*, i64** %10, align 8
  %100 = load i32, i32* %7, align 4
  %101 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %102 = load i32, i32* %9, align 4
  %103 = call i8* @is_anchored(i64* %99, i32 %100, %struct.TYPE_3__* %101, i32 %102)
  %104 = icmp ne i8* %103, null
  br i1 %104, label %107, label %105

105:                                              ; preds = %98
  %106 = load i8*, i8** @FALSE, align 8
  store i8* %106, i8** %5, align 8
  br label %219

107:                                              ; preds = %98
  br label %205

108:                                              ; preds = %94
  %109 = load i32, i32* %11, align 4
  %110 = load i32, i32* @OP_COND, align 4
  %111 = icmp eq i32 %109, %110
  br i1 %111, label %112, label %132

112:                                              ; preds = %108
  %113 = load i64*, i64** %10, align 8
  %114 = load i64*, i64** %10, align 8
  %115 = call i64 @GET(i64* %114, i32 1)
  %116 = getelementptr inbounds i64, i64* %113, i64 %115
  %117 = load i64, i64* %116, align 8
  %118 = load i64, i64* @OP_ALT, align 8
  %119 = icmp ne i64 %117, %118
  br i1 %119, label %120, label %122

120:                                              ; preds = %112
  %121 = load i8*, i8** @FALSE, align 8
  store i8* %121, i8** %5, align 8
  br label %219

122:                                              ; preds = %112
  %123 = load i64*, i64** %10, align 8
  %124 = load i32, i32* %7, align 4
  %125 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %126 = load i32, i32* %9, align 4
  %127 = call i8* @is_anchored(i64* %123, i32 %124, %struct.TYPE_3__* %125, i32 %126)
  %128 = icmp ne i8* %127, null
  br i1 %128, label %131, label %129

129:                                              ; preds = %122
  %130 = load i8*, i8** @FALSE, align 8
  store i8* %130, i8** %5, align 8
  br label %219

131:                                              ; preds = %122
  br label %204

132:                                              ; preds = %108
  %133 = load i32, i32* %11, align 4
  %134 = load i32, i32* @OP_ONCE, align 4
  %135 = icmp eq i32 %133, %134
  br i1 %135, label %140, label %136

136:                                              ; preds = %132
  %137 = load i32, i32* %11, align 4
  %138 = load i32, i32* @OP_ONCE_NC, align 4
  %139 = icmp eq i32 %137, %138
  br i1 %139, label %140, label %151

140:                                              ; preds = %136, %132
  %141 = load i64*, i64** %10, align 8
  %142 = load i32, i32* %7, align 4
  %143 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %144 = load i32, i32* %9, align 4
  %145 = add nsw i32 %144, 1
  %146 = call i8* @is_anchored(i64* %141, i32 %142, %struct.TYPE_3__* %143, i32 %145)
  %147 = icmp ne i8* %146, null
  br i1 %147, label %150, label %148

148:                                              ; preds = %140
  %149 = load i8*, i8** @FALSE, align 8
  store i8* %149, i8** %5, align 8
  br label %219

150:                                              ; preds = %140
  br label %203

151:                                              ; preds = %136
  %152 = load i32, i32* %11, align 4
  %153 = load i32, i32* @OP_TYPESTAR, align 4
  %154 = icmp eq i32 %152, %153
  br i1 %154, label %163, label %155

155:                                              ; preds = %151
  %156 = load i32, i32* %11, align 4
  %157 = load i32, i32* @OP_TYPEMINSTAR, align 4
  %158 = icmp eq i32 %156, %157
  br i1 %158, label %163, label %159

159:                                              ; preds = %155
  %160 = load i32, i32* %11, align 4
  %161 = load i32, i32* @OP_TYPEPOSSTAR, align 4
  %162 = icmp eq i32 %160, %161
  br i1 %162, label %163, label %187

163:                                              ; preds = %159, %155, %151
  %164 = load i64*, i64** %10, align 8
  %165 = getelementptr inbounds i64, i64* %164, i64 1
  %166 = load i64, i64* %165, align 8
  %167 = load i64, i64* @OP_ALLANY, align 8
  %168 = icmp ne i64 %166, %167
  br i1 %168, label %184, label %169

169:                                              ; preds = %163
  %170 = load i32, i32* %7, align 4
  %171 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %172 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 8
  %174 = and i32 %170, %173
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %184, label %176

176:                                              ; preds = %169
  %177 = load i32, i32* %9, align 4
  %178 = icmp sgt i32 %177, 0
  br i1 %178, label %184, label %179

179:                                              ; preds = %176
  %180 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %181 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %180, i32 0, i32 1
  %182 = load i64, i64* %181, align 8
  %183 = icmp ne i64 %182, 0
  br i1 %183, label %184, label %186

184:                                              ; preds = %179, %176, %169, %163
  %185 = load i8*, i8** @FALSE, align 8
  store i8* %185, i8** %5, align 8
  br label %219

186:                                              ; preds = %179
  br label %202

187:                                              ; preds = %159
  %188 = load i32, i32* %11, align 4
  %189 = load i32, i32* @OP_SOD, align 4
  %190 = icmp ne i32 %188, %189
  br i1 %190, label %191, label %201

191:                                              ; preds = %187
  %192 = load i32, i32* %11, align 4
  %193 = load i32, i32* @OP_SOM, align 4
  %194 = icmp ne i32 %192, %193
  br i1 %194, label %195, label %201

195:                                              ; preds = %191
  %196 = load i32, i32* %11, align 4
  %197 = load i32, i32* @OP_CIRC, align 4
  %198 = icmp ne i32 %196, %197
  br i1 %198, label %199, label %201

199:                                              ; preds = %195
  %200 = load i8*, i8** @FALSE, align 8
  store i8* %200, i8** %5, align 8
  br label %219

201:                                              ; preds = %195, %191, %187
  br label %202

202:                                              ; preds = %201, %186
  br label %203

203:                                              ; preds = %202, %150
  br label %204

204:                                              ; preds = %203, %131
  br label %205

205:                                              ; preds = %204, %107
  br label %206

206:                                              ; preds = %205, %93
  br label %207

207:                                              ; preds = %206, %53
  %208 = load i64*, i64** %6, align 8
  %209 = call i64 @GET(i64* %208, i32 1)
  %210 = load i64*, i64** %6, align 8
  %211 = getelementptr inbounds i64, i64* %210, i64 %209
  store i64* %211, i64** %6, align 8
  br label %212

212:                                              ; preds = %207
  %213 = load i64*, i64** %6, align 8
  %214 = load i64, i64* %213, align 8
  %215 = load i64, i64* @OP_ALT, align 8
  %216 = icmp eq i64 %214, %215
  br i1 %216, label %14, label %217

217:                                              ; preds = %212
  %218 = load i8*, i8** @TRUE, align 8
  store i8* %218, i8** %5, align 8
  br label %219

219:                                              ; preds = %217, %199, %184, %148, %129, %120, %105, %91, %51
  %220 = load i8*, i8** %5, align 8
  ret i8* %220
}

declare dso_local i64* @first_significant_code(i64*, i8*) #1

declare dso_local i32* @PRIV(i32) #1

declare dso_local i32 @GET2(i64*, i64) #1

declare dso_local i64 @GET(i64*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
