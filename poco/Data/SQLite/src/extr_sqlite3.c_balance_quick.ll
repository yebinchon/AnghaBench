; ModuleID = '/home/carl/AnghaBench/poco/Data/SQLite/src/extr_sqlite3.c_balance_quick.c'
source_filename = "/home/carl/AnghaBench/poco/Data/SQLite/src/extr_sqlite3.c_balance_quick.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i32, i64, i64, i32 (%struct.TYPE_18__*, i32*)*, i32*, i32, i32, i32, i32, i32, i32, i32**, %struct.TYPE_20__* }
%struct.TYPE_20__ = type { i32, i32 }
%struct.TYPE_19__ = type { i32, i32*, i32*, i32*, i32**, %struct.TYPE_18__* }

@SQLITE_CORRUPT_BKPT = common dso_local global i32 0, align 4
@SQLITE_OK = common dso_local global i32 0, align 4
@CORRUPT_DB = common dso_local global i64 0, align 8
@PTF_INTKEY = common dso_local global i32 0, align 4
@PTF_LEAFDATA = common dso_local global i32 0, align 4
@PTF_LEAF = common dso_local global i32 0, align 4
@ISAUTOVACUUM = common dso_local global i64 0, align 8
@PTRMAP_BTREE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_18__*, %struct.TYPE_18__*, i32*)* @balance_quick to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @balance_quick(%struct.TYPE_18__* %0, %struct.TYPE_18__* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_18__*, align 8
  %6 = alloca %struct.TYPE_18__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_20__*, align 8
  %9 = alloca %struct.TYPE_18__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca %struct.TYPE_19__, align 8
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %5, align 8
  store %struct.TYPE_18__* %1, %struct.TYPE_18__** %6, align 8
  store i32* %2, i32** %7, align 8
  %17 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %17, i32 0, i32 12
  %19 = load %struct.TYPE_20__*, %struct.TYPE_20__** %18, align 8
  store %struct.TYPE_20__* %19, %struct.TYPE_20__** %8, align 8
  %20 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %20, i32 0, i32 12
  %22 = load %struct.TYPE_20__*, %struct.TYPE_20__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @sqlite3_mutex_held(i32 %24)
  %26 = call i32 @assert(i32 %25)
  %27 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %27, i32 0, i32 10
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @sqlite3PagerIswriteable(i32 %29)
  %31 = call i32 @assert(i32 %30)
  %32 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = icmp eq i32 %34, 1
  %36 = zext i1 %35 to i32
  %37 = call i32 @assert(i32 %36)
  %38 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = icmp eq i64 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %3
  %43 = load i32, i32* @SQLITE_CORRUPT_BKPT, align 4
  store i32 %43, i32* %4, align 4
  br label %241

44:                                               ; preds = %3
  %45 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %46 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %45, i32 0, i32 2
  %47 = load i64, i64* %46, align 8
  %48 = icmp sge i64 %47, 0
  %49 = zext i1 %48 to i32
  %50 = call i32 @assert(i32 %49)
  %51 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %52 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %51, i32 0, i32 2
  %53 = load i64, i64* %52, align 8
  %54 = icmp sge i64 %53, 0
  %55 = zext i1 %54 to i32
  %56 = call i32 @assert(i32 %55)
  %57 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %58 = call i32 @allocateBtreePage(%struct.TYPE_20__* %57, %struct.TYPE_18__** %9, i32* %11, i32 0, i32 0)
  store i32 %58, i32* %10, align 4
  %59 = load i32, i32* %10, align 4
  %60 = load i32, i32* @SQLITE_OK, align 4
  %61 = icmp eq i32 %59, %60
  br i1 %61, label %62, label %239

62:                                               ; preds = %44
  %63 = load i32*, i32** %7, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 4
  store i32* %64, i32** %12, align 8
  %65 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %66 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %65, i32 0, i32 11
  %67 = load i32**, i32*** %66, align 8
  %68 = getelementptr inbounds i32*, i32** %67, i64 0
  %69 = load i32*, i32** %68, align 8
  store i32* %69, i32** %13, align 8
  %70 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %71 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %70, i32 0, i32 3
  %72 = load i32 (%struct.TYPE_18__*, i32*)*, i32 (%struct.TYPE_18__*, i32*)** %71, align 8
  %73 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %74 = load i32*, i32** %13, align 8
  %75 = call i32 %72(%struct.TYPE_18__* %73, i32* %74)
  store i32 %75, i32* %14, align 4
  %76 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %77 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %76, i32 0, i32 10
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @sqlite3PagerIswriteable(i32 %78)
  %80 = call i32 @assert(i32 %79)
  %81 = load i64, i64* @CORRUPT_DB, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %95, label %83

83:                                               ; preds = %62
  %84 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %85 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %84, i32 0, i32 4
  %86 = load i32*, i32** %85, align 8
  %87 = getelementptr inbounds i32, i32* %86, i64 0
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* @PTF_INTKEY, align 4
  %90 = load i32, i32* @PTF_LEAFDATA, align 4
  %91 = or i32 %89, %90
  %92 = load i32, i32* @PTF_LEAF, align 4
  %93 = or i32 %91, %92
  %94 = icmp eq i32 %88, %93
  br label %95

95:                                               ; preds = %83, %62
  %96 = phi i1 [ true, %62 ], [ %94, %83 ]
  %97 = zext i1 %96 to i32
  %98 = call i32 @assert(i32 %97)
  %99 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %100 = load i32, i32* @PTF_INTKEY, align 4
  %101 = load i32, i32* @PTF_LEAFDATA, align 4
  %102 = or i32 %100, %101
  %103 = load i32, i32* @PTF_LEAF, align 4
  %104 = or i32 %102, %103
  %105 = call i32 @zeroPage(%struct.TYPE_18__* %99, i32 %104)
  %106 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %16, i32 0, i32 0
  store i32 1, i32* %106, align 8
  %107 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %108 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %16, i32 0, i32 5
  store %struct.TYPE_18__* %107, %struct.TYPE_18__** %108, align 8
  %109 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %16, i32 0, i32 4
  store i32** %13, i32*** %109, align 8
  %110 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %16, i32 0, i32 1
  store i32* %14, i32** %110, align 8
  %111 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %112 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %111, i32 0, i32 9
  %113 = load i32, i32* %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %16, i32 0, i32 3
  %115 = load i32*, i32** %114, align 8
  %116 = getelementptr inbounds i32, i32* %115, i64 0
  store i32 %113, i32* %116, align 4
  %117 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %16, i32 0, i32 2
  %118 = load i32*, i32** %117, align 8
  %119 = getelementptr inbounds i32, i32* %118, i64 0
  store i32 2, i32* %119, align 4
  %120 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %121 = call i32 @rebuildPage(%struct.TYPE_19__* %16, i32 0, i32 1, %struct.TYPE_18__* %120)
  store i32 %121, i32* %10, align 4
  %122 = load i32, i32* %10, align 4
  %123 = call i64 @NEVER(i32 %122)
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %129

125:                                              ; preds = %95
  %126 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %127 = call i32 @releasePage(%struct.TYPE_18__* %126)
  %128 = load i32, i32* %10, align 4
  store i32 %128, i32* %4, align 4
  br label %241

129:                                              ; preds = %95
  %130 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %131 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  %133 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %134 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %133, i32 0, i32 5
  %135 = load i32, i32* %134, align 8
  %136 = sub nsw i32 %132, %135
  %137 = sub nsw i32 %136, 2
  %138 = load i32, i32* %14, align 4
  %139 = sub nsw i32 %137, %138
  %140 = sext i32 %139 to i64
  %141 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %142 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %141, i32 0, i32 2
  store i64 %140, i64* %142, align 8
  %143 = load i64, i64* @ISAUTOVACUUM, align 8
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %145, label %164

145:                                              ; preds = %129
  %146 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %147 = load i32, i32* %11, align 4
  %148 = load i32, i32* @PTRMAP_BTREE, align 4
  %149 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %150 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %149, i32 0, i32 8
  %151 = load i32, i32* %150, align 4
  %152 = call i32 @ptrmapPut(%struct.TYPE_20__* %146, i32 %147, i32 %148, i32 %151, i32* %10)
  %153 = load i32, i32* %14, align 4
  %154 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %155 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %154, i32 0, i32 6
  %156 = load i32, i32* %155, align 4
  %157 = icmp sgt i32 %153, %156
  br i1 %157, label %158, label %163

158:                                              ; preds = %145
  %159 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %160 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %161 = load i32*, i32** %13, align 8
  %162 = call i32 @ptrmapPutOvflPtr(%struct.TYPE_18__* %159, %struct.TYPE_18__* %160, i32* %161, i32* %10)
  br label %163

163:                                              ; preds = %158, %145
  br label %164

164:                                              ; preds = %163, %129
  %165 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %166 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %167 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %166, i32 0, i32 1
  %168 = load i64, i64* %167, align 8
  %169 = sub nsw i64 %168, 1
  %170 = call i32* @findCell(%struct.TYPE_18__* %165, i64 %169)
  store i32* %170, i32** %13, align 8
  %171 = load i32*, i32** %13, align 8
  %172 = getelementptr inbounds i32, i32* %171, i64 9
  store i32* %172, i32** %15, align 8
  br label %173

173:                                              ; preds = %185, %164
  %174 = load i32*, i32** %13, align 8
  %175 = getelementptr inbounds i32, i32* %174, i32 1
  store i32* %175, i32** %13, align 8
  %176 = load i32, i32* %174, align 4
  %177 = and i32 %176, 128
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %179, label %183

179:                                              ; preds = %173
  %180 = load i32*, i32** %13, align 8
  %181 = load i32*, i32** %15, align 8
  %182 = icmp ult i32* %180, %181
  br label %183

183:                                              ; preds = %179, %173
  %184 = phi i1 [ false, %173 ], [ %182, %179 ]
  br i1 %184, label %185, label %186

185:                                              ; preds = %183
  br label %173

186:                                              ; preds = %183
  %187 = load i32*, i32** %13, align 8
  %188 = getelementptr inbounds i32, i32* %187, i64 9
  store i32* %188, i32** %15, align 8
  br label %189

189:                                              ; preds = %203, %186
  %190 = load i32*, i32** %13, align 8
  %191 = getelementptr inbounds i32, i32* %190, i32 1
  store i32* %191, i32** %13, align 8
  %192 = load i32, i32* %190, align 4
  %193 = load i32*, i32** %12, align 8
  %194 = getelementptr inbounds i32, i32* %193, i32 1
  store i32* %194, i32** %12, align 8
  store i32 %192, i32* %193, align 4
  %195 = and i32 %192, 128
  %196 = icmp ne i32 %195, 0
  br i1 %196, label %197, label %201

197:                                              ; preds = %189
  %198 = load i32*, i32** %13, align 8
  %199 = load i32*, i32** %15, align 8
  %200 = icmp ult i32* %198, %199
  br label %201

201:                                              ; preds = %197, %189
  %202 = phi i1 [ false, %189 ], [ %200, %197 ]
  br i1 %202, label %203, label %204

203:                                              ; preds = %201
  br label %189

204:                                              ; preds = %201
  %205 = load i32, i32* %10, align 4
  %206 = load i32, i32* @SQLITE_OK, align 4
  %207 = icmp eq i32 %205, %206
  br i1 %207, label %208, label %225

208:                                              ; preds = %204
  %209 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %210 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %211 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %210, i32 0, i32 1
  %212 = load i64, i64* %211, align 8
  %213 = load i32*, i32** %7, align 8
  %214 = load i32*, i32** %12, align 8
  %215 = load i32*, i32** %7, align 8
  %216 = ptrtoint i32* %214 to i64
  %217 = ptrtoint i32* %215 to i64
  %218 = sub i64 %216, %217
  %219 = sdiv exact i64 %218, 4
  %220 = trunc i64 %219 to i32
  %221 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %222 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %221, i32 0, i32 8
  %223 = load i32, i32* %222, align 4
  %224 = call i32 @insertCell(%struct.TYPE_18__* %209, i64 %212, i32* %213, i32 %220, i32 0, i32 %223, i32* %10)
  br label %225

225:                                              ; preds = %208, %204
  %226 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %227 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %226, i32 0, i32 4
  %228 = load i32*, i32** %227, align 8
  %229 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %230 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %229, i32 0, i32 7
  %231 = load i32, i32* %230, align 8
  %232 = add nsw i32 %231, 8
  %233 = sext i32 %232 to i64
  %234 = getelementptr inbounds i32, i32* %228, i64 %233
  %235 = load i32, i32* %11, align 4
  %236 = call i32 @put4byte(i32* %234, i32 %235)
  %237 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %238 = call i32 @releasePage(%struct.TYPE_18__* %237)
  br label %239

239:                                              ; preds = %225, %44
  %240 = load i32, i32* %10, align 4
  store i32 %240, i32* %4, align 4
  br label %241

241:                                              ; preds = %239, %125, %42
  %242 = load i32, i32* %4, align 4
  ret i32 %242
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @sqlite3_mutex_held(i32) #1

declare dso_local i32 @sqlite3PagerIswriteable(i32) #1

declare dso_local i32 @allocateBtreePage(%struct.TYPE_20__*, %struct.TYPE_18__**, i32*, i32, i32) #1

declare dso_local i32 @zeroPage(%struct.TYPE_18__*, i32) #1

declare dso_local i32 @rebuildPage(%struct.TYPE_19__*, i32, i32, %struct.TYPE_18__*) #1

declare dso_local i64 @NEVER(i32) #1

declare dso_local i32 @releasePage(%struct.TYPE_18__*) #1

declare dso_local i32 @ptrmapPut(%struct.TYPE_20__*, i32, i32, i32, i32*) #1

declare dso_local i32 @ptrmapPutOvflPtr(%struct.TYPE_18__*, %struct.TYPE_18__*, i32*, i32*) #1

declare dso_local i32* @findCell(%struct.TYPE_18__*, i64) #1

declare dso_local i32 @insertCell(%struct.TYPE_18__*, i64, i32*, i32, i32, i32, i32*) #1

declare dso_local i32 @put4byte(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
