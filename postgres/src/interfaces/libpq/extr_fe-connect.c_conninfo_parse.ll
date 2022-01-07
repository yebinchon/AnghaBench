; ModuleID = '/home/carl/AnghaBench/postgres/src/interfaces/libpq/extr_fe-connect.c_conninfo_parse.c'
source_filename = "/home/carl/AnghaBench/postgres/src/interfaces/libpq/extr_fe-connect.c_conninfo_parse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [15 x i8] c"out of memory\0A\00", align 1
@.str.1 = private unnamed_addr constant [50 x i8] c"missing \22=\22 after \22%s\22 in connection info string\0A\00", align 1
@.str.2 = private unnamed_addr constant [54 x i8] c"unterminated quoted string in connection info string\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8*, i32, i32)* @conninfo_parse to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @conninfo_parse(i8* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32*, align 8
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %14 = load i32, i32* %6, align 4
  %15 = call i32* @conninfo_init(i32 %14)
  store i32* %15, i32** %13, align 8
  %16 = load i32*, i32** %13, align 8
  %17 = icmp eq i32* %16, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %3
  store i32* null, i32** %4, align 8
  br label %239

19:                                               ; preds = %3
  %20 = load i8*, i8** %5, align 8
  %21 = call i8* @strdup(i8* %20)
  store i8* %21, i8** %10, align 8
  %22 = icmp eq i8* %21, null
  br i1 %22, label %23, label %29

23:                                               ; preds = %19
  %24 = load i32, i32* %6, align 4
  %25 = call i32 @libpq_gettext(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %26 = call i32 (i32, i32, ...) @printfPQExpBuffer(i32 %24, i32 %25)
  %27 = load i32*, i32** %13, align 8
  %28 = call i32 @PQconninfoFree(i32* %27)
  store i32* null, i32** %4, align 8
  br label %239

29:                                               ; preds = %19
  %30 = load i8*, i8** %10, align 8
  store i8* %30, i8** %11, align 8
  br label %31

31:                                               ; preds = %222, %40, %29
  %32 = load i8*, i8** %11, align 8
  %33 = load i8, i8* %32, align 1
  %34 = icmp ne i8 %33, 0
  br i1 %34, label %35, label %223

35:                                               ; preds = %31
  %36 = load i8*, i8** %11, align 8
  %37 = load i8, i8* %36, align 1
  %38 = call i64 @isspace(i8 zeroext %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %35
  %41 = load i8*, i8** %11, align 8
  %42 = getelementptr inbounds i8, i8* %41, i32 1
  store i8* %42, i8** %11, align 8
  br label %31

43:                                               ; preds = %35
  %44 = load i8*, i8** %11, align 8
  store i8* %44, i8** %8, align 8
  br label %45

45:                                               ; preds = %77, %43
  %46 = load i8*, i8** %11, align 8
  %47 = load i8, i8* %46, align 1
  %48 = icmp ne i8 %47, 0
  br i1 %48, label %49, label %80

49:                                               ; preds = %45
  %50 = load i8*, i8** %11, align 8
  %51 = load i8, i8* %50, align 1
  %52 = sext i8 %51 to i32
  %53 = icmp eq i32 %52, 61
  br i1 %53, label %54, label %55

54:                                               ; preds = %49
  br label %80

55:                                               ; preds = %49
  %56 = load i8*, i8** %11, align 8
  %57 = load i8, i8* %56, align 1
  %58 = call i64 @isspace(i8 zeroext %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %77

60:                                               ; preds = %55
  %61 = load i8*, i8** %11, align 8
  %62 = getelementptr inbounds i8, i8* %61, i32 1
  store i8* %62, i8** %11, align 8
  store i8 0, i8* %61, align 1
  br label %63

63:                                               ; preds = %73, %60
  %64 = load i8*, i8** %11, align 8
  %65 = load i8, i8* %64, align 1
  %66 = icmp ne i8 %65, 0
  br i1 %66, label %67, label %76

67:                                               ; preds = %63
  %68 = load i8*, i8** %11, align 8
  %69 = load i8, i8* %68, align 1
  %70 = call i64 @isspace(i8 zeroext %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %73, label %72

72:                                               ; preds = %67
  br label %76

73:                                               ; preds = %67
  %74 = load i8*, i8** %11, align 8
  %75 = getelementptr inbounds i8, i8* %74, i32 1
  store i8* %75, i8** %11, align 8
  br label %63

76:                                               ; preds = %72, %63
  br label %80

77:                                               ; preds = %55
  %78 = load i8*, i8** %11, align 8
  %79 = getelementptr inbounds i8, i8* %78, i32 1
  store i8* %79, i8** %11, align 8
  br label %45

80:                                               ; preds = %76, %54, %45
  %81 = load i8*, i8** %11, align 8
  %82 = load i8, i8* %81, align 1
  %83 = sext i8 %82 to i32
  %84 = icmp ne i32 %83, 61
  br i1 %84, label %85, label %94

85:                                               ; preds = %80
  %86 = load i32, i32* %6, align 4
  %87 = call i32 @libpq_gettext(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0))
  %88 = load i8*, i8** %8, align 8
  %89 = call i32 (i32, i32, ...) @printfPQExpBuffer(i32 %86, i32 %87, i8* %88)
  %90 = load i32*, i32** %13, align 8
  %91 = call i32 @PQconninfoFree(i32* %90)
  %92 = load i8*, i8** %10, align 8
  %93 = call i32 @free(i8* %92)
  store i32* null, i32** %4, align 8
  br label %239

94:                                               ; preds = %80
  %95 = load i8*, i8** %11, align 8
  %96 = getelementptr inbounds i8, i8* %95, i32 1
  store i8* %96, i8** %11, align 8
  store i8 0, i8* %95, align 1
  br label %97

97:                                               ; preds = %107, %94
  %98 = load i8*, i8** %11, align 8
  %99 = load i8, i8* %98, align 1
  %100 = icmp ne i8 %99, 0
  br i1 %100, label %101, label %110

101:                                              ; preds = %97
  %102 = load i8*, i8** %11, align 8
  %103 = load i8, i8* %102, align 1
  %104 = call i64 @isspace(i8 zeroext %103)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %107, label %106

106:                                              ; preds = %101
  br label %110

107:                                              ; preds = %101
  %108 = load i8*, i8** %11, align 8
  %109 = getelementptr inbounds i8, i8* %108, i32 1
  store i8* %109, i8** %11, align 8
  br label %97

110:                                              ; preds = %106, %97
  %111 = load i8*, i8** %11, align 8
  store i8* %111, i8** %9, align 8
  %112 = load i8*, i8** %11, align 8
  %113 = load i8, i8* %112, align 1
  %114 = sext i8 %113 to i32
  %115 = icmp ne i32 %114, 39
  br i1 %115, label %116, label %158

116:                                              ; preds = %110
  %117 = load i8*, i8** %9, align 8
  store i8* %117, i8** %12, align 8
  br label %118

118:                                              ; preds = %155, %116
  %119 = load i8*, i8** %11, align 8
  %120 = load i8, i8* %119, align 1
  %121 = icmp ne i8 %120, 0
  br i1 %121, label %122, label %156

122:                                              ; preds = %118
  %123 = load i8*, i8** %11, align 8
  %124 = load i8, i8* %123, align 1
  %125 = call i64 @isspace(i8 zeroext %124)
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %130

127:                                              ; preds = %122
  %128 = load i8*, i8** %11, align 8
  %129 = getelementptr inbounds i8, i8* %128, i32 1
  store i8* %129, i8** %11, align 8
  store i8 0, i8* %128, align 1
  br label %156

130:                                              ; preds = %122
  %131 = load i8*, i8** %11, align 8
  %132 = load i8, i8* %131, align 1
  %133 = sext i8 %132 to i32
  %134 = icmp eq i32 %133, 92
  br i1 %134, label %135, label %149

135:                                              ; preds = %130
  %136 = load i8*, i8** %11, align 8
  %137 = getelementptr inbounds i8, i8* %136, i32 1
  store i8* %137, i8** %11, align 8
  %138 = load i8*, i8** %11, align 8
  %139 = load i8, i8* %138, align 1
  %140 = sext i8 %139 to i32
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %148

142:                                              ; preds = %135
  %143 = load i8*, i8** %11, align 8
  %144 = getelementptr inbounds i8, i8* %143, i32 1
  store i8* %144, i8** %11, align 8
  %145 = load i8, i8* %143, align 1
  %146 = load i8*, i8** %12, align 8
  %147 = getelementptr inbounds i8, i8* %146, i32 1
  store i8* %147, i8** %12, align 8
  store i8 %145, i8* %146, align 1
  br label %148

148:                                              ; preds = %142, %135
  br label %155

149:                                              ; preds = %130
  %150 = load i8*, i8** %11, align 8
  %151 = getelementptr inbounds i8, i8* %150, i32 1
  store i8* %151, i8** %11, align 8
  %152 = load i8, i8* %150, align 1
  %153 = load i8*, i8** %12, align 8
  %154 = getelementptr inbounds i8, i8* %153, i32 1
  store i8* %154, i8** %12, align 8
  store i8 %152, i8* %153, align 1
  br label %155

155:                                              ; preds = %149, %148
  br label %118

156:                                              ; preds = %127, %118
  %157 = load i8*, i8** %12, align 8
  store i8 0, i8* %157, align 1
  br label %210

158:                                              ; preds = %110
  %159 = load i8*, i8** %9, align 8
  store i8* %159, i8** %12, align 8
  %160 = load i8*, i8** %11, align 8
  %161 = getelementptr inbounds i8, i8* %160, i32 1
  store i8* %161, i8** %11, align 8
  br label %162

162:                                              ; preds = %203, %193, %158
  %163 = load i8*, i8** %11, align 8
  %164 = load i8, i8* %163, align 1
  %165 = sext i8 %164 to i32
  %166 = icmp eq i32 %165, 0
  br i1 %166, label %167, label %175

167:                                              ; preds = %162
  %168 = load i32, i32* %6, align 4
  %169 = call i32 @libpq_gettext(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.2, i64 0, i64 0))
  %170 = call i32 (i32, i32, ...) @printfPQExpBuffer(i32 %168, i32 %169)
  %171 = load i32*, i32** %13, align 8
  %172 = call i32 @PQconninfoFree(i32* %171)
  %173 = load i8*, i8** %10, align 8
  %174 = call i32 @free(i8* %173)
  store i32* null, i32** %4, align 8
  br label %239

175:                                              ; preds = %162
  %176 = load i8*, i8** %11, align 8
  %177 = load i8, i8* %176, align 1
  %178 = sext i8 %177 to i32
  %179 = icmp eq i32 %178, 92
  br i1 %179, label %180, label %194

180:                                              ; preds = %175
  %181 = load i8*, i8** %11, align 8
  %182 = getelementptr inbounds i8, i8* %181, i32 1
  store i8* %182, i8** %11, align 8
  %183 = load i8*, i8** %11, align 8
  %184 = load i8, i8* %183, align 1
  %185 = sext i8 %184 to i32
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %187, label %193

187:                                              ; preds = %180
  %188 = load i8*, i8** %11, align 8
  %189 = getelementptr inbounds i8, i8* %188, i32 1
  store i8* %189, i8** %11, align 8
  %190 = load i8, i8* %188, align 1
  %191 = load i8*, i8** %12, align 8
  %192 = getelementptr inbounds i8, i8* %191, i32 1
  store i8* %192, i8** %12, align 8
  store i8 %190, i8* %191, align 1
  br label %193

193:                                              ; preds = %187, %180
  br label %162

194:                                              ; preds = %175
  %195 = load i8*, i8** %11, align 8
  %196 = load i8, i8* %195, align 1
  %197 = sext i8 %196 to i32
  %198 = icmp eq i32 %197, 39
  br i1 %198, label %199, label %203

199:                                              ; preds = %194
  %200 = load i8*, i8** %12, align 8
  store i8 0, i8* %200, align 1
  %201 = load i8*, i8** %11, align 8
  %202 = getelementptr inbounds i8, i8* %201, i32 1
  store i8* %202, i8** %11, align 8
  br label %209

203:                                              ; preds = %194
  %204 = load i8*, i8** %11, align 8
  %205 = getelementptr inbounds i8, i8* %204, i32 1
  store i8* %205, i8** %11, align 8
  %206 = load i8, i8* %204, align 1
  %207 = load i8*, i8** %12, align 8
  %208 = getelementptr inbounds i8, i8* %207, i32 1
  store i8* %208, i8** %12, align 8
  store i8 %206, i8* %207, align 1
  br label %162

209:                                              ; preds = %199
  br label %210

210:                                              ; preds = %209, %156
  %211 = load i32*, i32** %13, align 8
  %212 = load i8*, i8** %8, align 8
  %213 = load i8*, i8** %9, align 8
  %214 = load i32, i32* %6, align 4
  %215 = call i32 @conninfo_storeval(i32* %211, i8* %212, i8* %213, i32 %214, i32 0, i32 0)
  %216 = icmp ne i32 %215, 0
  br i1 %216, label %222, label %217

217:                                              ; preds = %210
  %218 = load i32*, i32** %13, align 8
  %219 = call i32 @PQconninfoFree(i32* %218)
  %220 = load i8*, i8** %10, align 8
  %221 = call i32 @free(i8* %220)
  store i32* null, i32** %4, align 8
  br label %239

222:                                              ; preds = %210
  br label %31

223:                                              ; preds = %31
  %224 = load i8*, i8** %10, align 8
  %225 = call i32 @free(i8* %224)
  %226 = load i32, i32* %7, align 4
  %227 = icmp ne i32 %226, 0
  br i1 %227, label %228, label %237

228:                                              ; preds = %223
  %229 = load i32*, i32** %13, align 8
  %230 = load i32, i32* %6, align 4
  %231 = call i32 @conninfo_add_defaults(i32* %229, i32 %230)
  %232 = icmp ne i32 %231, 0
  br i1 %232, label %236, label %233

233:                                              ; preds = %228
  %234 = load i32*, i32** %13, align 8
  %235 = call i32 @PQconninfoFree(i32* %234)
  store i32* null, i32** %4, align 8
  br label %239

236:                                              ; preds = %228
  br label %237

237:                                              ; preds = %236, %223
  %238 = load i32*, i32** %13, align 8
  store i32* %238, i32** %4, align 8
  br label %239

239:                                              ; preds = %237, %233, %217, %167, %85, %23, %18
  %240 = load i32*, i32** %4, align 8
  ret i32* %240
}

declare dso_local i32* @conninfo_init(i32) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local i32 @printfPQExpBuffer(i32, i32, ...) #1

declare dso_local i32 @libpq_gettext(i8*) #1

declare dso_local i32 @PQconninfoFree(i32*) #1

declare dso_local i64 @isspace(i8 zeroext) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @conninfo_storeval(i32*, i8*, i8*, i32, i32, i32) #1

declare dso_local i32 @conninfo_add_defaults(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
