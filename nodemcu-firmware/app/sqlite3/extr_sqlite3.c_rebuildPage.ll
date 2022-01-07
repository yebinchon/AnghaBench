; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/sqlite3/extr_sqlite3.c_rebuildPage.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/sqlite3/extr_sqlite3.c_rebuildPage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32 (%struct.TYPE_7__*, i32*)*, i32, i64, %struct.TYPE_6__*, i32*, i32* }
%struct.TYPE_6__ = type { i32, i32 }

@SQLITE_CORRUPT_BKPT = common dso_local global i32 0, align 4
@CORRUPT_DB = common dso_local global i64 0, align 8
@SQLITE_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*, i32, i32**, i32*)* @rebuildPage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rebuildPage(%struct.TYPE_7__* %0, i32 %1, i32** %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32**, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32** %2, i32*** %8, align 8
  store i32* %3, i32** %9, align 8
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  store i32 %21, i32* %10, align 4
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 6
  %24 = load i32*, i32** %23, align 8
  store i32* %24, i32** %11, align 8
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 4
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %12, align 4
  %30 = load i32*, i32** %11, align 8
  %31 = load i32, i32* %12, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %30, i64 %32
  store i32* %33, i32** %13, align 8
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 5
  %36 = load i32*, i32** %35, align 8
  store i32* %36, i32** %15, align 8
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 4
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = call i32* @sqlite3PagerTempSpace(i32 %41)
  store i32* %42, i32** %16, align 8
  %43 = load i32*, i32** %11, align 8
  %44 = load i32, i32* %10, align 4
  %45 = add nsw i32 %44, 5
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %43, i64 %46
  %48 = call i32 @get2byte(i32* %47)
  store i32 %48, i32* %14, align 4
  %49 = load i32*, i32** %16, align 8
  %50 = load i32, i32* %14, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %49, i64 %51
  %53 = load i32*, i32** %11, align 8
  %54 = load i32, i32* %14, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %53, i64 %55
  %57 = load i32, i32* %12, align 4
  %58 = load i32, i32* %14, align 4
  %59 = sub nsw i32 %57, %58
  %60 = call i32 @memcpy(i32* %52, i32* %56, i32 %59)
  %61 = load i32*, i32** %13, align 8
  store i32* %61, i32** %17, align 8
  store i32 0, i32* %14, align 4
  br label %62

62:                                               ; preds = %154, %4
  %63 = load i32, i32* %14, align 4
  %64 = load i32, i32* %7, align 4
  %65 = icmp slt i32 %63, %64
  br i1 %65, label %66, label %157

66:                                               ; preds = %62
  %67 = load i32**, i32*** %8, align 8
  %68 = load i32, i32* %14, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i32*, i32** %67, i64 %69
  %71 = load i32*, i32** %70, align 8
  store i32* %71, i32** %18, align 8
  %72 = load i32*, i32** %18, align 8
  %73 = load i32*, i32** %11, align 8
  %74 = load i32*, i32** %13, align 8
  %75 = call i64 @SQLITE_WITHIN(i32* %72, i32* %73, i32* %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %86

77:                                               ; preds = %66
  %78 = load i32*, i32** %16, align 8
  %79 = load i32*, i32** %18, align 8
  %80 = load i32*, i32** %11, align 8
  %81 = ptrtoint i32* %79 to i64
  %82 = ptrtoint i32* %80 to i64
  %83 = sub i64 %81, %82
  %84 = sdiv exact i64 %83, 4
  %85 = getelementptr inbounds i32, i32* %78, i64 %84
  store i32* %85, i32** %18, align 8
  br label %86

86:                                               ; preds = %77, %66
  %87 = load i32*, i32** %9, align 8
  %88 = load i32, i32* %14, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i32, i32* %87, i64 %89
  %91 = load i32, i32* %90, align 4
  %92 = load i32*, i32** %17, align 8
  %93 = sext i32 %91 to i64
  %94 = sub i64 0, %93
  %95 = getelementptr inbounds i32, i32* %92, i64 %94
  store i32* %95, i32** %17, align 8
  %96 = load i32*, i32** %15, align 8
  %97 = load i32*, i32** %17, align 8
  %98 = load i32*, i32** %11, align 8
  %99 = ptrtoint i32* %97 to i64
  %100 = ptrtoint i32* %98 to i64
  %101 = sub i64 %99, %100
  %102 = sdiv exact i64 %101, 4
  %103 = trunc i64 %102 to i32
  %104 = call i32 @put2byte(i32* %96, i32 %103)
  %105 = load i32*, i32** %15, align 8
  %106 = getelementptr inbounds i32, i32* %105, i64 2
  store i32* %106, i32** %15, align 8
  %107 = load i32*, i32** %17, align 8
  %108 = load i32*, i32** %15, align 8
  %109 = icmp ult i32* %107, %108
  br i1 %109, label %110, label %112

110:                                              ; preds = %86
  %111 = load i32, i32* @SQLITE_CORRUPT_BKPT, align 4
  store i32 %111, i32* %5, align 4
  br label %197

112:                                              ; preds = %86
  %113 = load i32*, i32** %17, align 8
  %114 = load i32*, i32** %18, align 8
  %115 = load i32*, i32** %9, align 8
  %116 = load i32, i32* %14, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds i32, i32* %115, i64 %117
  %119 = load i32, i32* %118, align 4
  %120 = call i32 @memcpy(i32* %113, i32* %114, i32 %119)
  %121 = load i32*, i32** %9, align 8
  %122 = load i32, i32* %14, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds i32, i32* %121, i64 %123
  %125 = load i32, i32* %124, align 4
  %126 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %127 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %126, i32 0, i32 1
  %128 = load i32 (%struct.TYPE_7__*, i32*)*, i32 (%struct.TYPE_7__*, i32*)** %127, align 8
  %129 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %130 = load i32*, i32** %18, align 8
  %131 = call i32 %128(%struct.TYPE_7__* %129, i32* %130)
  %132 = icmp eq i32 %125, %131
  br i1 %132, label %136, label %133

133:                                              ; preds = %112
  %134 = load i64, i64* @CORRUPT_DB, align 8
  %135 = icmp ne i64 %134, 0
  br label %136

136:                                              ; preds = %133, %112
  %137 = phi i1 [ true, %112 ], [ %135, %133 ]
  %138 = zext i1 %137 to i32
  %139 = call i32 @assert(i32 %138)
  %140 = load i32*, i32** %9, align 8
  %141 = load i32, i32* %14, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds i32, i32* %140, i64 %142
  %144 = load i32, i32* %143, align 4
  %145 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %146 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %145, i32 0, i32 1
  %147 = load i32 (%struct.TYPE_7__*, i32*)*, i32 (%struct.TYPE_7__*, i32*)** %146, align 8
  %148 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %149 = load i32*, i32** %18, align 8
  %150 = call i32 %147(%struct.TYPE_7__* %148, i32* %149)
  %151 = icmp ne i32 %144, %150
  %152 = zext i1 %151 to i32
  %153 = call i32 @testcase(i32 %152)
  br label %154

154:                                              ; preds = %136
  %155 = load i32, i32* %14, align 4
  %156 = add nsw i32 %155, 1
  store i32 %156, i32* %14, align 4
  br label %62

157:                                              ; preds = %62
  %158 = load i32, i32* %7, align 4
  %159 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %160 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %159, i32 0, i32 2
  store i32 %158, i32* %160, align 8
  %161 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %162 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %161, i32 0, i32 3
  store i64 0, i64* %162, align 8
  %163 = load i32*, i32** %11, align 8
  %164 = load i32, i32* %10, align 4
  %165 = add nsw i32 %164, 1
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds i32, i32* %163, i64 %166
  %168 = call i32 @put2byte(i32* %167, i32 0)
  %169 = load i32*, i32** %11, align 8
  %170 = load i32, i32* %10, align 4
  %171 = add nsw i32 %170, 3
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds i32, i32* %169, i64 %172
  %174 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %175 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %174, i32 0, i32 2
  %176 = load i32, i32* %175, align 8
  %177 = call i32 @put2byte(i32* %173, i32 %176)
  %178 = load i32*, i32** %11, align 8
  %179 = load i32, i32* %10, align 4
  %180 = add nsw i32 %179, 5
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds i32, i32* %178, i64 %181
  %183 = load i32*, i32** %17, align 8
  %184 = load i32*, i32** %11, align 8
  %185 = ptrtoint i32* %183 to i64
  %186 = ptrtoint i32* %184 to i64
  %187 = sub i64 %185, %186
  %188 = sdiv exact i64 %187, 4
  %189 = trunc i64 %188 to i32
  %190 = call i32 @put2byte(i32* %182, i32 %189)
  %191 = load i32*, i32** %11, align 8
  %192 = load i32, i32* %10, align 4
  %193 = add nsw i32 %192, 7
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds i32, i32* %191, i64 %194
  store i32 0, i32* %195, align 4
  %196 = load i32, i32* @SQLITE_OK, align 4
  store i32 %196, i32* %5, align 4
  br label %197

197:                                              ; preds = %157, %110
  %198 = load i32, i32* %5, align 4
  ret i32 %198
}

declare dso_local i32* @sqlite3PagerTempSpace(i32) #1

declare dso_local i32 @get2byte(i32*) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i64 @SQLITE_WITHIN(i32*, i32*, i32*) #1

declare dso_local i32 @put2byte(i32*, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @testcase(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
