; ModuleID = '/home/carl/AnghaBench/poco/Data/SQLite/src/extr_sqlite3.c_pageInsertArray.c'
source_filename = "/home/carl/AnghaBench/poco/Data/SQLite/src/extr_sqlite3.c_pageInsertArray.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, i64* }
%struct.TYPE_8__ = type { i32*, i64**, i64** }

@CORRUPT_DB = common dso_local global i32 0, align 4
@NB = common dso_local global i32 0, align 4
@SQLITE_CORRUPT_BKPT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*, i64*, i64**, i64*, i32, i32, %struct.TYPE_8__*)* @pageInsertArray to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pageInsertArray(%struct.TYPE_7__* %0, i64* %1, i64** %2, i64* %3, i32 %4, i32 %5, %struct.TYPE_8__* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_7__*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i64**, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_8__*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i64*, align 8
  %18 = alloca i64*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i64*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i64*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %9, align 8
  store i64* %1, i64** %10, align 8
  store i64** %2, i64*** %11, align 8
  store i64* %3, i64** %12, align 8
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store %struct.TYPE_8__* %6, %struct.TYPE_8__** %15, align 8
  %25 = load i32, i32* %13, align 4
  store i32 %25, i32* %16, align 4
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 1
  %28 = load i64*, i64** %27, align 8
  store i64* %28, i64** %17, align 8
  %29 = load i64**, i64*** %11, align 8
  %30 = load i64*, i64** %29, align 8
  store i64* %30, i64** %18, align 8
  %31 = load i32, i32* %13, align 4
  %32 = load i32, i32* %14, align 4
  %33 = add nsw i32 %31, %32
  store i32 %33, i32* %19, align 4
  %34 = load i32, i32* @CORRUPT_DB, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %41, label %36

36:                                               ; preds = %7
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp eq i64 %39, 0
  br label %41

41:                                               ; preds = %36, %7
  %42 = phi i1 [ true, %7 ], [ %40, %36 ]
  %43 = zext i1 %42 to i32
  %44 = call i32 @assert(i32 %43)
  %45 = load i32, i32* %19, align 4
  %46 = load i32, i32* %13, align 4
  %47 = icmp sle i32 %45, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %41
  store i32 0, i32* %8, align 4
  br label %233

49:                                               ; preds = %41
  store i32 0, i32* %20, align 4
  br label %50

50:                                               ; preds = %71, %49
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 0
  %53 = load i32*, i32** %52, align 8
  %54 = load i32, i32* %20, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %53, i64 %55
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* %16, align 4
  %59 = icmp sle i32 %57, %58
  br i1 %59, label %60, label %68

60:                                               ; preds = %50
  %61 = load i32, i32* %20, align 4
  %62 = load i32, i32* @NB, align 4
  %63 = mul nsw i32 %62, 2
  %64 = icmp slt i32 %61, %63
  %65 = zext i1 %64 to i32
  %66 = call i64 @ALWAYS(i32 %65)
  %67 = icmp ne i64 %66, 0
  br label %68

68:                                               ; preds = %60, %50
  %69 = phi i1 [ false, %50 ], [ %67, %60 ]
  br i1 %69, label %70, label %74

70:                                               ; preds = %68
  br label %71

71:                                               ; preds = %70
  %72 = load i32, i32* %20, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %20, align 4
  br label %50

74:                                               ; preds = %68
  %75 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %75, i32 0, i32 2
  %77 = load i64**, i64*** %76, align 8
  %78 = load i32, i32* %20, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i64*, i64** %77, i64 %79
  %81 = load i64*, i64** %80, align 8
  store i64* %81, i64** %21, align 8
  br label %82

82:                                               ; preds = %74, %229
  %83 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %84 = load i32, i32* %16, align 4
  %85 = call i32 @cachedCellSize(%struct.TYPE_8__* %83, i32 %84)
  store i32 %85, i32* %22, align 4
  %86 = load i64*, i64** %17, align 8
  %87 = getelementptr inbounds i64, i64* %86, i64 1
  %88 = load i64, i64* %87, align 8
  %89 = icmp eq i64 %88, 0
  br i1 %89, label %90, label %95

90:                                               ; preds = %82
  %91 = load i64*, i64** %17, align 8
  %92 = getelementptr inbounds i64, i64* %91, i64 2
  %93 = load i64, i64* %92, align 8
  %94 = icmp eq i64 %93, 0
  br i1 %94, label %100, label %95

95:                                               ; preds = %90, %82
  %96 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %97 = load i32, i32* %22, align 4
  %98 = call i64* @pageFindSlot(%struct.TYPE_7__* %96, i32 %97, i32* %23)
  store i64* %98, i64** %24, align 8
  %99 = icmp eq i64* %98, null
  br i1 %99, label %100, label %118

100:                                              ; preds = %95, %90
  %101 = load i64*, i64** %18, align 8
  %102 = load i64*, i64** %10, align 8
  %103 = ptrtoint i64* %101 to i64
  %104 = ptrtoint i64* %102 to i64
  %105 = sub i64 %103, %104
  %106 = sdiv exact i64 %105, 8
  %107 = load i32, i32* %22, align 4
  %108 = sext i32 %107 to i64
  %109 = icmp slt i64 %106, %108
  br i1 %109, label %110, label %111

110:                                              ; preds = %100
  store i32 1, i32* %8, align 4
  br label %233

111:                                              ; preds = %100
  %112 = load i32, i32* %22, align 4
  %113 = load i64*, i64** %18, align 8
  %114 = sext i32 %112 to i64
  %115 = sub i64 0, %114
  %116 = getelementptr inbounds i64, i64* %113, i64 %115
  store i64* %116, i64** %18, align 8
  %117 = load i64*, i64** %18, align 8
  store i64* %117, i64** %24, align 8
  br label %118

118:                                              ; preds = %111, %95
  %119 = load i64*, i64** %24, align 8
  %120 = load i32, i32* %22, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds i64, i64* %119, i64 %121
  %123 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %124 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %123, i32 0, i32 1
  %125 = load i64**, i64*** %124, align 8
  %126 = load i32, i32* %16, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds i64*, i64** %125, i64 %127
  %129 = load i64*, i64** %128, align 8
  %130 = icmp ule i64* %122, %129
  br i1 %130, label %147, label %131

131:                                              ; preds = %118
  %132 = load i64*, i64** %24, align 8
  %133 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %134 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %133, i32 0, i32 1
  %135 = load i64**, i64*** %134, align 8
  %136 = load i32, i32* %16, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds i64*, i64** %135, i64 %137
  %139 = load i64*, i64** %138, align 8
  %140 = load i32, i32* %22, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds i64, i64* %139, i64 %141
  %143 = icmp uge i64* %132, %142
  br i1 %143, label %147, label %144

144:                                              ; preds = %131
  %145 = load i32, i32* @CORRUPT_DB, align 4
  %146 = icmp ne i32 %145, 0
  br label %147

147:                                              ; preds = %144, %131, %118
  %148 = phi i1 [ true, %131 ], [ true, %118 ], [ %146, %144 ]
  %149 = zext i1 %148 to i32
  %150 = call i32 @assert(i32 %149)
  %151 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %152 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %151, i32 0, i32 1
  %153 = load i64**, i64*** %152, align 8
  %154 = load i32, i32* %16, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds i64*, i64** %153, i64 %155
  %157 = load i64*, i64** %156, align 8
  %158 = load i32, i32* %22, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds i64, i64* %157, i64 %159
  %161 = ptrtoint i64* %160 to i64
  %162 = load i64*, i64** %21, align 8
  %163 = ptrtoint i64* %162 to i64
  %164 = icmp sgt i64 %161, %163
  br i1 %164, label %165, label %181

165:                                              ; preds = %147
  %166 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %167 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %166, i32 0, i32 1
  %168 = load i64**, i64*** %167, align 8
  %169 = load i32, i32* %16, align 4
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds i64*, i64** %168, i64 %170
  %172 = load i64*, i64** %171, align 8
  %173 = ptrtoint i64* %172 to i64
  %174 = load i64*, i64** %21, align 8
  %175 = ptrtoint i64* %174 to i64
  %176 = icmp slt i64 %173, %175
  br i1 %176, label %177, label %181

177:                                              ; preds = %165
  %178 = load i32, i32* @CORRUPT_DB, align 4
  %179 = call i32 @assert(i32 %178)
  %180 = load i32, i32* @SQLITE_CORRUPT_BKPT, align 4
  store i32 1, i32* %8, align 4
  br label %233

181:                                              ; preds = %165, %147
  %182 = load i64*, i64** %24, align 8
  %183 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %184 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %183, i32 0, i32 1
  %185 = load i64**, i64*** %184, align 8
  %186 = load i32, i32* %16, align 4
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds i64*, i64** %185, i64 %187
  %189 = load i64*, i64** %188, align 8
  %190 = load i32, i32* %22, align 4
  %191 = call i32 @memmove(i64* %182, i64* %189, i32 %190)
  %192 = load i64*, i64** %12, align 8
  %193 = load i64*, i64** %24, align 8
  %194 = load i64*, i64** %17, align 8
  %195 = ptrtoint i64* %193 to i64
  %196 = ptrtoint i64* %194 to i64
  %197 = sub i64 %195, %196
  %198 = sdiv exact i64 %197, 8
  %199 = trunc i64 %198 to i32
  %200 = call i32 @put2byte(i64* %192, i32 %199)
  %201 = load i64*, i64** %12, align 8
  %202 = getelementptr inbounds i64, i64* %201, i64 2
  store i64* %202, i64** %12, align 8
  %203 = load i32, i32* %16, align 4
  %204 = add nsw i32 %203, 1
  store i32 %204, i32* %16, align 4
  %205 = load i32, i32* %16, align 4
  %206 = load i32, i32* %19, align 4
  %207 = icmp sge i32 %205, %206
  br i1 %207, label %208, label %209

208:                                              ; preds = %181
  br label %230

209:                                              ; preds = %181
  %210 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %211 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %210, i32 0, i32 0
  %212 = load i32*, i32** %211, align 8
  %213 = load i32, i32* %20, align 4
  %214 = sext i32 %213 to i64
  %215 = getelementptr inbounds i32, i32* %212, i64 %214
  %216 = load i32, i32* %215, align 4
  %217 = load i32, i32* %16, align 4
  %218 = icmp sle i32 %216, %217
  br i1 %218, label %219, label %229

219:                                              ; preds = %209
  %220 = load i32, i32* %20, align 4
  %221 = add nsw i32 %220, 1
  store i32 %221, i32* %20, align 4
  %222 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %223 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %222, i32 0, i32 2
  %224 = load i64**, i64*** %223, align 8
  %225 = load i32, i32* %20, align 4
  %226 = sext i32 %225 to i64
  %227 = getelementptr inbounds i64*, i64** %224, i64 %226
  %228 = load i64*, i64** %227, align 8
  store i64* %228, i64** %21, align 8
  br label %229

229:                                              ; preds = %219, %209
  br label %82

230:                                              ; preds = %208
  %231 = load i64*, i64** %18, align 8
  %232 = load i64**, i64*** %11, align 8
  store i64* %231, i64** %232, align 8
  store i32 0, i32* %8, align 4
  br label %233

233:                                              ; preds = %230, %177, %110, %48
  %234 = load i32, i32* %8, align 4
  ret i32 %234
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @ALWAYS(i32) #1

declare dso_local i32 @cachedCellSize(%struct.TYPE_8__*, i32) #1

declare dso_local i64* @pageFindSlot(%struct.TYPE_7__*, i32, i32*) #1

declare dso_local i32 @memmove(i64*, i64*, i32) #1

declare dso_local i32 @put2byte(i64*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
