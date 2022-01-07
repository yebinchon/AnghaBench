; ModuleID = '/home/carl/AnghaBench/postgres/src/common/extr_unicode_norm.c_unicode_normalize_kc.c'
source_filename = "/home/carl/AnghaBench/postgres/src/common/extr_unicode_norm.c_unicode_normalize_kc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @unicode_normalize_kc(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8, align 1
  %14 = alloca i8, align 1
  %15 = alloca i8, align 1
  %16 = alloca i8, align 1
  %17 = alloca %struct.TYPE_3__*, align 8
  %18 = alloca %struct.TYPE_3__*, align 8
  %19 = alloca i8, align 1
  %20 = alloca %struct.TYPE_3__*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i8, align 1
  store i8* %0, i8** %3, align 8
  store i32 0, i32* %6, align 4
  %23 = load i8*, i8** %3, align 8
  store i8* %23, i8** %9, align 8
  br label %24

24:                                               ; preds = %36, %1
  %25 = load i8*, i8** %9, align 8
  %26 = load i8, i8* %25, align 1
  %27 = icmp ne i8 %26, 0
  br i1 %27, label %28, label %39

28:                                               ; preds = %24
  %29 = load i8*, i8** %9, align 8
  %30 = load i8, i8* %29, align 1
  %31 = call i64 @get_decomposed_size(i8 signext %30)
  %32 = load i32, i32* %6, align 4
  %33 = sext i32 %32 to i64
  %34 = add nsw i64 %33, %31
  %35 = trunc i64 %34 to i32
  store i32 %35, i32* %6, align 4
  br label %36

36:                                               ; preds = %28
  %37 = load i8*, i8** %9, align 8
  %38 = getelementptr inbounds i8, i8* %37, i32 1
  store i8* %38, i8** %9, align 8
  br label %24

39:                                               ; preds = %24
  %40 = load i32, i32* %6, align 4
  %41 = add nsw i32 %40, 1
  %42 = sext i32 %41 to i64
  %43 = mul i64 %42, 1
  %44 = trunc i64 %43 to i32
  %45 = call i64 @ALLOC(i32 %44)
  %46 = inttoptr i64 %45 to i8*
  store i8* %46, i8** %4, align 8
  %47 = load i8*, i8** %4, align 8
  %48 = icmp eq i8* %47, null
  br i1 %48, label %49, label %50

49:                                               ; preds = %39
  store i8* null, i8** %2, align 8
  br label %238

50:                                               ; preds = %39
  store i32 0, i32* %7, align 4
  %51 = load i8*, i8** %3, align 8
  store i8* %51, i8** %9, align 8
  br label %52

52:                                               ; preds = %60, %50
  %53 = load i8*, i8** %9, align 8
  %54 = load i8, i8* %53, align 1
  %55 = icmp ne i8 %54, 0
  br i1 %55, label %56, label %63

56:                                               ; preds = %52
  %57 = load i8*, i8** %9, align 8
  %58 = load i8, i8* %57, align 1
  %59 = call i32 @decompose_code(i8 signext %58, i8** %4, i32* %7)
  br label %60

60:                                               ; preds = %56
  %61 = load i8*, i8** %9, align 8
  %62 = getelementptr inbounds i8, i8* %61, i32 1
  store i8* %62, i8** %9, align 8
  br label %52

63:                                               ; preds = %52
  %64 = load i8*, i8** %4, align 8
  %65 = load i32, i32* %6, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i8, i8* %64, i64 %66
  store i8 0, i8* %67, align 1
  %68 = load i32, i32* %6, align 4
  %69 = load i32, i32* %7, align 4
  %70 = icmp eq i32 %68, %69
  %71 = zext i1 %70 to i32
  %72 = call i32 @Assert(i32 %71)
  store i32 1, i32* %8, align 4
  br label %73

73:                                               ; preds = %147, %63
  %74 = load i32, i32* %8, align 4
  %75 = load i32, i32* %6, align 4
  %76 = icmp slt i32 %74, %75
  br i1 %76, label %77, label %150

77:                                               ; preds = %73
  %78 = load i8*, i8** %4, align 8
  %79 = load i32, i32* %8, align 4
  %80 = sub nsw i32 %79, 1
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i8, i8* %78, i64 %81
  %83 = load i8, i8* %82, align 1
  store i8 %83, i8* %14, align 1
  %84 = load i8*, i8** %4, align 8
  %85 = load i32, i32* %8, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i8, i8* %84, i64 %86
  %88 = load i8, i8* %87, align 1
  store i8 %88, i8* %15, align 1
  %89 = load i8, i8* %14, align 1
  %90 = call %struct.TYPE_3__* @get_code_entry(i8 signext %89)
  store %struct.TYPE_3__* %90, %struct.TYPE_3__** %17, align 8
  %91 = load i8, i8* %15, align 1
  %92 = call %struct.TYPE_3__* @get_code_entry(i8 signext %91)
  store %struct.TYPE_3__* %92, %struct.TYPE_3__** %18, align 8
  %93 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %94 = icmp eq %struct.TYPE_3__* %93, null
  br i1 %94, label %98, label %95

95:                                               ; preds = %77
  %96 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %97 = icmp eq %struct.TYPE_3__* %96, null
  br i1 %97, label %98, label %99

98:                                               ; preds = %95, %77
  br label %147

99:                                               ; preds = %95
  %100 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %101 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %109, label %104

104:                                              ; preds = %99
  %105 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %106 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %109, label %110

109:                                              ; preds = %104, %99
  br label %147

110:                                              ; preds = %104
  %111 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %112 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %115 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = icmp sle i32 %113, %116
  br i1 %117, label %118, label %119

118:                                              ; preds = %110
  br label %147

119:                                              ; preds = %110
  %120 = load i8*, i8** %4, align 8
  %121 = load i32, i32* %8, align 4
  %122 = sub nsw i32 %121, 1
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds i8, i8* %120, i64 %123
  %125 = load i8, i8* %124, align 1
  store i8 %125, i8* %16, align 1
  %126 = load i8*, i8** %4, align 8
  %127 = load i32, i32* %8, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds i8, i8* %126, i64 %128
  %130 = load i8, i8* %129, align 1
  %131 = load i8*, i8** %4, align 8
  %132 = load i32, i32* %8, align 4
  %133 = sub nsw i32 %132, 1
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds i8, i8* %131, i64 %134
  store i8 %130, i8* %135, align 1
  %136 = load i8, i8* %16, align 1
  %137 = load i8*, i8** %4, align 8
  %138 = load i32, i32* %8, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds i8, i8* %137, i64 %139
  store i8 %136, i8* %140, align 1
  %141 = load i32, i32* %8, align 4
  %142 = icmp sgt i32 %141, 1
  br i1 %142, label %143, label %146

143:                                              ; preds = %119
  %144 = load i32, i32* %8, align 4
  %145 = sub nsw i32 %144, 2
  store i32 %145, i32* %8, align 4
  br label %146

146:                                              ; preds = %143, %119
  br label %147

147:                                              ; preds = %146, %118, %109, %98
  %148 = load i32, i32* %8, align 4
  %149 = add nsw i32 %148, 1
  store i32 %149, i32* %8, align 4
  br label %73

150:                                              ; preds = %73
  %151 = load i32, i32* %6, align 4
  %152 = add nsw i32 %151, 1
  %153 = sext i32 %152 to i64
  %154 = mul i64 %153, 1
  %155 = trunc i64 %154 to i32
  %156 = call i64 @ALLOC(i32 %155)
  %157 = inttoptr i64 %156 to i8*
  store i8* %157, i8** %5, align 8
  %158 = load i8*, i8** %5, align 8
  %159 = icmp ne i8* %158, null
  br i1 %159, label %163, label %160

160:                                              ; preds = %150
  %161 = load i8*, i8** %4, align 8
  %162 = call i32 @FREE(i8* %161)
  store i8* null, i8** %2, align 8
  br label %238

163:                                              ; preds = %150
  store i32 -1, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 1, i32* %12, align 4
  %164 = load i8*, i8** %4, align 8
  %165 = getelementptr inbounds i8, i8* %164, i64 0
  %166 = load i8, i8* %165, align 1
  %167 = load i8*, i8** %5, align 8
  %168 = getelementptr inbounds i8, i8* %167, i64 0
  store i8 %166, i8* %168, align 1
  store i8 %166, i8* %13, align 1
  store i32 1, i32* %8, align 4
  br label %169

169:                                              ; preds = %227, %163
  %170 = load i32, i32* %8, align 4
  %171 = load i32, i32* %6, align 4
  %172 = icmp slt i32 %170, %171
  br i1 %172, label %173, label %230

173:                                              ; preds = %169
  %174 = load i8*, i8** %4, align 8
  %175 = load i32, i32* %8, align 4
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds i8, i8* %174, i64 %176
  %178 = load i8, i8* %177, align 1
  store i8 %178, i8* %19, align 1
  %179 = load i8, i8* %19, align 1
  %180 = call %struct.TYPE_3__* @get_code_entry(i8 signext %179)
  store %struct.TYPE_3__* %180, %struct.TYPE_3__** %20, align 8
  %181 = load %struct.TYPE_3__*, %struct.TYPE_3__** %20, align 8
  %182 = icmp eq %struct.TYPE_3__* %181, null
  br i1 %182, label %183, label %184

183:                                              ; preds = %173
  br label %188

184:                                              ; preds = %173
  %185 = load %struct.TYPE_3__*, %struct.TYPE_3__** %20, align 8
  %186 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %185, i32 0, i32 0
  %187 = load i32, i32* %186, align 4
  br label %188

188:                                              ; preds = %184, %183
  %189 = phi i32 [ 0, %183 ], [ %187, %184 ]
  store i32 %189, i32* %21, align 4
  %190 = load i32, i32* %10, align 4
  %191 = load i32, i32* %21, align 4
  %192 = icmp slt i32 %190, %191
  br i1 %192, label %193, label %205

193:                                              ; preds = %188
  %194 = load i8, i8* %13, align 1
  %195 = load i8, i8* %19, align 1
  %196 = call i64 @recompose_code(i8 signext %194, i8 signext %195, i8* %22)
  %197 = icmp ne i64 %196, 0
  br i1 %197, label %198, label %205

198:                                              ; preds = %193
  %199 = load i8, i8* %22, align 1
  %200 = load i8*, i8** %5, align 8
  %201 = load i32, i32* %11, align 4
  %202 = sext i32 %201 to i64
  %203 = getelementptr inbounds i8, i8* %200, i64 %202
  store i8 %199, i8* %203, align 1
  %204 = load i8, i8* %22, align 1
  store i8 %204, i8* %13, align 1
  br label %226

205:                                              ; preds = %193, %188
  %206 = load i32, i32* %21, align 4
  %207 = icmp eq i32 %206, 0
  br i1 %207, label %208, label %217

208:                                              ; preds = %205
  %209 = load i32, i32* %12, align 4
  store i32 %209, i32* %11, align 4
  %210 = load i8, i8* %19, align 1
  store i8 %210, i8* %13, align 1
  store i32 -1, i32* %10, align 4
  %211 = load i8, i8* %19, align 1
  %212 = load i8*, i8** %5, align 8
  %213 = load i32, i32* %12, align 4
  %214 = add nsw i32 %213, 1
  store i32 %214, i32* %12, align 4
  %215 = sext i32 %213 to i64
  %216 = getelementptr inbounds i8, i8* %212, i64 %215
  store i8 %211, i8* %216, align 1
  br label %225

217:                                              ; preds = %205
  %218 = load i32, i32* %21, align 4
  store i32 %218, i32* %10, align 4
  %219 = load i8, i8* %19, align 1
  %220 = load i8*, i8** %5, align 8
  %221 = load i32, i32* %12, align 4
  %222 = add nsw i32 %221, 1
  store i32 %222, i32* %12, align 4
  %223 = sext i32 %221 to i64
  %224 = getelementptr inbounds i8, i8* %220, i64 %223
  store i8 %219, i8* %224, align 1
  br label %225

225:                                              ; preds = %217, %208
  br label %226

226:                                              ; preds = %225, %198
  br label %227

227:                                              ; preds = %226
  %228 = load i32, i32* %8, align 4
  %229 = add nsw i32 %228, 1
  store i32 %229, i32* %8, align 4
  br label %169

230:                                              ; preds = %169
  %231 = load i8*, i8** %5, align 8
  %232 = load i32, i32* %12, align 4
  %233 = sext i32 %232 to i64
  %234 = getelementptr inbounds i8, i8* %231, i64 %233
  store i8 0, i8* %234, align 1
  %235 = load i8*, i8** %4, align 8
  %236 = call i32 @FREE(i8* %235)
  %237 = load i8*, i8** %5, align 8
  store i8* %237, i8** %2, align 8
  br label %238

238:                                              ; preds = %230, %160, %49
  %239 = load i8*, i8** %2, align 8
  ret i8* %239
}

declare dso_local i64 @get_decomposed_size(i8 signext) #1

declare dso_local i64 @ALLOC(i32) #1

declare dso_local i32 @decompose_code(i8 signext, i8**, i32*) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local %struct.TYPE_3__* @get_code_entry(i8 signext) #1

declare dso_local i32 @FREE(i8*) #1

declare dso_local i64 @recompose_code(i8 signext, i8 signext, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
