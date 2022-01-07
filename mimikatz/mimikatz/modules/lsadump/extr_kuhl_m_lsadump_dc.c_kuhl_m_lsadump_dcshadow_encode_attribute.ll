; ModuleID = '/home/carl/AnghaBench/mimikatz/mimikatz/modules/lsadump/extr_kuhl_m_lsadump_dc.c_kuhl_m_lsadump_dcshadow_encode_attribute.c'
source_filename = "/home/carl/AnghaBench/mimikatz/mimikatz/modules/lsadump/extr_kuhl_m_lsadump_dc.c_kuhl_m_lsadump_dcshadow_encode_attribute.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i64, i64, %struct.TYPE_13__*, %struct.TYPE_11__* }
%struct.TYPE_13__ = type { i8*, i32 }
%struct.TYPE_11__ = type { i64, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { %struct.TYPE_13__* }

@TRUE = common dso_local global i32 0, align 4
@LPTR = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i32] [i32 117, i32 110, i32 105, i32 99, i32 111, i32 100, i32 101, i32 80, i32 119, i32 100, i32 0], align 4
@.str.1 = private unnamed_addr constant [13 x i32] [i32 99, i32 117, i32 114, i32 114, i32 101, i32 110, i32 116, i32 86, i32 97, i32 108, i32 117, i32 101, i32 0], align 4
@.str.2 = private unnamed_addr constant [8 x i32] [i32 100, i32 66, i32 67, i32 83, i32 80, i32 119, i32 100, i32 0], align 4
@.str.3 = private unnamed_addr constant [20 x i32] [i32 105, i32 110, i32 105, i32 116, i32 105, i32 97, i32 108, i32 65, i32 117, i32 116, i32 104, i32 73, i32 110, i32 99, i32 111, i32 109, i32 105, i32 110, i32 103, i32 0], align 4
@.str.4 = private unnamed_addr constant [13 x i32] [i32 108, i32 109, i32 80, i32 119, i32 100, i32 72, i32 105, i32 115, i32 116, i32 111, i32 114, i32 121, i32 0], align 4
@.str.5 = private unnamed_addr constant [13 x i32] [i32 110, i32 116, i32 80, i32 119, i32 100, i32 72, i32 105, i32 115, i32 116, i32 111, i32 114, i32 121, i32 0], align 4
@.str.6 = private unnamed_addr constant [11 x i32] [i32 112, i32 114, i32 105, i32 111, i32 114, i32 86, i32 97, i32 108, i32 117, i32 101, i32 0], align 4
@.str.7 = private unnamed_addr constant [24 x i32] [i32 115, i32 117, i32 112, i32 112, i32 108, i32 101, i32 109, i32 101, i32 110, i32 116, i32 97, i32 108, i32 67, i32 114, i32 101, i32 100, i32 101, i32 110, i32 116, i32 105, i32 97, i32 108, i32 115, i32 0], align 4
@.str.8 = private unnamed_addr constant [18 x i32] [i32 116, i32 114, i32 117, i32 115, i32 116, i32 65, i32 117, i32 116, i32 104, i32 73, i32 110, i32 99, i32 111, i32 109, i32 105, i32 110, i32 103, i32 0], align 4
@.str.9 = private unnamed_addr constant [18 x i32] [i32 116, i32 114, i32 117, i32 115, i32 116, i32 65, i32 117, i32 116, i32 104, i32 79, i32 117, i32 116, i32 103, i32 111, i32 105, i32 110, i32 103, i32 0], align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kuhl_m_lsadump_dcshadow_encode_attribute(%struct.TYPE_12__* %0, i8* %1, %struct.TYPE_13__** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.TYPE_13__**, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_13__*, align 8
  %11 = alloca i64, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.TYPE_13__** %2, %struct.TYPE_13__*** %7, align 8
  store i64 0, i64* %8, align 8
  br label %12

12:                                               ; preds = %38, %3
  %13 = load i64, i64* %8, align 8
  %14 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp ult i64 %13, %16
  br i1 %17, label %18, label %41

18:                                               ; preds = %12
  %19 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %19, i32 0, i32 2
  %21 = load %struct.TYPE_13__*, %struct.TYPE_13__** %20, align 8
  %22 = load i64, i64* %8, align 8
  %23 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %21, i64 %22
  %24 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %23, i32 0, i32 0
  %25 = load i8*, i8** %24, align 8
  %26 = load i8*, i8** %6, align 8
  %27 = call i64 @_wcsicmp(i8* %25, i8* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %37, label %29

29:                                               ; preds = %18
  %30 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %30, i32 0, i32 2
  %32 = load %struct.TYPE_13__*, %struct.TYPE_13__** %31, align 8
  %33 = load i64, i64* %8, align 8
  %34 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %32, i64 %33
  %35 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %7, align 8
  store %struct.TYPE_13__* %34, %struct.TYPE_13__** %35, align 8
  %36 = load i32, i32* @TRUE, align 4
  store i32 %36, i32* %4, align 4
  br label %207

37:                                               ; preds = %18
  br label %38

38:                                               ; preds = %37
  %39 = load i64, i64* %8, align 8
  %40 = add i64 %39, 1
  store i64 %40, i64* %8, align 8
  br label %12

41:                                               ; preds = %12
  %42 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %42, i32 0, i32 2
  %44 = load %struct.TYPE_13__*, %struct.TYPE_13__** %43, align 8
  store %struct.TYPE_13__* %44, %struct.TYPE_13__** %10, align 8
  %45 = load i32, i32* @LPTR, align 4
  %46 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %47 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = add i64 %48, 1
  %50 = mul i64 4, %49
  %51 = trunc i64 %50 to i32
  %52 = call i64 @LocalAlloc(i32 %45, i32 %51)
  %53 = inttoptr i64 %52 to %struct.TYPE_13__*
  %54 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %55 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %54, i32 0, i32 2
  store %struct.TYPE_13__* %53, %struct.TYPE_13__** %55, align 8
  %56 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %57 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %56, i32 0, i32 2
  %58 = load %struct.TYPE_13__*, %struct.TYPE_13__** %57, align 8
  %59 = icmp ne %struct.TYPE_13__* %58, null
  br i1 %59, label %65, label %60

60:                                               ; preds = %41
  %61 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %62 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %63 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %62, i32 0, i32 2
  store %struct.TYPE_13__* %61, %struct.TYPE_13__** %63, align 8
  %64 = load i32, i32* @FALSE, align 4
  store i32 %64, i32* %4, align 4
  br label %207

65:                                               ; preds = %41
  %66 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %67 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %66, i32 0, i32 2
  %68 = load %struct.TYPE_13__*, %struct.TYPE_13__** %67, align 8
  %69 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %70 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %71 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = mul i64 4, %72
  %74 = trunc i64 %73 to i32
  %75 = call i32 @RtlCopyMemory(%struct.TYPE_13__* %68, %struct.TYPE_13__* %69, i32 %74)
  %76 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %77 = icmp ne %struct.TYPE_13__* %76, null
  br i1 %77, label %78, label %81

78:                                               ; preds = %65
  %79 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %80 = call i32 @LocalFree(%struct.TYPE_13__* %79)
  br label %81

81:                                               ; preds = %78, %65
  %82 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %83 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %82, i32 0, i32 2
  %84 = load %struct.TYPE_13__*, %struct.TYPE_13__** %83, align 8
  %85 = ptrtoint %struct.TYPE_13__* %84 to i64
  %86 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %87 = ptrtoint %struct.TYPE_13__* %86 to i64
  %88 = sub nsw i64 %85, %87
  store i64 %88, i64* %11, align 8
  store i64 0, i64* %8, align 8
  br label %89

89:                                               ; preds = %136, %81
  %90 = load i64, i64* %8, align 8
  %91 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %92 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %91, i32 0, i32 1
  %93 = load i64, i64* %92, align 8
  %94 = icmp ult i64 %90, %93
  br i1 %94, label %95, label %139

95:                                               ; preds = %89
  store i64 0, i64* %9, align 8
  br label %96

96:                                               ; preds = %132, %95
  %97 = load i64, i64* %9, align 8
  %98 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %99 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %98, i32 0, i32 3
  %100 = load %struct.TYPE_11__*, %struct.TYPE_11__** %99, align 8
  %101 = load i64, i64* %8, align 8
  %102 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %100, i64 %101
  %103 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = icmp ult i64 %97, %104
  br i1 %105, label %106, label %135

106:                                              ; preds = %96
  %107 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %108 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %107, i32 0, i32 3
  %109 = load %struct.TYPE_11__*, %struct.TYPE_11__** %108, align 8
  %110 = load i64, i64* %8, align 8
  %111 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %109, i64 %110
  %112 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %111, i32 0, i32 1
  %113 = load %struct.TYPE_10__*, %struct.TYPE_10__** %112, align 8
  %114 = load i64, i64* %9, align 8
  %115 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %113, i64 %114
  %116 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %115, i32 0, i32 0
  %117 = load %struct.TYPE_13__*, %struct.TYPE_13__** %116, align 8
  %118 = ptrtoint %struct.TYPE_13__* %117 to i64
  %119 = load i64, i64* %11, align 8
  %120 = add nsw i64 %118, %119
  %121 = inttoptr i64 %120 to %struct.TYPE_13__*
  %122 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %123 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %122, i32 0, i32 3
  %124 = load %struct.TYPE_11__*, %struct.TYPE_11__** %123, align 8
  %125 = load i64, i64* %8, align 8
  %126 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %124, i64 %125
  %127 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %126, i32 0, i32 1
  %128 = load %struct.TYPE_10__*, %struct.TYPE_10__** %127, align 8
  %129 = load i64, i64* %9, align 8
  %130 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %128, i64 %129
  %131 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %130, i32 0, i32 0
  store %struct.TYPE_13__* %121, %struct.TYPE_13__** %131, align 8
  br label %132

132:                                              ; preds = %106
  %133 = load i64, i64* %9, align 8
  %134 = add i64 %133, 1
  store i64 %134, i64* %9, align 8
  br label %96

135:                                              ; preds = %96
  br label %136

136:                                              ; preds = %135
  %137 = load i64, i64* %8, align 8
  %138 = add i64 %137, 1
  store i64 %138, i64* %8, align 8
  br label %89

139:                                              ; preds = %89
  %140 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %141 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %140, i32 0, i32 2
  %142 = load %struct.TYPE_13__*, %struct.TYPE_13__** %141, align 8
  %143 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %144 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %143, i32 0, i32 0
  %145 = load i64, i64* %144, align 8
  %146 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %142, i64 %145
  %147 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %7, align 8
  store %struct.TYPE_13__* %146, %struct.TYPE_13__** %147, align 8
  %148 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %7, align 8
  %149 = load %struct.TYPE_13__*, %struct.TYPE_13__** %148, align 8
  %150 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %149, i32 0, i32 0
  %151 = load i8*, i8** %6, align 8
  %152 = call i32 @kull_m_string_copy(i8** %150, i8* %151)
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %156, label %154

154:                                              ; preds = %139
  %155 = load i32, i32* @FALSE, align 4
  store i32 %155, i32* %4, align 4
  br label %207

156:                                              ; preds = %139
  %157 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %158 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %157, i32 0, i32 0
  %159 = load i64, i64* %158, align 8
  %160 = add i64 %159, 1
  store i64 %160, i64* %158, align 8
  %161 = load i8*, i8** %6, align 8
  %162 = call i64 @_wcsicmp(i8* %161, i8* bitcast ([11 x i32]* @.str to i8*))
  %163 = icmp eq i64 %162, 0
  br i1 %163, label %200, label %164

164:                                              ; preds = %156
  %165 = load i8*, i8** %6, align 8
  %166 = call i64 @_wcsicmp(i8* %165, i8* bitcast ([13 x i32]* @.str.1 to i8*))
  %167 = icmp eq i64 %166, 0
  br i1 %167, label %200, label %168

168:                                              ; preds = %164
  %169 = load i8*, i8** %6, align 8
  %170 = call i64 @_wcsicmp(i8* %169, i8* bitcast ([8 x i32]* @.str.2 to i8*))
  %171 = icmp eq i64 %170, 0
  br i1 %171, label %200, label %172

172:                                              ; preds = %168
  %173 = load i8*, i8** %6, align 8
  %174 = call i64 @_wcsicmp(i8* %173, i8* bitcast ([20 x i32]* @.str.3 to i8*))
  %175 = icmp eq i64 %174, 0
  br i1 %175, label %200, label %176

176:                                              ; preds = %172
  %177 = load i8*, i8** %6, align 8
  %178 = call i64 @_wcsicmp(i8* %177, i8* bitcast ([13 x i32]* @.str.4 to i8*))
  %179 = icmp eq i64 %178, 0
  br i1 %179, label %200, label %180

180:                                              ; preds = %176
  %181 = load i8*, i8** %6, align 8
  %182 = call i64 @_wcsicmp(i8* %181, i8* bitcast ([13 x i32]* @.str.5 to i8*))
  %183 = icmp eq i64 %182, 0
  br i1 %183, label %200, label %184

184:                                              ; preds = %180
  %185 = load i8*, i8** %6, align 8
  %186 = call i64 @_wcsicmp(i8* %185, i8* bitcast ([11 x i32]* @.str.6 to i8*))
  %187 = icmp eq i64 %186, 0
  br i1 %187, label %200, label %188

188:                                              ; preds = %184
  %189 = load i8*, i8** %6, align 8
  %190 = call i64 @_wcsicmp(i8* %189, i8* bitcast ([24 x i32]* @.str.7 to i8*))
  %191 = icmp eq i64 %190, 0
  br i1 %191, label %200, label %192

192:                                              ; preds = %188
  %193 = load i8*, i8** %6, align 8
  %194 = call i64 @_wcsicmp(i8* %193, i8* bitcast ([18 x i32]* @.str.8 to i8*))
  %195 = icmp eq i64 %194, 0
  br i1 %195, label %200, label %196

196:                                              ; preds = %192
  %197 = load i8*, i8** %6, align 8
  %198 = call i64 @_wcsicmp(i8* %197, i8* bitcast ([18 x i32]* @.str.9 to i8*))
  %199 = icmp eq i64 %198, 0
  br i1 %199, label %200, label %205

200:                                              ; preds = %196, %192, %188, %184, %180, %176, %172, %168, %164, %156
  %201 = load i32, i32* @TRUE, align 4
  %202 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %7, align 8
  %203 = load %struct.TYPE_13__*, %struct.TYPE_13__** %202, align 8
  %204 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %203, i32 0, i32 1
  store i32 %201, i32* %204, align 8
  br label %205

205:                                              ; preds = %200, %196
  %206 = load i32, i32* @TRUE, align 4
  store i32 %206, i32* %4, align 4
  br label %207

207:                                              ; preds = %205, %154, %60, %29
  %208 = load i32, i32* %4, align 4
  ret i32 %208
}

declare dso_local i64 @_wcsicmp(i8*, i8*) #1

declare dso_local i64 @LocalAlloc(i32, i32) #1

declare dso_local i32 @RtlCopyMemory(%struct.TYPE_13__*, %struct.TYPE_13__*, i32) #1

declare dso_local i32 @LocalFree(%struct.TYPE_13__*) #1

declare dso_local i32 @kull_m_string_copy(i8**, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
