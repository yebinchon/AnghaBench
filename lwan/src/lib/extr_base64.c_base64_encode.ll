; ModuleID = '/home/carl/AnghaBench/lwan/src/lib/extr_base64.c_base64_encode.c'
source_filename = "/home/carl/AnghaBench/lwan/src/lib/extr_base64.c_base64_encode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@base64_table = common dso_local global i8** null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @base64_encode(i8* %0, i64 %1, i64* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64* %2, i64** %7, align 8
  %14 = load i64, i64* %6, align 8
  %15 = mul i64 %14, 4
  %16 = udiv i64 %15, 3
  %17 = add i64 %16, 4
  store i64 %17, i64* %12, align 8
  %18 = load i64, i64* %12, align 8
  %19 = udiv i64 %18, 72
  %20 = load i64, i64* %12, align 8
  %21 = add i64 %20, %19
  store i64 %21, i64* %12, align 8
  %22 = load i64, i64* %12, align 8
  %23 = add i64 %22, 1
  store i64 %23, i64* %12, align 8
  %24 = load i64, i64* %12, align 8
  %25 = load i64, i64* %6, align 8
  %26 = icmp ult i64 %24, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %3
  store i8* null, i8** %4, align 8
  br label %213

28:                                               ; preds = %3
  %29 = load i64, i64* %12, align 8
  %30 = call i8* @malloc(i64 %29)
  store i8* %30, i8** %8, align 8
  %31 = load i8*, i8** %8, align 8
  %32 = icmp eq i8* %31, null
  br i1 %32, label %33, label %34

33:                                               ; preds = %28
  store i8* null, i8** %4, align 8
  br label %213

34:                                               ; preds = %28
  %35 = load i8*, i8** %5, align 8
  %36 = load i64, i64* %6, align 8
  %37 = getelementptr inbounds i8, i8* %35, i64 %36
  store i8* %37, i8** %10, align 8
  %38 = load i8*, i8** %5, align 8
  store i8* %38, i8** %11, align 8
  %39 = load i8*, i8** %8, align 8
  store i8* %39, i8** %9, align 8
  store i32 0, i32* %13, align 4
  br label %40

40:                                               ; preds = %119, %34
  %41 = load i8*, i8** %10, align 8
  %42 = load i8*, i8** %11, align 8
  %43 = ptrtoint i8* %41 to i64
  %44 = ptrtoint i8* %42 to i64
  %45 = sub i64 %43, %44
  %46 = icmp sge i64 %45, 3
  br i1 %46, label %47, label %120

47:                                               ; preds = %40
  %48 = load i8**, i8*** @base64_table, align 8
  %49 = load i8*, i8** %11, align 8
  %50 = getelementptr inbounds i8, i8* %49, i64 0
  %51 = load i8, i8* %50, align 1
  %52 = zext i8 %51 to i32
  %53 = ashr i32 %52, 2
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i8*, i8** %48, i64 %54
  %56 = load i8*, i8** %55, align 8
  %57 = ptrtoint i8* %56 to i8
  %58 = load i8*, i8** %9, align 8
  %59 = getelementptr inbounds i8, i8* %58, i32 1
  store i8* %59, i8** %9, align 8
  store i8 %57, i8* %58, align 1
  %60 = load i8**, i8*** @base64_table, align 8
  %61 = load i8*, i8** %11, align 8
  %62 = getelementptr inbounds i8, i8* %61, i64 0
  %63 = load i8, i8* %62, align 1
  %64 = zext i8 %63 to i32
  %65 = and i32 %64, 3
  %66 = shl i32 %65, 4
  %67 = load i8*, i8** %11, align 8
  %68 = getelementptr inbounds i8, i8* %67, i64 1
  %69 = load i8, i8* %68, align 1
  %70 = zext i8 %69 to i32
  %71 = ashr i32 %70, 4
  %72 = or i32 %66, %71
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i8*, i8** %60, i64 %73
  %75 = load i8*, i8** %74, align 8
  %76 = ptrtoint i8* %75 to i8
  %77 = load i8*, i8** %9, align 8
  %78 = getelementptr inbounds i8, i8* %77, i32 1
  store i8* %78, i8** %9, align 8
  store i8 %76, i8* %77, align 1
  %79 = load i8**, i8*** @base64_table, align 8
  %80 = load i8*, i8** %11, align 8
  %81 = getelementptr inbounds i8, i8* %80, i64 1
  %82 = load i8, i8* %81, align 1
  %83 = zext i8 %82 to i32
  %84 = and i32 %83, 15
  %85 = shl i32 %84, 2
  %86 = load i8*, i8** %11, align 8
  %87 = getelementptr inbounds i8, i8* %86, i64 2
  %88 = load i8, i8* %87, align 1
  %89 = zext i8 %88 to i32
  %90 = ashr i32 %89, 6
  %91 = or i32 %85, %90
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i8*, i8** %79, i64 %92
  %94 = load i8*, i8** %93, align 8
  %95 = ptrtoint i8* %94 to i8
  %96 = load i8*, i8** %9, align 8
  %97 = getelementptr inbounds i8, i8* %96, i32 1
  store i8* %97, i8** %9, align 8
  store i8 %95, i8* %96, align 1
  %98 = load i8**, i8*** @base64_table, align 8
  %99 = load i8*, i8** %11, align 8
  %100 = getelementptr inbounds i8, i8* %99, i64 2
  %101 = load i8, i8* %100, align 1
  %102 = zext i8 %101 to i32
  %103 = and i32 %102, 63
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i8*, i8** %98, i64 %104
  %106 = load i8*, i8** %105, align 8
  %107 = ptrtoint i8* %106 to i8
  %108 = load i8*, i8** %9, align 8
  %109 = getelementptr inbounds i8, i8* %108, i32 1
  store i8* %109, i8** %9, align 8
  store i8 %107, i8* %108, align 1
  %110 = load i8*, i8** %11, align 8
  %111 = getelementptr inbounds i8, i8* %110, i64 3
  store i8* %111, i8** %11, align 8
  %112 = load i32, i32* %13, align 4
  %113 = add nsw i32 %112, 4
  store i32 %113, i32* %13, align 4
  %114 = load i32, i32* %13, align 4
  %115 = icmp sge i32 %114, 72
  br i1 %115, label %116, label %119

116:                                              ; preds = %47
  %117 = load i8*, i8** %9, align 8
  %118 = getelementptr inbounds i8, i8* %117, i32 1
  store i8* %118, i8** %9, align 8
  store i8 10, i8* %117, align 1
  store i32 0, i32* %13, align 4
  br label %119

119:                                              ; preds = %116, %47
  br label %40

120:                                              ; preds = %40
  %121 = load i8*, i8** %10, align 8
  %122 = load i8*, i8** %11, align 8
  %123 = ptrtoint i8* %121 to i64
  %124 = ptrtoint i8* %122 to i64
  %125 = sub i64 %123, %124
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %200

127:                                              ; preds = %120
  %128 = load i8**, i8*** @base64_table, align 8
  %129 = load i8*, i8** %11, align 8
  %130 = getelementptr inbounds i8, i8* %129, i64 0
  %131 = load i8, i8* %130, align 1
  %132 = zext i8 %131 to i32
  %133 = ashr i32 %132, 2
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds i8*, i8** %128, i64 %134
  %136 = load i8*, i8** %135, align 8
  %137 = ptrtoint i8* %136 to i8
  %138 = load i8*, i8** %9, align 8
  %139 = getelementptr inbounds i8, i8* %138, i32 1
  store i8* %139, i8** %9, align 8
  store i8 %137, i8* %138, align 1
  %140 = load i8*, i8** %10, align 8
  %141 = load i8*, i8** %11, align 8
  %142 = ptrtoint i8* %140 to i64
  %143 = ptrtoint i8* %141 to i64
  %144 = sub i64 %142, %143
  %145 = icmp eq i64 %144, 1
  br i1 %145, label %146, label %162

146:                                              ; preds = %127
  %147 = load i8**, i8*** @base64_table, align 8
  %148 = load i8*, i8** %11, align 8
  %149 = getelementptr inbounds i8, i8* %148, i64 0
  %150 = load i8, i8* %149, align 1
  %151 = zext i8 %150 to i32
  %152 = and i32 %151, 3
  %153 = shl i32 %152, 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds i8*, i8** %147, i64 %154
  %156 = load i8*, i8** %155, align 8
  %157 = ptrtoint i8* %156 to i8
  %158 = load i8*, i8** %9, align 8
  %159 = getelementptr inbounds i8, i8* %158, i32 1
  store i8* %159, i8** %9, align 8
  store i8 %157, i8* %158, align 1
  %160 = load i8*, i8** %9, align 8
  %161 = getelementptr inbounds i8, i8* %160, i32 1
  store i8* %161, i8** %9, align 8
  store i8 61, i8* %160, align 1
  br label %195

162:                                              ; preds = %127
  %163 = load i8**, i8*** @base64_table, align 8
  %164 = load i8*, i8** %11, align 8
  %165 = getelementptr inbounds i8, i8* %164, i64 0
  %166 = load i8, i8* %165, align 1
  %167 = zext i8 %166 to i32
  %168 = and i32 %167, 3
  %169 = shl i32 %168, 4
  %170 = load i8*, i8** %11, align 8
  %171 = getelementptr inbounds i8, i8* %170, i64 1
  %172 = load i8, i8* %171, align 1
  %173 = zext i8 %172 to i32
  %174 = ashr i32 %173, 4
  %175 = or i32 %169, %174
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds i8*, i8** %163, i64 %176
  %178 = load i8*, i8** %177, align 8
  %179 = ptrtoint i8* %178 to i8
  %180 = load i8*, i8** %9, align 8
  %181 = getelementptr inbounds i8, i8* %180, i32 1
  store i8* %181, i8** %9, align 8
  store i8 %179, i8* %180, align 1
  %182 = load i8**, i8*** @base64_table, align 8
  %183 = load i8*, i8** %11, align 8
  %184 = getelementptr inbounds i8, i8* %183, i64 1
  %185 = load i8, i8* %184, align 1
  %186 = zext i8 %185 to i32
  %187 = and i32 %186, 15
  %188 = shl i32 %187, 2
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds i8*, i8** %182, i64 %189
  %191 = load i8*, i8** %190, align 8
  %192 = ptrtoint i8* %191 to i8
  %193 = load i8*, i8** %9, align 8
  %194 = getelementptr inbounds i8, i8* %193, i32 1
  store i8* %194, i8** %9, align 8
  store i8 %192, i8* %193, align 1
  br label %195

195:                                              ; preds = %162, %146
  %196 = load i8*, i8** %9, align 8
  %197 = getelementptr inbounds i8, i8* %196, i32 1
  store i8* %197, i8** %9, align 8
  store i8 61, i8* %196, align 1
  %198 = load i32, i32* %13, align 4
  %199 = add nsw i32 %198, 4
  store i32 %199, i32* %13, align 4
  br label %200

200:                                              ; preds = %195, %120
  %201 = load i8*, i8** %9, align 8
  store i8 0, i8* %201, align 1
  %202 = load i64*, i64** %7, align 8
  %203 = icmp ne i64* %202, null
  br i1 %203, label %204, label %211

204:                                              ; preds = %200
  %205 = load i8*, i8** %9, align 8
  %206 = load i8*, i8** %8, align 8
  %207 = ptrtoint i8* %205 to i64
  %208 = ptrtoint i8* %206 to i64
  %209 = sub i64 %207, %208
  %210 = load i64*, i64** %7, align 8
  store i64 %209, i64* %210, align 8
  br label %211

211:                                              ; preds = %204, %200
  %212 = load i8*, i8** %8, align 8
  store i8* %212, i8** %4, align 8
  br label %213

213:                                              ; preds = %211, %33, %27
  %214 = load i8*, i8** %4, align 8
  ret i8* %214
}

declare dso_local i8* @malloc(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
