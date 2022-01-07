; ModuleID = '/home/carl/AnghaBench/poco/PDF/src/extr_hpdf_info.c_HPDF_Info_SetInfoDateAttr.c'
source_filename = "/home/carl/AnghaBench/poco/PDF/src/extr_hpdf_info.c_HPDF_Info_SetInfoDateAttr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_7__ = type { i32, i32, i32, i32, i32, i8, i32, i32, i32 }

@HPDF_DATE_TIME_STR_LEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c" HPDF_Info_SetInfoDateAttr\0A\00", align 1
@HPDF_INFO_MOD_DATE = common dso_local global i64 0, align 8
@HPDF_INVALID_PARAMETER = common dso_local global i32 0, align 4
@HPDF_INVALID_DATE_TIME = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"D:\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @HPDF_Info_SetInfoDateAttr(%struct.TYPE_6__* %0, i64 %1, %struct.TYPE_7__* byval(%struct.TYPE_7__) align 8 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %5, align 8
  store i64 %1, i64* %6, align 8
  %12 = load i32, i32* @HPDF_DATE_TIME_STR_LEN, align 4
  %13 = add nsw i32 %12, 1
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %7, align 8
  %16 = alloca i8, i64 %14, align 16
  store i64 %14, i64* %8, align 8
  %17 = load i64, i64* %6, align 8
  %18 = call i8* @InfoTypeToName(i64 %17)
  store i8* %18, i8** %10, align 8
  %19 = call i32 @HPDF_PTRACE(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %20 = load i64, i64* %6, align 8
  %21 = load i64, i64* @HPDF_INFO_MOD_DATE, align 8
  %22 = icmp sgt i64 %20, %21
  br i1 %22, label %23, label %29

23:                                               ; preds = %3
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @HPDF_INVALID_PARAMETER, align 4
  %28 = call i32 @HPDF_SetError(i32 %26, i32 %27, i32 0)
  store i32 %28, i32* %4, align 4
  store i32 1, i32* %11, align 4
  br label %209

29:                                               ; preds = %3
  %30 = load i32, i32* @HPDF_DATE_TIME_STR_LEN, align 4
  %31 = add nsw i32 %30, 1
  %32 = call i32 @HPDF_MemSet(i8* %16, i32 0, i32 %31)
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %2, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = icmp slt i32 %34, 1
  br i1 %35, label %84, label %36

36:                                               ; preds = %29
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %2, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = icmp slt i32 12, %38
  br i1 %39, label %84, label %40

40:                                               ; preds = %36
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %2, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = icmp slt i32 %42, 1
  br i1 %43, label %84, label %44

44:                                               ; preds = %40
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %2, i32 0, i32 2
  %46 = load i32, i32* %45, align 8
  %47 = icmp slt i32 23, %46
  br i1 %47, label %84, label %48

48:                                               ; preds = %44
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %2, i32 0, i32 3
  %50 = load i32, i32* %49, align 4
  %51 = icmp slt i32 59, %50
  br i1 %51, label %84, label %52

52:                                               ; preds = %48
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %2, i32 0, i32 4
  %54 = load i32, i32* %53, align 8
  %55 = icmp slt i32 59, %54
  br i1 %55, label %84, label %56

56:                                               ; preds = %52
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %2, i32 0, i32 5
  %58 = load i8, i8* %57, align 4
  %59 = sext i8 %58 to i32
  %60 = icmp ne i32 %59, 43
  br i1 %60, label %61, label %76

61:                                               ; preds = %56
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %2, i32 0, i32 5
  %63 = load i8, i8* %62, align 4
  %64 = sext i8 %63 to i32
  %65 = icmp ne i32 %64, 45
  br i1 %65, label %66, label %76

66:                                               ; preds = %61
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %2, i32 0, i32 5
  %68 = load i8, i8* %67, align 4
  %69 = sext i8 %68 to i32
  %70 = icmp ne i32 %69, 90
  br i1 %70, label %71, label %76

71:                                               ; preds = %66
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %2, i32 0, i32 5
  %73 = load i8, i8* %72, align 4
  %74 = sext i8 %73 to i32
  %75 = icmp ne i32 %74, 32
  br i1 %75, label %84, label %76

76:                                               ; preds = %71, %66, %61, %56
  %77 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %2, i32 0, i32 6
  %78 = load i32, i32* %77, align 8
  %79 = icmp slt i32 23, %78
  br i1 %79, label %84, label %80

80:                                               ; preds = %76
  %81 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %2, i32 0, i32 7
  %82 = load i32, i32* %81, align 4
  %83 = icmp slt i32 59, %82
  br i1 %83, label %84, label %90

84:                                               ; preds = %80, %76, %71, %52, %48, %44, %40, %36, %29
  %85 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* @HPDF_INVALID_DATE_TIME, align 4
  %89 = call i32 @HPDF_SetError(i32 %87, i32 %88, i32 0)
  store i32 %89, i32* %4, align 4
  store i32 1, i32* %11, align 4
  br label %209

90:                                               ; preds = %80
  %91 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %2, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  switch i32 %92, label %145 [
    i32 1, label %93
    i32 3, label %93
    i32 5, label %93
    i32 7, label %93
    i32 8, label %93
    i32 10, label %93
    i32 12, label %93
    i32 4, label %104
    i32 6, label %104
    i32 9, label %104
    i32 11, label %104
    i32 2, label %115
  ]

93:                                               ; preds = %90, %90, %90, %90, %90, %90, %90
  %94 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %2, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = icmp sgt i32 %95, 31
  br i1 %96, label %97, label %103

97:                                               ; preds = %93
  %98 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = load i32, i32* @HPDF_INVALID_DATE_TIME, align 4
  %102 = call i32 @HPDF_SetError(i32 %100, i32 %101, i32 0)
  store i32 %102, i32* %4, align 4
  store i32 1, i32* %11, align 4
  br label %209

103:                                              ; preds = %93
  br label %151

104:                                              ; preds = %90, %90, %90, %90
  %105 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %2, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = icmp sgt i32 %106, 30
  br i1 %107, label %108, label %114

108:                                              ; preds = %104
  %109 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %110 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = load i32, i32* @HPDF_INVALID_DATE_TIME, align 4
  %113 = call i32 @HPDF_SetError(i32 %111, i32 %112, i32 0)
  store i32 %113, i32* %4, align 4
  store i32 1, i32* %11, align 4
  br label %209

114:                                              ; preds = %104
  br label %151

115:                                              ; preds = %90
  %116 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %2, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = icmp sgt i32 %117, 29
  br i1 %118, label %138, label %119

119:                                              ; preds = %115
  %120 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %2, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  %122 = icmp eq i32 %121, 29
  br i1 %122, label %123, label %144

123:                                              ; preds = %119
  %124 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %2, i32 0, i32 8
  %125 = load i32, i32* %124, align 8
  %126 = srem i32 %125, 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %138, label %128

128:                                              ; preds = %123
  %129 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %2, i32 0, i32 8
  %130 = load i32, i32* %129, align 8
  %131 = srem i32 %130, 100
  %132 = icmp eq i32 %131, 0
  br i1 %132, label %133, label %144

133:                                              ; preds = %128
  %134 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %2, i32 0, i32 8
  %135 = load i32, i32* %134, align 8
  %136 = srem i32 %135, 400
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %144

138:                                              ; preds = %133, %123, %115
  %139 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %140 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 4
  %142 = load i32, i32* @HPDF_INVALID_DATE_TIME, align 4
  %143 = call i32 @HPDF_SetError(i32 %141, i32 %142, i32 0)
  store i32 %143, i32* %4, align 4
  store i32 1, i32* %11, align 4
  br label %209

144:                                              ; preds = %133, %128, %119
  br label %151

145:                                              ; preds = %90
  %146 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %147 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %146, i32 0, i32 1
  %148 = load i32, i32* %147, align 4
  %149 = load i32, i32* @HPDF_INVALID_DATE_TIME, align 4
  %150 = call i32 @HPDF_SetError(i32 %148, i32 %149, i32 0)
  store i32 %150, i32* %4, align 4
  store i32 1, i32* %11, align 4
  br label %209

151:                                              ; preds = %144, %114, %103
  %152 = bitcast i8* %16 to i32*
  %153 = call i64 @HPDF_MemCpy(i32* %152, i32* bitcast ([3 x i8]* @.str.1 to i32*), i32 2)
  %154 = inttoptr i64 %153 to i8*
  store i8* %154, i8** %9, align 8
  %155 = load i8*, i8** %9, align 8
  %156 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %2, i32 0, i32 8
  %157 = load i32, i32* %156, align 8
  %158 = call i8* @HPDF_IToA2(i8* %155, i32 %157, i32 5)
  store i8* %158, i8** %9, align 8
  %159 = load i8*, i8** %9, align 8
  %160 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %2, i32 0, i32 0
  %161 = load i32, i32* %160, align 8
  %162 = call i8* @HPDF_IToA2(i8* %159, i32 %161, i32 3)
  store i8* %162, i8** %9, align 8
  %163 = load i8*, i8** %9, align 8
  %164 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %2, i32 0, i32 1
  %165 = load i32, i32* %164, align 4
  %166 = call i8* @HPDF_IToA2(i8* %163, i32 %165, i32 3)
  store i8* %166, i8** %9, align 8
  %167 = load i8*, i8** %9, align 8
  %168 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %2, i32 0, i32 2
  %169 = load i32, i32* %168, align 8
  %170 = call i8* @HPDF_IToA2(i8* %167, i32 %169, i32 3)
  store i8* %170, i8** %9, align 8
  %171 = load i8*, i8** %9, align 8
  %172 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %2, i32 0, i32 3
  %173 = load i32, i32* %172, align 4
  %174 = call i8* @HPDF_IToA2(i8* %171, i32 %173, i32 3)
  store i8* %174, i8** %9, align 8
  %175 = load i8*, i8** %9, align 8
  %176 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %2, i32 0, i32 4
  %177 = load i32, i32* %176, align 8
  %178 = call i8* @HPDF_IToA2(i8* %175, i32 %177, i32 3)
  store i8* %178, i8** %9, align 8
  %179 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %2, i32 0, i32 5
  %180 = load i8, i8* %179, align 4
  %181 = sext i8 %180 to i32
  %182 = icmp ne i32 %181, 32
  br i1 %182, label %183, label %200

183:                                              ; preds = %151
  %184 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %2, i32 0, i32 5
  %185 = load i8, i8* %184, align 4
  %186 = load i8*, i8** %9, align 8
  %187 = getelementptr inbounds i8, i8* %186, i32 1
  store i8* %187, i8** %9, align 8
  store i8 %185, i8* %186, align 1
  %188 = load i8*, i8** %9, align 8
  %189 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %2, i32 0, i32 6
  %190 = load i32, i32* %189, align 8
  %191 = call i8* @HPDF_IToA2(i8* %188, i32 %190, i32 3)
  store i8* %191, i8** %9, align 8
  %192 = load i8*, i8** %9, align 8
  %193 = getelementptr inbounds i8, i8* %192, i32 1
  store i8* %193, i8** %9, align 8
  store i8 39, i8* %192, align 1
  %194 = load i8*, i8** %9, align 8
  %195 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %2, i32 0, i32 7
  %196 = load i32, i32* %195, align 4
  %197 = call i8* @HPDF_IToA2(i8* %194, i32 %196, i32 3)
  store i8* %197, i8** %9, align 8
  %198 = load i8*, i8** %9, align 8
  %199 = getelementptr inbounds i8, i8* %198, i32 1
  store i8* %199, i8** %9, align 8
  store i8 39, i8* %198, align 1
  br label %200

200:                                              ; preds = %183, %151
  %201 = load i8*, i8** %9, align 8
  store i8 0, i8* %201, align 1
  %202 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %203 = load i8*, i8** %10, align 8
  %204 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %205 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %204, i32 0, i32 0
  %206 = load i32, i32* %205, align 4
  %207 = call i32 @HPDF_String_New(i32 %206, i8* %16, i32* null)
  %208 = call i32 @HPDF_Dict_Add(%struct.TYPE_6__* %202, i8* %203, i32 %207)
  store i32 %208, i32* %4, align 4
  store i32 1, i32* %11, align 4
  br label %209

209:                                              ; preds = %200, %145, %138, %108, %97, %84, %23
  %210 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %210)
  %211 = load i32, i32* %4, align 4
  ret i32 %211
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i8* @InfoTypeToName(i64) #2

declare dso_local i32 @HPDF_PTRACE(i8*) #2

declare dso_local i32 @HPDF_SetError(i32, i32, i32) #2

declare dso_local i32 @HPDF_MemSet(i8*, i32, i32) #2

declare dso_local i64 @HPDF_MemCpy(i32*, i32*, i32) #2

declare dso_local i8* @HPDF_IToA2(i8*, i32, i32) #2

declare dso_local i32 @HPDF_Dict_Add(%struct.TYPE_6__*, i8*, i32) #2

declare dso_local i32 @HPDF_String_New(i32, i8*, i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
