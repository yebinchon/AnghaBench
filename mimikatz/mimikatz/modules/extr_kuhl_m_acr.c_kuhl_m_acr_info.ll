; ModuleID = '/home/carl/AnghaBench/mimikatz/mimikatz/modules/extr_kuhl_m_acr.c_kuhl_m_acr_info.c'
source_filename = "/home/carl/AnghaBench/mimikatz/mimikatz/modules/extr_kuhl_m_acr.c_kuhl_m_acr_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, %struct.TYPE_7__, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i32, i32 }

@kuhl_m_acr_pn532Comm = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i32] [i32 10, i32 84, i32 97, i32 114, i32 103, i32 101, i32 116, i32 58, i32 32, i32 37, i32 104, i32 104, i32 117, i32 32, i32 40, i32 48, i32 120, i32 37, i32 48, i32 50, i32 120, i32 32, i32 45, i32 32, i32 37, i32 115, i32 41, i32 10, i32 0], align 4
@KUHL_M_ACR_PN532_BrTy = common dso_local global i8** null, align 8
@.str.1 = private unnamed_addr constant [2 x i32] [i32 63, i32 0], align 4
@.str.2 = private unnamed_addr constant [147 x i32] [i32 32, i32 32, i32 83, i32 69, i32 78, i32 83, i32 95, i32 82, i32 69, i32 83, i32 58, i32 32, i32 37, i32 48, i32 50, i32 120, i32 32, i32 37, i32 48, i32 50, i32 120, i32 10, i32 32, i32 32, i32 83, i32 69, i32 76, i32 95, i32 82, i32 69, i32 83, i32 32, i32 58, i32 32, i32 37, i32 48, i32 50, i32 120, i32 10, i32 32, i32 32, i32 32, i32 32, i32 85, i32 73, i32 68, i32 32, i32 37, i32 115, i32 99, i32 111, i32 109, i32 112, i32 108, i32 101, i32 116, i32 101, i32 10, i32 32, i32 32, i32 32, i32 32, i32 80, i32 73, i32 67, i32 67, i32 32, i32 37, i32 115, i32 99, i32 111, i32 109, i32 112, i32 108, i32 105, i32 97, i32 110, i32 116, i32 32, i32 119, i32 105, i32 116, i32 104, i32 32, i32 73, i32 83, i32 79, i32 47, i32 73, i32 69, i32 67, i32 32, i32 49, i32 52, i32 52, i32 52, i32 51, i32 45, i32 52, i32 10, i32 32, i32 32, i32 32, i32 32, i32 80, i32 73, i32 67, i32 67, i32 32, i32 37, i32 115, i32 99, i32 111, i32 109, i32 112, i32 108, i32 105, i32 97, i32 110, i32 116, i32 32, i32 119, i32 105, i32 116, i32 104, i32 32, i32 73, i32 83, i32 79, i32 47, i32 73, i32 69, i32 67, i32 32, i32 49, i32 56, i32 48, i32 57, i32 50, i32 32, i32 40, i32 78, i32 70, i32 67, i32 41, i32 10, i32 0], align 4
@.str.3 = private unnamed_addr constant [5 x i32] [i32 78, i32 79, i32 84, i32 32, i32 0], align 4
@.str.4 = private unnamed_addr constant [1 x i32] zeroinitializer, align 4
@.str.5 = private unnamed_addr constant [13 x i32] [i32 32, i32 32, i32 78, i32 70, i32 67, i32 73, i32 68, i32 49, i32 32, i32 32, i32 58, i32 32, i32 0], align 4
@.str.6 = private unnamed_addr constant [2 x i32] [i32 10, i32 0], align 4
@.str.7 = private unnamed_addr constant [13 x i32] [i32 32, i32 32, i32 65, i32 84, i32 83, i32 32, i32 32, i32 32, i32 32, i32 32, i32 58, i32 32, i32 0], align 4
@.str.8 = private unnamed_addr constant [36 x i32] [i32 79, i32 110, i32 108, i32 121, i32 32, i32 66, i32 114, i32 84, i32 121, i32 32, i32 61, i32 32, i32 48, i32 32, i32 40, i32 84, i32 121, i32 112, i32 101, i32 65, i32 41, i32 32, i32 97, i32 116, i32 32, i32 116, i32 104, i32 105, i32 115, i32 32, i32 116, i32 105, i32 109, i32 101, i32 10, i32 0], align 4
@STATUS_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kuhl_m_acr_info(i32 %0, i32** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32**, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_8__*, align 8
  store i32 %0, i32* %3, align 4
  store i32** %1, i32*** %4, align 8
  %8 = call i32 @kull_m_pn532_InRelease(i32* @kuhl_m_acr_pn532Comm, i32 0)
  %9 = call i64 @kull_m_pn532_InListPassiveTarget(i32* @kuhl_m_acr_pn532Comm, i32 2, i32 0, i32* null, i32 0, i64* %6, %struct.TYPE_8__** %7)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %192

11:                                               ; preds = %2
  store i64 0, i64* %5, align 8
  br label %12

12:                                               ; preds = %186, %11
  %13 = load i64, i64* %5, align 8
  %14 = load i64, i64* %6, align 8
  %15 = icmp ult i64 %13, %14
  br i1 %15, label %16, label %189

16:                                               ; preds = %12
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %18 = load i64, i64* %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i64 %18
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %23 = load i64, i64* %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i64 %23
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %28 = load i64, i64* %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i8**, i8*** @KUHL_M_ACR_PN532_BrTy, align 8
  %33 = call i64 @ARRAYSIZE(i8** %32)
  %34 = icmp ult i64 %31, %33
  br i1 %34, label %35, label %44

35:                                               ; preds = %16
  %36 = load i8**, i8*** @KUHL_M_ACR_PN532_BrTy, align 8
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %38 = load i64, i64* %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = getelementptr inbounds i8*, i8** %36, i64 %41
  %43 = load i8*, i8** %42, align 8
  br label %45

44:                                               ; preds = %16
  br label %45

45:                                               ; preds = %44, %35
  %46 = phi i8* [ %43, %35 ], [ bitcast ([2 x i32]* @.str.1 to i8*), %44 ]
  %47 = call i32 (i8*, ...) @kprintf(i8* bitcast ([29 x i32]* @.str to i8*), i32 %21, i64 %26, i8* %46)
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %49 = load i64, i64* %5, align 8
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  switch i64 %52, label %183 [
    i64 0, label %53
  ]

53:                                               ; preds = %45
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %55 = load i64, i64* %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 5
  %60 = getelementptr inbounds i32, i32* %59, i64 0
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %63 = load i64, i64* %5, align 8
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i64 %63
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 5
  %68 = getelementptr inbounds i32, i32* %67, i64 1
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %71 = load i64, i64* %5, align 8
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %70, i64 %71
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %78 = load i64, i64* %5, align 8
  %79 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %77, i64 %78
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = and i32 %83, 4
  %85 = icmp ne i32 %84, 0
  %86 = zext i1 %85 to i64
  %87 = select i1 %85, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.3, i64 0, i64 0), i32* getelementptr inbounds ([1 x i32], [1 x i32]* @.str.4, i64 0, i64 0)
  %88 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %89 = load i64, i64* %5, align 8
  %90 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %88, i64 %89
  %91 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %90, i32 0, i32 1
  %92 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = and i32 %94, 32
  %96 = icmp ne i32 %95, 0
  %97 = zext i1 %96 to i64
  %98 = select i1 %96, i32* getelementptr inbounds ([1 x i32], [1 x i32]* @.str.4, i64 0, i64 0), i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.3, i64 0, i64 0)
  %99 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %100 = load i64, i64* %5, align 8
  %101 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %99, i64 %100
  %102 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %101, i32 0, i32 1
  %103 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = and i32 %105, 64
  %107 = icmp ne i32 %106, 0
  %108 = zext i1 %107 to i64
  %109 = select i1 %107, i32* getelementptr inbounds ([1 x i32], [1 x i32]* @.str.4, i64 0, i64 0), i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.3, i64 0, i64 0)
  %110 = call i32 (i8*, ...) @kprintf(i8* bitcast ([147 x i32]* @.str.2 to i8*), i32 %61, i32 %69, i32 %76, i32* %87, i32* %98, i32* %109)
  %111 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %112 = load i64, i64* %5, align 8
  %113 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %111, i64 %112
  %114 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %113, i32 0, i32 1
  %115 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %115, i32 0, i32 3
  %117 = load i32, i32* %116, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %146

119:                                              ; preds = %53
  %120 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %121 = load i64, i64* %5, align 8
  %122 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %120, i64 %121
  %123 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %122, i32 0, i32 1
  %124 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %124, i32 0, i32 4
  %126 = load i32, i32* %125, align 8
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %146

128:                                              ; preds = %119
  %129 = call i32 (i8*, ...) @kprintf(i8* bitcast ([13 x i32]* @.str.5 to i8*))
  %130 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %131 = load i64, i64* %5, align 8
  %132 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %130, i64 %131
  %133 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %132, i32 0, i32 1
  %134 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %133, i32 0, i32 0
  %135 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %134, i32 0, i32 4
  %136 = load i32, i32* %135, align 8
  %137 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %138 = load i64, i64* %5, align 8
  %139 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %137, i64 %138
  %140 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %139, i32 0, i32 1
  %141 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %140, i32 0, i32 0
  %142 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %141, i32 0, i32 3
  %143 = load i32, i32* %142, align 4
  %144 = call i32 @kull_m_string_wprintf_hex(i32 %136, i32 %143, i32 1)
  %145 = call i32 (i8*, ...) @kprintf(i8* bitcast ([2 x i32]* @.str.6 to i8*))
  br label %146

146:                                              ; preds = %128, %119, %53
  %147 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %148 = load i64, i64* %5, align 8
  %149 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %147, i64 %148
  %150 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %149, i32 0, i32 1
  %151 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %150, i32 0, i32 0
  %152 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %151, i32 0, i32 1
  %153 = load i32, i32* %152, align 4
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %182

155:                                              ; preds = %146
  %156 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %157 = load i64, i64* %5, align 8
  %158 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %156, i64 %157
  %159 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %158, i32 0, i32 1
  %160 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %159, i32 0, i32 0
  %161 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %160, i32 0, i32 2
  %162 = load i32, i32* %161, align 8
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %182

164:                                              ; preds = %155
  %165 = call i32 (i8*, ...) @kprintf(i8* bitcast ([13 x i32]* @.str.7 to i8*))
  %166 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %167 = load i64, i64* %5, align 8
  %168 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %166, i64 %167
  %169 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %168, i32 0, i32 1
  %170 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %169, i32 0, i32 0
  %171 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %170, i32 0, i32 2
  %172 = load i32, i32* %171, align 8
  %173 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %174 = load i64, i64* %5, align 8
  %175 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %173, i64 %174
  %176 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %175, i32 0, i32 1
  %177 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %176, i32 0, i32 0
  %178 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %177, i32 0, i32 1
  %179 = load i32, i32* %178, align 4
  %180 = call i32 @kull_m_string_wprintf_hex(i32 %172, i32 %179, i32 1)
  %181 = call i32 (i8*, ...) @kprintf(i8* bitcast ([2 x i32]* @.str.6 to i8*))
  br label %182

182:                                              ; preds = %164, %155, %146
  br label %185

183:                                              ; preds = %45
  %184 = call i32 @PRINT_ERROR(i8* bitcast ([36 x i32]* @.str.8 to i8*))
  br label %185

185:                                              ; preds = %183, %182
  br label %186

186:                                              ; preds = %185
  %187 = load i64, i64* %5, align 8
  %188 = add i64 %187, 1
  store i64 %188, i64* %5, align 8
  br label %12

189:                                              ; preds = %12
  %190 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %191 = call i32 @LocalFree(%struct.TYPE_8__* %190)
  br label %192

192:                                              ; preds = %189, %2
  %193 = call i32 @kull_m_pn532_InRelease(i32* @kuhl_m_acr_pn532Comm, i32 0)
  %194 = load i32, i32* @STATUS_SUCCESS, align 4
  ret i32 %194
}

declare dso_local i32 @kull_m_pn532_InRelease(i32*, i32) #1

declare dso_local i64 @kull_m_pn532_InListPassiveTarget(i32*, i32, i32, i32*, i32, i64*, %struct.TYPE_8__**) #1

declare dso_local i32 @kprintf(i8*, ...) #1

declare dso_local i64 @ARRAYSIZE(i8**) #1

declare dso_local i32 @kull_m_string_wprintf_hex(i32, i32, i32) #1

declare dso_local i32 @PRINT_ERROR(i8*) #1

declare dso_local i32 @LocalFree(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
