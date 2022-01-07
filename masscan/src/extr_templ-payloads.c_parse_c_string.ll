; ModuleID = '/home/carl/AnghaBench/masscan/src/extr_templ-payloads.c_parse_c_string.c'
source_filename = "/home/carl/AnghaBench/masscan/src/extr_templ-payloads.c_parse_c_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, i64*, i64, i8*)* @parse_c_string to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @parse_c_string(i8* %0, i64* %1, i64 %2, i8* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i64* %1, i64** %7, align 8
  store i64 %2, i64* %8, align 8
  store i8* %3, i8** %9, align 8
  %13 = load i8*, i8** %9, align 8
  %14 = load i8, i8* %13, align 1
  %15 = sext i8 %14 to i32
  %16 = icmp ne i32 %15, 34
  br i1 %16, label %17, label %19

17:                                               ; preds = %4
  %18 = load i8*, i8** %9, align 8
  store i8* %18, i8** %5, align 8
  br label %225

19:                                               ; preds = %4
  store i64 1, i64* %10, align 8
  br label %20

20:                                               ; preds = %19
  br label %21

21:                                               ; preds = %208, %146, %103, %20
  %22 = load i8*, i8** %9, align 8
  %23 = load i64, i64* %10, align 8
  %24 = getelementptr inbounds i8, i8* %22, i64 %23
  %25 = load i8, i8* %24, align 1
  %26 = sext i8 %25 to i32
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %35

28:                                               ; preds = %21
  %29 = load i8*, i8** %9, align 8
  %30 = load i64, i64* %10, align 8
  %31 = getelementptr inbounds i8, i8* %29, i64 %30
  %32 = load i8, i8* %31, align 1
  %33 = sext i8 %32 to i32
  %34 = icmp ne i32 %33, 34
  br label %35

35:                                               ; preds = %28, %21
  %36 = phi i1 [ false, %21 ], [ %34, %28 ]
  br i1 %36, label %37, label %211

37:                                               ; preds = %35
  %38 = load i8*, i8** %9, align 8
  %39 = load i64, i64* %10, align 8
  %40 = getelementptr inbounds i8, i8* %38, i64 %39
  %41 = load i8, i8* %40, align 1
  %42 = sext i8 %41 to i32
  %43 = icmp eq i32 %42, 92
  br i1 %43, label %44, label %199

44:                                               ; preds = %37
  %45 = load i64, i64* %10, align 8
  %46 = add i64 %45, 1
  store i64 %46, i64* %10, align 8
  %47 = load i8*, i8** %9, align 8
  %48 = load i64, i64* %10, align 8
  %49 = getelementptr inbounds i8, i8* %47, i64 %48
  %50 = load i8, i8* %49, align 1
  %51 = sext i8 %50 to i32
  switch i32 %51, label %188 [
    i32 48, label %52
    i32 49, label %52
    i32 50, label %52
    i32 51, label %52
    i32 52, label %52
    i32 53, label %52
    i32 54, label %52
    i32 55, label %52
    i32 56, label %52
    i32 57, label %52
    i32 120, label %110
    i32 97, label %153
    i32 98, label %158
    i32 102, label %163
    i32 110, label %168
    i32 114, label %173
    i32 116, label %178
    i32 118, label %183
    i32 92, label %189
  ]

52:                                               ; preds = %44, %44, %44, %44, %44, %44, %44, %44, %44, %44
  store i32 0, i32* %11, align 4
  %53 = load i8*, i8** %9, align 8
  %54 = load i64, i64* %10, align 8
  %55 = getelementptr inbounds i8, i8* %53, i64 %54
  %56 = load i8, i8* %55, align 1
  %57 = call i32 @isodigit(i8 signext %56)
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %69

59:                                               ; preds = %52
  %60 = load i32, i32* %11, align 4
  %61 = mul i32 %60, 8
  %62 = load i8*, i8** %9, align 8
  %63 = load i64, i64* %10, align 8
  %64 = add i64 %63, 1
  store i64 %64, i64* %10, align 8
  %65 = getelementptr inbounds i8, i8* %62, i64 %63
  %66 = load i8, i8* %65, align 1
  %67 = call i32 @hexval(i8 signext %66)
  %68 = add i32 %61, %67
  store i32 %68, i32* %11, align 4
  br label %69

69:                                               ; preds = %59, %52
  %70 = load i8*, i8** %9, align 8
  %71 = load i64, i64* %10, align 8
  %72 = getelementptr inbounds i8, i8* %70, i64 %71
  %73 = load i8, i8* %72, align 1
  %74 = call i32 @isodigit(i8 signext %73)
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %86

76:                                               ; preds = %69
  %77 = load i32, i32* %11, align 4
  %78 = mul i32 %77, 8
  %79 = load i8*, i8** %9, align 8
  %80 = load i64, i64* %10, align 8
  %81 = add i64 %80, 1
  store i64 %81, i64* %10, align 8
  %82 = getelementptr inbounds i8, i8* %79, i64 %80
  %83 = load i8, i8* %82, align 1
  %84 = call i32 @hexval(i8 signext %83)
  %85 = add i32 %78, %84
  store i32 %85, i32* %11, align 4
  br label %86

86:                                               ; preds = %76, %69
  %87 = load i8*, i8** %9, align 8
  %88 = load i64, i64* %10, align 8
  %89 = getelementptr inbounds i8, i8* %87, i64 %88
  %90 = load i8, i8* %89, align 1
  %91 = call i32 @isodigit(i8 signext %90)
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %103

93:                                               ; preds = %86
  %94 = load i32, i32* %11, align 4
  %95 = mul i32 %94, 8
  %96 = load i8*, i8** %9, align 8
  %97 = load i64, i64* %10, align 8
  %98 = add i64 %97, 1
  store i64 %98, i64* %10, align 8
  %99 = getelementptr inbounds i8, i8* %96, i64 %97
  %100 = load i8, i8* %99, align 1
  %101 = call i32 @hexval(i8 signext %100)
  %102 = add i32 %95, %101
  store i32 %102, i32* %11, align 4
  br label %103

103:                                              ; preds = %93, %86
  %104 = load i8*, i8** %6, align 8
  %105 = load i64*, i64** %7, align 8
  %106 = load i64, i64* %8, align 8
  %107 = load i32, i32* %11, align 4
  %108 = trunc i32 %107 to i8
  %109 = call i32 @append_byte(i8* %104, i64* %105, i64 %106, i8 signext %108)
  br label %21

110:                                              ; preds = %44
  %111 = load i64, i64* %10, align 8
  %112 = add i64 %111, 1
  store i64 %112, i64* %10, align 8
  store i32 0, i32* %12, align 4
  %113 = load i8*, i8** %9, align 8
  %114 = load i64, i64* %10, align 8
  %115 = getelementptr inbounds i8, i8* %113, i64 %114
  %116 = load i8, i8* %115, align 1
  %117 = call i32 @isxdigit(i8 signext %116)
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %129

119:                                              ; preds = %110
  %120 = load i32, i32* %12, align 4
  %121 = mul i32 %120, 16
  %122 = load i8*, i8** %9, align 8
  %123 = load i64, i64* %10, align 8
  %124 = add i64 %123, 1
  store i64 %124, i64* %10, align 8
  %125 = getelementptr inbounds i8, i8* %122, i64 %123
  %126 = load i8, i8* %125, align 1
  %127 = call i32 @hexval(i8 signext %126)
  %128 = add i32 %121, %127
  store i32 %128, i32* %12, align 4
  br label %129

129:                                              ; preds = %119, %110
  %130 = load i8*, i8** %9, align 8
  %131 = load i64, i64* %10, align 8
  %132 = getelementptr inbounds i8, i8* %130, i64 %131
  %133 = load i8, i8* %132, align 1
  %134 = call i32 @isxdigit(i8 signext %133)
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %146

136:                                              ; preds = %129
  %137 = load i32, i32* %12, align 4
  %138 = mul i32 %137, 16
  %139 = load i8*, i8** %9, align 8
  %140 = load i64, i64* %10, align 8
  %141 = add i64 %140, 1
  store i64 %141, i64* %10, align 8
  %142 = getelementptr inbounds i8, i8* %139, i64 %140
  %143 = load i8, i8* %142, align 1
  %144 = call i32 @hexval(i8 signext %143)
  %145 = add i32 %138, %144
  store i32 %145, i32* %12, align 4
  br label %146

146:                                              ; preds = %136, %129
  %147 = load i8*, i8** %6, align 8
  %148 = load i64*, i64** %7, align 8
  %149 = load i64, i64* %8, align 8
  %150 = load i32, i32* %12, align 4
  %151 = trunc i32 %150 to i8
  %152 = call i32 @append_byte(i8* %147, i64* %148, i64 %149, i8 signext %151)
  br label %21

153:                                              ; preds = %44
  %154 = load i8*, i8** %6, align 8
  %155 = load i64*, i64** %7, align 8
  %156 = load i64, i64* %8, align 8
  %157 = call i32 @append_byte(i8* %154, i64* %155, i64 %156, i8 signext 7)
  br label %198

158:                                              ; preds = %44
  %159 = load i8*, i8** %6, align 8
  %160 = load i64*, i64** %7, align 8
  %161 = load i64, i64* %8, align 8
  %162 = call i32 @append_byte(i8* %159, i64* %160, i64 %161, i8 signext 8)
  br label %198

163:                                              ; preds = %44
  %164 = load i8*, i8** %6, align 8
  %165 = load i64*, i64** %7, align 8
  %166 = load i64, i64* %8, align 8
  %167 = call i32 @append_byte(i8* %164, i64* %165, i64 %166, i8 signext 12)
  br label %198

168:                                              ; preds = %44
  %169 = load i8*, i8** %6, align 8
  %170 = load i64*, i64** %7, align 8
  %171 = load i64, i64* %8, align 8
  %172 = call i32 @append_byte(i8* %169, i64* %170, i64 %171, i8 signext 10)
  br label %198

173:                                              ; preds = %44
  %174 = load i8*, i8** %6, align 8
  %175 = load i64*, i64** %7, align 8
  %176 = load i64, i64* %8, align 8
  %177 = call i32 @append_byte(i8* %174, i64* %175, i64 %176, i8 signext 13)
  br label %198

178:                                              ; preds = %44
  %179 = load i8*, i8** %6, align 8
  %180 = load i64*, i64** %7, align 8
  %181 = load i64, i64* %8, align 8
  %182 = call i32 @append_byte(i8* %179, i64* %180, i64 %181, i8 signext 9)
  br label %198

183:                                              ; preds = %44
  %184 = load i8*, i8** %6, align 8
  %185 = load i64*, i64** %7, align 8
  %186 = load i64, i64* %8, align 8
  %187 = call i32 @append_byte(i8* %184, i64* %185, i64 %186, i8 signext 11)
  br label %198

188:                                              ; preds = %44
  br label %189

189:                                              ; preds = %44, %188
  %190 = load i8*, i8** %6, align 8
  %191 = load i64*, i64** %7, align 8
  %192 = load i64, i64* %8, align 8
  %193 = load i8*, i8** %9, align 8
  %194 = load i64, i64* %10, align 8
  %195 = getelementptr inbounds i8, i8* %193, i64 %194
  %196 = load i8, i8* %195, align 1
  %197 = call i32 @append_byte(i8* %190, i64* %191, i64 %192, i8 signext %196)
  br label %198

198:                                              ; preds = %189, %183, %178, %173, %168, %163, %158, %153
  br label %208

199:                                              ; preds = %37
  %200 = load i8*, i8** %6, align 8
  %201 = load i64*, i64** %7, align 8
  %202 = load i64, i64* %8, align 8
  %203 = load i8*, i8** %9, align 8
  %204 = load i64, i64* %10, align 8
  %205 = getelementptr inbounds i8, i8* %203, i64 %204
  %206 = load i8, i8* %205, align 1
  %207 = call i32 @append_byte(i8* %200, i64* %201, i64 %202, i8 signext %206)
  br label %208

208:                                              ; preds = %199, %198
  %209 = load i64, i64* %10, align 8
  %210 = add i64 %209, 1
  store i64 %210, i64* %10, align 8
  br label %21

211:                                              ; preds = %35
  %212 = load i8*, i8** %9, align 8
  %213 = load i64, i64* %10, align 8
  %214 = getelementptr inbounds i8, i8* %212, i64 %213
  %215 = load i8, i8* %214, align 1
  %216 = sext i8 %215 to i32
  %217 = icmp eq i32 %216, 34
  br i1 %217, label %218, label %221

218:                                              ; preds = %211
  %219 = load i64, i64* %10, align 8
  %220 = add i64 %219, 1
  store i64 %220, i64* %10, align 8
  br label %221

221:                                              ; preds = %218, %211
  %222 = load i8*, i8** %9, align 8
  %223 = load i64, i64* %10, align 8
  %224 = getelementptr inbounds i8, i8* %222, i64 %223
  store i8* %224, i8** %5, align 8
  br label %225

225:                                              ; preds = %221, %17
  %226 = load i8*, i8** %5, align 8
  ret i8* %226
}

declare dso_local i32 @isodigit(i8 signext) #1

declare dso_local i32 @hexval(i8 signext) #1

declare dso_local i32 @append_byte(i8*, i64*, i64, i8 signext) #1

declare dso_local i32 @isxdigit(i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
