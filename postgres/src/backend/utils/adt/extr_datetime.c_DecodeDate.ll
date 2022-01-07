; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_datetime.c_DecodeDate.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_datetime.c_DecodeDate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pg_tm = type { i32 }

@MAXDATEFIELDS = common dso_local global i32 0, align 4
@DTERR_BAD_FORMAT = common dso_local global i32 0, align 4
@IGNORE_DTF = common dso_local global i32 0, align 4
@DOY = common dso_local global i32 0, align 4
@TZ = common dso_local global i32 0, align 4
@DTK_DATE_M = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i32*, i32*, %struct.pg_tm*)* @DecodeDate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @DecodeDate(i8* %0, i32 %1, i32* %2, i32* %3, %struct.pg_tm* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.pg_tm*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i8*, align 8
  %22 = alloca i64, align 8
  %23 = alloca i32, align 4
  store i8* %0, i8** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store %struct.pg_tm* %4, %struct.pg_tm** %11, align 8
  store i32 0, i32* %13, align 4
  store i32 0, i32* %17, align 4
  store i32 0, i32* %20, align 4
  %24 = load i32, i32* @MAXDATEFIELDS, align 4
  %25 = zext i32 %24 to i64
  %26 = call i8* @llvm.stacksave()
  store i8* %26, i8** %21, align 8
  %27 = alloca i8*, i64 %25, align 16
  store i64 %25, i64* %22, align 8
  %28 = load i32*, i32** %9, align 8
  store i32 0, i32* %28, align 4
  br label %29

29:                                               ; preds = %107, %5
  %30 = load i8*, i8** %7, align 8
  %31 = load i8, i8* %30, align 1
  %32 = sext i8 %31 to i32
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %29
  %35 = load i32, i32* %13, align 4
  %36 = load i32, i32* @MAXDATEFIELDS, align 4
  %37 = icmp slt i32 %35, %36
  br label %38

38:                                               ; preds = %34, %29
  %39 = phi i1 [ false, %29 ], [ %37, %34 ]
  br i1 %39, label %40, label %110

40:                                               ; preds = %38
  br label %41

41:                                               ; preds = %54, %40
  %42 = load i8*, i8** %7, align 8
  %43 = load i8, i8* %42, align 1
  %44 = sext i8 %43 to i32
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %52

46:                                               ; preds = %41
  %47 = load i8*, i8** %7, align 8
  %48 = load i8, i8* %47, align 1
  %49 = call i32 @isalnum(i8 zeroext %48)
  %50 = icmp ne i32 %49, 0
  %51 = xor i1 %50, true
  br label %52

52:                                               ; preds = %46, %41
  %53 = phi i1 [ false, %41 ], [ %51, %46 ]
  br i1 %53, label %54, label %57

54:                                               ; preds = %52
  %55 = load i8*, i8** %7, align 8
  %56 = getelementptr inbounds i8, i8* %55, i32 1
  store i8* %56, i8** %7, align 8
  br label %41

57:                                               ; preds = %52
  %58 = load i8*, i8** %7, align 8
  %59 = load i8, i8* %58, align 1
  %60 = sext i8 %59 to i32
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %57
  %63 = load i32, i32* @DTERR_BAD_FORMAT, align 4
  store i32 %63, i32* %6, align 4
  store i32 1, i32* %23, align 4
  br label %234

64:                                               ; preds = %57
  %65 = load i8*, i8** %7, align 8
  %66 = load i32, i32* %13, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i8*, i8** %27, i64 %67
  store i8* %65, i8** %68, align 8
  %69 = load i8*, i8** %7, align 8
  %70 = load i8, i8* %69, align 1
  %71 = call i64 @isdigit(i8 zeroext %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %83

73:                                               ; preds = %64
  br label %74

74:                                               ; preds = %79, %73
  %75 = load i8*, i8** %7, align 8
  %76 = load i8, i8* %75, align 1
  %77 = call i64 @isdigit(i8 zeroext %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %82

79:                                               ; preds = %74
  %80 = load i8*, i8** %7, align 8
  %81 = getelementptr inbounds i8, i8* %80, i32 1
  store i8* %81, i8** %7, align 8
  br label %74

82:                                               ; preds = %74
  br label %99

83:                                               ; preds = %64
  %84 = load i8*, i8** %7, align 8
  %85 = load i8, i8* %84, align 1
  %86 = call i64 @isalpha(i8 zeroext %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %98

88:                                               ; preds = %83
  br label %89

89:                                               ; preds = %94, %88
  %90 = load i8*, i8** %7, align 8
  %91 = load i8, i8* %90, align 1
  %92 = call i64 @isalpha(i8 zeroext %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %97

94:                                               ; preds = %89
  %95 = load i8*, i8** %7, align 8
  %96 = getelementptr inbounds i8, i8* %95, i32 1
  store i8* %96, i8** %7, align 8
  br label %89

97:                                               ; preds = %89
  br label %98

98:                                               ; preds = %97, %83
  br label %99

99:                                               ; preds = %98, %82
  %100 = load i8*, i8** %7, align 8
  %101 = load i8, i8* %100, align 1
  %102 = sext i8 %101 to i32
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %107

104:                                              ; preds = %99
  %105 = load i8*, i8** %7, align 8
  %106 = getelementptr inbounds i8, i8* %105, i32 1
  store i8* %106, i8** %7, align 8
  store i8 0, i8* %105, align 1
  br label %107

107:                                              ; preds = %104, %99
  %108 = load i32, i32* %13, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %13, align 4
  br label %29

110:                                              ; preds = %38
  store i32 0, i32* %14, align 4
  br label %111

111:                                              ; preds = %163, %110
  %112 = load i32, i32* %14, align 4
  %113 = load i32, i32* %13, align 4
  %114 = icmp slt i32 %112, %113
  br i1 %114, label %115, label %166

115:                                              ; preds = %111
  %116 = load i32, i32* %14, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds i8*, i8** %27, i64 %117
  %119 = load i8*, i8** %118, align 8
  %120 = load i8, i8* %119, align 1
  %121 = call i64 @isalpha(i8 zeroext %120)
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %162

123:                                              ; preds = %115
  %124 = load i32, i32* %14, align 4
  %125 = load i32, i32* %14, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds i8*, i8** %27, i64 %126
  %128 = load i8*, i8** %127, align 8
  %129 = call i32 @DecodeSpecial(i32 %124, i8* %128, i32* %19)
  store i32 %129, i32* %18, align 4
  %130 = load i32, i32* %18, align 4
  %131 = load i32, i32* @IGNORE_DTF, align 4
  %132 = icmp eq i32 %130, %131
  br i1 %132, label %133, label %134

133:                                              ; preds = %123
  br label %163

134:                                              ; preds = %123
  %135 = load i32, i32* %18, align 4
  %136 = call i32 @DTK_M(i32 %135)
  store i32 %136, i32* %20, align 4
  %137 = load i32, i32* %18, align 4
  switch i32 %137, label %142 [
    i32 128, label %138
  ]

138:                                              ; preds = %134
  %139 = load i32, i32* %19, align 4
  %140 = load %struct.pg_tm*, %struct.pg_tm** %11, align 8
  %141 = getelementptr inbounds %struct.pg_tm, %struct.pg_tm* %140, i32 0, i32 0
  store i32 %139, i32* %141, align 4
  store i32 1, i32* %17, align 4
  br label %144

142:                                              ; preds = %134
  %143 = load i32, i32* @DTERR_BAD_FORMAT, align 4
  store i32 %143, i32* %6, align 4
  store i32 1, i32* %23, align 4
  br label %234

144:                                              ; preds = %138
  %145 = load i32, i32* %8, align 4
  %146 = load i32, i32* %20, align 4
  %147 = and i32 %145, %146
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %151

149:                                              ; preds = %144
  %150 = load i32, i32* @DTERR_BAD_FORMAT, align 4
  store i32 %150, i32* %6, align 4
  store i32 1, i32* %23, align 4
  br label %234

151:                                              ; preds = %144
  %152 = load i32, i32* %20, align 4
  %153 = load i32, i32* %8, align 4
  %154 = or i32 %153, %152
  store i32 %154, i32* %8, align 4
  %155 = load i32, i32* %20, align 4
  %156 = load i32*, i32** %9, align 8
  %157 = load i32, i32* %156, align 4
  %158 = or i32 %157, %155
  store i32 %158, i32* %156, align 4
  %159 = load i32, i32* %14, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds i8*, i8** %27, i64 %160
  store i8* null, i8** %161, align 8
  br label %162

162:                                              ; preds = %151, %115
  br label %163

163:                                              ; preds = %162, %133
  %164 = load i32, i32* %14, align 4
  %165 = add nsw i32 %164, 1
  store i32 %165, i32* %14, align 4
  br label %111

166:                                              ; preds = %111
  store i32 0, i32* %14, align 4
  br label %167

167:                                              ; preds = %217, %166
  %168 = load i32, i32* %14, align 4
  %169 = load i32, i32* %13, align 4
  %170 = icmp slt i32 %168, %169
  br i1 %170, label %171, label %220

171:                                              ; preds = %167
  %172 = load i32, i32* %14, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds i8*, i8** %27, i64 %173
  %175 = load i8*, i8** %174, align 8
  %176 = icmp eq i8* %175, null
  br i1 %176, label %177, label %178

177:                                              ; preds = %171
  br label %217

178:                                              ; preds = %171
  %179 = load i32, i32* %14, align 4
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds i8*, i8** %27, i64 %180
  %182 = load i8*, i8** %181, align 8
  %183 = call i32 @strlen(i8* %182)
  store i32 %183, i32* %15, align 4
  %184 = icmp sle i32 %183, 0
  br i1 %184, label %185, label %187

185:                                              ; preds = %178
  %186 = load i32, i32* @DTERR_BAD_FORMAT, align 4
  store i32 %186, i32* %6, align 4
  store i32 1, i32* %23, align 4
  br label %234

187:                                              ; preds = %178
  %188 = load i32, i32* %15, align 4
  %189 = load i32, i32* %14, align 4
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds i8*, i8** %27, i64 %190
  %192 = load i8*, i8** %191, align 8
  %193 = load i32, i32* %17, align 4
  %194 = load i32, i32* %8, align 4
  %195 = load %struct.pg_tm*, %struct.pg_tm** %11, align 8
  %196 = load i32*, i32** %10, align 8
  %197 = call i32 @DecodeNumber(i32 %188, i8* %192, i32 %193, i32 %194, i32* %20, %struct.pg_tm* %195, i32* %12, i32* %196)
  store i32 %197, i32* %16, align 4
  %198 = load i32, i32* %16, align 4
  %199 = icmp ne i32 %198, 0
  br i1 %199, label %200, label %202

200:                                              ; preds = %187
  %201 = load i32, i32* %16, align 4
  store i32 %201, i32* %6, align 4
  store i32 1, i32* %23, align 4
  br label %234

202:                                              ; preds = %187
  %203 = load i32, i32* %8, align 4
  %204 = load i32, i32* %20, align 4
  %205 = and i32 %203, %204
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %207, label %209

207:                                              ; preds = %202
  %208 = load i32, i32* @DTERR_BAD_FORMAT, align 4
  store i32 %208, i32* %6, align 4
  store i32 1, i32* %23, align 4
  br label %234

209:                                              ; preds = %202
  %210 = load i32, i32* %20, align 4
  %211 = load i32, i32* %8, align 4
  %212 = or i32 %211, %210
  store i32 %212, i32* %8, align 4
  %213 = load i32, i32* %20, align 4
  %214 = load i32*, i32** %9, align 8
  %215 = load i32, i32* %214, align 4
  %216 = or i32 %215, %213
  store i32 %216, i32* %214, align 4
  br label %217

217:                                              ; preds = %209, %177
  %218 = load i32, i32* %14, align 4
  %219 = add nsw i32 %218, 1
  store i32 %219, i32* %14, align 4
  br label %167

220:                                              ; preds = %167
  %221 = load i32, i32* %8, align 4
  %222 = load i32, i32* @DOY, align 4
  %223 = call i32 @DTK_M(i32 %222)
  %224 = load i32, i32* @TZ, align 4
  %225 = call i32 @DTK_M(i32 %224)
  %226 = or i32 %223, %225
  %227 = xor i32 %226, -1
  %228 = and i32 %221, %227
  %229 = load i32, i32* @DTK_DATE_M, align 4
  %230 = icmp ne i32 %228, %229
  br i1 %230, label %231, label %233

231:                                              ; preds = %220
  %232 = load i32, i32* @DTERR_BAD_FORMAT, align 4
  store i32 %232, i32* %6, align 4
  store i32 1, i32* %23, align 4
  br label %234

233:                                              ; preds = %220
  store i32 0, i32* %6, align 4
  store i32 1, i32* %23, align 4
  br label %234

234:                                              ; preds = %233, %231, %207, %200, %185, %149, %142, %62
  %235 = load i8*, i8** %21, align 8
  call void @llvm.stackrestore(i8* %235)
  %236 = load i32, i32* %6, align 4
  ret i32 %236
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @isalnum(i8 zeroext) #2

declare dso_local i64 @isdigit(i8 zeroext) #2

declare dso_local i64 @isalpha(i8 zeroext) #2

declare dso_local i32 @DecodeSpecial(i32, i8*, i32*) #2

declare dso_local i32 @DTK_M(i32) #2

declare dso_local i32 @strlen(i8*) #2

declare dso_local i32 @DecodeNumber(i32, i8*, i32, i32, i32*, %struct.pg_tm*, i32*, i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
