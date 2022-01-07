; ModuleID = '/home/carl/AnghaBench/mongoose/examples/api_server/extr_sqlite3.c_walIteratorInit.c'
source_filename = "/home/carl/AnghaBench/mongoose/examples/api_server/extr_sqlite3.c_walIteratorInit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { %struct.TYPE_10__, i64 }
%struct.TYPE_10__ = type { i64 }
%struct.TYPE_12__ = type { i32, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32, i32, i32*, i64* }

@SQLITE_OK = common dso_local global i32 0, align 4
@SQLITE_NOMEM = common dso_local global i32 0, align 4
@HASHTABLE_NPAGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_13__*, %struct.TYPE_12__**)* @walIteratorInit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @walIteratorInit(%struct.TYPE_13__* %0, %struct.TYPE_12__** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_13__*, align 8
  %5 = alloca %struct.TYPE_12__**, align 8
  %6 = alloca %struct.TYPE_12__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i64*, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %4, align 8
  store %struct.TYPE_12__** %1, %struct.TYPE_12__*** %5, align 8
  %19 = load i32, i32* @SQLITE_OK, align 4
  store i32 %19, i32* %12, align 4
  %20 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %2
  %25 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp sgt i64 %28, 0
  br label %30

30:                                               ; preds = %24, %2
  %31 = phi i1 [ false, %2 ], [ %29, %24 ]
  %32 = zext i1 %31 to i32
  %33 = call i32 @assert(i32 %32)
  %34 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = trunc i64 %37 to i32
  store i32 %38, i32* %8, align 4
  %39 = load i32, i32* %8, align 4
  %40 = call i32 @walFramePage(i32 %39)
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %7, align 4
  %42 = load i32, i32* %7, align 4
  %43 = sub nsw i32 %42, 1
  %44 = sext i32 %43 to i64
  %45 = mul i64 %44, 4
  %46 = add i64 16, %45
  %47 = load i32, i32* %8, align 4
  %48 = sext i32 %47 to i64
  %49 = mul i64 %48, 8
  %50 = add i64 %46, %49
  %51 = trunc i64 %50 to i32
  store i32 %51, i32* %9, align 4
  %52 = load i32, i32* %9, align 4
  %53 = call i64 @sqlite3ScratchMalloc(i32 %52)
  %54 = inttoptr i64 %53 to %struct.TYPE_12__*
  store %struct.TYPE_12__* %54, %struct.TYPE_12__** %6, align 8
  %55 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %56 = icmp ne %struct.TYPE_12__* %55, null
  br i1 %56, label %59, label %57

57:                                               ; preds = %30
  %58 = load i32, i32* @SQLITE_NOMEM, align 4
  store i32 %58, i32* %3, align 4
  br label %205

59:                                               ; preds = %30
  %60 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %61 = load i32, i32* %9, align 4
  %62 = call i32 @memset(%struct.TYPE_12__* %60, i32 0, i32 %61)
  %63 = load i32, i32* %7, align 4
  %64 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %65 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %64, i32 0, i32 0
  store i32 %63, i32* %65, align 8
  %66 = load i32, i32* %8, align 4
  %67 = load i32, i32* @HASHTABLE_NPAGE, align 4
  %68 = icmp sgt i32 %66, %67
  br i1 %68, label %69, label %71

69:                                               ; preds = %59
  %70 = load i32, i32* @HASHTABLE_NPAGE, align 4
  br label %73

71:                                               ; preds = %59
  %72 = load i32, i32* %8, align 4
  br label %73

73:                                               ; preds = %71, %69
  %74 = phi i32 [ %70, %69 ], [ %72, %71 ]
  %75 = sext i32 %74 to i64
  %76 = mul i64 8, %75
  %77 = trunc i64 %76 to i32
  %78 = call i64 @sqlite3ScratchMalloc(i32 %77)
  %79 = inttoptr i64 %78 to i64*
  store i64* %79, i64** %11, align 8
  %80 = load i64*, i64** %11, align 8
  %81 = icmp ne i64* %80, null
  br i1 %81, label %84, label %82

82:                                               ; preds = %73
  %83 = load i32, i32* @SQLITE_NOMEM, align 4
  store i32 %83, i32* %12, align 4
  br label %84

84:                                               ; preds = %82, %73
  store i32 0, i32* %10, align 4
  br label %85

85:                                               ; preds = %189, %84
  %86 = load i32, i32* %12, align 4
  %87 = load i32, i32* @SQLITE_OK, align 4
  %88 = icmp eq i32 %86, %87
  br i1 %88, label %89, label %93

89:                                               ; preds = %85
  %90 = load i32, i32* %10, align 4
  %91 = load i32, i32* %7, align 4
  %92 = icmp slt i32 %90, %91
  br label %93

93:                                               ; preds = %89, %85
  %94 = phi i1 [ false, %85 ], [ %92, %89 ]
  br i1 %94, label %95, label %192

95:                                               ; preds = %93
  %96 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %97 = load i32, i32* %10, align 4
  %98 = call i32 @walHashGet(%struct.TYPE_13__* %96, i32 %97, i64** %13, i32** %15, i32* %14)
  store i32 %98, i32* %12, align 4
  %99 = load i32, i32* %12, align 4
  %100 = load i32, i32* @SQLITE_OK, align 4
  %101 = icmp eq i32 %99, %100
  br i1 %101, label %102, label %188

102:                                              ; preds = %95
  %103 = load i32*, i32** %15, align 8
  %104 = getelementptr inbounds i32, i32* %103, i32 1
  store i32* %104, i32** %15, align 8
  %105 = load i32, i32* %10, align 4
  %106 = add nsw i32 %105, 1
  %107 = load i32, i32* %7, align 4
  %108 = icmp eq i32 %106, %107
  br i1 %108, label %109, label %113

109:                                              ; preds = %102
  %110 = load i32, i32* %8, align 4
  %111 = load i32, i32* %14, align 4
  %112 = sub nsw i32 %110, %111
  store i32 %112, i32* %17, align 4
  br label %122

113:                                              ; preds = %102
  %114 = load i64*, i64** %13, align 8
  %115 = bitcast i64* %114 to i32*
  %116 = load i32*, i32** %15, align 8
  %117 = ptrtoint i32* %115 to i64
  %118 = ptrtoint i32* %116 to i64
  %119 = sub i64 %117, %118
  %120 = sdiv exact i64 %119, 4
  %121 = trunc i64 %120 to i32
  store i32 %121, i32* %17, align 4
  br label %122

122:                                              ; preds = %113, %109
  %123 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %124 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %123, i32 0, i32 1
  %125 = load %struct.TYPE_11__*, %struct.TYPE_11__** %124, align 8
  %126 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %127 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %125, i64 %129
  %131 = bitcast %struct.TYPE_11__* %130 to i64*
  %132 = load i32, i32* %14, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds i64, i64* %131, i64 %133
  store i64* %134, i64** %18, align 8
  %135 = load i32, i32* %14, align 4
  %136 = add nsw i32 %135, 1
  store i32 %136, i32* %14, align 4
  store i32 0, i32* %16, align 4
  br label %137

137:                                              ; preds = %148, %122
  %138 = load i32, i32* %16, align 4
  %139 = load i32, i32* %17, align 4
  %140 = icmp slt i32 %138, %139
  br i1 %140, label %141, label %151

141:                                              ; preds = %137
  %142 = load i32, i32* %16, align 4
  %143 = sext i32 %142 to i64
  %144 = load i64*, i64** %18, align 8
  %145 = load i32, i32* %16, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds i64, i64* %144, i64 %146
  store i64 %143, i64* %147, align 8
  br label %148

148:                                              ; preds = %141
  %149 = load i32, i32* %16, align 4
  %150 = add nsw i32 %149, 1
  store i32 %150, i32* %16, align 4
  br label %137

151:                                              ; preds = %137
  %152 = load i32*, i32** %15, align 8
  %153 = load i64*, i64** %11, align 8
  %154 = load i64*, i64** %18, align 8
  %155 = call i32 @walMergesort(i32* %152, i64* %153, i64* %154, i32* %17)
  %156 = load i32, i32* %14, align 4
  %157 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %158 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %157, i32 0, i32 1
  %159 = load %struct.TYPE_11__*, %struct.TYPE_11__** %158, align 8
  %160 = load i32, i32* %10, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %159, i64 %161
  %163 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %162, i32 0, i32 0
  store i32 %156, i32* %163, align 8
  %164 = load i32, i32* %17, align 4
  %165 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %166 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %165, i32 0, i32 1
  %167 = load %struct.TYPE_11__*, %struct.TYPE_11__** %166, align 8
  %168 = load i32, i32* %10, align 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %167, i64 %169
  %171 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %170, i32 0, i32 1
  store i32 %164, i32* %171, align 4
  %172 = load i64*, i64** %18, align 8
  %173 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %174 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %173, i32 0, i32 1
  %175 = load %struct.TYPE_11__*, %struct.TYPE_11__** %174, align 8
  %176 = load i32, i32* %10, align 4
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %175, i64 %177
  %179 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %178, i32 0, i32 3
  store i64* %172, i64** %179, align 8
  %180 = load i32*, i32** %15, align 8
  %181 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %182 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %181, i32 0, i32 1
  %183 = load %struct.TYPE_11__*, %struct.TYPE_11__** %182, align 8
  %184 = load i32, i32* %10, align 4
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %183, i64 %185
  %187 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %186, i32 0, i32 2
  store i32* %180, i32** %187, align 8
  br label %188

188:                                              ; preds = %151, %95
  br label %189

189:                                              ; preds = %188
  %190 = load i32, i32* %10, align 4
  %191 = add nsw i32 %190, 1
  store i32 %191, i32* %10, align 4
  br label %85

192:                                              ; preds = %93
  %193 = load i64*, i64** %11, align 8
  %194 = call i32 @sqlite3ScratchFree(i64* %193)
  %195 = load i32, i32* %12, align 4
  %196 = load i32, i32* @SQLITE_OK, align 4
  %197 = icmp ne i32 %195, %196
  br i1 %197, label %198, label %201

198:                                              ; preds = %192
  %199 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %200 = call i32 @walIteratorFree(%struct.TYPE_12__* %199)
  br label %201

201:                                              ; preds = %198, %192
  %202 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %203 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %5, align 8
  store %struct.TYPE_12__* %202, %struct.TYPE_12__** %203, align 8
  %204 = load i32, i32* %12, align 4
  store i32 %204, i32* %3, align 4
  br label %205

205:                                              ; preds = %201, %57
  %206 = load i32, i32* %3, align 4
  ret i32 %206
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @walFramePage(i32) #1

declare dso_local i64 @sqlite3ScratchMalloc(i32) #1

declare dso_local i32 @memset(%struct.TYPE_12__*, i32, i32) #1

declare dso_local i32 @walHashGet(%struct.TYPE_13__*, i32, i64**, i32**, i32*) #1

declare dso_local i32 @walMergesort(i32*, i64*, i64*, i32*) #1

declare dso_local i32 @sqlite3ScratchFree(i64*) #1

declare dso_local i32 @walIteratorFree(%struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
