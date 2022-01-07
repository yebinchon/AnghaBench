; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/tsearch/extr_ts_parse.c_generateHeadline.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/tsearch/extr_ts_parse.c_generateHeadline.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32, i32, i64, i32, i64, i64 }

@VARHDRSZ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @generateHeadline(%struct.TYPE_5__* %0) #0 {
  %2 = alloca %struct.TYPE_5__*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_4__*, align 8
  %9 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %2, align 8
  store i32 128, i32* %5, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 7
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  store %struct.TYPE_4__* %12, %struct.TYPE_4__** %8, align 8
  %13 = load i32, i32* %5, align 4
  %14 = call i64 @palloc(i32 %13)
  %15 = inttoptr i64 %14 to i32*
  store i32* %15, i32** %3, align 8
  %16 = load i32*, i32** %3, align 8
  %17 = bitcast i32* %16 to i8*
  %18 = load i32, i32* @VARHDRSZ, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i8, i8* %17, i64 %19
  store i8* %20, i8** %4, align 8
  br label %21

21:                                               ; preds = %202, %1
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 7
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %26 = ptrtoint %struct.TYPE_4__* %22 to i64
  %27 = ptrtoint %struct.TYPE_4__* %25 to i64
  %28 = sub i64 %26, %27
  %29 = sdiv exact i64 %28, 48
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = sext i32 %32 to i64
  %34 = icmp slt i64 %29, %33
  br i1 %34, label %35, label %205

35:                                               ; preds = %21
  br label %36

36:                                               ; preds = %63, %35
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = add nsw i32 %39, %42
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 8
  %47 = add nsw i32 %43, %46
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 4
  %51 = add nsw i32 %47, %50
  %52 = sext i32 %51 to i64
  %53 = load i8*, i8** %4, align 8
  %54 = load i32*, i32** %3, align 8
  %55 = bitcast i32* %54 to i8*
  %56 = ptrtoint i8* %53 to i64
  %57 = ptrtoint i8* %55 to i64
  %58 = sub i64 %56, %57
  %59 = add nsw i64 %52, %58
  %60 = load i32, i32* %5, align 4
  %61 = sext i32 %60 to i64
  %62 = icmp sge i64 %59, %61
  br i1 %62, label %63, label %82

63:                                               ; preds = %36
  %64 = load i8*, i8** %4, align 8
  %65 = load i32*, i32** %3, align 8
  %66 = bitcast i32* %65 to i8*
  %67 = ptrtoint i8* %64 to i64
  %68 = ptrtoint i8* %66 to i64
  %69 = sub i64 %67, %68
  %70 = trunc i64 %69 to i32
  store i32 %70, i32* %9, align 4
  %71 = load i32, i32* %5, align 4
  %72 = mul nsw i32 %71, 2
  store i32 %72, i32* %5, align 4
  %73 = load i32*, i32** %3, align 8
  %74 = load i32, i32* %5, align 4
  %75 = call i64 @repalloc(i32* %73, i32 %74)
  %76 = inttoptr i64 %75 to i32*
  store i32* %76, i32** %3, align 8
  %77 = load i32*, i32** %3, align 8
  %78 = bitcast i32* %77 to i8*
  %79 = load i32, i32* %9, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i8, i8* %78, i64 %80
  store i8* %81, i8** %4, align 8
  br label %36

82:                                               ; preds = %36
  %83 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 6
  %85 = load i64, i64* %84, align 8
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %187

87:                                               ; preds = %82
  %88 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 8
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %187, label %92

92:                                               ; preds = %87
  %93 = load i32, i32* %7, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %116, label %95

95:                                               ; preds = %92
  store i32 1, i32* %7, align 4
  %96 = load i32, i32* %6, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %6, align 4
  %98 = load i32, i32* %6, align 4
  %99 = icmp sgt i32 %98, 1
  br i1 %99, label %100, label %115

100:                                              ; preds = %95
  %101 = load i8*, i8** %4, align 8
  %102 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %103 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %102, i32 0, i32 6
  %104 = load i32, i32* %103, align 8
  %105 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %106 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %105, i32 0, i32 3
  %107 = load i32, i32* %106, align 4
  %108 = call i32 @memcpy(i8* %101, i32 %104, i32 %107)
  %109 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %110 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %109, i32 0, i32 3
  %111 = load i32, i32* %110, align 4
  %112 = load i8*, i8** %4, align 8
  %113 = sext i32 %111 to i64
  %114 = getelementptr inbounds i8, i8* %112, i64 %113
  store i8* %114, i8** %4, align 8
  br label %115

115:                                              ; preds = %100, %95
  br label %116

116:                                              ; preds = %115, %92
  %117 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %118 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %117, i32 0, i32 5
  %119 = load i64, i64* %118, align 8
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %125

121:                                              ; preds = %116
  %122 = load i8*, i8** %4, align 8
  store i8 32, i8* %122, align 1
  %123 = load i8*, i8** %4, align 8
  %124 = getelementptr inbounds i8, i8* %123, i32 1
  store i8* %124, i8** %4, align 8
  br label %186

125:                                              ; preds = %116
  %126 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %127 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %126, i32 0, i32 4
  %128 = load i32, i32* %127, align 8
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %185, label %130

130:                                              ; preds = %125
  %131 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %132 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %131, i32 0, i32 3
  %133 = load i64, i64* %132, align 8
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %150

135:                                              ; preds = %130
  %136 = load i8*, i8** %4, align 8
  %137 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %138 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %137, i32 0, i32 5
  %139 = load i32, i32* %138, align 4
  %140 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %141 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %140, i32 0, i32 2
  %142 = load i32, i32* %141, align 8
  %143 = call i32 @memcpy(i8* %136, i32 %139, i32 %142)
  %144 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %145 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %144, i32 0, i32 2
  %146 = load i32, i32* %145, align 8
  %147 = load i8*, i8** %4, align 8
  %148 = sext i32 %146 to i64
  %149 = getelementptr inbounds i8, i8* %147, i64 %148
  store i8* %149, i8** %4, align 8
  br label %150

150:                                              ; preds = %135, %130
  %151 = load i8*, i8** %4, align 8
  %152 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %153 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %152, i32 0, i32 1
  %154 = load i32, i32* %153, align 4
  %155 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %156 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 8
  %158 = call i32 @memcpy(i8* %151, i32 %154, i32 %157)
  %159 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %160 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 8
  %162 = load i8*, i8** %4, align 8
  %163 = sext i32 %161 to i64
  %164 = getelementptr inbounds i8, i8* %162, i64 %163
  store i8* %164, i8** %4, align 8
  %165 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %166 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %165, i32 0, i32 3
  %167 = load i64, i64* %166, align 8
  %168 = icmp ne i64 %167, 0
  br i1 %168, label %169, label %184

169:                                              ; preds = %150
  %170 = load i8*, i8** %4, align 8
  %171 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %172 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %171, i32 0, i32 4
  %173 = load i32, i32* %172, align 8
  %174 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %175 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %174, i32 0, i32 1
  %176 = load i32, i32* %175, align 4
  %177 = call i32 @memcpy(i8* %170, i32 %173, i32 %176)
  %178 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %179 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %178, i32 0, i32 1
  %180 = load i32, i32* %179, align 4
  %181 = load i8*, i8** %4, align 8
  %182 = sext i32 %180 to i64
  %183 = getelementptr inbounds i8, i8* %181, i64 %182
  store i8* %183, i8** %4, align 8
  br label %184

184:                                              ; preds = %169, %150
  br label %185

185:                                              ; preds = %184, %125
  br label %186

186:                                              ; preds = %185, %121
  br label %202

187:                                              ; preds = %87, %82
  %188 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %189 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %188, i32 0, i32 2
  %190 = load i32, i32* %189, align 8
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %201, label %192

192:                                              ; preds = %187
  %193 = load i32, i32* %7, align 4
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %195, label %196

195:                                              ; preds = %192
  store i32 0, i32* %7, align 4
  br label %196

196:                                              ; preds = %195, %192
  %197 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %198 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %197, i32 0, i32 1
  %199 = load i32, i32* %198, align 4
  %200 = call i32 @pfree(i32 %199)
  br label %201

201:                                              ; preds = %196, %187
  br label %202

202:                                              ; preds = %201, %186
  %203 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %204 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %203, i32 1
  store %struct.TYPE_4__* %204, %struct.TYPE_4__** %8, align 8
  br label %21

205:                                              ; preds = %21
  %206 = load i32*, i32** %3, align 8
  %207 = load i8*, i8** %4, align 8
  %208 = load i32*, i32** %3, align 8
  %209 = bitcast i32* %208 to i8*
  %210 = ptrtoint i8* %207 to i64
  %211 = ptrtoint i8* %209 to i64
  %212 = sub i64 %210, %211
  %213 = trunc i64 %212 to i32
  %214 = call i32 @SET_VARSIZE(i32* %206, i32 %213)
  %215 = load i32*, i32** %3, align 8
  ret i32* %215
}

declare dso_local i64 @palloc(i32) #1

declare dso_local i64 @repalloc(i32*, i32) #1

declare dso_local i32 @memcpy(i8*, i32, i32) #1

declare dso_local i32 @pfree(i32) #1

declare dso_local i32 @SET_VARSIZE(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
