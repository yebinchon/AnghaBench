; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/sqlite3/extr_sqlite3.c_balance_quick.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/sqlite3/extr_sqlite3.c_balance_quick.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32, i64, i32 (%struct.TYPE_15__*, i32*)*, i32*, i32, i32, i32, i32, i32, i32, i32**, %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i32, i32 }

@SQLITE_CORRUPT_BKPT = common dso_local global i32 0, align 4
@SQLITE_OK = common dso_local global i32 0, align 4
@PTF_INTKEY = common dso_local global i32 0, align 4
@PTF_LEAFDATA = common dso_local global i32 0, align 4
@PTF_LEAF = common dso_local global i32 0, align 4
@ISAUTOVACUUM = common dso_local global i64 0, align 8
@PTRMAP_BTREE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_15__*, %struct.TYPE_15__*, i32*)* @balance_quick to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @balance_quick(%struct.TYPE_15__* %0, %struct.TYPE_15__* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_15__*, align 8
  %6 = alloca %struct.TYPE_15__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_16__*, align 8
  %9 = alloca %struct.TYPE_15__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %5, align 8
  store %struct.TYPE_15__* %1, %struct.TYPE_15__** %6, align 8
  store i32* %2, i32** %7, align 8
  %16 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %17 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %16, i32 0, i32 11
  %18 = load %struct.TYPE_16__*, %struct.TYPE_16__** %17, align 8
  store %struct.TYPE_16__* %18, %struct.TYPE_16__** %8, align 8
  %19 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %19, i32 0, i32 11
  %21 = load %struct.TYPE_16__*, %struct.TYPE_16__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @sqlite3_mutex_held(i32 %23)
  %25 = call i32 @assert(i32 %24)
  %26 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %26, i32 0, i32 9
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @sqlite3PagerIswriteable(i32 %28)
  %30 = call i32 @assert(i32 %29)
  %31 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = icmp eq i32 %33, 1
  %35 = zext i1 %34 to i32
  %36 = call i32 @assert(i32 %35)
  %37 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = icmp eq i64 %39, 0
  %41 = zext i1 %40 to i32
  %42 = call i64 @NEVER(i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %3
  %45 = load i32, i32* @SQLITE_CORRUPT_BKPT, align 4
  store i32 %45, i32* %4, align 4
  br label %208

46:                                               ; preds = %3
  %47 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %48 = call i32 @allocateBtreePage(%struct.TYPE_16__* %47, %struct.TYPE_15__** %9, i32* %11, i32 0, i32 0)
  store i32 %48, i32* %10, align 4
  %49 = load i32, i32* %10, align 4
  %50 = load i32, i32* @SQLITE_OK, align 4
  %51 = icmp eq i32 %49, %50
  br i1 %51, label %52, label %206

52:                                               ; preds = %46
  %53 = load i32*, i32** %7, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 4
  store i32* %54, i32** %12, align 8
  %55 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %56 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %55, i32 0, i32 10
  %57 = load i32**, i32*** %56, align 8
  %58 = getelementptr inbounds i32*, i32** %57, i64 0
  %59 = load i32*, i32** %58, align 8
  store i32* %59, i32** %13, align 8
  %60 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %61 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %60, i32 0, i32 2
  %62 = load i32 (%struct.TYPE_15__*, i32*)*, i32 (%struct.TYPE_15__*, i32*)** %61, align 8
  %63 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %64 = load i32*, i32** %13, align 8
  %65 = call i32 %62(%struct.TYPE_15__* %63, i32* %64)
  store i32 %65, i32* %14, align 4
  %66 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %67 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %66, i32 0, i32 9
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @sqlite3PagerIswriteable(i32 %68)
  %70 = call i32 @assert(i32 %69)
  %71 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %72 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %71, i32 0, i32 3
  %73 = load i32*, i32** %72, align 8
  %74 = getelementptr inbounds i32, i32* %73, i64 0
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* @PTF_INTKEY, align 4
  %77 = load i32, i32* @PTF_LEAFDATA, align 4
  %78 = or i32 %76, %77
  %79 = load i32, i32* @PTF_LEAF, align 4
  %80 = or i32 %78, %79
  %81 = icmp eq i32 %75, %80
  %82 = zext i1 %81 to i32
  %83 = call i32 @assert(i32 %82)
  %84 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %85 = load i32, i32* @PTF_INTKEY, align 4
  %86 = load i32, i32* @PTF_LEAFDATA, align 4
  %87 = or i32 %85, %86
  %88 = load i32, i32* @PTF_LEAF, align 4
  %89 = or i32 %87, %88
  %90 = call i32 @zeroPage(%struct.TYPE_15__* %84, i32 %89)
  %91 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %92 = call i32 @rebuildPage(%struct.TYPE_15__* %91, i32 1, i32** %13, i32* %14)
  store i32 %92, i32* %10, align 4
  %93 = load i32, i32* %10, align 4
  %94 = call i64 @NEVER(i32 %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %98

96:                                               ; preds = %52
  %97 = load i32, i32* %10, align 4
  store i32 %97, i32* %4, align 4
  br label %208

98:                                               ; preds = %52
  %99 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %100 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %103 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %102, i32 0, i32 5
  %104 = load i32, i32* %103, align 4
  %105 = sub nsw i32 %101, %104
  %106 = sub nsw i32 %105, 2
  %107 = load i32, i32* %14, align 4
  %108 = sub nsw i32 %106, %107
  %109 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %110 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %109, i32 0, i32 4
  store i32 %108, i32* %110, align 8
  %111 = load i64, i64* @ISAUTOVACUUM, align 8
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %131

113:                                              ; preds = %98
  %114 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %115 = load i32, i32* %11, align 4
  %116 = load i32, i32* @PTRMAP_BTREE, align 4
  %117 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %118 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %117, i32 0, i32 8
  %119 = load i32, i32* %118, align 8
  %120 = call i32 @ptrmapPut(%struct.TYPE_16__* %114, i32 %115, i32 %116, i32 %119, i32* %10)
  %121 = load i32, i32* %14, align 4
  %122 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %123 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %122, i32 0, i32 6
  %124 = load i32, i32* %123, align 8
  %125 = icmp sgt i32 %121, %124
  br i1 %125, label %126, label %130

126:                                              ; preds = %113
  %127 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %128 = load i32*, i32** %13, align 8
  %129 = call i32 @ptrmapPutOvflPtr(%struct.TYPE_15__* %127, i32* %128, i32* %10)
  br label %130

130:                                              ; preds = %126, %113
  br label %131

131:                                              ; preds = %130, %98
  %132 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %133 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %134 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %133, i32 0, i32 1
  %135 = load i64, i64* %134, align 8
  %136 = sub nsw i64 %135, 1
  %137 = call i32* @findCell(%struct.TYPE_15__* %132, i64 %136)
  store i32* %137, i32** %13, align 8
  %138 = load i32*, i32** %13, align 8
  %139 = getelementptr inbounds i32, i32* %138, i64 9
  store i32* %139, i32** %15, align 8
  br label %140

140:                                              ; preds = %152, %131
  %141 = load i32*, i32** %13, align 8
  %142 = getelementptr inbounds i32, i32* %141, i32 1
  store i32* %142, i32** %13, align 8
  %143 = load i32, i32* %141, align 4
  %144 = and i32 %143, 128
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %150

146:                                              ; preds = %140
  %147 = load i32*, i32** %13, align 8
  %148 = load i32*, i32** %15, align 8
  %149 = icmp ult i32* %147, %148
  br label %150

150:                                              ; preds = %146, %140
  %151 = phi i1 [ false, %140 ], [ %149, %146 ]
  br i1 %151, label %152, label %153

152:                                              ; preds = %150
  br label %140

153:                                              ; preds = %150
  %154 = load i32*, i32** %13, align 8
  %155 = getelementptr inbounds i32, i32* %154, i64 9
  store i32* %155, i32** %15, align 8
  br label %156

156:                                              ; preds = %170, %153
  %157 = load i32*, i32** %13, align 8
  %158 = getelementptr inbounds i32, i32* %157, i32 1
  store i32* %158, i32** %13, align 8
  %159 = load i32, i32* %157, align 4
  %160 = load i32*, i32** %12, align 8
  %161 = getelementptr inbounds i32, i32* %160, i32 1
  store i32* %161, i32** %12, align 8
  store i32 %159, i32* %160, align 4
  %162 = and i32 %159, 128
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %168

164:                                              ; preds = %156
  %165 = load i32*, i32** %13, align 8
  %166 = load i32*, i32** %15, align 8
  %167 = icmp ult i32* %165, %166
  br label %168

168:                                              ; preds = %164, %156
  %169 = phi i1 [ false, %156 ], [ %167, %164 ]
  br i1 %169, label %170, label %171

170:                                              ; preds = %168
  br label %156

171:                                              ; preds = %168
  %172 = load i32, i32* %10, align 4
  %173 = load i32, i32* @SQLITE_OK, align 4
  %174 = icmp eq i32 %172, %173
  br i1 %174, label %175, label %192

175:                                              ; preds = %171
  %176 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %177 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %178 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %177, i32 0, i32 1
  %179 = load i64, i64* %178, align 8
  %180 = load i32*, i32** %7, align 8
  %181 = load i32*, i32** %12, align 8
  %182 = load i32*, i32** %7, align 8
  %183 = ptrtoint i32* %181 to i64
  %184 = ptrtoint i32* %182 to i64
  %185 = sub i64 %183, %184
  %186 = sdiv exact i64 %185, 4
  %187 = trunc i64 %186 to i32
  %188 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %189 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %188, i32 0, i32 8
  %190 = load i32, i32* %189, align 8
  %191 = call i32 @insertCell(%struct.TYPE_15__* %176, i64 %179, i32* %180, i32 %187, i32 0, i32 %190, i32* %10)
  br label %192

192:                                              ; preds = %175, %171
  %193 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %194 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %193, i32 0, i32 3
  %195 = load i32*, i32** %194, align 8
  %196 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %197 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %196, i32 0, i32 7
  %198 = load i32, i32* %197, align 4
  %199 = add nsw i32 %198, 8
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds i32, i32* %195, i64 %200
  %202 = load i32, i32* %11, align 4
  %203 = call i32 @put4byte(i32* %201, i32 %202)
  %204 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %205 = call i32 @releasePage(%struct.TYPE_15__* %204)
  br label %206

206:                                              ; preds = %192, %46
  %207 = load i32, i32* %10, align 4
  store i32 %207, i32* %4, align 4
  br label %208

208:                                              ; preds = %206, %96, %44
  %209 = load i32, i32* %4, align 4
  ret i32 %209
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @sqlite3_mutex_held(i32) #1

declare dso_local i32 @sqlite3PagerIswriteable(i32) #1

declare dso_local i64 @NEVER(i32) #1

declare dso_local i32 @allocateBtreePage(%struct.TYPE_16__*, %struct.TYPE_15__**, i32*, i32, i32) #1

declare dso_local i32 @zeroPage(%struct.TYPE_15__*, i32) #1

declare dso_local i32 @rebuildPage(%struct.TYPE_15__*, i32, i32**, i32*) #1

declare dso_local i32 @ptrmapPut(%struct.TYPE_16__*, i32, i32, i32, i32*) #1

declare dso_local i32 @ptrmapPutOvflPtr(%struct.TYPE_15__*, i32*, i32*) #1

declare dso_local i32* @findCell(%struct.TYPE_15__*, i64) #1

declare dso_local i32 @insertCell(%struct.TYPE_15__*, i64, i32*, i32, i32, i32, i32*) #1

declare dso_local i32 @put4byte(i32*, i32) #1

declare dso_local i32 @releasePage(%struct.TYPE_15__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
