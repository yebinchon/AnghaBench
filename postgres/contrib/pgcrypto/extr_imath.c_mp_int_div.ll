; ModuleID = '/home/carl/AnghaBench/postgres/contrib/pgcrypto/extr_imath.c_mp_int_div.c'
source_filename = "/home/carl/AnghaBench/postgres/contrib/pgcrypto/extr_imath.c_mp_int_div.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { i32*, i8* }

@MP_OK = common dso_local global i32 0, align 4
@MP_UNDEF = common dso_local global i32 0, align 4
@MP_NEG = common dso_local global i8* null, align 8
@MP_ZPOS = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mp_int_div(%struct.TYPE_19__* %0, %struct.TYPE_19__* %1, %struct.TYPE_19__* %2, %struct.TYPE_19__* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_19__*, align 8
  %7 = alloca %struct.TYPE_19__*, align 8
  %8 = alloca %struct.TYPE_19__*, align 8
  %9 = alloca %struct.TYPE_19__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_19__*, align 8
  %13 = alloca %struct.TYPE_19__*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %6, align 8
  store %struct.TYPE_19__* %1, %struct.TYPE_19__** %7, align 8
  store %struct.TYPE_19__* %2, %struct.TYPE_19__** %8, align 8
  store %struct.TYPE_19__* %3, %struct.TYPE_19__** %9, align 8
  %17 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %18 = icmp ne %struct.TYPE_19__* %17, null
  br i1 %18, label %19, label %26

19:                                               ; preds = %4
  %20 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %21 = icmp ne %struct.TYPE_19__* %20, null
  br i1 %21, label %22, label %26

22:                                               ; preds = %19
  %23 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %24 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %25 = icmp ne %struct.TYPE_19__* %23, %24
  br label %26

26:                                               ; preds = %22, %19, %4
  %27 = phi i1 [ false, %19 ], [ false, %4 ], [ %25, %22 ]
  %28 = zext i1 %27 to i32
  %29 = call i32 @assert(i32 %28)
  %30 = load i32, i32* @MP_OK, align 4
  store i32 %30, i32* %11, align 4
  %31 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %32 = call i64 @MP_SIGN(%struct.TYPE_19__* %31)
  store i64 %32, i64* %14, align 8
  %33 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %34 = call i64 @MP_SIGN(%struct.TYPE_19__* %33)
  store i64 %34, i64* %15, align 8
  %35 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %36 = call i64 @CMPZ(%struct.TYPE_19__* %35)
  %37 = icmp eq i64 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %26
  %39 = load i32, i32* @MP_UNDEF, align 4
  store i32 %39, i32* %5, align 4
  br label %234

40:                                               ; preds = %26
  %41 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %42 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %43 = call i32 @s_ucmp(%struct.TYPE_19__* %41, %struct.TYPE_19__* %42)
  store i32 %43, i32* %10, align 4
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %45, label %64

45:                                               ; preds = %40
  %46 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %47 = icmp ne %struct.TYPE_19__* %46, null
  br i1 %47, label %48, label %56

48:                                               ; preds = %45
  %49 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %50 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %51 = call i32 @mp_int_copy(%struct.TYPE_19__* %49, %struct.TYPE_19__* %50)
  store i32 %51, i32* %11, align 4
  %52 = load i32, i32* @MP_OK, align 4
  %53 = icmp ne i32 %51, %52
  br i1 %53, label %54, label %56

54:                                               ; preds = %48
  %55 = load i32, i32* %11, align 4
  store i32 %55, i32* %5, align 4
  br label %234

56:                                               ; preds = %48, %45
  %57 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %58 = icmp ne %struct.TYPE_19__* %57, null
  br i1 %58, label %59, label %62

59:                                               ; preds = %56
  %60 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %61 = call i32 @mp_int_zero(%struct.TYPE_19__* %60)
  br label %62

62:                                               ; preds = %59, %56
  %63 = load i32, i32* @MP_OK, align 4
  store i32 %63, i32* %5, align 4
  br label %234

64:                                               ; preds = %40
  %65 = load i32, i32* %10, align 4
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %93

67:                                               ; preds = %64
  %68 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %69 = icmp ne %struct.TYPE_19__* %68, null
  br i1 %69, label %70, label %73

70:                                               ; preds = %67
  %71 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %72 = call i32 @mp_int_zero(%struct.TYPE_19__* %71)
  br label %73

73:                                               ; preds = %70, %67
  %74 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %75 = icmp ne %struct.TYPE_19__* %74, null
  br i1 %75, label %76, label %91

76:                                               ; preds = %73
  %77 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %78 = call i32 @mp_int_zero(%struct.TYPE_19__* %77)
  %79 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %80 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %79, i32 0, i32 0
  %81 = load i32*, i32** %80, align 8
  %82 = getelementptr inbounds i32, i32* %81, i64 0
  store i32 1, i32* %82, align 4
  %83 = load i64, i64* %14, align 8
  %84 = load i64, i64* %15, align 8
  %85 = icmp ne i64 %83, %84
  br i1 %85, label %86, label %90

86:                                               ; preds = %76
  %87 = load i8*, i8** @MP_NEG, align 8
  %88 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %89 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %88, i32 0, i32 1
  store i8* %87, i8** %89, align 8
  br label %90

90:                                               ; preds = %86, %76
  br label %91

91:                                               ; preds = %90, %73
  %92 = load i32, i32* @MP_OK, align 4
  store i32 %92, i32* %5, align 4
  br label %234

93:                                               ; preds = %64
  br label %94

94:                                               ; preds = %93
  br label %95

95:                                               ; preds = %94
  %96 = call i32 @DECLARE_TEMP(i32 2)
  %97 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %98 = call i32 @s_isp2(%struct.TYPE_19__* %97)
  store i32 %98, i32* %16, align 4
  %99 = icmp slt i32 %98, 0
  br i1 %99, label %100, label %143

100:                                              ; preds = %95
  %101 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %102 = icmp ne %struct.TYPE_19__* %101, null
  br i1 %102, label %103, label %113

103:                                              ; preds = %100
  %104 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %105 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %106 = icmp ne %struct.TYPE_19__* %104, %105
  br i1 %106, label %107, label %113

107:                                              ; preds = %103
  %108 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %109 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %110 = call i32 @mp_int_copy(%struct.TYPE_19__* %108, %struct.TYPE_19__* %109)
  %111 = call i32 @REQUIRE(i32 %110)
  %112 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  store %struct.TYPE_19__* %112, %struct.TYPE_19__** %12, align 8
  br label %119

113:                                              ; preds = %103, %100
  %114 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %115 = call %struct.TYPE_19__* @TEMP(i32 0)
  %116 = call i32 @mp_int_copy(%struct.TYPE_19__* %114, %struct.TYPE_19__* %115)
  %117 = call i32 @REQUIRE(i32 %116)
  %118 = call %struct.TYPE_19__* @TEMP(i32 0)
  store %struct.TYPE_19__* %118, %struct.TYPE_19__** %12, align 8
  br label %119

119:                                              ; preds = %113, %107
  %120 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %121 = icmp ne %struct.TYPE_19__* %120, null
  br i1 %121, label %122, label %132

122:                                              ; preds = %119
  %123 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %124 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %125 = icmp ne %struct.TYPE_19__* %123, %124
  br i1 %125, label %126, label %132

126:                                              ; preds = %122
  %127 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %128 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %129 = call i32 @mp_int_copy(%struct.TYPE_19__* %127, %struct.TYPE_19__* %128)
  %130 = call i32 @REQUIRE(i32 %129)
  %131 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  store %struct.TYPE_19__* %131, %struct.TYPE_19__** %13, align 8
  br label %138

132:                                              ; preds = %122, %119
  %133 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %134 = call %struct.TYPE_19__* @TEMP(i32 1)
  %135 = call i32 @mp_int_copy(%struct.TYPE_19__* %133, %struct.TYPE_19__* %134)
  %136 = call i32 @REQUIRE(i32 %135)
  %137 = call %struct.TYPE_19__* @TEMP(i32 1)
  store %struct.TYPE_19__* %137, %struct.TYPE_19__** %13, align 8
  br label %138

138:                                              ; preds = %132, %126
  %139 = load %struct.TYPE_19__*, %struct.TYPE_19__** %12, align 8
  %140 = load %struct.TYPE_19__*, %struct.TYPE_19__** %13, align 8
  %141 = call i32 @s_udiv_knuth(%struct.TYPE_19__* %139, %struct.TYPE_19__* %140)
  %142 = call i32 @REQUIRE(i32 %141)
  br label %176

143:                                              ; preds = %95
  %144 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %145 = icmp ne %struct.TYPE_19__* %144, null
  br i1 %145, label %146, label %151

146:                                              ; preds = %143
  %147 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %148 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %149 = call i32 @mp_int_copy(%struct.TYPE_19__* %147, %struct.TYPE_19__* %148)
  %150 = call i32 @REQUIRE(i32 %149)
  br label %151

151:                                              ; preds = %146, %143
  %152 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %153 = icmp ne %struct.TYPE_19__* %152, null
  br i1 %153, label %154, label %159

154:                                              ; preds = %151
  %155 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %156 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %157 = call i32 @mp_int_copy(%struct.TYPE_19__* %155, %struct.TYPE_19__* %156)
  %158 = call i32 @REQUIRE(i32 %157)
  br label %159

159:                                              ; preds = %154, %151
  %160 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %161 = icmp ne %struct.TYPE_19__* %160, null
  br i1 %161, label %162, label %166

162:                                              ; preds = %159
  %163 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %164 = load i32, i32* %16, align 4
  %165 = call i32 @s_qdiv(%struct.TYPE_19__* %163, i32 %164)
  br label %166

166:                                              ; preds = %162, %159
  %167 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  store %struct.TYPE_19__* %167, %struct.TYPE_19__** %12, align 8
  %168 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %169 = icmp ne %struct.TYPE_19__* %168, null
  br i1 %169, label %170, label %174

170:                                              ; preds = %166
  %171 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %172 = load i32, i32* %16, align 4
  %173 = call i32 @s_qmod(%struct.TYPE_19__* %171, i32 %172)
  br label %174

174:                                              ; preds = %170, %166
  %175 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  store %struct.TYPE_19__* %175, %struct.TYPE_19__** %13, align 8
  br label %176

176:                                              ; preds = %174, %138
  %177 = load %struct.TYPE_19__*, %struct.TYPE_19__** %13, align 8
  %178 = icmp ne %struct.TYPE_19__* %177, null
  br i1 %178, label %179, label %192

179:                                              ; preds = %176
  %180 = load i64, i64* %14, align 8
  %181 = inttoptr i64 %180 to i8*
  %182 = load %struct.TYPE_19__*, %struct.TYPE_19__** %13, align 8
  %183 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %182, i32 0, i32 1
  store i8* %181, i8** %183, align 8
  %184 = load %struct.TYPE_19__*, %struct.TYPE_19__** %13, align 8
  %185 = call i64 @CMPZ(%struct.TYPE_19__* %184)
  %186 = icmp eq i64 %185, 0
  br i1 %186, label %187, label %191

187:                                              ; preds = %179
  %188 = load i8*, i8** @MP_ZPOS, align 8
  %189 = load %struct.TYPE_19__*, %struct.TYPE_19__** %13, align 8
  %190 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %189, i32 0, i32 1
  store i8* %188, i8** %190, align 8
  br label %191

191:                                              ; preds = %187, %179
  br label %192

192:                                              ; preds = %191, %176
  %193 = load %struct.TYPE_19__*, %struct.TYPE_19__** %12, align 8
  %194 = icmp ne %struct.TYPE_19__* %193, null
  br i1 %194, label %195, label %215

195:                                              ; preds = %192
  %196 = load i64, i64* %14, align 8
  %197 = load i64, i64* %15, align 8
  %198 = icmp eq i64 %196, %197
  br i1 %198, label %199, label %201

199:                                              ; preds = %195
  %200 = load i8*, i8** @MP_ZPOS, align 8
  br label %203

201:                                              ; preds = %195
  %202 = load i8*, i8** @MP_NEG, align 8
  br label %203

203:                                              ; preds = %201, %199
  %204 = phi i8* [ %200, %199 ], [ %202, %201 ]
  %205 = load %struct.TYPE_19__*, %struct.TYPE_19__** %12, align 8
  %206 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %205, i32 0, i32 1
  store i8* %204, i8** %206, align 8
  %207 = load %struct.TYPE_19__*, %struct.TYPE_19__** %12, align 8
  %208 = call i64 @CMPZ(%struct.TYPE_19__* %207)
  %209 = icmp eq i64 %208, 0
  br i1 %209, label %210, label %214

210:                                              ; preds = %203
  %211 = load i8*, i8** @MP_ZPOS, align 8
  %212 = load %struct.TYPE_19__*, %struct.TYPE_19__** %12, align 8
  %213 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %212, i32 0, i32 1
  store i8* %211, i8** %213, align 8
  br label %214

214:                                              ; preds = %210, %203
  br label %215

215:                                              ; preds = %214, %192
  %216 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %217 = icmp ne %struct.TYPE_19__* %216, null
  br i1 %217, label %218, label %223

218:                                              ; preds = %215
  %219 = load %struct.TYPE_19__*, %struct.TYPE_19__** %12, align 8
  %220 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %221 = call i32 @mp_int_copy(%struct.TYPE_19__* %219, %struct.TYPE_19__* %220)
  %222 = call i32 @REQUIRE(i32 %221)
  br label %223

223:                                              ; preds = %218, %215
  %224 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %225 = icmp ne %struct.TYPE_19__* %224, null
  br i1 %225, label %226, label %231

226:                                              ; preds = %223
  %227 = load %struct.TYPE_19__*, %struct.TYPE_19__** %13, align 8
  %228 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %229 = call i32 @mp_int_copy(%struct.TYPE_19__* %227, %struct.TYPE_19__* %228)
  %230 = call i32 @REQUIRE(i32 %229)
  br label %231

231:                                              ; preds = %226, %223
  %232 = call i32 (...) @CLEANUP_TEMP()
  %233 = load i32, i32* %11, align 4
  store i32 %233, i32* %5, align 4
  br label %234

234:                                              ; preds = %231, %91, %62, %54, %38
  %235 = load i32, i32* %5, align 4
  ret i32 %235
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @MP_SIGN(%struct.TYPE_19__*) #1

declare dso_local i64 @CMPZ(%struct.TYPE_19__*) #1

declare dso_local i32 @s_ucmp(%struct.TYPE_19__*, %struct.TYPE_19__*) #1

declare dso_local i32 @mp_int_copy(%struct.TYPE_19__*, %struct.TYPE_19__*) #1

declare dso_local i32 @mp_int_zero(%struct.TYPE_19__*) #1

declare dso_local i32 @DECLARE_TEMP(i32) #1

declare dso_local i32 @s_isp2(%struct.TYPE_19__*) #1

declare dso_local i32 @REQUIRE(i32) #1

declare dso_local %struct.TYPE_19__* @TEMP(i32) #1

declare dso_local i32 @s_udiv_knuth(%struct.TYPE_19__*, %struct.TYPE_19__*) #1

declare dso_local i32 @s_qdiv(%struct.TYPE_19__*, i32) #1

declare dso_local i32 @s_qmod(%struct.TYPE_19__*, i32) #1

declare dso_local i32 @CLEANUP_TEMP(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
