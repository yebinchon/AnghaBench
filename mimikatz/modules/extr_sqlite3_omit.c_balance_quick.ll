; ModuleID = '/home/carl/AnghaBench/mimikatz/modules/extr_sqlite3_omit.c_balance_quick.c'
source_filename = "/home/carl/AnghaBench/mimikatz/modules/extr_sqlite3_omit.c_balance_quick.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i32, i64, i32 (%struct.TYPE_18__*, i32*)*, i32*, i32, i32, i32, i32, i32, i32, i32, i32**, %struct.TYPE_20__* }
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
  %29 = load i32, i32* %28, align 8
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
  br label %228

44:                                               ; preds = %3
  %45 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %46 = call i32 @allocateBtreePage(%struct.TYPE_20__* %45, %struct.TYPE_18__** %9, i32* %11, i32 0, i32 0)
  store i32 %46, i32* %10, align 4
  %47 = load i32, i32* %10, align 4
  %48 = load i32, i32* @SQLITE_OK, align 4
  %49 = icmp eq i32 %47, %48
  br i1 %49, label %50, label %226

50:                                               ; preds = %44
  %51 = load i32*, i32** %7, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 4
  store i32* %52, i32** %12, align 8
  %53 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %54 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %53, i32 0, i32 11
  %55 = load i32**, i32*** %54, align 8
  %56 = getelementptr inbounds i32*, i32** %55, i64 0
  %57 = load i32*, i32** %56, align 8
  store i32* %57, i32** %13, align 8
  %58 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %59 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %58, i32 0, i32 2
  %60 = load i32 (%struct.TYPE_18__*, i32*)*, i32 (%struct.TYPE_18__*, i32*)** %59, align 8
  %61 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %62 = load i32*, i32** %13, align 8
  %63 = call i32 %60(%struct.TYPE_18__* %61, i32* %62)
  store i32 %63, i32* %14, align 4
  %64 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %65 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %64, i32 0, i32 10
  %66 = load i32, i32* %65, align 8
  %67 = call i32 @sqlite3PagerIswriteable(i32 %66)
  %68 = call i32 @assert(i32 %67)
  %69 = load i64, i64* @CORRUPT_DB, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %83, label %71

71:                                               ; preds = %50
  %72 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %73 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %72, i32 0, i32 3
  %74 = load i32*, i32** %73, align 8
  %75 = getelementptr inbounds i32, i32* %74, i64 0
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* @PTF_INTKEY, align 4
  %78 = load i32, i32* @PTF_LEAFDATA, align 4
  %79 = or i32 %77, %78
  %80 = load i32, i32* @PTF_LEAF, align 4
  %81 = or i32 %79, %80
  %82 = icmp eq i32 %76, %81
  br label %83

83:                                               ; preds = %71, %50
  %84 = phi i1 [ true, %50 ], [ %82, %71 ]
  %85 = zext i1 %84 to i32
  %86 = call i32 @assert(i32 %85)
  %87 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %88 = load i32, i32* @PTF_INTKEY, align 4
  %89 = load i32, i32* @PTF_LEAFDATA, align 4
  %90 = or i32 %88, %89
  %91 = load i32, i32* @PTF_LEAF, align 4
  %92 = or i32 %90, %91
  %93 = call i32 @zeroPage(%struct.TYPE_18__* %87, i32 %92)
  %94 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %16, i32 0, i32 0
  store i32 1, i32* %94, align 8
  %95 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %96 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %16, i32 0, i32 5
  store %struct.TYPE_18__* %95, %struct.TYPE_18__** %96, align 8
  %97 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %16, i32 0, i32 4
  store i32** %13, i32*** %97, align 8
  %98 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %16, i32 0, i32 1
  store i32* %14, i32** %98, align 8
  %99 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %100 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %99, i32 0, i32 9
  %101 = load i32, i32* %100, align 4
  %102 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %16, i32 0, i32 3
  %103 = load i32*, i32** %102, align 8
  %104 = getelementptr inbounds i32, i32* %103, i64 0
  store i32 %101, i32* %104, align 4
  %105 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %16, i32 0, i32 2
  %106 = load i32*, i32** %105, align 8
  %107 = getelementptr inbounds i32, i32* %106, i64 0
  store i32 2, i32* %107, align 4
  %108 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %109 = call i32 @rebuildPage(%struct.TYPE_19__* %16, i32 0, i32 1, %struct.TYPE_18__* %108)
  store i32 %109, i32* %10, align 4
  %110 = load i32, i32* %10, align 4
  %111 = call i64 @NEVER(i32 %110)
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %117

113:                                              ; preds = %83
  %114 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %115 = call i32 @releasePage(%struct.TYPE_18__* %114)
  %116 = load i32, i32* %10, align 4
  store i32 %116, i32* %4, align 4
  br label %228

117:                                              ; preds = %83
  %118 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %119 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %122 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %121, i32 0, i32 5
  %123 = load i32, i32* %122, align 4
  %124 = sub nsw i32 %120, %123
  %125 = sub nsw i32 %124, 2
  %126 = load i32, i32* %14, align 4
  %127 = sub nsw i32 %125, %126
  %128 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %129 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %128, i32 0, i32 4
  store i32 %127, i32* %129, align 8
  %130 = load i64, i64* @ISAUTOVACUUM, align 8
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %151

132:                                              ; preds = %117
  %133 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %134 = load i32, i32* %11, align 4
  %135 = load i32, i32* @PTRMAP_BTREE, align 4
  %136 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %137 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %136, i32 0, i32 8
  %138 = load i32, i32* %137, align 8
  %139 = call i32 @ptrmapPut(%struct.TYPE_20__* %133, i32 %134, i32 %135, i32 %138, i32* %10)
  %140 = load i32, i32* %14, align 4
  %141 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %142 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %141, i32 0, i32 6
  %143 = load i32, i32* %142, align 8
  %144 = icmp sgt i32 %140, %143
  br i1 %144, label %145, label %150

145:                                              ; preds = %132
  %146 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %147 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %148 = load i32*, i32** %13, align 8
  %149 = call i32 @ptrmapPutOvflPtr(%struct.TYPE_18__* %146, %struct.TYPE_18__* %147, i32* %148, i32* %10)
  br label %150

150:                                              ; preds = %145, %132
  br label %151

151:                                              ; preds = %150, %117
  %152 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %153 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %154 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %153, i32 0, i32 1
  %155 = load i64, i64* %154, align 8
  %156 = sub nsw i64 %155, 1
  %157 = call i32* @findCell(%struct.TYPE_18__* %152, i64 %156)
  store i32* %157, i32** %13, align 8
  %158 = load i32*, i32** %13, align 8
  %159 = getelementptr inbounds i32, i32* %158, i64 9
  store i32* %159, i32** %15, align 8
  br label %160

160:                                              ; preds = %172, %151
  %161 = load i32*, i32** %13, align 8
  %162 = getelementptr inbounds i32, i32* %161, i32 1
  store i32* %162, i32** %13, align 8
  %163 = load i32, i32* %161, align 4
  %164 = and i32 %163, 128
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %170

166:                                              ; preds = %160
  %167 = load i32*, i32** %13, align 8
  %168 = load i32*, i32** %15, align 8
  %169 = icmp ult i32* %167, %168
  br label %170

170:                                              ; preds = %166, %160
  %171 = phi i1 [ false, %160 ], [ %169, %166 ]
  br i1 %171, label %172, label %173

172:                                              ; preds = %170
  br label %160

173:                                              ; preds = %170
  %174 = load i32*, i32** %13, align 8
  %175 = getelementptr inbounds i32, i32* %174, i64 9
  store i32* %175, i32** %15, align 8
  br label %176

176:                                              ; preds = %190, %173
  %177 = load i32*, i32** %13, align 8
  %178 = getelementptr inbounds i32, i32* %177, i32 1
  store i32* %178, i32** %13, align 8
  %179 = load i32, i32* %177, align 4
  %180 = load i32*, i32** %12, align 8
  %181 = getelementptr inbounds i32, i32* %180, i32 1
  store i32* %181, i32** %12, align 8
  store i32 %179, i32* %180, align 4
  %182 = and i32 %179, 128
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %184, label %188

184:                                              ; preds = %176
  %185 = load i32*, i32** %13, align 8
  %186 = load i32*, i32** %15, align 8
  %187 = icmp ult i32* %185, %186
  br label %188

188:                                              ; preds = %184, %176
  %189 = phi i1 [ false, %176 ], [ %187, %184 ]
  br i1 %189, label %190, label %191

190:                                              ; preds = %188
  br label %176

191:                                              ; preds = %188
  %192 = load i32, i32* %10, align 4
  %193 = load i32, i32* @SQLITE_OK, align 4
  %194 = icmp eq i32 %192, %193
  br i1 %194, label %195, label %212

195:                                              ; preds = %191
  %196 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %197 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %198 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %197, i32 0, i32 1
  %199 = load i64, i64* %198, align 8
  %200 = load i32*, i32** %7, align 8
  %201 = load i32*, i32** %12, align 8
  %202 = load i32*, i32** %7, align 8
  %203 = ptrtoint i32* %201 to i64
  %204 = ptrtoint i32* %202 to i64
  %205 = sub i64 %203, %204
  %206 = sdiv exact i64 %205, 4
  %207 = trunc i64 %206 to i32
  %208 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %209 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %208, i32 0, i32 8
  %210 = load i32, i32* %209, align 8
  %211 = call i32 @insertCell(%struct.TYPE_18__* %196, i64 %199, i32* %200, i32 %207, i32 0, i32 %210, i32* %10)
  br label %212

212:                                              ; preds = %195, %191
  %213 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %214 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %213, i32 0, i32 3
  %215 = load i32*, i32** %214, align 8
  %216 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %217 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %216, i32 0, i32 7
  %218 = load i32, i32* %217, align 4
  %219 = add nsw i32 %218, 8
  %220 = sext i32 %219 to i64
  %221 = getelementptr inbounds i32, i32* %215, i64 %220
  %222 = load i32, i32* %11, align 4
  %223 = call i32 @put4byte(i32* %221, i32 %222)
  %224 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %225 = call i32 @releasePage(%struct.TYPE_18__* %224)
  br label %226

226:                                              ; preds = %212, %44
  %227 = load i32, i32* %10, align 4
  store i32 %227, i32* %4, align 4
  br label %228

228:                                              ; preds = %226, %113, %42
  %229 = load i32, i32* %4, align 4
  ret i32 %229
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
