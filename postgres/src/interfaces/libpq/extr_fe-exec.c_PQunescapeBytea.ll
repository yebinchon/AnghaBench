; ModuleID = '/home/carl/AnghaBench/postgres/src/interfaces/libpq/extr_fe-exec.c_PQunescapeBytea.c'
source_filename = "/home/carl/AnghaBench/postgres/src/interfaces/libpq/extr_fe-exec.c_PQunescapeBytea.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @PQunescapeBytea(i8* %0, i64* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8, align 1
  %15 = alloca i8, align 1
  %16 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i64* %1, i64** %5, align 8
  %17 = load i8*, i8** %4, align 8
  %18 = icmp eq i8* %17, null
  br i1 %18, label %19, label %20

19:                                               ; preds = %2
  store i8* null, i8** %3, align 8
  br label %219

20:                                               ; preds = %2
  %21 = load i8*, i8** %4, align 8
  %22 = call i64 @strlen(i8* %21)
  store i64 %22, i64* %6, align 8
  %23 = load i8*, i8** %4, align 8
  %24 = getelementptr inbounds i8, i8* %23, i64 0
  %25 = load i8, i8* %24, align 1
  %26 = zext i8 %25 to i32
  %27 = icmp eq i32 %26, 92
  br i1 %27, label %28, label %98

28:                                               ; preds = %20
  %29 = load i8*, i8** %4, align 8
  %30 = getelementptr inbounds i8, i8* %29, i64 1
  %31 = load i8, i8* %30, align 1
  %32 = zext i8 %31 to i32
  %33 = icmp eq i32 %32, 120
  br i1 %33, label %34, label %98

34:                                               ; preds = %28
  %35 = load i64, i64* %6, align 8
  %36 = sub i64 %35, 2
  %37 = udiv i64 %36, 2
  store i64 %37, i64* %7, align 8
  %38 = load i64, i64* %7, align 8
  %39 = icmp ugt i64 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %34
  %41 = load i64, i64* %7, align 8
  br label %43

42:                                               ; preds = %34
  br label %43

43:                                               ; preds = %42, %40
  %44 = phi i64 [ %41, %40 ], [ 1, %42 ]
  %45 = call i64 @malloc(i64 %44)
  %46 = inttoptr i64 %45 to i8*
  store i8* %46, i8** %8, align 8
  %47 = load i8*, i8** %8, align 8
  %48 = icmp eq i8* %47, null
  br i1 %48, label %49, label %50

49:                                               ; preds = %43
  store i8* null, i8** %3, align 8
  br label %219

50:                                               ; preds = %43
  %51 = load i8*, i8** %4, align 8
  %52 = getelementptr inbounds i8, i8* %51, i64 2
  store i8* %52, i8** %12, align 8
  %53 = load i8*, i8** %8, align 8
  store i8* %53, i8** %13, align 8
  br label %54

54:                                               ; preds = %91, %71, %50
  %55 = load i8*, i8** %12, align 8
  %56 = load i8, i8* %55, align 1
  %57 = icmp ne i8 %56, 0
  br i1 %57, label %58, label %92

58:                                               ; preds = %54
  %59 = load i8*, i8** %12, align 8
  %60 = getelementptr inbounds i8, i8* %59, i32 1
  store i8* %60, i8** %12, align 8
  %61 = load i8, i8* %59, align 1
  %62 = zext i8 %61 to i32
  %63 = call signext i8 @get_hex(i32 %62)
  store i8 %63, i8* %14, align 1
  %64 = load i8*, i8** %12, align 8
  %65 = load i8, i8* %64, align 1
  %66 = icmp ne i8 %65, 0
  br i1 %66, label %67, label %71

67:                                               ; preds = %58
  %68 = load i8, i8* %14, align 1
  %69 = sext i8 %68 to i32
  %70 = icmp eq i32 %69, -1
  br i1 %70, label %71, label %72

71:                                               ; preds = %67, %58
  br label %54

72:                                               ; preds = %67
  %73 = load i8*, i8** %12, align 8
  %74 = getelementptr inbounds i8, i8* %73, i32 1
  store i8* %74, i8** %12, align 8
  %75 = load i8, i8* %73, align 1
  %76 = zext i8 %75 to i32
  %77 = call signext i8 @get_hex(i32 %76)
  store i8 %77, i8* %15, align 1
  %78 = load i8, i8* %15, align 1
  %79 = sext i8 %78 to i32
  %80 = icmp ne i32 %79, -1
  br i1 %80, label %81, label %91

81:                                               ; preds = %72
  %82 = load i8, i8* %14, align 1
  %83 = sext i8 %82 to i32
  %84 = shl i32 %83, 4
  %85 = load i8, i8* %15, align 1
  %86 = sext i8 %85 to i32
  %87 = or i32 %84, %86
  %88 = trunc i32 %87 to i8
  %89 = load i8*, i8** %13, align 8
  %90 = getelementptr inbounds i8, i8* %89, i32 1
  store i8* %90, i8** %13, align 8
  store i8 %88, i8* %89, align 1
  br label %91

91:                                               ; preds = %81, %72
  br label %54

92:                                               ; preds = %54
  %93 = load i8*, i8** %13, align 8
  %94 = load i8*, i8** %8, align 8
  %95 = ptrtoint i8* %93 to i64
  %96 = ptrtoint i8* %94 to i64
  %97 = sub i64 %95, %96
  store i64 %97, i64* %7, align 8
  br label %205

98:                                               ; preds = %28, %20
  %99 = load i64, i64* %6, align 8
  %100 = add i64 %99, 1
  %101 = call i64 @malloc(i64 %100)
  %102 = inttoptr i64 %101 to i8*
  store i8* %102, i8** %8, align 8
  %103 = load i8*, i8** %8, align 8
  %104 = icmp eq i8* %103, null
  br i1 %104, label %105, label %106

105:                                              ; preds = %98
  store i8* null, i8** %3, align 8
  br label %219

106:                                              ; preds = %98
  store i64 0, i64* %11, align 8
  store i64 0, i64* %10, align 8
  br label %107

107:                                              ; preds = %202, %106
  %108 = load i64, i64* %10, align 8
  %109 = load i64, i64* %6, align 8
  %110 = icmp ult i64 %108, %109
  br i1 %110, label %111, label %203

111:                                              ; preds = %107
  %112 = load i8*, i8** %4, align 8
  %113 = load i64, i64* %10, align 8
  %114 = getelementptr inbounds i8, i8* %112, i64 %113
  %115 = load i8, i8* %114, align 1
  %116 = zext i8 %115 to i32
  switch i32 %116, label %192 [
    i32 92, label %117
  ]

117:                                              ; preds = %111
  %118 = load i64, i64* %10, align 8
  %119 = add i64 %118, 1
  store i64 %119, i64* %10, align 8
  %120 = load i8*, i8** %4, align 8
  %121 = load i64, i64* %10, align 8
  %122 = getelementptr inbounds i8, i8* %120, i64 %121
  %123 = load i8, i8* %122, align 1
  %124 = zext i8 %123 to i32
  %125 = icmp eq i32 %124, 92
  br i1 %125, label %126, label %136

126:                                              ; preds = %117
  %127 = load i8*, i8** %4, align 8
  %128 = load i64, i64* %10, align 8
  %129 = add i64 %128, 1
  store i64 %129, i64* %10, align 8
  %130 = getelementptr inbounds i8, i8* %127, i64 %128
  %131 = load i8, i8* %130, align 1
  %132 = load i8*, i8** %8, align 8
  %133 = load i64, i64* %11, align 8
  %134 = add i64 %133, 1
  store i64 %134, i64* %11, align 8
  %135 = getelementptr inbounds i8, i8* %132, i64 %133
  store i8 %131, i8* %135, align 1
  br label %191

136:                                              ; preds = %117
  %137 = load i8*, i8** %4, align 8
  %138 = load i64, i64* %10, align 8
  %139 = getelementptr inbounds i8, i8* %137, i64 %138
  %140 = load i8, i8* %139, align 1
  %141 = call i32 @ISFIRSTOCTDIGIT(i8 zeroext %140)
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %190

143:                                              ; preds = %136
  %144 = load i8*, i8** %4, align 8
  %145 = load i64, i64* %10, align 8
  %146 = add i64 %145, 1
  %147 = getelementptr inbounds i8, i8* %144, i64 %146
  %148 = load i8, i8* %147, align 1
  %149 = call i32 @ISOCTDIGIT(i8 zeroext %148)
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %190

151:                                              ; preds = %143
  %152 = load i8*, i8** %4, align 8
  %153 = load i64, i64* %10, align 8
  %154 = add i64 %153, 2
  %155 = getelementptr inbounds i8, i8* %152, i64 %154
  %156 = load i8, i8* %155, align 1
  %157 = call i32 @ISOCTDIGIT(i8 zeroext %156)
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %190

159:                                              ; preds = %151
  %160 = load i8*, i8** %4, align 8
  %161 = load i64, i64* %10, align 8
  %162 = add i64 %161, 1
  store i64 %162, i64* %10, align 8
  %163 = getelementptr inbounds i8, i8* %160, i64 %161
  %164 = load i8, i8* %163, align 1
  %165 = call i32 @OCTVAL(i8 zeroext %164)
  store i32 %165, i32* %16, align 4
  %166 = load i32, i32* %16, align 4
  %167 = shl i32 %166, 3
  %168 = load i8*, i8** %4, align 8
  %169 = load i64, i64* %10, align 8
  %170 = add i64 %169, 1
  store i64 %170, i64* %10, align 8
  %171 = getelementptr inbounds i8, i8* %168, i64 %169
  %172 = load i8, i8* %171, align 1
  %173 = call i32 @OCTVAL(i8 zeroext %172)
  %174 = add nsw i32 %167, %173
  store i32 %174, i32* %16, align 4
  %175 = load i32, i32* %16, align 4
  %176 = shl i32 %175, 3
  %177 = load i8*, i8** %4, align 8
  %178 = load i64, i64* %10, align 8
  %179 = add i64 %178, 1
  store i64 %179, i64* %10, align 8
  %180 = getelementptr inbounds i8, i8* %177, i64 %178
  %181 = load i8, i8* %180, align 1
  %182 = call i32 @OCTVAL(i8 zeroext %181)
  %183 = add nsw i32 %176, %182
  store i32 %183, i32* %16, align 4
  %184 = load i32, i32* %16, align 4
  %185 = trunc i32 %184 to i8
  %186 = load i8*, i8** %8, align 8
  %187 = load i64, i64* %11, align 8
  %188 = add i64 %187, 1
  store i64 %188, i64* %11, align 8
  %189 = getelementptr inbounds i8, i8* %186, i64 %187
  store i8 %185, i8* %189, align 1
  br label %190

190:                                              ; preds = %159, %151, %143, %136
  br label %191

191:                                              ; preds = %190, %126
  br label %202

192:                                              ; preds = %111
  %193 = load i8*, i8** %4, align 8
  %194 = load i64, i64* %10, align 8
  %195 = add i64 %194, 1
  store i64 %195, i64* %10, align 8
  %196 = getelementptr inbounds i8, i8* %193, i64 %194
  %197 = load i8, i8* %196, align 1
  %198 = load i8*, i8** %8, align 8
  %199 = load i64, i64* %11, align 8
  %200 = add i64 %199, 1
  store i64 %200, i64* %11, align 8
  %201 = getelementptr inbounds i8, i8* %198, i64 %199
  store i8 %197, i8* %201, align 1
  br label %202

202:                                              ; preds = %192, %191
  br label %107

203:                                              ; preds = %107
  %204 = load i64, i64* %11, align 8
  store i64 %204, i64* %7, align 8
  br label %205

205:                                              ; preds = %203, %92
  %206 = load i8*, i8** %8, align 8
  %207 = load i64, i64* %7, align 8
  %208 = add i64 %207, 1
  %209 = call i8* @realloc(i8* %206, i64 %208)
  store i8* %209, i8** %9, align 8
  %210 = load i8*, i8** %9, align 8
  %211 = icmp ne i8* %210, null
  br i1 %211, label %215, label %212

212:                                              ; preds = %205
  %213 = load i8*, i8** %8, align 8
  %214 = call i32 @free(i8* %213)
  store i8* null, i8** %3, align 8
  br label %219

215:                                              ; preds = %205
  %216 = load i64, i64* %7, align 8
  %217 = load i64*, i64** %5, align 8
  store i64 %216, i64* %217, align 8
  %218 = load i8*, i8** %9, align 8
  store i8* %218, i8** %3, align 8
  br label %219

219:                                              ; preds = %215, %212, %105, %49, %19
  %220 = load i8*, i8** %3, align 8
  ret i8* %220
}

declare dso_local i64 @strlen(i8*) #1

declare dso_local i64 @malloc(i64) #1

declare dso_local signext i8 @get_hex(i32) #1

declare dso_local i32 @ISFIRSTOCTDIGIT(i8 zeroext) #1

declare dso_local i32 @ISOCTDIGIT(i8 zeroext) #1

declare dso_local i32 @OCTVAL(i8 zeroext) #1

declare dso_local i8* @realloc(i8*, i64) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
