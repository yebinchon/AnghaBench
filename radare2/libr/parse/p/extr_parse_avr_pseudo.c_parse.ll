; ModuleID = '/home/carl/AnghaBench/radare2/libr/parse/p/extr_parse_avr_pseudo.c_parse.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/parse/p/extr_parse_avr_pseudo.c_parse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@WSZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, i8*)* @parse to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse(i32* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i32, align 4
  %20 = alloca [5 x i8*], align 16
  %21 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %22 = load i8*, i8** %6, align 8
  %23 = call i32 @strlen(i8* %22)
  store i32 %23, i32* %9, align 4
  %24 = load i32, i32* @WSZ, align 4
  %25 = zext i32 %24 to i64
  %26 = call i8* @llvm.stacksave()
  store i8* %26, i8** %10, align 8
  %27 = alloca i8, i64 %25, align 16
  store i64 %25, i64* %11, align 8
  %28 = load i32, i32* @WSZ, align 4
  %29 = zext i32 %28 to i64
  %30 = alloca i8, i64 %29, align 16
  store i64 %29, i64* %12, align 8
  %31 = load i32, i32* @WSZ, align 4
  %32 = zext i32 %31 to i64
  %33 = alloca i8, i64 %32, align 16
  store i64 %32, i64* %13, align 8
  %34 = load i32, i32* @WSZ, align 4
  %35 = zext i32 %34 to i64
  %36 = alloca i8, i64 %35, align 16
  store i64 %35, i64* %14, align 8
  %37 = load i32, i32* @WSZ, align 4
  %38 = zext i32 %37 to i64
  %39 = alloca i8, i64 %38, align 16
  store i64 %38, i64* %15, align 8
  %40 = load i32, i32* %9, align 4
  %41 = add nsw i32 %40, 1
  %42 = call i8* @malloc(i32 %41)
  store i8* %42, i8** %16, align 8
  %43 = icmp ne i8* %42, null
  br i1 %43, label %45, label %44

44:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  store i32 1, i32* %19, align 4
  br label %216

45:                                               ; preds = %3
  %46 = load i8*, i8** %16, align 8
  %47 = load i8*, i8** %6, align 8
  %48 = load i32, i32* %9, align 4
  %49 = add nsw i32 %48, 1
  %50 = call i32 @memcpy(i8* %46, i8* %47, i32 %49)
  %51 = load i8*, i8** %16, align 8
  %52 = call i32 @r_str_trim(i8* %51)
  %53 = load i8*, i8** %16, align 8
  %54 = load i8, i8* %53, align 1
  %55 = icmp ne i8 %54, 0
  br i1 %55, label %56, label %213

56:                                               ; preds = %45
  %57 = getelementptr inbounds i8, i8* %27, i64 0
  store i8 0, i8* %57, align 16
  %58 = getelementptr inbounds i8, i8* %30, i64 0
  store i8 0, i8* %58, align 16
  %59 = getelementptr inbounds i8, i8* %33, i64 0
  store i8 0, i8* %59, align 16
  %60 = getelementptr inbounds i8, i8* %36, i64 0
  store i8 0, i8* %60, align 16
  %61 = getelementptr inbounds i8, i8* %39, i64 0
  store i8 0, i8* %61, align 16
  %62 = load i8*, i8** %16, align 8
  %63 = call i8* @strchr(i8* %62, i8 signext 32)
  store i8* %63, i8** %17, align 8
  %64 = load i8*, i8** %17, align 8
  %65 = icmp ne i8* %64, null
  br i1 %65, label %69, label %66

66:                                               ; preds = %56
  %67 = load i8*, i8** %16, align 8
  %68 = call i8* @strchr(i8* %67, i8 signext 9)
  store i8* %68, i8** %17, align 8
  br label %69

69:                                               ; preds = %66, %56
  %70 = load i8*, i8** %17, align 8
  %71 = icmp ne i8* %70, null
  br i1 %71, label %72, label %178

72:                                               ; preds = %69
  %73 = load i8*, i8** %17, align 8
  store i8 0, i8* %73, align 1
  %74 = load i8*, i8** %17, align 8
  %75 = getelementptr inbounds i8, i8* %74, i32 1
  store i8* %75, i8** %17, align 8
  br label %76

76:                                               ; preds = %82, %72
  %77 = load i8*, i8** %17, align 8
  %78 = load i8, i8* %77, align 1
  %79 = sext i8 %78 to i32
  %80 = icmp eq i32 %79, 32
  br i1 %80, label %81, label %85

81:                                               ; preds = %76
  br label %82

82:                                               ; preds = %81
  %83 = load i8*, i8** %17, align 8
  %84 = getelementptr inbounds i8, i8* %83, i32 1
  store i8* %84, i8** %17, align 8
  br label %76

85:                                               ; preds = %76
  %86 = load i8*, i8** %16, align 8
  %87 = load i32, i32* @WSZ, align 4
  %88 = sub nsw i32 %87, 1
  %89 = call i32 @strncpy(i8* %27, i8* %86, i32 %88)
  %90 = load i8*, i8** %17, align 8
  %91 = load i32, i32* @WSZ, align 4
  %92 = sub nsw i32 %91, 1
  %93 = call i32 @strncpy(i8* %30, i8* %90, i32 %92)
  %94 = load i8*, i8** %17, align 8
  store i8* %94, i8** %18, align 8
  %95 = load i8*, i8** %17, align 8
  %96 = call i8* @strchr(i8* %95, i8 signext 44)
  store i8* %96, i8** %17, align 8
  %97 = load i8*, i8** %17, align 8
  %98 = icmp ne i8* %97, null
  br i1 %98, label %99, label %177

99:                                               ; preds = %85
  %100 = load i8*, i8** %17, align 8
  store i8 0, i8* %100, align 1
  %101 = load i8*, i8** %17, align 8
  %102 = getelementptr inbounds i8, i8* %101, i32 1
  store i8* %102, i8** %17, align 8
  br label %103

103:                                              ; preds = %109, %99
  %104 = load i8*, i8** %17, align 8
  %105 = load i8, i8* %104, align 1
  %106 = sext i8 %105 to i32
  %107 = icmp eq i32 %106, 32
  br i1 %107, label %108, label %112

108:                                              ; preds = %103
  br label %109

109:                                              ; preds = %108
  %110 = load i8*, i8** %17, align 8
  %111 = getelementptr inbounds i8, i8* %110, i32 1
  store i8* %111, i8** %17, align 8
  br label %103

112:                                              ; preds = %103
  %113 = load i8*, i8** %18, align 8
  %114 = load i32, i32* @WSZ, align 4
  %115 = sub nsw i32 %114, 1
  %116 = call i32 @strncpy(i8* %30, i8* %113, i32 %115)
  %117 = load i8*, i8** %17, align 8
  %118 = load i32, i32* @WSZ, align 4
  %119 = sub nsw i32 %118, 1
  %120 = call i32 @strncpy(i8* %33, i8* %117, i32 %119)
  %121 = load i8*, i8** %17, align 8
  store i8* %121, i8** %18, align 8
  %122 = load i8*, i8** %17, align 8
  %123 = call i8* @strchr(i8* %122, i8 signext 44)
  store i8* %123, i8** %17, align 8
  %124 = load i8*, i8** %17, align 8
  %125 = icmp ne i8* %124, null
  br i1 %125, label %126, label %176

126:                                              ; preds = %112
  %127 = load i8*, i8** %17, align 8
  store i8 0, i8* %127, align 1
  %128 = load i8*, i8** %17, align 8
  %129 = getelementptr inbounds i8, i8* %128, i32 1
  store i8* %129, i8** %17, align 8
  br label %130

130:                                              ; preds = %136, %126
  %131 = load i8*, i8** %17, align 8
  %132 = load i8, i8* %131, align 1
  %133 = sext i8 %132 to i32
  %134 = icmp eq i32 %133, 32
  br i1 %134, label %135, label %139

135:                                              ; preds = %130
  br label %136

136:                                              ; preds = %135
  %137 = load i8*, i8** %17, align 8
  %138 = getelementptr inbounds i8, i8* %137, i32 1
  store i8* %138, i8** %17, align 8
  br label %130

139:                                              ; preds = %130
  %140 = load i8*, i8** %18, align 8
  %141 = load i32, i32* @WSZ, align 4
  %142 = sub nsw i32 %141, 1
  %143 = call i32 @strncpy(i8* %33, i8* %140, i32 %142)
  %144 = load i8*, i8** %17, align 8
  %145 = load i32, i32* @WSZ, align 4
  %146 = sub nsw i32 %145, 1
  %147 = call i32 @strncpy(i8* %36, i8* %144, i32 %146)
  %148 = load i8*, i8** %17, align 8
  store i8* %148, i8** %18, align 8
  %149 = load i8*, i8** %17, align 8
  %150 = call i8* @strchr(i8* %149, i8 signext 44)
  store i8* %150, i8** %17, align 8
  %151 = load i8*, i8** %17, align 8
  %152 = icmp ne i8* %151, null
  br i1 %152, label %153, label %175

153:                                              ; preds = %139
  %154 = load i8*, i8** %17, align 8
  store i8 0, i8* %154, align 1
  %155 = load i8*, i8** %17, align 8
  %156 = getelementptr inbounds i8, i8* %155, i32 1
  store i8* %156, i8** %17, align 8
  br label %157

157:                                              ; preds = %163, %153
  %158 = load i8*, i8** %17, align 8
  %159 = load i8, i8* %158, align 1
  %160 = sext i8 %159 to i32
  %161 = icmp eq i32 %160, 32
  br i1 %161, label %162, label %166

162:                                              ; preds = %157
  br label %163

163:                                              ; preds = %162
  %164 = load i8*, i8** %17, align 8
  %165 = getelementptr inbounds i8, i8* %164, i32 1
  store i8* %165, i8** %17, align 8
  br label %157

166:                                              ; preds = %157
  %167 = load i8*, i8** %18, align 8
  %168 = load i32, i32* @WSZ, align 4
  %169 = sub nsw i32 %168, 1
  %170 = call i32 @strncpy(i8* %36, i8* %167, i32 %169)
  %171 = load i8*, i8** %17, align 8
  %172 = load i32, i32* @WSZ, align 4
  %173 = sub nsw i32 %172, 1
  %174 = call i32 @strncpy(i8* %39, i8* %171, i32 %173)
  br label %175

175:                                              ; preds = %166, %139
  br label %176

176:                                              ; preds = %175, %112
  br label %177

177:                                              ; preds = %176, %85
  br label %183

178:                                              ; preds = %69
  %179 = load i8*, i8** %16, align 8
  %180 = load i32, i32* @WSZ, align 4
  %181 = sub nsw i32 %180, 1
  %182 = call i32 @strncpy(i8* %27, i8* %179, i32 %181)
  br label %183

183:                                              ; preds = %178, %177
  %184 = getelementptr inbounds [5 x i8*], [5 x i8*]* %20, i64 0, i64 0
  store i8* %27, i8** %184, align 8
  %185 = getelementptr inbounds i8*, i8** %184, i64 1
  store i8* %30, i8** %185, align 8
  %186 = getelementptr inbounds i8*, i8** %185, i64 1
  store i8* %33, i8** %186, align 8
  %187 = getelementptr inbounds i8*, i8** %186, i64 1
  store i8* %36, i8** %187, align 8
  %188 = getelementptr inbounds i8*, i8** %187, i64 1
  store i8* %39, i8** %188, align 8
  store i32 0, i32* %21, align 4
  store i32 0, i32* %8, align 4
  br label %189

189:                                              ; preds = %205, %183
  %190 = load i32, i32* %8, align 4
  %191 = icmp slt i32 %190, 5
  br i1 %191, label %192, label %208

192:                                              ; preds = %189
  %193 = load i32, i32* %8, align 4
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds [5 x i8*], [5 x i8*]* %20, i64 0, i64 %194
  %196 = load i8*, i8** %195, align 8
  %197 = getelementptr inbounds i8, i8* %196, i64 0
  %198 = load i8, i8* %197, align 1
  %199 = sext i8 %198 to i32
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %201, label %204

201:                                              ; preds = %192
  %202 = load i32, i32* %21, align 4
  %203 = add nsw i32 %202, 1
  store i32 %203, i32* %21, align 4
  br label %204

204:                                              ; preds = %201, %192
  br label %205

205:                                              ; preds = %204
  %206 = load i32, i32* %8, align 4
  %207 = add nsw i32 %206, 1
  store i32 %207, i32* %8, align 4
  br label %189

208:                                              ; preds = %189
  %209 = load i32, i32* %21, align 4
  %210 = getelementptr inbounds [5 x i8*], [5 x i8*]* %20, i64 0, i64 0
  %211 = load i8*, i8** %7, align 8
  %212 = call i32 @replace(i32 %209, i8** %210, i8* %211)
  br label %213

213:                                              ; preds = %208, %45
  %214 = load i8*, i8** %16, align 8
  %215 = call i32 @free(i8* %214)
  store i32 1, i32* %4, align 4
  store i32 1, i32* %19, align 4
  br label %216

216:                                              ; preds = %213, %44
  %217 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %217)
  %218 = load i32, i32* %4, align 4
  ret i32 %218
}

declare dso_local i32 @strlen(i8*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i8* @malloc(i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @r_str_trim(i8*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @strncpy(i8*, i8*, i32) #1

declare dso_local i32 @replace(i32, i8**, i8*) #1

declare dso_local i32 @free(i8*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
