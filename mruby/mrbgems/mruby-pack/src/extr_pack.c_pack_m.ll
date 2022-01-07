; ModuleID = '/home/carl/AnghaBench/mruby/mrbgems/mruby-pack/src/extr_pack.c_pack_m.c'
source_filename = "/home/carl/AnghaBench/mruby/mrbgems/mruby-pack/src/extr_pack.c_pack_m.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@base64chars = common dso_local global i8** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i32, i32, i64, i32)* @pack_m to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pack_m(i32* %0, i32 %1, i32 %2, i32 %3, i64 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  store i32* %0, i32** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i64 %4, i64* %12, align 8
  store i32 %5, i32* %13, align 4
  %21 = load i32, i32* %9, align 4
  %22 = call i8* @RSTRING_PTR(i32 %21)
  store i8* %22, i8** %18, align 8
  %23 = load i32, i32* %9, align 4
  %24 = call i32 @RSTRING_LEN(i32 %23)
  store i32 %24, i32* %17, align 4
  %25 = load i32, i32* %17, align 4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %6
  store i32 0, i32* %7, align 4
  br label %254

28:                                               ; preds = %6
  %29 = load i64, i64* %12, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %28
  %32 = load i64, i64* %12, align 8
  %33 = icmp slt i64 %32, 3
  br i1 %33, label %34, label %35

34:                                               ; preds = %31
  store i64 45, i64* %12, align 8
  br label %44

35:                                               ; preds = %31, %28
  %36 = load i64, i64* %12, align 8
  %37 = icmp sge i64 %36, 3
  br i1 %37, label %38, label %43

38:                                               ; preds = %35
  %39 = load i64, i64* %12, align 8
  %40 = srem i64 %39, 3
  %41 = load i64, i64* %12, align 8
  %42 = sub nsw i64 %41, %40
  store i64 %42, i64* %12, align 8
  br label %43

43:                                               ; preds = %38, %35
  br label %44

44:                                               ; preds = %43, %34
  %45 = load i32, i32* %17, align 4
  %46 = add nsw i32 %45, 2
  %47 = sdiv i32 %46, 3
  %48 = mul nsw i32 %47, 4
  store i32 %48, i32* %14, align 4
  %49 = load i64, i64* %12, align 8
  %50 = icmp sgt i64 %49, 0
  br i1 %50, label %51, label %69

51:                                               ; preds = %44
  %52 = load i32, i32* %17, align 4
  %53 = sext i32 %52 to i64
  %54 = load i64, i64* %12, align 8
  %55 = sdiv i64 %53, %54
  %56 = load i32, i32* %17, align 4
  %57 = sext i32 %56 to i64
  %58 = load i64, i64* %12, align 8
  %59 = srem i64 %57, %58
  %60 = icmp eq i64 %59, 0
  %61 = zext i1 %60 to i64
  %62 = select i1 %60, i32 0, i32 1
  %63 = sext i32 %62 to i64
  %64 = add nsw i64 %55, %63
  %65 = load i32, i32* %14, align 4
  %66 = sext i32 %65 to i64
  %67 = add nsw i64 %66, %64
  %68 = trunc i64 %67 to i32
  store i32 %68, i32* %14, align 4
  br label %69

69:                                               ; preds = %51, %44
  %70 = load i32*, i32** %8, align 8
  %71 = load i32, i32* %10, align 4
  %72 = load i32, i32* %11, align 4
  %73 = load i32, i32* %14, align 4
  %74 = add nsw i32 %72, %73
  %75 = call i32 @str_len_ensure(i32* %70, i32 %71, i32 %74)
  store i32 %75, i32* %10, align 4
  %76 = load i32, i32* %10, align 4
  %77 = call i8* @RSTRING_PTR(i32 %76)
  %78 = load i32, i32* %11, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i8, i8* %77, i64 %79
  store i8* %80, i8** %19, align 8
  %81 = load i8*, i8** %19, align 8
  store i8* %81, i8** %20, align 8
  store i32 3, i32* %16, align 4
  br label %82

82:                                               ; preds = %149, %69
  %83 = load i32, i32* %17, align 4
  %84 = icmp sge i32 %83, 3
  br i1 %84, label %85, label %154

85:                                               ; preds = %82
  %86 = load i8*, i8** %18, align 8
  %87 = getelementptr inbounds i8, i8* %86, i32 1
  store i8* %87, i8** %18, align 8
  %88 = load i8, i8* %86, align 1
  %89 = zext i8 %88 to i32
  %90 = shl i32 %89, 16
  %91 = sext i32 %90 to i64
  store i64 %91, i64* %15, align 8
  %92 = load i8*, i8** %18, align 8
  %93 = getelementptr inbounds i8, i8* %92, i32 1
  store i8* %93, i8** %18, align 8
  %94 = load i8, i8* %92, align 1
  %95 = zext i8 %94 to i32
  %96 = shl i32 %95, 8
  %97 = sext i32 %96 to i64
  %98 = load i64, i64* %15, align 8
  %99 = add i64 %98, %97
  store i64 %99, i64* %15, align 8
  %100 = load i8*, i8** %18, align 8
  %101 = getelementptr inbounds i8, i8* %100, i32 1
  store i8* %101, i8** %18, align 8
  %102 = load i8, i8* %100, align 1
  %103 = zext i8 %102 to i64
  %104 = load i64, i64* %15, align 8
  %105 = add i64 %104, %103
  store i64 %105, i64* %15, align 8
  %106 = load i8**, i8*** @base64chars, align 8
  %107 = load i64, i64* %15, align 8
  %108 = lshr i64 %107, 18
  %109 = and i64 %108, 63
  %110 = getelementptr inbounds i8*, i8** %106, i64 %109
  %111 = load i8*, i8** %110, align 8
  %112 = ptrtoint i8* %111 to i8
  %113 = load i8*, i8** %19, align 8
  %114 = getelementptr inbounds i8, i8* %113, i32 1
  store i8* %114, i8** %19, align 8
  store i8 %112, i8* %113, align 1
  %115 = load i8**, i8*** @base64chars, align 8
  %116 = load i64, i64* %15, align 8
  %117 = lshr i64 %116, 12
  %118 = and i64 %117, 63
  %119 = getelementptr inbounds i8*, i8** %115, i64 %118
  %120 = load i8*, i8** %119, align 8
  %121 = ptrtoint i8* %120 to i8
  %122 = load i8*, i8** %19, align 8
  %123 = getelementptr inbounds i8, i8* %122, i32 1
  store i8* %123, i8** %19, align 8
  store i8 %121, i8* %122, align 1
  %124 = load i8**, i8*** @base64chars, align 8
  %125 = load i64, i64* %15, align 8
  %126 = lshr i64 %125, 6
  %127 = and i64 %126, 63
  %128 = getelementptr inbounds i8*, i8** %124, i64 %127
  %129 = load i8*, i8** %128, align 8
  %130 = ptrtoint i8* %129 to i8
  %131 = load i8*, i8** %19, align 8
  %132 = getelementptr inbounds i8, i8* %131, i32 1
  store i8* %132, i8** %19, align 8
  store i8 %130, i8* %131, align 1
  %133 = load i8**, i8*** @base64chars, align 8
  %134 = load i64, i64* %15, align 8
  %135 = and i64 %134, 63
  %136 = getelementptr inbounds i8*, i8** %133, i64 %135
  %137 = load i8*, i8** %136, align 8
  %138 = ptrtoint i8* %137 to i8
  %139 = load i8*, i8** %19, align 8
  %140 = getelementptr inbounds i8, i8* %139, i32 1
  store i8* %140, i8** %19, align 8
  store i8 %138, i8* %139, align 1
  %141 = load i32, i32* %16, align 4
  %142 = sext i32 %141 to i64
  %143 = load i64, i64* %12, align 8
  %144 = icmp eq i64 %142, %143
  br i1 %144, label %145, label %148

145:                                              ; preds = %85
  %146 = load i8*, i8** %19, align 8
  %147 = getelementptr inbounds i8, i8* %146, i32 1
  store i8* %147, i8** %19, align 8
  store i8 10, i8* %146, align 1
  store i32 0, i32* %16, align 4
  br label %148

148:                                              ; preds = %145, %85
  br label %149

149:                                              ; preds = %148
  %150 = load i32, i32* %17, align 4
  %151 = sub nsw i32 %150, 3
  store i32 %151, i32* %17, align 4
  %152 = load i32, i32* %16, align 4
  %153 = add nsw i32 %152, 3
  store i32 %153, i32* %16, align 4
  br label %82

154:                                              ; preds = %82
  %155 = load i32, i32* %17, align 4
  %156 = icmp eq i32 %155, 1
  br i1 %156, label %157, label %188

157:                                              ; preds = %154
  %158 = load i8*, i8** %18, align 8
  %159 = getelementptr inbounds i8, i8* %158, i32 1
  store i8* %159, i8** %18, align 8
  %160 = load i8, i8* %158, align 1
  %161 = zext i8 %160 to i32
  %162 = shl i32 %161, 16
  %163 = sext i32 %162 to i64
  store i64 %163, i64* %15, align 8
  %164 = load i8**, i8*** @base64chars, align 8
  %165 = load i64, i64* %15, align 8
  %166 = lshr i64 %165, 18
  %167 = and i64 %166, 63
  %168 = getelementptr inbounds i8*, i8** %164, i64 %167
  %169 = load i8*, i8** %168, align 8
  %170 = ptrtoint i8* %169 to i8
  %171 = load i8*, i8** %19, align 8
  %172 = getelementptr inbounds i8, i8* %171, i32 1
  store i8* %172, i8** %19, align 8
  store i8 %170, i8* %171, align 1
  %173 = load i8**, i8*** @base64chars, align 8
  %174 = load i64, i64* %15, align 8
  %175 = lshr i64 %174, 12
  %176 = and i64 %175, 63
  %177 = getelementptr inbounds i8*, i8** %173, i64 %176
  %178 = load i8*, i8** %177, align 8
  %179 = ptrtoint i8* %178 to i8
  %180 = load i8*, i8** %19, align 8
  %181 = getelementptr inbounds i8, i8* %180, i32 1
  store i8* %181, i8** %19, align 8
  store i8 %179, i8* %180, align 1
  %182 = load i8*, i8** %19, align 8
  %183 = getelementptr inbounds i8, i8* %182, i32 1
  store i8* %183, i8** %19, align 8
  store i8 61, i8* %182, align 1
  %184 = load i8*, i8** %19, align 8
  %185 = getelementptr inbounds i8, i8* %184, i32 1
  store i8* %185, i8** %19, align 8
  store i8 61, i8* %184, align 1
  %186 = load i32, i32* %16, align 4
  %187 = add nsw i32 %186, 3
  store i32 %187, i32* %16, align 4
  br label %238

188:                                              ; preds = %154
  %189 = load i32, i32* %17, align 4
  %190 = icmp eq i32 %189, 2
  br i1 %190, label %191, label %237

191:                                              ; preds = %188
  %192 = load i8*, i8** %18, align 8
  %193 = getelementptr inbounds i8, i8* %192, i32 1
  store i8* %193, i8** %18, align 8
  %194 = load i8, i8* %192, align 1
  %195 = zext i8 %194 to i32
  %196 = shl i32 %195, 16
  %197 = sext i32 %196 to i64
  store i64 %197, i64* %15, align 8
  %198 = load i8*, i8** %18, align 8
  %199 = getelementptr inbounds i8, i8* %198, i32 1
  store i8* %199, i8** %18, align 8
  %200 = load i8, i8* %198, align 1
  %201 = zext i8 %200 to i32
  %202 = shl i32 %201, 8
  %203 = sext i32 %202 to i64
  %204 = load i64, i64* %15, align 8
  %205 = add i64 %204, %203
  store i64 %205, i64* %15, align 8
  %206 = load i8**, i8*** @base64chars, align 8
  %207 = load i64, i64* %15, align 8
  %208 = lshr i64 %207, 18
  %209 = and i64 %208, 63
  %210 = getelementptr inbounds i8*, i8** %206, i64 %209
  %211 = load i8*, i8** %210, align 8
  %212 = ptrtoint i8* %211 to i8
  %213 = load i8*, i8** %19, align 8
  %214 = getelementptr inbounds i8, i8* %213, i32 1
  store i8* %214, i8** %19, align 8
  store i8 %212, i8* %213, align 1
  %215 = load i8**, i8*** @base64chars, align 8
  %216 = load i64, i64* %15, align 8
  %217 = lshr i64 %216, 12
  %218 = and i64 %217, 63
  %219 = getelementptr inbounds i8*, i8** %215, i64 %218
  %220 = load i8*, i8** %219, align 8
  %221 = ptrtoint i8* %220 to i8
  %222 = load i8*, i8** %19, align 8
  %223 = getelementptr inbounds i8, i8* %222, i32 1
  store i8* %223, i8** %19, align 8
  store i8 %221, i8* %222, align 1
  %224 = load i8**, i8*** @base64chars, align 8
  %225 = load i64, i64* %15, align 8
  %226 = lshr i64 %225, 6
  %227 = and i64 %226, 63
  %228 = getelementptr inbounds i8*, i8** %224, i64 %227
  %229 = load i8*, i8** %228, align 8
  %230 = ptrtoint i8* %229 to i8
  %231 = load i8*, i8** %19, align 8
  %232 = getelementptr inbounds i8, i8* %231, i32 1
  store i8* %232, i8** %19, align 8
  store i8 %230, i8* %231, align 1
  %233 = load i8*, i8** %19, align 8
  %234 = getelementptr inbounds i8, i8* %233, i32 1
  store i8* %234, i8** %19, align 8
  store i8 61, i8* %233, align 1
  %235 = load i32, i32* %16, align 4
  %236 = add nsw i32 %235, 3
  store i32 %236, i32* %16, align 4
  br label %237

237:                                              ; preds = %191, %188
  br label %238

238:                                              ; preds = %237, %157
  %239 = load i32, i32* %16, align 4
  %240 = icmp sgt i32 %239, 0
  br i1 %240, label %241, label %247

241:                                              ; preds = %238
  %242 = load i64, i64* %12, align 8
  %243 = icmp sgt i64 %242, 0
  br i1 %243, label %244, label %247

244:                                              ; preds = %241
  %245 = load i8*, i8** %19, align 8
  %246 = getelementptr inbounds i8, i8* %245, i32 1
  store i8* %246, i8** %19, align 8
  store i8 10, i8* %245, align 1
  br label %247

247:                                              ; preds = %244, %241, %238
  %248 = load i8*, i8** %19, align 8
  %249 = load i8*, i8** %20, align 8
  %250 = ptrtoint i8* %248 to i64
  %251 = ptrtoint i8* %249 to i64
  %252 = sub i64 %250, %251
  %253 = trunc i64 %252 to i32
  store i32 %253, i32* %7, align 4
  br label %254

254:                                              ; preds = %247, %27
  %255 = load i32, i32* %7, align 4
  ret i32 %255
}

declare dso_local i8* @RSTRING_PTR(i32) #1

declare dso_local i32 @RSTRING_LEN(i32) #1

declare dso_local i32 @str_len_ensure(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
