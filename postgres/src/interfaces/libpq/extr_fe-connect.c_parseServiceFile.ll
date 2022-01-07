; ModuleID = '/home/carl/AnghaBench/postgres/src/interfaces/libpq/extr_fe-connect.c_parseServiceFile.c'
source_filename = "/home/carl/AnghaBench/postgres/src/interfaces/libpq/extr_fe-connect.c_parseServiceFile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8*, i32* }

@MAXBUFSIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"service file \22%s\22 not found\0A\00", align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"line %d too long in service file \22%s\22\0A\00", align 1
@.str.3 = private unnamed_addr constant [44 x i8] c"syntax error in service file \22%s\22, line %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"service\00", align 1
@.str.5 = private unnamed_addr constant [75 x i8] c"nested service specifications not supported in service file \22%s\22, line %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [15 x i8] c"out of memory\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, %struct.TYPE_4__*, i32, i32*)* @parseServiceFile to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parseServiceFile(i8* %0, i8* %1, %struct.TYPE_4__* %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.TYPE_4__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i8*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i32, align 4
  store i8* %0, i8** %7, align 8
  store i8* %1, i8** %8, align 8
  store %struct.TYPE_4__* %2, %struct.TYPE_4__** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  store i32 0, i32* %12, align 4
  %23 = load i32, i32* @MAXBUFSIZE, align 4
  %24 = zext i32 %23 to i64
  %25 = call i8* @llvm.stacksave()
  store i8* %25, i8** %15, align 8
  %26 = alloca i8, i64 %24, align 16
  store i64 %24, i64* %16, align 8
  %27 = load i8*, i8** %7, align 8
  %28 = call i32* @fopen(i8* %27, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32* %28, i32** %14, align 8
  %29 = load i32*, i32** %14, align 8
  %30 = icmp eq i32* %29, null
  br i1 %30, label %31, label %36

31:                                               ; preds = %5
  %32 = load i32, i32* %10, align 4
  %33 = call i32 @libpq_gettext(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %34 = load i8*, i8** %7, align 8
  %35 = call i32 (i32, i32, ...) @printfPQExpBuffer(i32 %32, i32 %33, i8* %34)
  store i32 1, i32* %6, align 4
  store i32 1, i32* %18, align 4
  br label %250

36:                                               ; preds = %5
  br label %37

37:                                               ; preds = %246, %110, %36
  %38 = trunc i64 %24 to i32
  %39 = load i32*, i32** %14, align 8
  %40 = call i8* @fgets(i8* %26, i32 %38, i32* %39)
  store i8* %40, i8** %17, align 8
  %41 = icmp ne i8* %40, null
  br i1 %41, label %42, label %247

42:                                               ; preds = %37
  %43 = load i32, i32* %12, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %12, align 4
  %45 = load i8*, i8** %17, align 8
  %46 = call i32 @strlen(i8* %45)
  %47 = sext i32 %46 to i64
  %48 = sub i64 %24, 1
  %49 = icmp uge i64 %47, %48
  br i1 %49, label %50, label %58

50:                                               ; preds = %42
  %51 = load i32*, i32** %14, align 8
  %52 = call i32 @fclose(i32* %51)
  %53 = load i32, i32* %10, align 4
  %54 = call i32 @libpq_gettext(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0))
  %55 = load i32, i32* %12, align 4
  %56 = load i8*, i8** %7, align 8
  %57 = call i32 (i32, i32, ...) @printfPQExpBuffer(i32 %53, i32 %54, i32 %55, i8* %56)
  store i32 2, i32* %6, align 4
  store i32 1, i32* %18, align 4
  br label %250

58:                                               ; preds = %42
  %59 = load i8*, i8** %17, align 8
  %60 = call i32 @strlen(i8* %59)
  store i32 %60, i32* %19, align 4
  br label %61

61:                                               ; preds = %75, %58
  %62 = load i32, i32* %19, align 4
  %63 = icmp sgt i32 %62, 0
  br i1 %63, label %64, label %73

64:                                               ; preds = %61
  %65 = load i8*, i8** %17, align 8
  %66 = load i32, i32* %19, align 4
  %67 = sub nsw i32 %66, 1
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i8, i8* %65, i64 %68
  %70 = load i8, i8* %69, align 1
  %71 = call i64 @isspace(i8 zeroext %70)
  %72 = icmp ne i64 %71, 0
  br label %73

73:                                               ; preds = %64, %61
  %74 = phi i1 [ false, %61 ], [ %72, %64 ]
  br i1 %74, label %75, label %81

75:                                               ; preds = %73
  %76 = load i8*, i8** %17, align 8
  %77 = load i32, i32* %19, align 4
  %78 = add nsw i32 %77, -1
  store i32 %78, i32* %19, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i8, i8* %76, i64 %79
  store i8 0, i8* %80, align 1
  br label %61

81:                                               ; preds = %73
  br label %82

82:                                               ; preds = %95, %81
  %83 = load i8*, i8** %17, align 8
  %84 = load i8, i8* %83, align 1
  %85 = sext i8 %84 to i32
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %93

87:                                               ; preds = %82
  %88 = load i8*, i8** %17, align 8
  %89 = getelementptr inbounds i8, i8* %88, i64 0
  %90 = load i8, i8* %89, align 1
  %91 = call i64 @isspace(i8 zeroext %90)
  %92 = icmp ne i64 %91, 0
  br label %93

93:                                               ; preds = %87, %82
  %94 = phi i1 [ false, %82 ], [ %92, %87 ]
  br i1 %94, label %95, label %98

95:                                               ; preds = %93
  %96 = load i8*, i8** %17, align 8
  %97 = getelementptr inbounds i8, i8* %96, i32 1
  store i8* %97, i8** %17, align 8
  br label %82

98:                                               ; preds = %93
  %99 = load i8*, i8** %17, align 8
  %100 = getelementptr inbounds i8, i8* %99, i64 0
  %101 = load i8, i8* %100, align 1
  %102 = sext i8 %101 to i32
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %110, label %104

104:                                              ; preds = %98
  %105 = load i8*, i8** %17, align 8
  %106 = getelementptr inbounds i8, i8* %105, i64 0
  %107 = load i8, i8* %106, align 1
  %108 = sext i8 %107 to i32
  %109 = icmp eq i32 %108, 35
  br i1 %109, label %110, label %111

110:                                              ; preds = %104, %98
  br label %37

111:                                              ; preds = %104
  %112 = load i8*, i8** %17, align 8
  %113 = getelementptr inbounds i8, i8* %112, i64 0
  %114 = load i8, i8* %113, align 1
  %115 = sext i8 %114 to i32
  %116 = icmp eq i32 %115, 91
  br i1 %116, label %117, label %147

117:                                              ; preds = %111
  %118 = load i32*, i32** %11, align 8
  %119 = load i32, i32* %118, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %124

121:                                              ; preds = %117
  %122 = load i32*, i32** %14, align 8
  %123 = call i32 @fclose(i32* %122)
  store i32 0, i32* %6, align 4
  store i32 1, i32* %18, align 4
  br label %250

124:                                              ; preds = %117
  %125 = load i8*, i8** %17, align 8
  %126 = getelementptr inbounds i8, i8* %125, i64 1
  %127 = load i8*, i8** %8, align 8
  %128 = load i8*, i8** %8, align 8
  %129 = call i32 @strlen(i8* %128)
  %130 = call i64 @strncmp(i8* %126, i8* %127, i32 %129)
  %131 = icmp eq i64 %130, 0
  br i1 %131, label %132, label %144

132:                                              ; preds = %124
  %133 = load i8*, i8** %17, align 8
  %134 = load i8*, i8** %8, align 8
  %135 = call i32 @strlen(i8* %134)
  %136 = add nsw i32 %135, 1
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds i8, i8* %133, i64 %137
  %139 = load i8, i8* %138, align 1
  %140 = sext i8 %139 to i32
  %141 = icmp eq i32 %140, 93
  br i1 %141, label %142, label %144

142:                                              ; preds = %132
  %143 = load i32*, i32** %11, align 8
  store i32 1, i32* %143, align 4
  br label %146

144:                                              ; preds = %132, %124
  %145 = load i32*, i32** %11, align 8
  store i32 0, i32* %145, align 4
  br label %146

146:                                              ; preds = %144, %142
  br label %246

147:                                              ; preds = %111
  %148 = load i32*, i32** %11, align 8
  %149 = load i32, i32* %148, align 4
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %245

151:                                              ; preds = %147
  %152 = load i8*, i8** %17, align 8
  store i8* %152, i8** %20, align 8
  %153 = load i8*, i8** %17, align 8
  %154 = call i8* @strchr(i8* %153, i8 signext 61)
  store i8* %154, i8** %21, align 8
  %155 = load i8*, i8** %21, align 8
  %156 = icmp eq i8* %155, null
  br i1 %156, label %157, label %165

157:                                              ; preds = %151
  %158 = load i32, i32* %10, align 4
  %159 = call i32 @libpq_gettext(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.3, i64 0, i64 0))
  %160 = load i8*, i8** %7, align 8
  %161 = load i32, i32* %12, align 4
  %162 = call i32 (i32, i32, ...) @printfPQExpBuffer(i32 %158, i32 %159, i8* %160, i32 %161)
  %163 = load i32*, i32** %14, align 8
  %164 = call i32 @fclose(i32* %163)
  store i32 3, i32* %6, align 4
  store i32 1, i32* %18, align 4
  br label %250

165:                                              ; preds = %151
  %166 = load i8*, i8** %21, align 8
  %167 = getelementptr inbounds i8, i8* %166, i32 1
  store i8* %167, i8** %21, align 8
  store i8 0, i8* %166, align 1
  %168 = load i8*, i8** %20, align 8
  %169 = call i64 @strcmp(i8* %168, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0))
  %170 = icmp eq i64 %169, 0
  br i1 %170, label %171, label %179

171:                                              ; preds = %165
  %172 = load i32, i32* %10, align 4
  %173 = call i32 @libpq_gettext(i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.5, i64 0, i64 0))
  %174 = load i8*, i8** %7, align 8
  %175 = load i32, i32* %12, align 4
  %176 = call i32 (i32, i32, ...) @printfPQExpBuffer(i32 %172, i32 %173, i8* %174, i32 %175)
  %177 = load i32*, i32** %14, align 8
  %178 = call i32 @fclose(i32* %177)
  store i32 3, i32* %6, align 4
  store i32 1, i32* %18, align 4
  br label %250

179:                                              ; preds = %165
  store i32 0, i32* %22, align 4
  store i32 0, i32* %13, align 4
  br label %180

180:                                              ; preds = %230, %179
  %181 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %182 = load i32, i32* %13, align 4
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %181, i64 %183
  %185 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %184, i32 0, i32 0
  %186 = load i8*, i8** %185, align 8
  %187 = icmp ne i8* %186, null
  br i1 %187, label %188, label %233

188:                                              ; preds = %180
  %189 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %190 = load i32, i32* %13, align 4
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %189, i64 %191
  %193 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %192, i32 0, i32 0
  %194 = load i8*, i8** %193, align 8
  %195 = load i8*, i8** %20, align 8
  %196 = call i64 @strcmp(i8* %194, i8* %195)
  %197 = icmp eq i64 %196, 0
  br i1 %197, label %198, label %229

198:                                              ; preds = %188
  %199 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %200 = load i32, i32* %13, align 4
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %199, i64 %201
  %203 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %202, i32 0, i32 1
  %204 = load i32*, i32** %203, align 8
  %205 = icmp eq i32* %204, null
  br i1 %205, label %206, label %214

206:                                              ; preds = %198
  %207 = load i8*, i8** %21, align 8
  %208 = call i32* @strdup(i8* %207)
  %209 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %210 = load i32, i32* %13, align 4
  %211 = sext i32 %210 to i64
  %212 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %209, i64 %211
  %213 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %212, i32 0, i32 1
  store i32* %208, i32** %213, align 8
  br label %214

214:                                              ; preds = %206, %198
  %215 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %216 = load i32, i32* %13, align 4
  %217 = sext i32 %216 to i64
  %218 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %215, i64 %217
  %219 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %218, i32 0, i32 1
  %220 = load i32*, i32** %219, align 8
  %221 = icmp ne i32* %220, null
  br i1 %221, label %228, label %222

222:                                              ; preds = %214
  %223 = load i32, i32* %10, align 4
  %224 = call i32 @libpq_gettext(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0))
  %225 = call i32 (i32, i32, ...) @printfPQExpBuffer(i32 %223, i32 %224)
  %226 = load i32*, i32** %14, align 8
  %227 = call i32 @fclose(i32* %226)
  store i32 3, i32* %6, align 4
  store i32 1, i32* %18, align 4
  br label %250

228:                                              ; preds = %214
  store i32 1, i32* %22, align 4
  br label %233

229:                                              ; preds = %188
  br label %230

230:                                              ; preds = %229
  %231 = load i32, i32* %13, align 4
  %232 = add nsw i32 %231, 1
  store i32 %232, i32* %13, align 4
  br label %180

233:                                              ; preds = %228, %180
  %234 = load i32, i32* %22, align 4
  %235 = icmp ne i32 %234, 0
  br i1 %235, label %244, label %236

236:                                              ; preds = %233
  %237 = load i32, i32* %10, align 4
  %238 = call i32 @libpq_gettext(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.3, i64 0, i64 0))
  %239 = load i8*, i8** %7, align 8
  %240 = load i32, i32* %12, align 4
  %241 = call i32 (i32, i32, ...) @printfPQExpBuffer(i32 %237, i32 %238, i8* %239, i32 %240)
  %242 = load i32*, i32** %14, align 8
  %243 = call i32 @fclose(i32* %242)
  store i32 3, i32* %6, align 4
  store i32 1, i32* %18, align 4
  br label %250

244:                                              ; preds = %233
  br label %245

245:                                              ; preds = %244, %147
  br label %246

246:                                              ; preds = %245, %146
  br label %37

247:                                              ; preds = %37
  %248 = load i32*, i32** %14, align 8
  %249 = call i32 @fclose(i32* %248)
  store i32 0, i32* %6, align 4
  store i32 1, i32* %18, align 4
  br label %250

250:                                              ; preds = %247, %236, %222, %171, %157, %121, %50, %31
  %251 = load i8*, i8** %15, align 8
  call void @llvm.stackrestore(i8* %251)
  %252 = load i32, i32* %6, align 4
  ret i32 %252
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32* @fopen(i8*, i8*) #2

declare dso_local i32 @printfPQExpBuffer(i32, i32, ...) #2

declare dso_local i32 @libpq_gettext(i8*) #2

declare dso_local i8* @fgets(i8*, i32, i32*) #2

declare dso_local i32 @strlen(i8*) #2

declare dso_local i32 @fclose(i32*) #2

declare dso_local i64 @isspace(i8 zeroext) #2

declare dso_local i64 @strncmp(i8*, i8*, i32) #2

declare dso_local i8* @strchr(i8*, i8 signext) #2

declare dso_local i64 @strcmp(i8*, i8*) #2

declare dso_local i32* @strdup(i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
